
class JsonController < ApplicationController

  def testit()
     puts "Controller: params = #{params}"
     @answer = params[:photo] + "bar"
  end

end