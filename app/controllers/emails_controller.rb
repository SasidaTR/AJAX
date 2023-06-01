class EmailsController < ApplicationController
  def new
    @email = Email.new
  end
  
  def index
    @emails = Email.all
  end
  
  def create
    @email = Email.create(object: Faker::Lorem.sentence, body: Faker::Lorem.paragraph)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def destroy
    email = Email.find(params[:id])
    email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end

  def mark_as_unread
    email = Email.find(params[:id])
    email.update(read: false)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end  
end
