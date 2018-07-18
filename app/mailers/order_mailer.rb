class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_sending.subject
  #
  def order_sending(order)
    @order = order

    mail to: "enik@mail.ua"
  end
end
