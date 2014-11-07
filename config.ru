require ::File.expand_path('../config',  __FILE__)

set :app_file, __FILE__

configure do
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || 'this is a secret shhhhh'

  set :views, File.join(Sinatra::Application.root, "views")
end

run Sinatra::Application
