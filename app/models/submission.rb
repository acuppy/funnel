class Submission
  attr_reader :submitter, :collector

  def initialize submitter:, collector:
    @submitter = submitter
    @collector = collector
  end
end
