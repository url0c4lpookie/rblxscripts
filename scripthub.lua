local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "lmachild2011's Script Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Noclip",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Noclip"
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
local Tab = Window:MakeTab({
	Name = "Lag Switch",
	Icon = "rbxassetid://4483345998",
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
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddLabel("COMING SOON!")
local Tab = Window:MakeTab({
	Name = "MM2",
	Icon = "rbxassetid://4483345998",
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
local Tab = Window:MakeTab({
	Name = "Rejoin",
	Icon = "rbxassetid://4483345998",
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
