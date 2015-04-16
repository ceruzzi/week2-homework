#https://www.youtube.com/watch?v=VPor5ErX_90

class ContactsController < ApplicationController

  def output
    @first_name=params[:first_name]
    @last_name=params[:last_name]
  end

end