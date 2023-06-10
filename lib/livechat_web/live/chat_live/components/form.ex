defmodule LivechatWeb.ChatLive.Components.Form do
  use LivechatWeb, :live_component

  @impl true
  def render(assigns) do
    ~H"""
    <form
      phx-submit="send_message"
      class="w-full stretch mx-2 flex flex-row gap-3 last:mb-2 md:mx-4 md:last:mb-6 lg:mx-auto lg:max-w-2xl xl:max-w-3xl"
    >
      <div class="relative flex h-full flex-1 items-stretch md:flex-col">
        <div class="flex
      flex-col w-full py-2 flex-grow md:py-3 md:pl-4 max-w-md mx-auto mt-8
      relative border border-black/10 bg-white dark:border-gray-900/50
      dark:text-white dark:bg-gray-700 rounded-md shadow-[0_0_10px_rgba(0,0,0,0.10)]
      dark:shadow-[0_0_15px_rgba(0,0,0,0.10)]">
          <textarea
            id="prompt-textarea"
            tabindex="0"
            data-id="request-:r2n:-5"
            phx-key="keydown"
            phx-change="handleKeyDown"
            rows="1"
            name="message"
            placeholder="Send a message."
            class="m-0 w-full resize-none border-0 bg-transparent p-0 pr-10 focus:ring-0 focus-visible:ring-0 dark:bg-transparent md:pr-12 pl-3 md:pl-0"
            style={[
              "overflow-y: scroll; max-height: 200px;",
              "height: #{@form_size}px"
            ]}
          />
          <button
            disabled={if @loading, do: true, else: false}
            class="absolute p-1 rounded-md text-gray-500 bottom-1.5 md:bottom-2.5 hover:bg-gray-100 enabled:dark:hover:text-gray-400 dark:hover:bg-gray-900 disabled:hover:bg-transparent dark:disabled:hover:bg-transparent right-1 md:right-2 disabled:opacity-40"
          >
            <%= if @loading do %>
              <div class="animate-spin rounded-full h-4 w-4 border-t-1 border-b-2 border-gray-900" />
            <% else %>
              <svg
                stroke="currentColor"
                fill="none"
                stroke-width="2"
                viewBox="0 0 24 24"
                stroke-linecap="round"
                stroke-linejoin="round"
                class="h-4 w-4 mr-1"
                height="1em"
                width="1em"
                xmlns="http://www.w3.org/2000/svg"
              >
                <line x1="22" y1="2" x2="11" y2="13"></line>
                <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
              </svg>
            <% end %>
          </button>
        </div>
      </div>
    </form>
    """
  end
end
