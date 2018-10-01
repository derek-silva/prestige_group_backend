class StocksChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'stocks'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
  	stock = Stock.find(data["id"])
    stock.update!(price: data["text"])
    ActionCable.server.broadcast('stocks', data)
  end

end
