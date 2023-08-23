local currentspamchat = "Hello"
local currentspamchatspeed = 1
local currentspamchatvalue = false
local currentversion = loadstring(game:HttpGet('https://raw.githubusercontent.com/d4ba/x/main/version24bl.lua'))()
local currentchannel = "All"
local currentFlagChat = "Hello"
local currentFlagSpeed= 1
local currentsFlagValue = false

local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "Sirhurt") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (unit and not syn and "Unit") or
        (IsElectron and "Electron") or
        (Fluxus and "Fluxus (unsupported)") or
        ("Unsupported / Unknown")
  
    return exploit
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Chat stuff "..currentversion.." - "..getexploit(),
    LoadingTitle = "Chat Stuff",
    LoadingSubtitle = "stupid and useful tool",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "ChatStuff"
    },
    Discord = {
       Enabled = true,
       Invite = "a", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "Chat Stuff Key system",
       Subtitle = "By UILibrariesContract",
       Note = "Join our discord for the key at #chatstuff",
       FileName = "ChatStuffKeySystem040423", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Key-L2K00SLFK"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

if getexploit() == "Fluxus (unsupported)" then
    Rayfield:Notify({
        Title = "Notice",
        Content = "Your executor/exploit Fluxus is kinda supported, some issues may happen.",
        Duration = 6.5,
        Image = 4483362458,
        Actions = { -- Notification Buttons
            Okay = {
                Name = "Ok",
                Callback = function()
                    print("ok")
                end
            }
        },
    })
elseif getexploit() == "Unsupported / Unknown" then
    Rayfield:Notify({
        Title = "Unsupported",
        Content = "Your Executor/Exploit  is not supported, you might expeirience issues.",
        Duration = 6.5,
        Image = 4483362458,
        Actions = { -- Notification Buttons
        },
    })
end

local SpamChatTab = Window:CreateTab("Spam Chat", 4483362458)
local CussWordsTab = Window:CreateTab("Cuss Words", 11640126822)
local KeybindsTab = Window:CreateTab("Keybinds", 4483362458)
local ChatFlooderTab = Window:CreateTab("Chat Flooder", 4483362458)
local MiscTab = Window:CreateTab("Miscellaneous", 4483362458)


local SpamChatToggle = SpamChatTab:CreateToggle({
    Name = "Activate Spam Chat",
    CurrentValue = false,
    Flag = "SpamChatActivate", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
       if Value == true then
        print("Activate")
        Rayfield:Notify({
            Title = "Spam Chat",
            Content = "Spam chat has started! (current msg: "..currentspamchat..". current speed: "..currentspamchatspeed..")",
            Duration = 6.5,
            Image = 1395859740,
            Actions = { -- Notification Buttons
               
            },
        })
        currentspamchatvalue = true
            while currentspamchatvalue == true do
                local args = {
                    [1] = currentspamchat,
                    [2] = currentchannel
                }
                
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
                wait(tonumber(currentspamchatspeed))
            end
       else
            print("Deactivate")
            if currentspamchatvalue == true then
                currentspamchatvalue = false
            else
                return
            end
       end
    end,
})
-- spamchat tab
do
    local Label = SpamChatTab:CreateLabel("if it's not sending messages go to misc and change the chatting channel")

    
    
    local SetChatSpam = SpamChatTab:CreateInput({
        Name = "Spam Messsage",
        PlaceholderText = "Hello",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            currentspamchat = Text
        end,
     })
    local SpamChatTime = SpamChatTab:CreateInput({
        Name = "Time Between each chat in seconds",
        PlaceholderText = "1",
        RemoveTextAfterFocusLost = false,
        Callback = function(Text)
            currentspamchatspeed = tonumber(Text)
        end,
    })
end



do
    local p3n1x = CussWordsTab:CreateButton({
        Name = "p3n1x (penis)",
        Callback = function()
            local args = {
                [1] = "p3n1x",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local RepeMeDaddy = CussWordsTab:CreateButton({
        Name = "Rapa me deddy (Rape me daddy)",
        Callback = function()
            local args = {
                [1] = "Rapa me",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local Repe = CussWordsTab:CreateButton({
        Name = "Rapa (Rape)",
        Callback = function()
            local args = {
                [1] = "Rapa",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local BigAssGuy = CussWordsTab:CreateButton({
        Name = "BigAssGuy (15+ account)",
        Callback = function()
            local args = {
                [1] = "BigAssGuy",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local IwatchAdoptmesextape = CussWordsTab:CreateButton({
        Name = "I watch adoptmesextape (BANNABLE)",
        Callback = function()
            local args = {
                [1] = "I watch adoptmesextape",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local adoptmesextape = CussWordsTab:CreateButton({
        Name = "adoptmesextape (Bannable)",
        Callback = function()
            local args = {
                [1] = "adoptmesextape",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local Motherfaka = CussWordsTab:CreateButton({
        Name = "M4fak (Motherfucker)",
        Callback = function()
            local args = {
                [1] = "Mafaka",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local Fak = CussWordsTab:CreateButton({
        Name = "Fak (Fuck)",
        Callback = function()
            local args = {
                [1] = "Fak",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
    local Coems = CussWordsTab:CreateButton({
        Name = "Coems (Cum)",
        Callback = function()
            local args = {
                [1] = "Coems",
                [2] = currentchannel
            }
            
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end,
    })
end

do
    local ChatOptions = MiscTab:CreateDropdown({
        Name = "Chatting Channel",
        Options = {"All","normalchat"},
        CurrentOption = {"All"},
        MultipleOptions = false,
        Flag = "ChattingChannel", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
            currentchannel = unpack(Option)
        end,
    })
    local Destroy = MiscTab:CreateButton({
        Name = "Destroy GUI",
        Callback = function()
            Rayfield:Destroy()
        end,
     })
     local SpamChatKeybind = KeybindsTab:CreateKeybind({
        Name = "Activate Spam Chat Keybind",
        CurrentKeybind = "Q",
        HoldToInteract = false,
        Flag = "SpamChatKeybind", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Keybind)
            if currentspamchatvalue == false then
                SpamChatToggle:Set(true)
            else
                SpamChatToggle:Set(false)
            end
        end,
     })
     local DestroyGUIKeybind = KeybindsTab:CreateKeybind({
        Name = "Destroy GUI Keybind",
        CurrentKeybind = "Z",
        HoldToInteract = false,
        Flag = "SpamChatKeybind", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Keybind)
            Rayfield:Destroy()
        end,
     })
end


Rayfield:LoadConfiguration()
