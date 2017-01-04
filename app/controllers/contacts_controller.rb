class ContactsController < ApplicationController
  def create
    @contact = collector.contacts.build contact_params

    if @contact.save
      flash[:notice] =
        "Thank you! You will receive an email with my contact info shortly."
      redirect_to user_page_path username: username
    end
  end

  private

  def collector
    @collector ||= User.find_by username: username
  end

  def contact_params
    params.require(:contact).permit :fullname, :email
  end

  def username
    params.fetch :username
  end
end
