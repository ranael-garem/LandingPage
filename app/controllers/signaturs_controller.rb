class SignatursController < ApplicationController

	include SignatursHelper


	def index

	@signaturs = Signatur.all
	
	end
	
	def new

	@signatur = Signatur.new
	@signatur.user_id = current_user.id

	end


	def create

	@signatur = Signatur.new
  	if !params[:output].nil?
  	@signatur.image = addSignature(params[:output])
	end
	@signatur.user_id = current_user.id
	@signatur.save
	  @user = User.find(current_user.id)

     redirect_to user_path(@user)
	end


	def addSignature(data)
    require 'open3'
    instructions = JSON.parse(data).map { |h| "line #{h['mx'].to_i},#{h['my'].to_i} #{h['lx'].to_i},#{h['ly'].to_i}" } * ' '
    tempfile = Tempfile.new(["signature", '.png'])
    Open3.popen3("convert -size 298x55 xc:transparent -stroke blue -draw @- #{tempfile.path}") do |input, output, error|
    input.puts instructions
    end
    return tempfile
end

end
