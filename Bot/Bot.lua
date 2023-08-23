game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local actions = {
        flag = {
            Name = "Flag Person",
            Callback = function(userid: number)
                local player = game:GetService("Players"):GetPlayerByUserId(userid)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello ["..player.DisplayName.."] or ["..player.Name.."], you have been flagged from "..game.Players.LocalPlayer.Name..". You will be recorded and the video will be sent to Flagging Services™.","normalchat")
            end
        }
    }

    local ranodm = math.random(1,1000)
    if ranodm == 1000 then
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[CRITICAL ERROR DETECTED]","normalchat")
        wait(5)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("PREPARING REPAIRS...","normalchat")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID]","normalchat")
        task.wait(20)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[CANNOT REPAIR]","normalchat")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[INITALIZING E.R.D.S]","normalchat")
        task.wait(5)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE EMERGENCY REPAIR DESTRUCT SYSTEM HAS BEEN ACTIVATED.","normalchat")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THIS BOT ACCOUNT WILL BE KICKED FOR [void] DAYS. THIS BOT ACCOUNT HAS 10 MINUTES BEFORE ITS DEAD.","normalchat")
        task.wait(590)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THIS BOT ACCOUNT IS GOING TO GET KICKED IN 10 SECONDS.","normalchat")
        task.wait(10)
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("TIME RAN OUT, BYE BYE.","normalchat")
        game.Players.LocalPlayer:Kick("You expeirienced a critical error leading to the ERDS to open.")
    else
        msg = msg:lower()
        local split = msg:split(" ")

        if split[1] == "/scan" then
            local rann = math.random(0,1)
			wait(0.1)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Performing scan...","normalchat")
			task.wait(4)
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Flagged People found: "..tostring(rann),"normalchat")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Take action of ["..tostring(rann).."] flagged people by using /action flag [userid]. (you can get the userid by doing /getuserid [username])","normalchat")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Thank you for using being a Employee for Flagging Services™","normalchat")
		end
        
        if split[1] == "/action" then

            if split[2] == "flag" then
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Performing action: ["..actions.flag.Name.."].","normalchat")
                task.wait(1)
                actions.flag.Callback(tonumber(split[3]))
            end
        end
        if split[1] == "/getuserid" then
            for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Name:lower() == split[2]:lower() then
                    setclipboard(tostring(v.UserId))
                    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Copied ["..v.Name.."]'s User ID!","normalchat")
                    break
                end
            end
        end
    end
end)
