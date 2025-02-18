local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Hakaihub",
    SubTitle = "by buihoaglong",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Tạo các tab
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- Tab Main
local MainSection = Tabs.Main:AddSection("Main Features")

MainSection:AddToggle("AutoFarm", {
    Title = "Auto Farm",
    Default = false,
    Callback = function(Value)
        -- Code xử lý auto farm
    end
})

MainSection:AddButton({
    Title = "Teleport to Safe Zone",
    Callback = function()
        -- Code xử lý teleport
    end
})

-- Tab Settings
local SettingsSection = Tabs.Settings:AddSection("Settings")

SettingsSection:AddDropdown("ThemeDropdown", {
    Title = "Theme",
    Values = {"Dark", "Light", "Discord", "Aqua"},
    Default = "Dark",
    Callback = function(Value)
        Window:SetTheme(Value)
    end
})

-- Lưu cài đặt
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("HakaiHub")
SaveManager:SetFolder("HakaiHub/TypeSoul")

SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)
