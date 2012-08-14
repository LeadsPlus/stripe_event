class StripeEvent::WebhookController < StripeEvent::ApplicationController
  def event
    StripeEvent.publish(@event)
    head :ok
  end
end
