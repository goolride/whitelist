local a = _G.Key or "None";
local b = game.Players.LocalPlayer.UserId;
local thing = game:HttpGet("https://https://hyperionx-8c32d08c9149.herokuapp.com/checkwl?Key="..a.."&User="..b, true)
if thing == "Not Whitelisted!" then
game.Players.LocalPlayer:Kick("Not Whitelisted/Incorrect Key")
return;
elseif thing == "Nope." then
game.Players.LocalPlayer:Kick("Invalid Roblox ID/Not Whitelisted")
return;
end
if thing == "Correct" then
   print("YAY YOUR WHITELISTED!") ;
   game.Players.LocalPlayer:Kick("Whitelisted")
end
