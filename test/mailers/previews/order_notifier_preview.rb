# Preview all emails at http://localhost:3000/rails/mailers/order_notifier
class OrderNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_notifier/received
  def received
    order = Order.first
    OrderNotifier.received(order)
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_notifier/shipped
  def shipped
    order = Order.first
    OrderNotifier.shipped(order)
  end

end
