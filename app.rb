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
get("/square_root/results") do
  @the_num2 = params.fetch("user_number2").to_f
  @the_result2 = @the_num2 ** 0.5
  erb(:square_root_results, { :layout => :layout })
end



get("/random/new") do
  erb(:random, { :layout => :layout })
end
post("random/result") do
  min = params.fetch("user_min").to_f
  max = params.fetch("user_max").to_f
end
get("/random/result") do
  @random_num = rand(min..max)
  erb(:random_result, { :layout => :layout })
end

get("/payment/new") do
  erb(:payment, { :layout => :layout })
end
get("/payment/result") do
  rate_pp = params.fetch("r").to_f
  rate = ((rate_pp/100)/12).to_f
  r = round(rate).to_fs(:percentage, { :precision => 4 })
  num_periods = params.fetch("n").to_i
  n = num_periods * 12
  pv = params.fetch("pv").to_f
  numr = (r*pv).to_f
  denom = (1-(1 + r)**-n).to_f
  @payment = (numer/denom).to_fs(:currency)
  
  erb(:payment_result, { :layout => :layout })
end
