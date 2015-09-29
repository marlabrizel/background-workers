class GenerateBooksJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    Book.generate

    redirect_to :back, success: 'The books were generated successfully.'
  end
end
