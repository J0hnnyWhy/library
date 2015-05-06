require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/authors")
require("./lib/books")
require("./lib/checkouts")
require("./lib/copies")
require("./lib/patrons")
require("pg")


DB = PG.connect({:dbname => "library"})

get("/") do
  
  erb(:index)
end
