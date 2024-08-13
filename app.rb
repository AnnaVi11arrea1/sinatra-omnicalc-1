require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home, { :layout => :layout })
end

get("/square/new") do
  erb(:square, { :layout => :layout })
end

get("/square/results") do
  @the_num = params.fetch("user_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results, { :layout => :layout })
end

get("/square_root/new") do
  erb(:square_root, { :layout => :layout })
end

get("/random/new") do
  erb(:random, { :layout => :layout })
end

get("/payment/new") do
  erb(:payment, { :layout => :layout })
end
