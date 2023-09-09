local creator = {}

getgenv().fakemm2roles = {}

local uis = game:GetService("UserInputService")

function creator.createRole(options)
    local success,err = pcall(function()
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.Text = options.RoleName
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Role.TextColor3 = options.Color
        game.Players.LocalPlayer.PlayerGui.MainGUI.Game.RoleSelector.Chance.Text = options.ChanceText
    end)
    print(success)
    if table.find(getgenv().fakemm2roles,options) then
        warn("Fake MM2 Role Maker: There's a fake mm2 role that has the same properties, Could not make role.")
    end
    if success then
        table.insert(getgenv().fakemm2roles,options)
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
