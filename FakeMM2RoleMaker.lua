local creator = {}

local uis = game:GetService("UserInputService")

function creator.createRole(options)
    local success,err = pcall(function()
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = options.RoleName
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = options.Color
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = options.ChanceText
    end)
    print(success)
    if success then
        uis.InputBegan:Connect(function(input, gpe)
            if gpe then return end
            if options.KeyCode == nil then
                return
            else
                if input.KeyCode == options.KeyCode then
                    game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = options.RoleName
                    game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = options.Color
                    game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = options.ChanceText
                end
            end
        end)
        print("Fake MM2 Role Maker: Successfully created fake role: "..options.RoleName.."!")
    else
        warn("Fake MM2 Role Maker: Couldn't make new fake role!")
        warn("Fake MM2 Role Maker Error: "..err)
    end
end

return creator
