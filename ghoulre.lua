-- Booting the Rayfield Library
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Tạo cửa sổ chính
local Window = Rayfield:CreateWindow({
    Name = "💥 Hakai Hub",
    LoadingTitle = "Hakai Hub",
    LoadingSubtitle = "by buihoaglong",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "HakaiHubConfig",
        FileName = "HakaiConfig"
    },
    Discord = {
        Enabled = true,
        Invite = "ww7B7EKm",
        RememberJoins = true
    },
    KeySystem = false
})

-- Tạo tab Spin
local SpinTab = Window:CreateTab("Spin", nil)

-- Nút Primary Color Roll
SpinTab:CreateButton({
    Name = "Primary Color Roll",
    Callback = function()
        local args = {
            [1] = 2151876292
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GhoulPoint"):FireServer(unpack(args))
    end,
})

-- Nút Secondary Color Reroll
SpinTab:CreateButton({
    Name = "Secondary Color Reroll",
    Callback = function()
        local args = {
            [1] = 2151876917
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GhoulPoint"):FireServer(unpack(args))
    end,
})

-- Nút Case Skin Reroll
SpinTab:CreateButton({
    Name = "Case Skin Reroll",
    Callback = function()
        local args = {
            [1] = 2666384090
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GhoulPoint"):FireServer(unpack(args))
    end,
})

-- Nút Face Reroll
SpinTab:CreateButton({
    Name = "Face Reroll",
    Callback = function()
        local args = {
            [1] = 2377782005
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GhoulPoint"):FireServer(unpack(args))
    end,
})

-- Nút Hair Color Reroll
SpinTab:CreateButton({
    Name = "Hair Color Reroll",
    Callback = function()
        local args = {
            2151875604
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("GhoulPoint"):FireServer(unpack(args))        
    end,
})
