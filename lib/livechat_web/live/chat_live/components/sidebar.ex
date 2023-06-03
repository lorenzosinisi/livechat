defmodule LivechatWeb.ChatLive.Components.Sidebar do
  use LivechatWeb, :html

  def sidebar(assigns) do
    ~H"""
    <.desktop_sidebar />
    """
  end

  # defp mobile_sidebar(assigns) do
  #   ~H"""
  #   <!-- Off-canvas menu for mobile, show/hide based on off-canvas menu state. -->
  #   <div class="relative z-50 lg:hidden" role="dialog" aria-modal="true">
  #     <!--
  #     Off-canvas menu backdrop, show/hide based on off-canvas menu state.
  #
  #     Entering: "transition-opacity ease-linear duration-300"
  #       From: "opacity-0"
  #       To: "opacity-100"
  #     Leaving: "transition-opacity ease-linear duration-300"
  #       From: "opacity-100"
  #       To: "opacity-0"
  #   -->
  #     <div class="fixed inset-0 bg-gray-900/80"></div>
  #
  #     <div class="fixed inset-0 flex">
  #       <!--
  #       Off-canvas menu, show/hide based on off-canvas menu state.
  #
  #       Entering: "transition ease-in-out duration-300 transform"
  #         From: "-translate-x-full"
  #         To: "translate-x-0"
  #       Leaving: "transition ease-in-out duration-300 transform"
  #         From: "translate-x-0"
  #         To: "-translate-x-full"
  #     -->
  #       <div class="relative mr-16 flex w-full max-w-xs flex-1">
  #         <!--
  #         Close button, show/hide based on off-canvas menu state.
  #
  #         Entering: "ease-in-out duration-300"
  #           From: "opacity-0"
  #           To: "opacity-100"
  #         Leaving: "ease-in-out duration-300"
  #           From: "opacity-100"
  #           To: "opacity-0"
  #       -->
  #         <div class="absolute left-full top-0 flex w-16 justify-center pt-5">
  #           <button type="button" class="-m-2.5 p-2.5">
  #             <span class="sr-only">Close sidebar</span>
  #             <svg
  #               class="h-6 w-6 text-white"
  #               fill="none"
  #               viewBox="0 0 24 24"
  #               stroke-width="1.5"
  #               stroke="currentColor"
  #               aria-hidden="true"
  #             >
  #               <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
  #             </svg>
  #           </button>
  #         </div>
  #         <!-- Sidebar component, swap this element with another sidebar if you like -->
  #         <div class="flex grow flex-col gap-y-5 overflow-y-auto bg-gray-900 px-6 pb-4 ring-1 ring-white/10">
  #           <div class="flex h-16 shrink-0 items-center">
  #             <img
  #               class="h-8 w-auto"
  #               src="https://tailwindui.com/img/logos/mark.svg?color=indigo&shade=500"
  #               alt="Your Company"
  #             />
  #           </div>
  #           <nav class="flex flex-1 flex-col">
  #             <ul role="list" class="flex flex-1 flex-col gap-y-7">
  #               <li>
  #                 <ul role="list" class="-mx-2 space-y-1">
  #                   <li>
  #                     <!-- Current: "bg-gray-800 text-white", Default: "text-gray-400 hover:text-white hover:bg-gray-800" -->
  #                     <a
  #                       href="#"
  #                       class="bg-gray-800 text-white group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <svg
  #                         class="h-6 w-6 shrink-0"
  #                         fill="none"
  #                         viewBox="0 0 24 24"
  #                         stroke-width="1.5"
  #                         stroke="currentColor"
  #                         aria-hidden="true"
  #                       >
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M2.25 12l8.954-8.955c.44-.439 1.152-.439 1.591 0L21.75 12M4.5 9.75v10.125c0 .621.504 1.125 1.125 1.125H9.75v-4.875c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21h4.125c.621 0 1.125-.504 1.125-1.125V9.75M8.25 21h8.25"
  #                         />
  #                       </svg>
  #                       Dashboard
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <svg
  #                         class="h-6 w-6 shrink-0"
  #                         fill="none"
  #                         viewBox="0 0 24 24"
  #                         stroke-width="1.5"
  #                         stroke="currentColor"
  #                         aria-hidden="true"
  #                       >
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M15 19.128a9.38 9.38 0 002.625.372 9.337 9.337 0 004.121-.952 4.125 4.125 0 00-7.533-2.493M15 19.128v-.003c0-1.113-.285-2.16-.786-3.07M15 19.128v.106A12.318 12.318 0 018.624 21c-2.331 0-4.512-.645-6.374-1.766l-.001-.109a6.375 6.375 0 0111.964-3.07M12 6.375a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zm8.25 2.25a2.625 2.625 0 11-5.25 0 2.625 2.625 0 015.25 0z"
  #                         />
  #                       </svg>
  #                       Team
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <svg
  #                         class="h-6 w-6 shrink-0"
  #                         fill="none"
  #                         viewBox="0 0 24 24"
  #                         stroke-width="1.5"
  #                         stroke="currentColor"
  #                         aria-hidden="true"
  #                       >
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M2.25 12.75V12A2.25 2.25 0 014.5 9.75h15A2.25 2.25 0 0121.75 12v.75m-8.69-6.44l-2.12-2.12a1.5 1.5 0 00-1.061-.44H4.5A2.25 2.25 0 002.25 6v12a2.25 2.25 0 002.25 2.25h15A2.25 2.25 0 0021.75 18V9a2.25 2.25 0 00-2.25-2.25h-5.379a1.5 1.5 0 01-1.06-.44z"
  #                         />
  #                       </svg>
  #                       Projects
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <svg
  #                         class="h-6 w-6 shrink-0"
  #                         fill="none"
  #                         viewBox="0 0 24 24"
  #                         stroke-width="1.5"
  #                         stroke="currentColor"
  #                         aria-hidden="true"
  #                       >
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 012.25-2.25h13.5A2.25 2.25 0 0121 7.5v11.25m-18 0A2.25 2.25 0 005.25 21h13.5A2.25 2.25 0 0021 18.75m-18 0v-7.5A2.25 2.25 0 015.25 9h13.5A2.25 2.25 0 0121 11.25v7.5"
  #                         />
  #                       </svg>
  #                       Calendar
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <svg
  #                         class="h-6 w-6 shrink-0"
  #                         fill="none"
  #                         viewBox="0 0 24 24"
  #                         stroke-width="1.5"
  #                         stroke="currentColor"
  #                         aria-hidden="true"
  #                       >
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M15.75 17.25v3.375c0 .621-.504 1.125-1.125 1.125h-9.75a1.125 1.125 0 01-1.125-1.125V7.875c0-.621.504-1.125 1.125-1.125H6.75a9.06 9.06 0 011.5.124m7.5 10.376h3.375c.621 0 1.125-.504 1.125-1.125V11.25c0-4.46-3.243-8.161-7.5-8.876a9.06 9.06 0 00-1.5-.124H9.375c-.621 0-1.125.504-1.125 1.125v3.5m7.5 10.375H9.375a1.125 1.125 0 01-1.125-1.125v-9.25m12 6.625v-1.875a3.375 3.375 0 00-3.375-3.375h-1.5a1.125 1.125 0 01-1.125-1.125v-1.5a3.375 3.375 0 00-3.375-3.375H9.75"
  #                         />
  #                       </svg>
  #                       Documents
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <svg
  #                         class="h-6 w-6 shrink-0"
  #                         fill="none"
  #                         viewBox="0 0 24 24"
  #                         stroke-width="1.5"
  #                         stroke="currentColor"
  #                         aria-hidden="true"
  #                       >
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M10.5 6a7.5 7.5 0 107.5 7.5h-7.5V6z"
  #                         />
  #                         <path
  #                           stroke-linecap="round"
  #                           stroke-linejoin="round"
  #                           d="M13.5 10.5H21A7.5 7.5 0 0013.5 3v7.5z"
  #                         />
  #                       </svg>
  #                       Reports
  #                     </a>
  #                   </li>
  #                 </ul>
  #               </li>
  #               <li>
  #                 <div class="text-xs font-semibold leading-6 text-gray-400">Your teams</div>
  #                 <ul role="list" class="-mx-2 mt-2 space-y-1">
  #                   <li>
  #                     <!-- Current: "bg-gray-800 text-white", Default: "text-gray-400 hover:text-white hover:bg-gray-800" -->
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <span class="flex h-6 w-6 shrink-0 items-center justify-center rounded-lg border border-gray-700 bg-gray-800 text-[0.625rem] font-medium text-gray-400 group-hover:text-white">
  #                         H
  #                       </span>
  #                       <span class="truncate">Heroicons</span>
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <span class="flex h-6 w-6 shrink-0 items-center justify-center rounded-lg border border-gray-700 bg-gray-800 text-[0.625rem] font-medium text-gray-400 group-hover:text-white">
  #                         T
  #                       </span>
  #                       <span class="truncate">Tailwind Labs</span>
  #                     </a>
  #                   </li>
  #                   <li>
  #                     <a
  #                       href="#"
  #                       class="text-gray-400 hover:text-white hover:bg-gray-800 group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
  #                     >
  #                       <span class="flex h-6 w-6 shrink-0 items-center justify-center rounded-lg border border-gray-700 bg-gray-800 text-[0.625rem] font-medium text-gray-400 group-hover:text-white">
  #                         W
  #                       </span>
  #                       <span class="truncate">Workcation</span>
  #                     </a>
  #                   </li>
  #                 </ul>
  #               </li>
  #               <li class="mt-auto">
  #                 <a
  #                   href="#"
  #                   class="group -mx-2 flex gap-x-3 rounded-md p-2 text-sm font-semibold leading-6 text-gray-400 hover:bg-gray-800 hover:text-white"
  #                 >
  #                   <svg
  #                     class="h-6 w-6 shrink-0"
  #                     fill="none"
  #                     viewBox="0 0 24 24"
  #                     stroke-width="1.5"
  #                     stroke="currentColor"
  #                     aria-hidden="true"
  #                   >
  #                     <path
  #                       stroke-linecap="round"
  #                       stroke-linejoin="round"
  #                       d="M9.594 3.94c.09-.542.56-.94 1.11-.94h2.593c.55 0 1.02.398 1.11.94l.213 1.281c.063.374.313.686.645.87.074.04.147.083.22.127.324.196.72.257 1.075.124l1.217-.456a1.125 1.125 0 011.37.49l1.296 2.247a1.125 1.125 0 01-.26 1.431l-1.003.827c-.293.24-.438.613-.431.992a6.759 6.759 0 010 .255c-.007.378.138.75.43.99l1.005.828c.424.35.534.954.26 1.43l-1.298 2.247a1.125 1.125 0 01-1.369.491l-1.217-.456c-.355-.133-.75-.072-1.076.124a6.57 6.57 0 01-.22.128c-.331.183-.581.495-.644.869l-.213 1.28c-.09.543-.56.941-1.11.941h-2.594c-.55 0-1.02-.398-1.11-.94l-.213-1.281c-.062-.374-.312-.686-.644-.87a6.52 6.52 0 01-.22-.127c-.325-.196-.72-.257-1.076-.124l-1.217.456a1.125 1.125 0 01-1.369-.49l-1.297-2.247a1.125 1.125 0 01.26-1.431l1.004-.827c.292-.24.437-.613.43-.992a6.932 6.932 0 010-.255c.007-.378-.138-.75-.43-.99l-1.004-.828a1.125 1.125 0 01-.26-1.43l1.297-2.247a1.125 1.125 0 011.37-.491l1.216.456c.356.133.751.072 1.076-.124.072-.044.146-.087.22-.128.332-.183.582-.495.644-.869l.214-1.281z"
  #                     />
  #                     <path
  #                       stroke-linecap="round"
  #                       stroke-linejoin="round"
  #                       d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"
  #                     />
  #                   </svg>
  #                   Settings
  #                 </a>
  #               </li>
  #             </ul>
  #           </nav>
  #         </div>
  #       </div>
  #     </div>
  #   </div>
  #   """
  # end
  #
  defp desktop_sidebar(assigns) do
    ~H"""
    <div class="hidden lg:fixed lg:inset-y-0 lg:z-50 lg:flex lg:w-72 lg:flex-col">
      <!-- Sidebar component, swap this element with another sidebar if you like -->
      <div class="flex grow flex-col gap-y-2 overflow-y-auto bg-gray-900 px-6 pb-4">
        <div class="flex shrink-0 items-center my-2">
          <.new_chat_button />
        </div>
        <nav class="flex flex-1 flex-col">
          <ul role="list" class="flex flex-1 flex-col gap-y-7">
            <li>
              <.chat_list />
            </li>
            <li class="mt-auto border-t border-gray-400 py-2">
              <a
                href="#"
                class="group -mx-2 flex gap-x-3 rounded-md p-2 text-sm font-semibold leading-6 text-gray-400 hover:bg-gray-800 hover:text-white"
              >
                <.user_circle_icon class="h-3 w-3" />
                <span>username</span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
    """
  end

  defp new_chat_button(assigns) do
    ~H"""
    <button class="text-sm inline-flex items-center space-x-4 px-2 text-gray-400 w-full py-2 border border-gray-400 rounded-md hover:bg-gray-800 hover:text-white">
      <.plus_icon class="h-4 w-4" />
      <span>New Chat</span>
    </button>
    """
  end

  defp chat_list(assigns) do
    ~H"""
    <ul role="list" class="-mx-2 space-y-1">
      <.chat_list_item active?={true} title="New Chat 1" />
      <.chat_list_item title="New Chat 2" />
      <.chat_list_item title="New Chat 3" />
    </ul>
    """
  end

  attr :active?, :boolean, default: false
  attr :title, :string, default: ""

  defp chat_list_item(assigns) do
    ~H"""
    <li>
      <a
        href="#"
        class={[
          @active? && "bg-gray-800 text-white",
          not @active? && "text-gray-400 hover:text-white hover:bg-gray-800",
          "group flex gap-x-3 rounded-md p-2 text-sm leading-6 font-semibold"
        ]}
      >
        <.chat_bubble_bottom_center_icon />
        <%= @title %>
      </a>
    </li>
    """
  end

  attr :class, :string, default: "h-6 w-6"

  defp chat_bubble_bottom_center_icon(assigns) do
    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      stroke-width="1.5"
      stroke="currentColor"
      class={@class}
    >
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        d="M2.25 12.76c0 1.6 1.123 2.994 2.707 3.227 1.068.157 2.148.279 3.238.364.466.037.893.281 1.153.671L12 21l2.652-3.978c.26-.39.687-.634 1.153-.67 1.09-.086 2.17-.208 3.238-.365 1.584-.233 2.707-1.626 2.707-3.228V6.741c0-1.602-1.123-2.995-2.707-3.228A48.394 48.394 0 0012 3c-2.392 0-4.744.175-7.043.513C3.373 3.746 2.25 5.14 2.25 6.741v6.018z"
      />
    </svg>
    """
  end

  attr :class, :string, default: "h-6 w-6"

  defp plus_icon(assigns) do
    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      stroke-width="1.5"
      stroke="currentColor"
      class={@class}
    >
      <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
    </svg>
    """
  end

  attr :class, :string, default: "h-3 w-3"

  defp user_circle_icon(assigns) do
    ~H"""
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      stroke-width="1.5"
      stroke="currentColor"
      class="w-6 h-6"
    >
      <path
        stroke-linecap="round"
        stroke-linejoin="round"
        d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z"
      />
    </svg>
    """
  end
end
