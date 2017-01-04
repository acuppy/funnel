class Contact < ActiveRecord::Base
  belongs_to :collector, class_name: 'User'

  after_save do
    submission = Submittion.from_contact(self)
    Notifier.welcome_email(submission).deliver
  end
end
