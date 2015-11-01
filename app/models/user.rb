class User < ActiveRecord::Base
  def fullname
    @fullname ||= [firstname, lastname].compact * ' '
  end
end
