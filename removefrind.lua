--[[
    AurexScripts Connection Removal Tool
    Subscribe: https://YouTube.com/@aurexscripts
]]

-- Services
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local Debris = game:GetService("Debris")

local LocalPlayer = Players.LocalPlayer
local UserId = LocalPlayer.UserId

-- Configuration
local RemovalSpeed = getgenv().RemovalSpeed
local MaxRemoval = getgenv().MaxRemoval
local Whitelist = getgenv().Whitelist

-- ============================================================================
-- UI Creation
-- ============================================================================

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AurexWarningUI"
ScreenGui.Parent = CoreGui
ScreenGui.IgnoreGuiInset = true

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 420, 0, 360)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -180)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 15)
MainCorner.Parent = MainFrame

local InnerFrame = Instance.new("Frame")
InnerFrame.Size = UDim2.new(1, 0, 1, 0)
InnerFrame.BackgroundTransparency = 1
InnerFrame.Parent = MainFrame

-- Header
local Header = Instance.new("TextLabel")
Header.Size = UDim2.new(1, 0, 0, 50)
Header.Text = "AurexScripts ⚡ Connection Removal"
Header.TextColor3 = Color3.new(1, 1, 1)
Header.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Header.Font = Enum.Font.GothamBold
Header.TextSize = 16
Header.Parent = MainFrame

-- Warning Title
local WarningLabel = Instance.new("TextLabel")
WarningLabel.Size = UDim2.new(1, 0, 0, 40)
WarningLabel.Position = UDim2.new(0, 0, 0, 60)
WarningLabel.Text = "⚠️ WARNING!"
WarningLabel.TextColor3 = Color3.fromRGB(255, 180, 0)
WarningLabel.Font = Enum.Font.GothamBlack
WarningLabel.TextSize = 26
WarningLabel.BackgroundTransparency = 1
WarningLabel.Parent = MainFrame

-- Description
local Description = Instance.new("TextLabel")
Description.Size = UDim2.new(0.9, 0, 0, 100)
Description.Position = UDim2.new(0.05, 0, 0, 100)
Description.Text = "This action is permanent. The script will REMOVE your connections. Use at your own risk. Subscribe to AurexScripts!"
Description.TextColor3 = Color3.fromRGB(180, 180, 180)
Description.Font = Enum.Font.Gotham
Description.TextSize = 14
Description.BackgroundTransparency = 1
Description.TextWrapped = true
Description.Parent = MainFrame

-- Info Text
local InfoLabel = Instance.new("TextLabel")
InfoLabel.Size = UDim2.new(0.9, 0, 0, 50)
InfoLabel.Position = UDim2.new(0.05, 0, 0, 220)
InfoLabel.Text = "Max Removal: " .. tostring(MaxRemoval) .. " | Speed: " .. tostring(RemovalSpeed) .. "s\nWhitelist: Active"
InfoLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
InfoLabel.Font = Enum.Font.Code
InfoLabel.TextSize = 13
InfoLabel.BackgroundTransparency = 1
InfoLabel.Parent = MainFrame

-- Cancel Button
local CancelButton = Instance.new("TextButton")
CancelButton.Size = UDim2.new(0.42, 0, 0, 45)
CancelButton.Position = UDim2.new(0.53, 0, 0.82, 0)
CancelButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CancelButton.Text = "CANCEL"
CancelButton.TextColor3 = Color3.new(1, 1, 1)
CancelButton.Font = Enum.Font.GothamBold
CancelButton.TextSize = 16
CancelButton.Parent = MainFrame

local CancelCorner = Instance.new("UICorner")
CancelCorner.CornerRadius = UDim.new(0, 8)
CancelCorner.Parent = CancelButton

CancelButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- Continue Button
local ContinueButton = Instance.new("TextButton")
ContinueButton.Size = UDim2.new(0.42, 0, 0, 45)
ContinueButton.Position = UDim2.new(0.05, 0, 0.82, 0)
ContinueButton.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
ContinueButton.Text = "CONTINUE"
ContinueButton.TextColor3 = Color3.new(1, 1, 1)
ContinueButton.Font = Enum.Font.GothamBold
ContinueButton.TextSize = 16
ContinueButton.Parent = MainFrame

local ContinueCorner = Instance.new("UICorner")
ContinueCorner.CornerRadius = UDim.new(0, 8)
ContinueCorner.Parent = ContinueButton

-- Particle Animation Function
local function CreateParticle(xPosition)
    local Particle = Instance.new("Frame")
    Particle.Size = UDim2.new(0, 2, 0, 2)
    Particle.Position = UDim2.new(xPosition, 0, 1, 0)
    Particle.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    Particle.BackgroundTransparency = 0.5
    Particle.Parent = InnerFrame
    
    local ParticleCorner = Instance.new("UICorner")
    ParticleCorner.CornerRadius = UDim.new(1, 0)
    ParticleCorner.Parent = Particle
    
    local TweenInfo = TweenInfo.new(3)
    local Tween = TweenService:Create(Particle, TweenInfo, {
        BackgroundTransparency = 1,
        Position = UDim2.new(xPosition, 0, -0.1, 0)
    })
    Tween:Play()
    
    Debris:AddItem(Particle, 3)
end

-- Spawn particles
task.spawn(function()
    local ParticleList = {
        0.1718112320203329, 0.8187669164853117, 0.39006081841233536, 0.5653648863961899,
        0.3900395578128934, 0.7444095984028382, 0.418579219888702, 0.30933804278232335,
        0.8823202657253788, 0.9693081534982658, 0.8714847586642813, 0.5325261917600633,
        0.7198750817844395, 0.7002456439619688, 0.8672190387173495, 0.37935823350673786,
        0.6175318169799773, 0.8697889444422835, 0.9901958882186004, 0.8532426053560206,
        0.5183847505891794, 0.46481192811414085, 0.1737312463370734, 0.41656558831999513,
        0.6981101977441659, 0.5881346338949682, 0.7111759424973223, 0.8883291964915065,
        0.6056501958547758, 0.30827696307897756, 0.8172445309609326, 0.5139803348430243,
        0.2774892340880104, 0.31842014879678726, 0.7294976348328239, 0.6865592618236355,
        0.40035330317781237, 0.9276495688269951, 0.011990044032384711, 0.14673235924883016,
        0.8302348010642111, 0.8810010032237279, 0.48055156554595185, 0.5788837887283917,
        0.019021489573106537
    }
    
    for _, pos in pairs(ParticleList) do
        if not MainFrame.Parent then
            break
        end
        CreateParticle(pos)
        task.wait(0.2)
    end
end)

-- Continue Button Action
ContinueButton.MouseButton1Click:Connect(function()
    setclipboard("https://YouTube.com/@aurexscripts")
    
    local Tween = TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Position = UDim2.new(0.5, -210, 1.5, 0)
    })
    Tween:Play()
    
    task.wait(0.5)
    ScreenGui:Destroy()
    
    -- Fetch friends count
    local success, response = pcall(function()
        return game:HttpGet("https://friends.roblox.com/v1/users/" .. UserId .. "/friends/count")
    end)
    
    if success then
        local Count = HttpService:JSONDecode(response).count
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Duration = 4,
                Text = "Found " .. Count .. " connections.",
                Title = "Aurex Script",
                Icon = "rbxassetid://73335337208359"
            })
        end)
        print("LOG: TOTAL CONNECTIONS: " .. Count)
    end
    
    -- Fetch all friends with pagination
    local AllFriends = {}
    local NextCursor = ""
    local MaxPages = 68
    
    for Page = 1, MaxPages do
        local url = "https://friends.roblox.com/v1/users/" .. UserId .. "/friends?userSort=0"
        if NextCursor ~= "" and NextCursor ~= nil then
            url = url .. "&cursor=" .. NextCursor
        end
        
        local success, data = pcall(function()
            return game:HttpGet(url)
        end)
        
        if success then
            local decoded = HttpService:JSONDecode(data)
            for _, friend in pairs(decoded.data) do
                table.insert(AllFriends, friend)
            end
            NextCursor = decoded.nextPageCursor
            if not NextCursor or NextCursor == "" then
                break
            end
        else
            break
        end
    end
end)
