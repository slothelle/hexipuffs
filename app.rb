register Sinatra::AssetPack
assets do
  js :application, ['js/*.js']
  css :application, ['/css/*.sass']
  css_compression :sass
end

get '/' do
  haml :index
end