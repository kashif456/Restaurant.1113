class TextNinjasController < ApplicationController


  def index
    #@text_ninjas = TextNinja.all
    #@text_ninjas = "hello"
    @text_ninjas = get_json
  end



  def get_json
      response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
      #response = HTTParty.get('http://localhost:3000/textninja/user.json')
      @data = JSON.parse(response.body)["items"]
      #source = "http://localhost:3000/qwerty/give_json.json"
      #@data = JSON.parse(JSON.load(source))
  end

end
