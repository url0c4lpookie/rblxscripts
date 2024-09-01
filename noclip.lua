local prompt = Instance.new("ProximityPrompt")
prompt.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
prompt.Name = "NoclipPrompt"
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

        game.StarterGui:SetCore("SendNotification", {
	Title = "Notification";
	Text = "Everytime you die, you will you have to rerun the script in order for the prompt to show up again.";
	Duration = "10";
})
