if game.PlaceId == 73956553001240 then
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
    if Rayfield then
        local Window = Rayfield:CreateWindow({
            Name = "HakaiHub",
            LoadingTitle = "HakaiHub",
            LoadingSubtitle = "by buihoaglong",
            ConfigurationSaving = {
                Enabled = true,
                FolderName = nil, -- Create a custom folder for your hub/game
                FileName = "HakaiHub"
            },
            Discord = {
                Enabled = false,
                Invite = "", -- The Discord invite code, do not include discord.gg/
                RememberJoins = true -- Set this to false to make them join the discord every time they load it up
            },
            KeySystem = false, -- Set this to true to use our key system
            KeySettings = {
                Title = "HakaiHub",
                Subtitle = "Key System",
                Note = "Join the discord (discord.gg/...)",
                FileName = "HakaiHubKey",
                SaveKey = true,
                GrabKeyFromSite = false, -- If this is true, set Key to the site you want to grab the key from
                Key = "ABCDEF"
            }
        })

        local MainTab = Window:CreateTab("Main")

        local SpinTab = MainTab:CreateSection("Spin")
        SpinTab:CreateToggle({
            Name = "Auto Spin Style",
            CurrentValue = false,
            Flag = "AutoSpinStyle",
            Callback = function(Value)
                -- Logic for Auto Spin Style
                if Value then
                    print("Auto Spin Style enabled")
                else
                    print("Auto Spin Style disabled")
                end
            end
        })

        local AuraTab = MainTab:CreateSection("Aura")
        AuraTab:CreateToggle({
            Name = "Auto Aura",
            CurrentValue = false,
            Flag = "AutoAura",
            Callback = function(Value)
                -- Logic for Auto Aura
                if Value then
                    print("Auto Aura enabled")
                else
                    print("Auto Aura disabled")
                end
            end
        })
    end
end
