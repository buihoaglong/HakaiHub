if game.PlaceId == 73956553001240 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    if not Library then
        print("Failed to load Kavo UI Library")
        return
    end

    local Window = Library.CreateLib("HakaiHub - by buihoaglong", "DarkTheme")

    local MainTab = Window:NewTab("Main")

    local SpinSection = MainTab:NewSection("Spin")
    local autoSpin = true -- Set autoSpin to true to start auto rolling

    local function rollStyle()
        local args = { [1] = false }
        local result = game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("StylesService"):WaitForChild("RF"):WaitForChild("Roll"):InvokeServer(unpack(args))
        return result
    end

    local function autoSpinStyle()
        while autoSpin do
            local result = rollStyle()
            if result == "Ojiri" then
                print("Ojiri style rolled!")
                autoSpin = false
                break
            else
                print("Rolled style: " .. result)
                wait(1) -- Add a delay to prevent spamming the server
            end
        end
    end

    SpinSection:NewToggle("Auto Spin Style", "Toggle Auto Spin Style", function(state)
        autoSpin = state
        if autoSpin then
            print("Auto Spin Style enabled")
            autoSpinStyle()
        else
            print("Auto Spin Style disabled")
        end
    end)

    local AuraSection = MainTab:NewSection("Aura")
    AuraSection:NewToggle("Auto Spin Aura", "Toggle Auto Aura", function(state)
        if state then
            print("Auto Aura enabled")
        else
            print("Auto Aura disabled")
        end
    end)
end
