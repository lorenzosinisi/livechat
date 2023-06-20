# Elixir ChatGPT Clone with Huggingface Models

![Elixir](https://img.shields.io/badge/Elixir-1.12.2-4B275F.svg?style=flat&logo=elixir)
![Phoenix](https://img.shields.io/badge/Phoenix-1.6.0-8751A1.svg?style=flat&logo=phoenix)
![Huggingface](https://img.shields.io/badge/Huggingface-4.9.1-2979FF.svg?style=flat&logo=huggingface)

This is a pure Elixir application that serves as a ChatGPT clone using pre-trained models from Huggingface. It utilizes the Phoenix LiveView framework to provide a dynamic and interactive user interface. Users can choose their favorite models from a dropdown list to interact with, and the application is not limited to GPT3 and GPT4 but can potentially run any model hosted on Huggingface's backend.

## Features

- Interactive Chat Interface: Users can engage in conversational interactions with the selected Huggingface model.
- Dynamic Model Selection: Users can choose from a dropdown list of available models to interact with.
- Pre-trained Huggingface Models: The application leverages the power of Huggingface's models for generating high-quality responses.
- Multi-model Support: The application is not limited to a specific version or type of model, allowing for easy integration with various Huggingface models.
- Phoenix LiveView: The application utilizes Phoenix LiveView to provide real-time updates without requiring page reloads.

## Prerequisites

- Elixir 1.12.2 or higher
- Phoenix 1.6.0 or higher

## Installation

1. Clone the repository:

```bash
git clone https://github.com/lorenzosinisi/livechat
cd livechat
```

2. Install dependencies:

```bash
mix deps.get
```

3. Start the Phoenix server:

```bash
mix phx.server
```

4. Visit `http://localhost:4000` in your web browser.

## Configuration

The application requires configuring the Huggingface model(s) to be used. To do so:

1. Open the `config/runtime.exs` file.

2. Locate the `config :chatgpt_clone` section.

3. Update the `models` list with the desired Huggingface model names, API keys, and other relevant configuration options.

```elixir
config :livechat, LiveChat.Model,
  models: %{
    "google/flan-t5-base" => LiveChat.Model.FlanT5Base
    # "google/flan-t5-large" => LiveChat.Model.FlanT5Large <-- comment out or add the models you want and the dropdown will pick it up
  }


```

4. Save the changes.

## Usage

1. Start the Phoenix server:

```bash
mix phx.server
```

2. Visit `http://localhost:4000` in your web browser.

3. Select a model from the dropdown list.

4. Engage in a conversation with the selected model by entering messages in the input field.

## Contributing

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please open an issue on the [GitHub repository]([https://github.com/your-username/elixir-chatgpt-clone](https://github.com/lorenzosinisi/livechat)). Pull requests are also appreciated.


## License

There is no licence on this thing, no idea

---

**Note:** The great https://twitter.com/sean_moriarity initially started this project ❤️ and it's a fork so the credit for a lot of this being possible goes to him, the Bumblebee team, and the entire Elixir team!

**Another note** This README was initially written by ChatGPT from OpenAI instead LOL
