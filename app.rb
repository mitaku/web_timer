require "rubygems"
require "sinatra"
require "haml"

set :haml, {:format => :html5 }

get "/" do
  "hello"
end

get "/timer/:min/:sec" do
  haml :test, :locals => { :param_min => params[:min], :param_sec => params[:sec] }
end

get "/countdown" do
  haml :countdown
end
