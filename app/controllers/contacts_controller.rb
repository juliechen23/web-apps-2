class ContactsController < ApplicationController

  def show
    @contact = Contact.find_by({ "id" => params["id"] })
    @company = Company.find_by({ "id" => @contact["company_id"] })
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new
    @contact["first_name"] = parmas["contact"]["first_name"]
    @contact["last_name"] = parmas["contact"]["last_name"]
    @contact["email"] = parmas["contact"]["email"]
    @contact["phone_number"] = parmas["contact"]["phone_number"]
    @contact["company_id"] = parmas["contact"]["company_id"]
    @contact.save
    redirect_to "/companies/#{@contact["company_id"]}"
end

end
