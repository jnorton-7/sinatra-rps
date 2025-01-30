require "sinatra"
require "sinatra/reloader"

get("/") do

erb(:homepage)

end

get("/rock") do
 moves = ["rock", "paper", "scissors"]

 @comp_move = moves.sample

 if @comp_move == "rock"
  @outcome = "tied"
 end
 
 if @comp_move == "paper"
  @outcome = "lost"
 end

 if @comp_move == "scissors"
  @outcome = "won"
 end

erb(:zebra)

end



get("/paper") do
  moves = ["rock", "paper", "scissors"]
 
  @comp_move = moves.sample
 
  if @comp_move == "paper"
   @outcome = "tied"
  end
  
  if @comp_move == "scissors"
   @outcome = "lost"
  end
 
  if @comp_move == "rock"
   @outcome = "won"
  end
 
 erb(:hippo)
 
 end


 get("/scissors") do
  moves = ["rock", "paper", "scissors"]
 
  @comp_move = moves.sample
 
  if @comp_move == "scissors"
   @outcome = "tied"
  end
  
  if @comp_move == "rock"
   @outcome = "lost"
  end
 
  if @comp_move == "paper"
   @outcome = "won"
  end
 
 erb(:lion)
 
 end
