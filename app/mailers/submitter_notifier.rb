require 'notifier'

class SubmitterNotifier < Notifier
  def notify
    mail to: collector.email,
      subject: "New Contact: #{submitter.fullname}"
  end
end

