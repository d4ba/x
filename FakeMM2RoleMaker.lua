local creator = {}

local uis = game:GetService("UserInputService")

function creator.createRole(options)
    local success,err = pcall(function()
        uis.InputBegan:Connect(function(input, gpe)
            if gpe then return end
            if input.KeyCode == options.KeyCode then
                game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = options.RoleName
                game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = options.Color
                game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = options.ChanceText
            end
        end)
    end)
    if not success then
        error("Fake MM2 Role Maker: Couldn't make new fake role!")
    else
        print("Fake MM2 Role Maker: Successfully created fake role: "..options.RoleName.."!")
    end
end

return creator
