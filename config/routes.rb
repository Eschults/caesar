Rails.application.routes.draw do
  get "/", to: "caesar#home"
  get "/decrypt" => "caesar#decrypt"
end
