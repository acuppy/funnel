class User < ActiveRecord::Base
  has_many :contacts, foreign_key: :collector_id

  def fullname
    @fullname ||= [firstname, lastname].compact * ' '
  end

  def gravatar_url
    require 'gravatar'
    Gravatar.new.url email
  end
end
