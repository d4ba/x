local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local ratelimit = 0
local uses = 1
local Window = Rayfield:CreateWindow({
   Name = "Flagging Services Webhook",
   LoadingTitle = "Flagging Services Webhook",
   LoadingSubtitle = "Dont abuse in any way",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "FlaggingServices", -- Create a custom folder for your hub/game
      FileName = "webhook"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

local urlaaa = "https://discord.com/api/webhooks/1151234254240485387/IgQjQxAvtLND7r9FeQ0fgQki-ejlml2p1azGAtpkIx0mzyLEKvCAUWs-UoX_dIk_xCtd"
local url = "https://discord.com/api/webhooks/1151234254240485387/IgQjQxAvtLND7r9FeQ0fgQki-ejlml2p1azGAtpkIx0mzyLEKvCAUWs-UoX_dIk_xCtd"
local url2 = "https://discord.com/api/webhooks/1151279798073688156/OddSWq3DtrwIPm0_DZpgwfctTOI1edI2fjXkMusQBfSwjaZqkaiEg1MpvgMPboLbw2iF"

local WebhookTab = Window:CreateTab("Webhook", 4483362458)
local Label = WebhookTab:CreateLabel("Ratelimit is 15 seconds")
local Input = WebhookTab:CreateInput({
   Name = "Webhook Message",
   PlaceholderText = "Hello World!",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
      if ratelimit == 0 and uses == 1 then
         uses -= 1
         Fluxus.request({
            Url = url,
            Method = "POST",
            Headers = {
               ['Content-Type'] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode({
               ['content'] = game.Players.LocalPlayer.Name..": "..Text
            })
         })
         ratelimit = 15
         Rayfield:Notify({
            Title = "Success",
            Content = "you have succesfully sent a message through the webhook.",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                     
                  end
               },
            },
         })
      else
         Rayfield:Notify({
            Title = "Ratelimited",
            Content = "You are currently being ratelimited please wait "..tostring(ratelimit).." more second(s).",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                     print("The user tapped Okay!")
                  end
               },
            },
         })
      end
   end,
})

local Button = WebhookTab:CreateButton({
   Name = "Send join invite",
   Callback = function()
      if ratelimit == 0 and uses == 1 then
         uses -= 1
         Fluxus.request({
            Url = url,
            Method = "POST",
            Headers = {
               ['Content-Type'] = "application/json"
            },
            Body = game:GetService("HttpService"):JSONEncode({
               ['content'] = game.Players.LocalPlayer.Name..": [Join Me](https://www.roblox.com/games/"..game.PlaceId.."/webhookinvite".."my server id is `"..game.JobId.."` (WEBHOOK GAME INVITE)"
            })
         })
         ratelimit = 15
         Rayfield:Notify({
            Title = "Success",
            Content = "you have succesfully sent a message through the webhook.",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                     
                  end
               },
            },
         })
      else
         Rayfield:Notify({
            Title = "Ratelimited",
            Content = "You are currently being ratelimited please wait "..tostring(ratelimit).." more second(s).",
            Duration = 6.5,
            Image = 4483362458,
            Actions = { -- Notification Buttons
               Ignore = {
                  Name = "Okay!",
                  Callback = function()
                     print("The user tapped Okay!")
                  end
               },
            },
         })
      end
   end,
})
local Label2 = WebhookTab:CreateLabel("Chat 1 is when its turned on")
local Label3 = WebhookTab:CreateLabel("Chat 2 is when its turned off")
local Toggle = WebhookTab:CreateToggle({
   Name = "Chat 1 / Chat 2",
   CurrentValue = true,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      if Value == true then
         url = urlaaa
      else
         url = url2
      end
   end,
})


while wait(1) do
    if ratelimit == 0 then
        if uses == 1 then

        else
         uses += 1
        end
    else
        ratelimit -= 1
    end
end
