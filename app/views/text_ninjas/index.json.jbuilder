json.array!(@text_ninjas) do |text_ninja|
  json.extract! text_ninja, :id, :index
  json.url text_ninja_url(text_ninja, format: :json)
end
