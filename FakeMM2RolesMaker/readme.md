# Fake MM2 Roles Maker Documentation



## Start up the role maker
```lua
local rolemaker = loadstring(game:HttpGet('https://raw.githubusercontent.com/d4ba/x/main/FakeMM2RoleMaker.lua'))()
```

## Make a new fake role!
```
rolemaker.createRole({
   RoleName = "Template", -- role name
   Color = Color3.fromRGB(255,255,255), -- color in RGB,
   ChanceText = "Your chance to be Murderer: 69%", -- the fake chance text thats gonna appear
   KeyCode = Enum.KeyCode.L -- the keyboard button that is gonna change the normal role text to the fake role text.
})

--[[
  RoleName (string)
  Color (Color3)
  ChanceText (string)
  KeyCode (Enum.KeyCode)
]]
```
## Check if the create fake role worked in the [Developer Console](https://create.roblox.com/docs/en-us/studio/developer-console)
