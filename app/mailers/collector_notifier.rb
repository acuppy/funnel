require 'notifier'

class CollectorNotifier < Notifier
  def notify
    mail to: submitter.email,
      subject: "Great to meet you #{submitter.fullname}!"
  end
end
