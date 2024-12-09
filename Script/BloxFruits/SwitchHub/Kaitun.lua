for _, obj in pairs(game:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Transparency = 1
    elseif obj:IsA("Model") then
        for _, part in pairs(obj:GetChildren()) do
            if part:IsA("BasePart") then
                part.Transparency = 1
            end
        end
    end
end

wait() 

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
