defmodule ElixirAngular.TwitterService do
  use GenServer
  @name TS

  require Logger

  def start_link(opts \\ []) do
    GenServer.start_link(__MODULE__, :ok, opts ++ [name: TS])
  end

  def init(_) do
    Logger.info "Starting ElixirAngular.TwitterService..."
    {:ok, %{} }
  end

  def subscribe_to_topic(topic) do
    Logger.info "Subscribing to #{topic}"
    GenServer.cast @name, {:add_topic, topic}
  end

  def handle_cast({:add_topic, topic}, state) do
    hashtag = "#" <> topic

    spawn fn ->
      for tweet <- ExTwitter.stream_filter(track: hashtag) do
        broadcast_tweet topic, tweet
      end
    end
    {:noreply, state}
  end

  defp broadcast_tweet(topic, content) do
    message = %{
      id: content.id,
      body: content.text,
      image: content.user.profile_image_url,
      user: content.user.name
    }

    ElixirAngular.Endpoint.broadcast "walls:" <> topic, "new_tweet", message

  end

end
