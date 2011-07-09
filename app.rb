require "rubygems"
require "sinatra"
require "haml"

set :haml, {:format => :html5 }

get "/" do
  haml :index
end

get "/timer/:min/:sec" do
  min = params[:min].to_i
  sec = params[:sec].to_i
  min = min + (sec / 60)
  sec = sec % 60
  timer = min.to_s.rjust(2, "0") + ":" + sec.to_s.rjust(2, "0")
  second = min * 60 + sec

  haml :timer, :locals => { :sec => second, :timer => timer, :message => params[:message] }
end
