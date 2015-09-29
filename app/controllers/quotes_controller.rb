class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def create
    GenerateQuotesJob.(wait_until: Time.current.next_week).perform_later  
    redirect_to :back, success: 'The quotes were generated successfully.'
  end
end
