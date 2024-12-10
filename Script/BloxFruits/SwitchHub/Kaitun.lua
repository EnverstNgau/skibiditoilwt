pcall(
    function() end 
)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local fpsFrame = Instance.new("Frame")
fpsFrame.Size = UDim2.new(0, 200, 0, 50)
fpsFrame.Position = UDim2.new(0, 10, 0, 10)
fpsFrame.BackgroundTransparency = 1
fpsFrame.Parent = screenGui

local lastTime = tick()
local frames = 0
local fps = 0

local function getRandomColor()
    return Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
end

local textLabels = {}

local changeColorInterval = 0.5
local timeElapsed = 0

game:GetService("RunService").RenderStepped:Connect(function()
    frames = frames + 1
    local currentTime = tick()

    if currentTime - lastTime >= 1 then
        fps = frames
        frames = 0
        lastTime = currentTime

        local fpsText = "Fps: " .. fps

        for _, child in pairs(fpsFrame:GetChildren()) do
            child:Destroy()
        end

        for i = 1, #fpsText do
            local char = fpsText:sub(i, i)
            local textLabel = Instance.new("TextLabel")
            textLabel.Size = UDim2.new(0, 30, 0, 50)  
            textLabel.Position = UDim2.new(0, (i - 1) * 21, 0, 0)
            textLabel.BackgroundTransparency = 1
            textLabel.TextSize = 30
            textLabel.Text = char
            textLabel.Parent = fpsFrame
            textLabels[i] = textLabel
        end
    end

    timeElapsed = timeElapsed + game:GetService("RunService").Heartbeat:Wait()
        
    if timeElapsed >= changeColorInterval then
        timeElapsed = 0 

        for i, textLabel in pairs(textLabels) do
            textLabel.TextColor3 = getRandomColor()
        end
    end
end)


wait(1)

for _, obj in pairs(game:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Transparency = 0.8
    elseif obj:IsA("Model") then
        for _, part in pairs(obj:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = 0.8
            end
        end
    end
end

wait(1) 

_G.Quest = { 
  ['RGB Aura Haki'] = true,
  ['Pull Lever'] = true,
  ['Quest Dough Awaken'] = true
}

_G.Race = { 
  ['Select Race'] = {'Human','Fishman','Skypiea','Mink'},
  ['Lock Race'] = true,
  ['Evo Race V3'] = true
}

_G.Melee = { 
  ['Godhuman'] = true
}

_G.Sword = { 
  ['Saber'] = true,
  ['Midnight Blade'] = true,
  ['Shisui'] = true,
  ['Saddi'] = true,
  ['Wando'] = true,
  ['Yama'] = true,
  ['Koko'] = false,
  ['Rengoku'] = true,
  ['Canvander'] = true,
  ['Buddy Sword'] = true,
  ['Twin Hooks'] = true,
  ['SpikeyTrident'] = true,
  ['Hallow Scryte'] = true,
  ['Dark Dagger'] = true,
  ['Tushita'] = true,
  ['True Triple Katana'] = true,
  ['Cursed Dual Katana'] = true,
  ['Shark Anchor'] = true
}

_G.Gun = {  
    ['Kabucha'] = true,
    ['Acidum Rifle'] = true,
    ['Soul Guitar'] = true, 
    ['Serpent Bow'] = true
}

_G.Fruit = { 
    ['Main Fruit'] = {'Dough-Dough'},
    ['Select Fruit'] = {'Flame-Flame','Ice-Ice','Sand-Sand','Dark-Dark','Light-Light','Magma-Magma','Quake-Quake','Spider-Spider'}
}

_G.Mastery = { 
    ['Melee'] = true,
    ['Sword'] = true,
    ['Fruit'] = true
}

_G.Setting = {
    ['FPS Booster'] = true,
    ['Auto Close Ui'] = true
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/bestluxca/CrackedFree/main/Axionix%20Kaitun"))()
