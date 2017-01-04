require "rails_helper"

describe Notifier, type: :mailer do
  let(:submitter) {
    double :submitter,
      email: "foo@example.com",
      fullname: "John Doe"
  }
  let(:collector) {
    double :collector,
      email: "bar@example.com",
      fullname: "Bob Smith"
  }
  let(:submission) {
    Submission.new submitter: submitter,
      collector: collector
  }

  describe 'notifying the submitter' do
    it "sends a notification to the submitter's email" do
      mail = described_class.submitter_details(submission)
      expect(mail)
        .to have_subject "New Contact: #{submitter.fullname}"
    end
  end

  describe 'notifying the collector' do
    it "sends a notification to the collectors's email" do
      mail = described_class.collector_details(submission)
      expect(mail)
        .to have_subject "Great to meet you #{submitter.fullname}!"
    end
  end
end
