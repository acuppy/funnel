class Notifier < ApplicationMailer

  def initialize(submission)
    super()
    @submitter = submission.submitter
    @collector = submission.collector
  end

  protected

  attr_reader :submitter, :collector
end
