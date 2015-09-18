require "sinatra"

set :port => 80
set :logging => false
set :enviroument => "producton"

get "*" do
  "Good good study, day day up! "
end
