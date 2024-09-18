	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	local Window = OrionLib:MakeWindow({
		Name = "StormHub",
		HidePremium = true,
		SaveConfig = true,
		ConfigFolder = "StormHub",
		IntroEnabled = true,
		IntroText = "Welcome to Dupe Hub"
	})

	local Tab = Window:MakeTab({
			Name = "Main Stuff",
			Icon = "rbxassetid://17586593789",
			PremiumOnly = false
	})

	local Section = Tab:AddSection({
		Name = "Mailbox Dupe"
	})

	Tab:AddTextbox({
		Name = "Username",
		Default = "Type Username!",
		TextDisappear = true,
		Callback = function(Value)
			print(Value)
		end	  
	})

	Tab:AddButton({
		Name = "Start Duping",
		Callback = function()
						print("Tap Button")
			end    
	})

	local Section = Tab:AddSection({
		Name = "Trade Scam"
	})

	Tab:AddTextbox({
		Name = "Victim Username",
		Default = "Type Username",
		TextDisappear = true,
		Callback = function(Value)
			print(Value)
		end	  
	})

	Tab:AddToggle({
		Name = "Start Trade Scam",
		Default = false,
		Callback = function(Value)
			print(Value)
		end    
	})

	Tab:AddToggle({
		Name = "Stop Trade Scam",
		Default = false,
		Callback = function(Value)
			print(Value)
		end    
	})

	local Tab = Window:MakeTab({
		Name = "Visual Pets",
		Icon = "rbxassetid://17525753355",
		PremiumOnly = false
	})
	
	Tab:AddParagraph("Make sure the first, letter is in a captial!")

local Section = Tab:AddSection({
    Name = "Visual Stuff"
})

local fromPet = "Dog"
local toPet = "Titanic Monkey"

Tab:AddTextbox({
    Name = "Pet to Change",
    Default = "Insert pet name.",
    TextDisappear = false,
    Callback = function(Value)
        fromPet = tostring(Value)
    end
})

Tab:AddTextbox({
    Name = "Pet you want to change to",
    Default = "Insert pet name",
    TextDisappear = false,
    Callback = function(Value)
        toPet = tostring(Value)
    end
})

Tab:AddButton({
    Name = "Spawn Pet!",
    Callback = function()
        local lib = require(game.ReplicatedStorage.Library)
        for i,v in pairs(lib.Directory.Pets[fromPet]) do
            lib.Directory.Pets[fromPet][i] = nil
        end
        for i,v in pairs(lib.Directory.Pets[toPet]) do
            lib.Directory.Pets[fromPet][i] = v
        end
        end
})
	
	local Tab = Window:MakeTab({
		Name = "Credits",
		Icon = "rbxassetid://17586572991",
		PremiumOnly = false
	})

	Tab:AddParagraph("Credits","•Credits to StormHub Team, Copyright 2024.•")

Tab:AddButton({
    Name = "COPY DISCORD LINK",
    Callback = function()
        setclipboard("discord.gg/c5ttZMut25")
    end
})
OrionLib:Init()
--[[
Name = <string> - The name of the textbox.
Default = <string> - The default value of the textbox.
TextDisappear = <bool> - Makes the text disappear in the el after losing focus.là
1
= <function> - The function of the textbox.
]]

