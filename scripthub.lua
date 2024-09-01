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
	Name = "Bind",
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
