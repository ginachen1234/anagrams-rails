class UsersController < ApplicationController

  require 'open-uri'
  require 'net/http'


  def show


    uri = URI('https://gist.githubusercontent.com/Kalagan/3b26be21cbf65b62cf05ab549433314e/raw')
      data = Net::HTTP.get(uri)
      anagrams = data.split(/\n/)
    # @user = User.find(params[:id])
      @query = params[:query]
      @results = anagrams.select { |word| @query.split('').sort.join == word.split('').sort.join }
    # @vari = User.my_method

    respond_to do |format|
      format.js { render :json }
      format.html


    end
  end


end


