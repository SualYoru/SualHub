local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Sual Hub",
    SubTitle = "Blox fruits",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 420),
    Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Aqua",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Visuals = Window:AddTab({ Title = "Visual", Icon = "Play" })
    Credits = Window:AddTab({ Title = "Credits", Icon = "Player" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Sual Hub has injected",
        Content = "report any bugs at",
        SubContent = "or copy the link trough the 'Misc' page", -- Optional
        Duration = 3.5 -- Set to nil to make the notification not disappear
    })
end
--Visual
local Visuals = Tabs.Credits:AddSection("Visual")

Misc:AddParagraph({
        Title = "NOTE*",
        Content = "this Blox Fruits script is in BETA. expect out-dated functions and buggy settings. Updates are regulary wich will make the script run smoother and update functions"
    })

Misc:AddButton({
        Title = "Dragon Fruit West",
        Description = "Dragon West Add.",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SualYoru/SualHub/refs/heads/main/DragonFruit.lua", true))()
        end
    })

Misc:AddButton({
        Title = "Dragon Fruit East",
        Description = "Dragon East Add.",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/SualYoru/SualHub/refs/heads/main/DragonFruits.lua", true))()
        end
    })

--credits
local Credits = Tabs.Credits:AddSection("Credits")

local Showcase = Tabs.Credits:AddSection("Awesome Showcasers")

Showcase:AddParagraph({
        Title = "None :(",
        Content = "no awesome showcasers yet *womp womp*"
    })
    
    print("Sual Hub | Propriety of Sual Development Team©")
