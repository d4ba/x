

local Watermark = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

Watermark.Name = "Watermark"
Watermark.Parent = game.CoreGui
Watermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Watermark.ResetOnSpawn = false

TextLabel.Parent = Watermark
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.343151689, 0, 0.420405209, 0)
TextLabel.Size = UDim2.new(0.312960237, 0, 0.157742396, 0)
TextLabel.ZIndex = 10000000
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "Flagging Services Bot (MADE WITH DanBot)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 30.000
TextLabel.TextWrapped = true

-- Scripts:

local function DADC_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local tweenservice = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(2,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0,false)
	
	local goals = {
		Size = UDim2.new(0.237, 0,0.097, 0),
		Position = UDim2.new(0.568, 0,0.888, 0)
	}
	local tween = tweenservice:Create(script.Parent,tweenInfo,goals)
	
	
	task.wait(1)
	tween:Play()
end
coroutine.wrap(DADC_fake_script)()


local currentflaggedplayer
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local actions = {
        flag = {
            Name = "Flag Person",
            Callback = function(userid: number)
                local player = game:GetService("Players"):GetPlayerByUserId(userid)
                currentflaggedplayer = player
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello ["..player.DisplayName.."] or ["..player.Name.."], you have been flagged from "..game.Players.LocalPlayer.Name..". You will be recorded and the video will be sent to Flagging Services™.","normalchat")
            end
        },
        randomstuff = {
            Name = "RandomStuffLOL",
            Callback = function()
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("HELLO GUYS WELCOME TO CHINGCHONG GAMER TODAY WE ARE GONNA PLAY MM2","normalchat")
            end
        },
        pee = {
            Name = "Cool",
            Callback = function()
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("*sus*","normalchat")
            end
        },
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
                local playerlolol = game:GetService("Players"):GetPlayerByUserId(split[3])
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Performing action: ["..actions.flag.Name.."].","normalchat")
                task.wait(1)
                actions.flag.Callback(tonumber(split[3]))
                local webhookurl = "https://hooks.hyra.io/api/webhooks/1144362992260108309/VrlYiCpOfYIlSeJpbBBAh00HNKCbJlQHGJ502f-UIo6gXIeBeWVPgZhNsdgUDwtkbfcA"
                local data = {
                    ['embeds'] = {{
                        ['author'] = {
                            ['name'] = 'New Flag: '..playerlolol.name,
                            ['icon_url'] = "https://www.roblox.com/Thumbs/Avatar.ashx?x=100&y=100&username="..playerlolol.name
                        },
                        ['description'] = "Reason for flag: "..split[4],
                        ['color'] = tonumber(0x9E0006),
                        ['fields'] = {
                            {
                                ['name'] = "User Id",
                                ['value'] = tostring(playerlolol.UserId),
                                ['inline'] = true
                            },
                            {
                                ['name'] = "Account Age: ",
                                ['value'] = tostring(playerlolol.AccountAge).." days",
                                ['inline'] = true
                            },
                            {
                                ['name'] = "Join their server using this code: ",
                                ['value'] = '`game:GetService("TeleportService"):TeleportToPlaceInstance('..game.PlaceId..', '..game.JobId..', game.Players.LocalPlayer)`',
                                ['inline'] = true
                            }
                        }
                    }}
                }

            local finaldata = game:GetService("HttpService"):JSONEncode(data)
            game:GetService("HttpService"):PostAsync(webhookurl, finaldata)

            end
            if split[2] == "randomstuff" then
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Performing action: ["..actions.randomstuff.Name.."].","normalchat")
                task.wait(1)
                actions.randomstuff.Callback()
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
        if split[1] == "/goback" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentflaggedplayer.Character.HumanoidRootPart.CFrame
        end
        if split[1] == "/rejoin" then
            local jobid = game.JobId
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, jobid, game.Players.LocalPlayer)
        end
        if split[1] == "/selfdestruct" then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Initializing S.D.S. (Locked Bot Account)","normalchat")
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[CRITICAL ERROR DETECTED]","normalchat")
            wait(5)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("PREPARING REPAIRS...","normalchat")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[VOID]","normalchat")
            task.wait(20)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[CANNOT REPAIR]","normalchat")

            task.wait(5)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THE SELF DESTRUCT SYSTEM HAS BEEN ACTIVATED.","normalchat")
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THIS BOT ACCOUNT WILL BE KICKED FOR [void] DAYS. THIS BOT ACCOUNT HAS 10 MINUTES BEFORE ITS DEAD.","normalchat")
            task.wait(590)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("THIS BOT ACCOUNT IS GOING TO GET KICKED IN 10 SECONDS.","normalchat")
            task.wait(10)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("TIME RAN OUT, BYE BYE.","normalchat")
            task.wait(1)
            game.Players.LocalPlayer:Kick("You expeirienced a critical error leading to the ERDS to open.")
        end
        if split[1] == "/commands" then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Bot Commands:","normalchat")
            task.wait(2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("./scan - scans for flagged people","normalchat")
            task.wait(2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("./action - [actionlist] [args]","normalchat")
            task.wait(2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("./rejoin - rejoins the game","normalchat")
            task.wait(2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("./getuserid [username] - copies the userid of a person to your clipboard.","normalchat")
            task.wait(2)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("./goback - goes back to a person who has been flagged.","normalchat")
            task.wait(5)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Actions List:","normalchat")
            task.wait(3)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("flag [userid] - flags and interfiers with the person.","normalchat")
        end
    end
end)
