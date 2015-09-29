# default will queue all jobs. can name jobs however you want
# args are optional
class GenerateQuotesJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    Quote.generate
    redirect_to :back, success: 'The quotes were generated successfully.'
  end
end
