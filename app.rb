require "rubygems"
require "sinatra"
require "haml"

set :haml, {:format => :html5 }

get "/" do
  haml :index
end

get "/timer/:min/:sec" do
  haml :timer, :locals => { :min => params[:min], :sec => params[:sec] }
end
