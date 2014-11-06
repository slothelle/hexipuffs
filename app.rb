class App < Sinatra::Base
  register Sinatra::AssetPack
  assets do
    js :application, ['js/*.js']
    css :application, ['/css/*.sass']
    css_compression :sass
  end

  # Rest of your app
end