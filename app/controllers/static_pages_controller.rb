class StaticPagesController < ApplicationController
  def index
  end
  
  def landing_page
    @featured_product = Product.first
    @products = Product.last(3)
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'postitherepls@aol.de',
      :subject => "A new contact form meddage from #{@name}",
      :body => @message).deliver_now
  end
end
