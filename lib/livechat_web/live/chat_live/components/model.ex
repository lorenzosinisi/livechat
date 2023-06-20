defmodule LivechatWeb.ChatLive.Components.Model do
  use LivechatWeb, :html

  attr :models, :map, required: true
  attr :selected_model, :atom, required: true

  def model_select(assigns) do
    ~H"""
    <div class="relative mt-2">
      <button
        type="button"
        phx-click={
          JS.toggle(
            to: "#model-select-list",
            out: {"ease-in duration-100", "opacity-100", "opacity-0"}
          )
        }
        class="relative w-full cursor-default rounded-md bg-white py-1.5 pl-3 pr-10 text-left text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 sm:text-sm sm:leading-6"
        aria-haspopup="listbox"
        aria-expanded="true"
        aria-labelledby="listbox-label"
      >
        <span class="inline-flex w-full truncate">
          <%= Map.fetch!(@models, @selected_model) %>
        </span>
        <span class="pointer-events-none absolute inset-y-0 right-0 flex items-center pr-2">
          <.chevron_down_icon class="h-4 w-4" />
        </span>
      </button>
      <ul
        phx-click-away={
          JS.hide(
            to: "#model-select-list",
            transition: {"ease-in duration-100", "opacity-100", "opacity-0"}
          )
        }
        id="model-select-list"
        class="hidden absolute z-10 mt-1 max-h-60 w-full overflow-auto rounded-md bg-white py-1 text-base shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none sm:text-sm"
        tabindex="-1"
        role="listbox"
        aria-labelledby="listbox-label"
        aria-activedescendant="listbox-option-3"
      >
        <.model_select_option
          :for={{model_key, model_value} <- @models}
          model={model_key}
          description={model_value}
          selected?={model_key == @selected_model}
        />
      </ul>
    </div>
    """
  end

  defp model_select_option(assigns) do
    ~H"""
    <!--
      Select option, manage highlight styles based on mouseenter/mouseleave and keyboard navigation.

      Highlighted: "bg-indigo-600 text-white", Not Highlighted: "text-gray-900"
    -->
    <li
      phx-click="change_selected_model"
      phx-value-model={@model}
      class={[
        @selected? && "bg-gray-200",
        "text-gray-900 relative cursor-pointer select-none py-2 pl-3 pr-9 hover:bg-gray-200"
      ]}
      id="listbox-option-0"
      role="option"
    >
      <div class="flex">
        <!-- Selected: "font-semibold", Not Selected: "font-normal" -->
        <span class="font-normal"><%= @description %></span>
      </div>
      <!--
        Checkmark, only display for selected option.

        Highlighted: "text-white", Not Highlighted: "text-indigo-600"
      -->
      <span :if={@selected?} class="text-indigo-600 absolute inset-y-0 right-0 flex items-center pr-4">
        <.checkmark_icon class="h-5 w-5" />
      </span>
    </li>
    """
  end

  attr :class, :string, default: "h-6 w-6"

  defp checkmark_icon(assigns) do
    ~H"""
    <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
      <path
        fill-rule="evenodd"
        d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z"
        clip-rule="evenodd"
      />
    </svg>
    """
  end

  attr :class, :string, default: "h-6 w-6"

  defp chevron_down_icon(assigns) do
    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      stroke-width="1.5"
      stroke="currentColor"
      class={@class}
    >
      <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 8.25l-7.5 7.5-7.5-7.5" />
    </svg>
    """
  end
end

