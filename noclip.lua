local prompt = Instance.new("ProximityPrompt")
prompt.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
prompt.ActionText = "Noclip"
prompt.ObjectText = "Jump to disable Noclip"
prompt.KeyboardKeyCode = Enum.KeyCode.LeftAlt

prompt.Triggered:Connect(function()
    for i, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("MeshPart") then
            part.CanCollide = false
        end
    end
end)
