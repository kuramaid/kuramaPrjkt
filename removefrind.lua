local httpService = game:GetService("HttpService")
local tweenService = game:GetService("TweenService")
local debrisService = game:GetService("Debris")
local players = game:GetService("Players")
local starterGui = game:GetService("StarterGui")
local coreGui = game:GetService("CoreGui")

local whitelistEnabled = getgenv().Whitelist or false
local maxRemoval = math.min(getgenv().MaxRemoval or 9999, 9999)
local removalSpeed = math.clamp(getgenv().RemovalSpeed or 2.5, 0.5, 10)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AurexWarningUI"
screenGui.Parent = coreGui
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 420, 0, 360)
mainFrame.Position = UDim2.new(0.5, -210, 0.5, -180)
mainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = mainFrame

local animationContainer = Instance.new("Frame")
animationContainer.Size = UDim2.new(1, 0, 1, 0)
animationContainer.BackgroundTransparency = 1
animationContainer.Parent = mainFrame

local PARTICLE_COUNT = 45
local PARTICLE_LIFESPAN = 3
local PARTICLE_INTERVAL = 0.2

local function createParticle(parent, xPosition)
    local particle = Instance.new("Frame")
    particle.Size = UDim2.new(0, 2, 0, 2)
    particle.Position = UDim2.new(xPosition, 0, 1, 0)
    particle.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
    particle.BackgroundTransparency = 0.5
    particle.Parent = parent
    particle.BorderSizePixel = 0
    
    local particleCorner = Instance.new("UICorner")
    particleCorner.CornerRadius = UDim.new(1, 0)
    particleCorner.Parent = particle
    
    local tweenInfo = TweenInfo.new(PARTICLE_LIFESPAN, Enum.EasingStyle.Linear)
    local tween = tweenService:Create(particle, tweenInfo, {
        BackgroundTransparency = 1,
        Position = UDim2.new(xPosition, 0, -0.1, 0)
    })
    tween:Play()
    
    debrisService:AddItem(particle, PARTICLE_LIFESPAN)
end

local particlePositions = {}
for i = 1, PARTICLE_COUNT do
    particlePositions[i] = math.random()
end

task.spawn(function()
    for _, pos in ipairs(particlePositions) do
        if not mainFrame or not mainFrame.Parent then break end
        createParticle(animationContainer, pos)
        task.wait(PARTICLE_INTERVAL)
    end
end)

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Text = "AurexScripts ─ Connection Removal"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 16
titleLabel.Parent = mainFrame

local warningLabel = Instance.new("TextLabel")
warningLabel.Size = UDim2.new(1, 0, 0, 40)
warningLabel.Position = UDim2.new(0, 0, 0, 60)
warningLabel.Text = "⚠️ WARNING!"
warningLabel.TextColor3 = Color3.fromRGB(255, 180, 0)
warningLabel.Font = Enum.Font.GothamBlack
warningLabel.TextSize = 26
warningLabel.BackgroundTransparency = 1
warningLabel.Parent = mainFrame

local descriptionLabel = Instance.new("TextLabel")
descriptionLabel.Size = UDim2.new(0.9, 0, 0, 100)
descriptionLabel.Position = UDim2.new(0.05, 0, 0, 100)
descriptionLabel.Text = "This action is permanent. The script will REMOVE your every connection [use at own risk.] Subscribe to AurexScripts!"
descriptionLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
descriptionLabel.Font = Enum.Font.Gotham
descriptionLabel.TextSize = 14
descriptionLabel.BackgroundTransparency = 1
descriptionLabel.TextWrapped = true
descriptionLabel.Parent = mainFrame

local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(0.9, 0, 0, 50)
infoLabel.Position = UDim2.new(0.05, 0, 0, 220)

if whitelistEnabled then
    infoLabel.Text = "Max Removal: " .. maxRemoval .. " | Speed: " .. removalSpeed .. "s\nWhitelist: Active"
else
    infoLabel.Text = "Max Removal: " .. maxRemoval .. " | Speed: " .. removalSpeed .. "s\nWhitelist: Inactive"
end

infoLabel.TextColor3 = Color3.fromRGB(0, 255, 150)
infoLabel.Font = Enum.Font.Code
infoLabel.TextSize = 13
infoLabel.BackgroundTransparency = 1
infoLabel.Parent = mainFrame

local cancelButton = Instance.new("TextButton")
cancelButton.Size = UDim2.new(0.42, 0, 0, 45)
cancelButton.Position = UDim2.new(0.53, 0, 0.82, 0)
cancelButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
cancelButton.Text = "CANCEL"
cancelButton.TextColor3 = Color3.new(1, 1, 1)
cancelButton.Font = Enum.Font.GothamBold
cancelButton.TextSize = 16
cancelButton.Parent = mainFrame
cancelButton.AutoButtonColor = false

local cancelCorner = Instance.new("UICorner")
cancelCorner.CornerRadius = UDim.new(0, 8)
cancelCorner.Parent = cancelButton

cancelButton.MouseButton1Click:Connect(function()
    if screenGui then screenGui:Destroy() end
end)

local continueButton = Instance.new("TextButton")
continueButton.Size = UDim2.new(0.42, 0, 0, 45)
continueButton.Position = UDim2.new(0.05, 0, 0.82, 0)
continueButton.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
continueButton.Text = "CONTINUE"
continueButton.TextColor3 = Color3.new(1, 1, 1)
continueButton.Font = Enum.Font.GothamBold
continueButton.TextSize = 16
continueButton.Parent = mainFrame
continueButton.AutoButtonColor = false

local continueCorner = Instance.new("UICorner")
continueCorner.CornerRadius = UDim.new(0, 8)
continueCorner.Parent = continueButton

cancelButton.MouseEnter:Connect(function()
    tweenService:Create(cancelButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(70, 70, 70)}):Play()
end)
cancelButton.MouseLeave:Connect(function()
    tweenService:Create(cancelButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(50, 50, 50)}):Play()
end)

continueButton.MouseEnter:Connect(function()
    tweenService:Create(continueButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(220, 0, 0)}):Play()
end)
continueButton.MouseLeave:Connect(function()
    tweenService:Create(continueButton, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(180, 0, 0)}):Play()
end)

local function fetchFriendsWithPagination()
    local localPlayer = players.LocalPlayer
    if not localPlayer then return {}, 0 end
    
    local userId = localPlayer.UserId
    local allFriends = {}
    local cursor = ""
    local maxRequests = 68
    local requestCount = 0
    
    local totalFriends = 0
    local success, friendCountResponse = pcall(function()
        return game:HttpGet("https://friends.roblox.com/v1/users/" .. userId .. "/friends/count", true)
    end)
    
    if success and friendCountResponse then
        local success2, countData = pcall(function()
            return httpService:JSONDecode(friendCountResponse)
        end)
        if success2 and countData then
            totalFriends = countData.count or 0
        end
    end
    
    pcall(function()
        starterGui:SetCore("SendNotification", {
            Duration = 4,
            Text = "Found " .. totalFriends .. " actual connections.",
            Title = "Aurex Script",
            Icon = "rbxassetid://73335337208359"
        })
    end)
    
    while requestCount < maxRequests do
        local url = "https://friends.roblox.com/v1/users/" .. userId .. "/friends?userSort=0&limit=100"
        if cursor ~= "" and cursor ~= nil then
            url = url .. "&cursor=" .. cursor
        end
        
        local success, response = pcall(function()
            return game:HttpGet(url, true)
        end)
        
        if not success or not response then break end
        
        local success2, data = pcall(function()
            return httpService:JSONDecode(response)
        end)
        
        if not success2 or not data or not data.data then break end
        
        for _, friend in pairs(data.data) do
            table.insert(allFriends, friend)
        end
        
        cursor = data.nextPageCursor or ""
        requestCount = requestCount + 1
        
        if cursor == "" then break end
        if totalFriends > 0 and #allFriends >= totalFriends then break end
        
        task.wait(0.1)
    end
    
    return allFriends, totalFriends
end

local function getCSRFToken()
    local success, response = pcall(function()
        return game:HttpGet("https://friends.roblox.com/v1/users/1", true)
    end)
    if success and response then
        local headers = syn and syn.crypt or {}
        return headers
    end
    return nil
end

local removalActive = false

local function removeAllConnections()
    local localPlayer = players.LocalPlayer
    if not localPlayer then return end
    
    local friendsList, totalCount = fetchFriendsWithPagination()
    
    local removedCount = 0
    local whitelist = getgenv().WhitelistList or {}
    
    local requestFunc = syn and syn.request or request or http_request
    if not requestFunc then
        pcall(function()
            starterGui:SetCore("SendNotification", {
                Duration = 5,
                Text = "No request library found",
                Title = "Aurex Script - Error",
                Icon = "rbxassetid://73335337208359"
            })
        end)
        return
    end
    
    for _, friend in pairs(friendsList) do
        if removedCount >= maxRemoval then break end
        
        local friendId = friend.id
        local isWhitelisted = false
        
        for _, whitelistId in pairs(whitelist) do
            if whitelistId == friendId then
                isWhitelisted = true
                break
            end
        end
        
        if not isWhitelisted then
            local success = pcall(function()
                requestFunc({
                    Url = string.format("https://friends.roblox.com/v1/users/%d/friends/%d", localPlayer.UserId, friendId),
                    Method = "DELETE",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    }
                })
            end)
            
            if success then
                removedCount = removedCount + 1
                task.wait(removalSpeed)
            end
        end
    end
    
    pcall(function()
        starterGui:SetCore("SendNotification", {
            Duration = 5,
            Text = string.format("Removed %d/%d connections", removedCount, #friendsList),
            Title = "Aurex Script - Complete",
            Icon = "rbxassetid://73335337208359"
        })
    end)
end

continueButton.MouseButton1Click:Connect(function()
    if removalActive then return end
    removalActive = true
    
    pcall(function()
        setclipboard("https://YouTube.com/@aurexscripts")
    end)
    
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In)
    local tween = tweenService:Create(mainFrame, tweenInfo, {Position = UDim2.new(0.5, -210, 1.5, 0)})
    tween:Play()
    tween.Completed:Wait()
    
    if screenGui then screenGui:Destroy() end
    
    removeAllConnections()
    removalActive = false
end)

screenGui.AncestryChanged:Connect(function()
    if not screenGui.Parent then
        removalActive = false
    end
end)