defmodule LivechatWeb.ChatLive.Components.Message do
  use LivechatWeb, :live_component

  @impl true
  def render(assigns) do
    ~H"""
    <div
      phx-hover={}
      id={@id}
      class={[
        @role == :user && "bg-white",
        @role == :assistant && "bg-gray-100",
        "text-gray-900"
      ]}
    >
      <div class="markdown prose max-w-2xl mx-auto p-4">
        <p><%= @message %></p>
      </div>
    </div>
    """
  end
end

