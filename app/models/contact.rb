class Contact < ActiveRecord::Base
  belongs_to :collector, class_name: 'User'
end
