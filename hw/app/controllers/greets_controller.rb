class GreetsController < ApplicationController

  def index
    if params[:salutation].nil?
      @hello ="Hello"
    else
      @hello = params['salutation']
    end
  end
end
