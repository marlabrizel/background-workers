class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def create
    GenerateQuotesJob.perform_later  
    redirect_to :back, success: 'The quotes were generated successfully.'
  end
end
