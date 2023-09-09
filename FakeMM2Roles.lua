local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then
        return
    end
    if input.KeyCode == Enum.KeyCode.J then
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = "Traitor"
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = Color3.fromRGB(202, 0, 202)
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = "Your chance to be Murderer: 0%"
    end
    if input.KeyCode == Enum.KeyCode.L then
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = "Revenger"
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = Color3.fromRGB(94, 0, 0)
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = "Your chance to be Corruption: 50%"
    end
    if input.KeyCode == Enum.KeyCode.M then
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = "Banana Cat"
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = Color3.fromRGB(222, 230, 116)
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = "Your chance to be Null: 0%"
    end
    if input.KeyCode == Enum.KeyCode.N then
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = "Innocent?"
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = Color3.fromRGB(255, 116, 139)
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = "Your chance to be Murderer?: Nil%"
    end
    if input.KeyCode == Enum.KeyCode.X then
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = "Sheriff?"
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = Color3.fromRGB(52, 66, 105)
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = "Your chance to be Traitor: 2%"
    end
    if input.KeyCode == Enum.KeyCode.V then
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = "Corruption"
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = Color3.fromRGB(255, 0, 157)
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = "Nil"
    end
end)
