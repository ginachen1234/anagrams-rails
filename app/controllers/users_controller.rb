class UsersController < ApplicationController

  def word_list

    respond_to do |format|
    format.js { render :json }
    format.html


  end
end




