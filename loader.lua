-- NoLag Hub Loader Final Script (Mobile Optimized)
-- Includes: Welcome > Server Hop > Script Loader (1min + Spinner + Bar) > Execution
-- Customized by ChatGPT

-- LocalPlayer Setup
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- === WELCOME TEXT ===
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NoLagHubLoader"
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

local welcomeText = Instance.new("TextLabel")
welcomeText.Size = UDim2.new(1, 0, 1, 0)
welcomeText.Position = UDim2.new(0, 0, 0, 0)
welcomeText.BackgroundTransparency = 1
welcomeText.Text = "Welcome to NoLag Hub Duper"
welcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
welcomeText.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
welcomeText.TextStrokeTransparency = 0.2
welcomeText.TextScaled = true
welcomeText.Font = Enum.Font.GothamBlack
welcomeText.Parent = screenGui

task.spawn(function()
 while welcomeText and welcomeText.Parent do
  for i = 0.2, 0.5, 0.02 do
   welcomeText.TextStrokeTransparency = i
   task.wait(0.03)
  end
  for i = 0.5, 0.2, -0.02 do
   welcomeText.TextStrokeTransparency = i
   task.wait(0.03)
  end
 end
end)

task.delay(3, function()
 for i = 1, 30 do
  welcomeText.TextTransparency += 1/30
  welcomeText.TextStrokeTransparency += 1/30
  task.wait(0.03)
 end
 welcomeText:Destroy()
end)
task.wait(3.5)

-- === LOADING SCREEN (Hopping server) ===
local container = Instance.new("Frame")
container.Size = UDim2.new(0, 500, 0, 300)
container.Position = UDim2.new(0.5, 0, 0.5, 0)
container.AnchorPoint = Vector2.new(0.5, 0.5)
container.BackgroundTransparency = 1
container.Parent = screenGui

local icon = Instance.new("ImageLabel")
icon.Size = UDim2.new(0, 70, 0, 70)
icon.Position = UDim2.new(0.5, -35, 0, 10)
icon.BackgroundTransparency = 1
icon.Image = "rbxassetid://10957097362"
icon.Parent = container

task.spawn(function()
 while icon and icon.Parent do
  icon.Rotation += 2
  task.wait(0.01)
 end
end)

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 0, 50)
loadingText.Position = UDim2.new(0, 0, 0, 90)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Hopping an old server... Please wait"
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.TextSize = 28
loadingText.Font = Enum.Font.GothamBold
loadingText.TextWrapped = true
loadingText.Parent = container

local loadingBarBG = Instance.new("Frame")
loadingBarBG.Size = UDim2.new(0.8, 0, 0, 20)
loadingBarBG.Position = UDim2.new(0.1, 0, 0, 160)
loadingBarBG.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
loadingBarBG.BorderSizePixel = 0
loadingBarBG.Parent = container
Instance.new("UICorner", loadingBarBG).CornerRadius = UDim.new(0, 8)

local loadingFill = Instance.new("Frame")
loadingFill.Size = UDim2.new(0, 0, 1, 0)
loadingFill.Position = UDim2.new(0, 0, 0, 0)
loadingFill.BackgroundColor3 = Color3.fromRGB(100, 200, 255)
loadingFill.BorderSizePixel = 0
loadingFill.Parent = loadingBarBG
Instance.new("UICorner", loadingFill).CornerRadius = UDim.new(0, 8)

local duration = 5
local startTime = tick()
while tick() - startTime < duration do
 local progress = (tick() - startTime) / duration
 loadingFill.Size = UDim2.new(progress, 0, 1, 0)
 task.wait(0.05)
end

for i = 1, 30 do
 container.BackgroundTransparency += 1/30
 icon.ImageTransparency += 1/30
 loadingText.TextTransparency += 1/30
 loadingFill.BackgroundTransparency += 1/30
 loadingBarBG.BackgroundTransparency += 1/30
 task.wait(0.02)
end
container:Destroy()

-- === SERVER FOUND ===
local foundText = Instance.new("TextLabel")
foundText.Size = UDim2.new(1, 0, 1, 0)
foundText.Position = UDim2.new(0, 0, 0, 0)
foundText.BackgroundTransparency = 1
foundText.Text = "✅ Found old server successfully!"
foundText.TextColor3 = Color3.fromRGB(0, 255, 0)
foundText.TextScaled = true
foundText.Font = Enum.Font.GothamBold
foundText.Parent = screenGui

task.delay(2, function()
 for i = 1, 30 do
  foundText.TextTransparency += 1/30
  task.wait(0.03)
 end
 screenGui:Destroy()
end)
task.wait(2.1)

-- === 1-MINUTE LOADING NOLAG HUB DUPER SCREEN ===
local finalGui = Instance.new("ScreenGui")
finalGui.Name = "FinalLoading"
finalGui.IgnoreGuiInset = true
finalGui.ResetOnSpawn = false
finalGui.Parent = playerGui

local finalFrame = Instance.new("Frame")
finalFrame.Size = UDim2.new(0, 400, 0, 180)
finalFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
finalFrame.AnchorPoint = Vector2.new(0.5, 0.5)
finalFrame.BackgroundTransparency = 1
finalFrame.Parent = finalGui

local finalSpinner = Instance.new("ImageLabel")
finalSpinner.Size = UDim2.new(0, 50, 0, 50)
finalSpinner.Position = UDim2.new(0.5, -25, 0, 0)
finalSpinner.AnchorPoint = Vector2.new(0.5, 0)
finalSpinner.BackgroundTransparency = 1
finalSpinner.Image = "rbxassetid://10957097362"
finalSpinner.Parent = finalFrame

task.spawn(function()
 while finalSpinner and finalSpinner.Parent do
  finalSpinner.Rotation += 2
  task.wait(0.01)
 end
end)

local finalText = Instance.new("TextLabel")
finalText.Size = UDim2.new(1, 0, 0, 40)
finalText.Position = UDim2.new(0, 0, 0, 60)
finalText.BackgroundTransparency = 1
finalText.Text = "LOADING NOLAG HUB DUPER PLEASE WAIT"
finalText.TextColor3 = Color3.fromRGB(255, 255, 255)
finalText.TextSize = 22
finalText.Font = Enum.Font.GothamBold
finalText.TextWrapped = true
finalText.Parent = finalFrame

local finalBarBG = Instance.new("Frame")
finalBarBG.Size = UDim2.new(0.8, 0, 0, 18)
finalBarBG.Position = UDim2.new(0.1, 0, 0, 115)
finalBarBG.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
finalBarBG.BorderSizePixel = 0
finalBarBG.Parent = finalFrame
Instance.new("UICorner", finalBarBG).CornerRadius = UDim.new(0, 8)

local finalBarFill = Instance.new("Frame")
finalBarFill.Size = UDim2.new(0, 0, 1, 0)
finalBarFill.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
finalBarFill.BorderSizePixel = 0
finalBarFill.Position = UDim2.new(0, 0, 0, 0)
finalBarFill.Parent = finalBarBG
Instance.new("UICorner", finalBarFill).CornerRadius = UDim.new(0, 8)

local totalTime = 60
local start = tick()
while tick() - start < totalTime do
 local progress = (tick() - start) / totalTime
 finalBarFill.Size = UDim2.new(progress, 0, 1, 0)
 task.wait(0.05)
end

for i = 1, 30 do
 finalSpinner.ImageTransparency += 1/30
 finalText.TextTransparency += 1/30
 finalBarFill.BackgroundTransparency += 1/30
 finalBarBG.BackgroundTransparency += 1/30
 task.wait(0.03)
end
finalGui:Destroy()

-- === EXECUTE NOLAG HUB DUPER SCRIPT ===
task.wait(0.5)

loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/Loader/LoaderV1.lua"))()
