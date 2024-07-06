-- Gui to Lua
-- Version: 3.2

-- Instances:

local FarmGui = Instance.new("ScreenGui")
local Discord = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local Warning = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")

--Properties:

FarmGui.Name = "FarmGui"
FarmGui.Parent = game.CoreGui
FarmGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Discord.Name = "Discord"
Discord.Parent = FarmGui
Discord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Discord.BackgroundTransparency = 1.000
Discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
Discord.BorderSizePixel = 0
Discord.Position = UDim2.new(0.309225082, 0, 0.0147928996, 0)
Discord.Size = UDim2.new(0.381549805, 0, 0.0887573957, 0)
Discord.Font = Enum.Font.FredokaOne
Discord.Text = "dsc.gg/flms"
Discord.TextColor3 = Color3.fromRGB(255, 255, 255)
Discord.TextScaled = true
Discord.TextSize = 14.000
Discord.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 157, 0)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 157, 0))}
UIGradient.Parent = Discord

Warning.Name = "Warning"
Warning.Parent = FarmGui
Warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warning.BackgroundTransparency = 1.000
Warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
Warning.BorderSizePixel = 0
Warning.Position = UDim2.new(0.309225082, 0, 0.872781038, 0)
Warning.Size = UDim2.new(0.381549805, 0, 0.0887573957, 0)
Warning.Font = Enum.Font.FredokaOne
Warning.Text = "Put This Script In Autoexec Folder!"
Warning.TextColor3 = Color3.fromRGB(255, 255, 255)
Warning.TextScaled = true
Warning.TextSize = 14.000
Warning.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 157, 0)), ColorSequenceKeypoint.new(0.51, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 157, 0))}
UIGradient_2.Parent = Warning

-- Scripts:

local function ALFS_fake_script() -- FarmGui.LocalScript 
	local script = Instance.new('LocalScript', FarmGui)

	local function sendNotification(title, text, duration)
		game.StarterGui:SetCore("SendNotification", {
			Title = title;
			Text = text;
			Duration = duration;
		})
	end
	
	
	sendNotification("Successfully!", "Auto Farm Enabled!", 5)
	while wait(1) do
		if game.Workspace:WaitForChild("Normal"):WaitForChild("CoinContainer"):WaitForChild("Coin_Server").CoinVisual.BrickColor == BrickColor.new("Bright yellow") then
			game.Workspace:WaitForChild("Normal"):WaitForChild("CoinContainer"):WaitForChild("Coin_Server"):Destroy()
		else
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace:WaitForChild("Normal"):WaitForChild("CoinContainer").Coin_Server.CFrame
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110.059, 139.71, -15.14)
		end
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110.059, 139.71, -15.14)
	end
	
end
coroutine.wrap(ALFS_fake_script)()
local function WOTMXR_fake_script() -- FarmGui.LocalScript 
	local script = Instance.new('LocalScript', FarmGui)

	while true do wait()
		getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
			if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
				game:GetService("TeleportService"):Teleport(game.PlaceId)
				print("rejoinmedd")
			end
		end)
	end
end
coroutine.wrap(WOTMXR_fake_script)()
local function XPWYJ_fake_script() -- FarmGui.ReloadScript 
	local script = Instance.new('LocalScript', FarmGui)

	wait(30)
	script.Parent:Destroy()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/kiryuha0401/autofarm/main/BeachBallFarm.lua", true))()
	
end
coroutine.wrap(XPWYJ_fake_script)()
