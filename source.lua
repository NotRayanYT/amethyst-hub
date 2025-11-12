print("Made by @rayangotskillz!")
task.wait(1)
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
print("Loading..")
-----------------------------------------------------------------------------------------------------------------------------------------------------------
game.Players.LocalPlayer.Character.Humanoid.UseJumpPower = true
local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

-----------------------------------------------------------------------------------------------------------------------------------------------------------

local Amethyst = Rayfield:CreateWindow({
	Name = "Amethyst Hub",
	Icon = "diamond", -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
	LoadingTitle = "Loading..",
	LoadingSubtitle = "by @rayangotskillz",
	ShowText = "Amethyst", -- for mobile users to unhide rayfield, change if you'd like
	Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

	

	ToggleUIKeybind = "M", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

	DisableRayfieldPrompts = false,
	DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "AmethystHub"
	},

	Discord = {
		Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
		Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
		RememberJoins = true -- Set this to false to make them join the discord every time they load it up
	},

	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Amethyst Hub",
		Subtitle = "Key System",
		Note = "Subscribe to @officialnotrayan on Youtube", -- Use this to tell the user how to get a key
		FileName = "amethystkey69", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "sub2officialnotrayan" -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
	}
})

Rayfield:Notify({
		Title = "Notification",
		Content = "Subscribe to @officialnotrayan on Youtube for more!",
		Duration = 4.5,
		Image = "bell",
})

local Main = Amethyst:CreateTab("Main", "home")

local Player = Main:CreateSection("Player")

local Speed = Main:CreateSlider({
	Name = "Player Speed",
	Range = {0, 250},
	Increment = 1,
	Suffix = "Walkspeed",
	CurrentValue = 16,
	Flag = "speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(speed)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end,
})

local Jump = Main:CreateSlider({
	Name = "Player Jump Power",
	Range = {0, 500},
	Increment = 1,
	Suffix = "Jump Power",
	CurrentValue = 50,
	Flag = "jump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(jump)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = jump
	end,
})

local InfJump = Main:CreateToggle({
	Name = "Infinite Jump",
	CurrentValue = false,
	Flag = "infjump", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		infiniteJumpEnabled = Value
	end
})
game:GetService("UserInputService").JumpRequest:Connect(function()
    if infiniteJumpEnabled then
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)

local Admins = Main:CreateSection("Admins")

local IY = Main:CreateButton({
	Name = "Infinite Yield FE Latest Version",
	Icon = "mouse-pointer-click",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source', true))()
	end,
})

local Animations = Amethyst:CreateTab("Animations", "rotate-ccw")

local R6 = Animations:CreateSection("R6")

local EpicR6 = Animations:CreateButton({
	Name = "Epik R6 Dances V3",
	Icon = "mouse-pointer-click",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/DgjV62EJ",true))()
	end,
})

local ScriptHubs = Amethyst:CreateTab("Script Hubs", "clipboard-list")

local voidware99 = ScriptHubs:CreateButton({
	Name = "Voidware Hub | 99 Nights In The Forest"
	icon = "mouse-pointer-click"
	Callback = function(
		loadstring(game:HttpGet("https://raw.githubusercontent.com/VapeVoidware/VW-Add/main/nightsintheforest.lua", true))()
		Rayfield:Notify({
			Title = "Voidware",
			Content = "Get Voidware at vapevoidware.xyz!        7 Script Hubs!",
			Duration = 5,
			Image = "bell",
		})
	)
})
