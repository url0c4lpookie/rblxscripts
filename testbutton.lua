-- This is a test button for one of my games.
-- Using this script in executors will make you invisible to yourself and not others.

local gui = Instance.new("ScreenGui")
local button = Instance.new("TextButton")
local corner = Instance.new("UICorner")
gui.Parent = game.Players.LocalPlayer.PlayerGui
button.Parent = gui
corner.Parent = button
button.Size = UDim2.new(0.125,0,0.0625,0)
button.Position = UDim2.new(0.440,0,0.470,0)
button.BackgroundColor3 = Color3.new(255,255,255)
button.Font = Enum.Font.FredokaOne
button.TextSize = 25
button.Text = "Invisible"

button.MouseButton1Click:Connect(function()
    for i, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("Decal") then
            part.Transparency = 1
        end
        gui:Destroy()
    end
end)
