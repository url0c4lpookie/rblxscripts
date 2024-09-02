local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "lmachild2011's Script Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
Tab:AddTextbox({
	Name = "WalkSpeed",
	Default = "16",
	TextDisappear = true,
	Callback = function(Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})
Tab:AddBind({
	Name = "Noclip",
	Default = Enum.KeyCode.LeftAlt,
	Hold = false,
	Callback = function()
	    for i, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
	        if part:IsA("BasePart") or part:IsA("MeshPart") then
	            part.CanCollide = false
	        end
	    end
	end    
})
Tab:AddButton({
	Name = "First Person Body",
	Callback = function()
 --//Variables\\--
local player =  game:GetService("Players").LocalPlayer
local character = player.character or player.characterAdded:Wait()

--//Events\\--
game:GetService("RunService").RenderStepped:Connect(function()
 --//Visible\\--
 for i, part in pairs(character:GetChildren())do
  if string.match(part.Name, "Arm") or string.match(part.Name, "Hand") or string.match(part.Name, "Torso") or string.match(part.Name, "Leg") then
   part.LocalTransparencyModifier = 0
  end
 end
end)
  	end
})
local Tab = Window:MakeTab({
	Name = "Lag Switch",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Lag Switch"
})
Tab:AddButton({
	Name = "Lag Switch (Click X to Activate)",
	Callback = function()
loadstring(game:HttpGet("raw.githubusercontent.com/urlocalpookie/rblxscripts/main/lagswitch.lua"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "DOORS",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
Tab:AddLabel("COMING SOON!")
local Tab = Window:MakeTab({
	Name = "MM2",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Teleport"
})
Tab:AddBind({
	Name = "Lobby",
	Default = Enum.KeyCode.L,
	Hold = false,
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Lobby.Spawns.SpawnLocation.CFrame
	end    
})
Tab:AddBind({
	Name = "Map",
	Default = Enum.KeyCode.M,
	Hold = false,
	Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Normal.Spawns.Spawn.CFrame
	end    
})
Tab:AddButton({
	Name = "Bring All",
	Callback = function()
for i, player in pairs(game.Players:GetDescendants()) do
if player:IsA("Player") then
player.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end    
    end
end
})
local Section = Tab:AddSection({
	Name = "Glitching"
})
Tab:AddButton({
	Name = "Enable Glitching",
	Callback = function()
	    for i, part in pairs(game.Workspace.Normal.Map:GetDescendants()) do
	        if string.match(part.Name, "Glitch") then
	            part:Destroy()
	        end
	    end
	end
})
local Tab = Window:MakeTab({
	Name = "Rejoin",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Rejoin"
})
Tab:AddButton({
	Name = "Rejoin",
	Callback = function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
  	end    
})
local Tab = Window:MakeTab({
	Name = "News",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
Tab:AddLabel("09/01/24 - Added feature to remove glitch parts in MM2")
Tab:AddLabel("09/01/24 - Recently Created lmachild2011's Script Hub")
