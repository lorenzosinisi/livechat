defmodule LiveChat.Model do
  defmodule ModelBehaviour do
    @callback serving() :: Nx.Serving.t()
    @callback name() :: String.t()
    @callback generate(text :: String.t()) :: binary()
  end

  @allowed_models Application.compile_env(:livechat, LiveChat.Model)[:models]

  def list_models, do: @allowed_models

  def generate(model_name, text, opts \\ %{}) do
    Map.fetch!(@allowed_models, model_name).generate(text, opts)
  end

  defmodule FlanT5XL do
    @moduledoc """
    The most complete model and the closest to ChatGPT

    read more: https://aws.amazon.com/blogs/machine-learning/zero-shot-prompting-for-the-flan-t5-foundation-model-in-amazon-sagemaker-jumpstart/
    """
    @behaviour ModelBehaviour

    @impl true
    def name, do: "google/flan-t5-xl"

    @impl true
    def serving() do
      {:ok, model} = Bumblebee.load_model({:hf, name()})
      {:ok, tokenizer} = Bumblebee.load_tokenizer({:hf, name()})
      {:ok, generation_config} = Bumblebee.load_generation_config({:hf, name()})

      Bumblebee.Text.generation(
        model,
        tokenizer,
        Map.put(generation_config, :max_new_tokens, 1000)
      )
    end

    @impl true
    def generate(text, _opts \\ %{}) do
      result = Nx.Serving.batched_run(LiveChat.Model.FlanT5Base.Serving, text)
      %{results: [%{text: message}]} = result
      message
    end
  end

  defmodule FlanT5Large do
    @moduledoc """
    The most complete model and the closest to ChatGPT

    read more: https://aws.amazon.com/blogs/machine-learning/zero-shot-prompting-for-the-flan-t5-foundation-model-in-amazon-sagemaker-jumpstart/
    """
    @behaviour ModelBehaviour

    @impl true
    def name, do: "google/flan-t5-large"

    @impl true
    def serving() do
      {:ok, model} = Bumblebee.load_model({:hf, name()})
      {:ok, tokenizer} = Bumblebee.load_tokenizer({:hf, name()})
      {:ok, generation_config} = Bumblebee.load_generation_config({:hf, name()})

      Bumblebee.Text.generation(
        model,
        tokenizer,
        Map.put(generation_config, :max_new_tokens, 1000)
      )
    end

    @impl true
    def generate(text, _opts \\ %{}) do
      result = Nx.Serving.batched_run(LiveChat.Model.FlanT5Base.Serving, text)
      %{results: [%{text: message}]} = result
      message
    end
  end

  defmodule FlanT5Base do
    @behaviour ModelBehaviour

    @impl true
    def name, do: "google/flan-t5-base"

    @impl true
    def serving() do
      {:ok, model} = Bumblebee.load_model({:hf, name()})
      {:ok, tokenizer} = Bumblebee.load_tokenizer({:hf, name()})
      {:ok, generation_config} = Bumblebee.load_generation_config({:hf, name()})

      Bumblebee.Text.generation(
        model,
        tokenizer,
        Map.put(generation_config, :max_new_tokens, 1000)
      )
    end

    @impl true
    def generate(text, _opts \\ %{}) do
      result = Nx.Serving.batched_run(LiveChat.Model.FlanT5Base.Serving, text)
      %{results: [%{text: message}]} = result
      message
    end
  end
end
