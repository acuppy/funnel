class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@funnel.io"
  layout 'mailer'
end
