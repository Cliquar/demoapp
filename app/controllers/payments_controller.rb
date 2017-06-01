class PaymentsController < ApplicationController
  protect_from_forgery with: :null_session

  def create 
    token = params[:stripeToken]
    @product = Product.find(params[:product_id])
    @user = current_user
    begin
      charge = Stripe::Charge.create(
        :amount => (@product.price*100).to_i, # amount in cents, again
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )

      if charge.paid
        Order.create(product_id: @product.id, user_id: @user.id, total: @product.price)
        flash[:notice] = "Your payment was processed successfully"  
        
      end


    rescue Stripe::CardError => e
    # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product)
  end

end
