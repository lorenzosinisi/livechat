defmodule LivechatWeb.ChatLive.Index do
  use LivechatWeb, :live_view

  import LivechatWeb.ChatLive.Components.Sidebar
  import LivechatWeb.ChatLive.Components.Model

  alias LivechatWeb.ChatLive.Components.Message
  alias LivechatWeb.ChatLive.Components.Form

  @models %{
    "Google - Flan-t5-base" => "google/flan-t5-base",
    "Google - Flan-t5-large" => "google/flan-t5-large",
    "Google - Flan-t5-xl" => "flan-t5-xl"
  }

  @initial_messages []

  @impl true
  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:models, @models)
      |> assign(:selected_model, "Google - Flan-t5-base")
      |> assign(:history, @initial_messages)
      |> assign(:task, nil)
      |> assign(:form_size, 24)

    {:ok, socket}
  end

  def handle_params(%{"id" => _id} = params, _socket) do
    IO.inspect(params)
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div class="flex">
      <div>
        <.sidebar />
      </div>
      <div class="flex-grow lg:pl-72">
        <div class="fixed inset-0 overflow-auto">
          <div class="max-w-md mx-auto mt-8">
            <.model_select models={@models} selected_model={@selected_model} />
          </div>
          <div class="h-full w-full mt-4">
            <%= for %{role: role, message: message, id: id} <- @history do %>
              <.live_component id={id} message={message} role={role} module={Message} />
            <% end %>
            <div class="h-40 mt-1 bg-white" />
          </div>
        </div>
        <div class="absolute bottom-0 left-0 w-full border-t md:border-t-0 dark:border-white/20 md:border-transparent md:dark:border-transparent md:bg-vert-light-gradient bg-white dark:bg-gray-800 md:!bg-transparent dark:md:bg-vert-dark-gradient pt-2">
          <div class="relative flex flex-col items-stretch">
            <.live_component id="form" module={Form} loading={!is_nil(@task)} form_size={@form_size} />
          </div>
        </div>
      </div>
    </div>
    """
  end

  @impl true
  def handle_event("change_selected_model", %{"model" => model}, socket) do
    {:noreply, assign(socket, :selected_model, model)}
  end

  def handle_event("handleKeyDown", %{"_target" => ["message"], "message" => message}, socket) do
    new_lines = Enum.count(String.split(to_string(message), "\n"))
    {:noreply, assign(socket, :form_size, new_lines * 24)}
  end

  def handle_event("send_message", %{"message" => contents}, socket) do
    new_id = "message_#{Enum.count(socket.assigns.history) + 1}"
    message = contents
    role = :user
    new_item = %{role: role, id: new_id, message: message}
    current_model = @models[socket.assigns.selected_model]

    task =
      Task.async(fn ->
        LiveChat.Model.generate(
          current_model,
          "Please answer the following question." <> message,
          %{
            context: history(socket)
          }
        )
      end)

    {:noreply,
     assign(socket, :history, socket.assigns.history ++ [new_item])
     |> assign(:task, task)
     |> assign(:form_size, 24)}
  end

  @impl true
  def handle_info({ref, message}, socket) when socket.assigns.task.ref == ref do
    Process.demonitor(ref, [:flush])
    add_bot_message(socket, message)
  end

  defp add_bot_message(socket, message) do
    new_id = "message_#{Enum.count(socket.assigns.history) + 1}"
    new_item = %{role: :assistant, id: new_id, message: message}

    {:noreply,
     assign(socket, :history, socket.assigns.history ++ [new_item]) |> assign(:task, nil)}
  end

  defp history(socket) do
    messages =
      for %{message: message} <- socket.assigns.history do
        message
      end

    Enum.join(messages, "\n")
  end
end
