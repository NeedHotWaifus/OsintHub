local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Key systems loading screen
local Window = Rayfield:CreateWindow({
   Name = "Osints Hub | ",
   LoadingTitle = "Welcome to Osint Hub",
   LoadingSubtitle = "by Osint",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Osint Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Osints Gui",
      Subtitle = "Key System",
      Note = "Private Cheat",
      FileName = "WeRunYouGuys1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {""} -- List of keys that will be accepted by the system
   }
})

-- Notification
Rayfield:Notify({
   Title = "Welcome To Osint Hub",
   Content = "Enjoy!",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
            print("The user tapped Okay!")
         end
      }
   }
})

-- Lock Tab
local MainTab = Window:CreateTab("Lock", 4483362458) -- Title, Image
MainTab:CreateSection("Lock", false) -- Section creation

MainTab:CreateButton({
   Name = "Osints Lock",
   Info = " Q to Lock",
   Interact = 'Changable',
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/NeedHotWaifus/OsintHub/refs/heads/main/Aimlock.lua?token=GHSAT0AAAAAACZRDIV5VIYD7HFANKZOJWYMZ2XPYZA"))()
   end,
})

-- AntiLock Tab
MainTab:CreateSection("AntiLock", false) -- Section creation

MainTab:CreateButton({
   Name = "Osints Antilock",
   Info = " H to Go Higher",
   Interact = 'Changable',
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/NeedHotWaifus/OsintHub/refs/heads/main/antilock.lua?token=GHSAT0AAAAAACZRDIV5A4UML6LFHWUIEXC6Z2XOENQ"))()
   end,
})

-- Triggerbot Tab
MainTab:CreateSection("Triggerbot", false) -- Section creation

MainTab:CreateButton({
    Name = "Osints TriggerBot",
    Info = " K to Enable/disable",
    Interact = 'Changable',
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/NeedHotWaifus/OsintHub/refs/heads/main/triggerbot.lua?token=GHSAT0AAAAAACZRDIV47XLG5XGOTJC26MQAZ2XOLLA"))()
    end,
})

-- Aimview Tab
MainTab:CreateSection("🎯Aimview", false) -- Section creation

MainTab:CreateButton({
    Name = "Osints Aimview",
    Info = " T to toggle",
    Interact = 'Changable',
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/NeedHotWaifus/OsintHub/refs/heads/main/aimviewer.lua?token=GHSAT0AAAAAACZRDIV54UUZVJJVMULTWGSAZ2XPQOQ"))()
    end,
})

-- Anti Aimview Tab
MainTab:CreateSection("Anti Aimview", false) -- Section creation

MainTab:CreateButton({
    Name = "Osints Anti Aimview",
    Info = " Auto toggle",
    Interact = 'Changable',
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/NeedHotWaifus/OsintHub/refs/heads/main/antiaimviewer.lua?token=GHSAT0AAAAAACZRDIV5TMRK6HGSJYLP57ZUZ2XP2WQ"))()
    end,
})

