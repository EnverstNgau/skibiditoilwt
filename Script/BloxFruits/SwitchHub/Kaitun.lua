pcall(
    function() end 
)

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local fpsLabel = Instance.new("TextLabel")
fpsLabel.Size = UDim2.new(0, 200, 0, 50)
fpsLabel.Position = UDim2.new(0, 10, 0, 10)
fpsLabel.BackgroundTransparency = 1
fpsLabel.TextSize = 30
fpsLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
fpsLabel.Text = "Fps: 0"
fpsLabel.Parent = screenGui

local lastTime = tick()
local frames = 0
local fps = 0

game:GetService("RunService").RenderStepped:Connect(function()
    frames = frames + 1
    local currentTime = tick()

    if currentTime - lastTime >= 1 then
        fps = frames
        frames = 0
        lastTime = currentTime
            
        fpsLabel.Text = "Fps: " .. fps
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
