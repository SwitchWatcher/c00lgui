--[[
	--Commands--
	!NOTE! -- PLEASE GO TO LINE 47 AND REPLACE MY NAME WITH YOUR NAME! -- !NOTE!
	% = The prefix you have set	
	
	%console show
	%console hide
	%muslist
	%cmds
	%kill plr, me, all
	%kick plr, me, all
	%ban plr, me, all
	%explode plr, me, all
	%exe <command>
	%console show
	%console hide
	%ff <plr>
	%unff <plr>
	%respawn <plr>
	%lag <plr>
	%removetools <plr>
	%music <id> or from musiclist (%muslist)
	%pri
	%god plr
	%ungod plr
--]]

local Admins = game.Players.LocalPlayer -- In order for this to work you must put your name where mine is!
local Speed = "0.05" -- Set the speed of the orb's rotation. This is recommended.
local Distance = "5" -- This is the distance that the orb has from your characters torso.
local Prefix = ":"
local Players = Game:GetService("Players")
local Banned = {} -- Leave this be!
wait()
local folder = Instance.new("Model", game.Lighting)
folder.Name = "sbans"
game:GetService("RunService").Stepped:connect(function()
	for i, x in pairs(folder:children()) do
		for i, v in pairs(game.Players:children()) do
			if (v.Name == x.Value) then
				bannnedd1 = Instance.new("RemoteEvent", workspace):FireClient(game.Players[x.Value], {string.rep("Getbannedbro?", 200000 + 5)})
			end
		end
	end
end)
game.Players.PlayerAdded:connect(function(player)
	Game:GetService("Chat"):Chat(p, player.Name .. " has joined! AccountAge = " .. player.AccountAge .. " | UserID = " .. player.UserId .. " |..!", Enum.ChatColor.Red)
end)
game.Players.ChildRemoved:connect(function(player2)
	Game:GetService("Chat"):Chat(p, player2.Name .. " has left! AccountAge = " .. player2.AccountAge .. " | UserID = " .. player2.UserId .. " |..!", Enum.ChatColor.Red)
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "muslist")) then
		sg2 = Instance.new("ScreenGui", Admins.PlayerGui)
		fm2 = Instance.new("Frame", sg2)
		fm2.Position = UDim2.new(0.42, 0, 0.3, 0)
		fm2.Size = UDim2.new(0, 300, 0, 400)
		fm2.BackgroundColor3 = Color3.new(0, 0, 0)
		fm2.BackgroundTransparency = 0.5
		fm2.BorderSizePixel = 0
		s1 = Instance.new("TextButton", fm2)
		s1.Size = UDim2.new(0, 300, 0, 25)
		s1.TextColor3 = Color3.new(255, 255, 255)
		s1.FontSize = 2
		s1.Text = "Cake"
		s1.BackgroundTransparency = 1
		s2 = Instance.new("TextButton", fm2)
		s2.Size = UDim2.new(0, 300, 0, 25)
		s2.Position = UDim2.new(0, 0, 0, 25)
		s2.TextColor3 = Color3.new(255, 255, 255)
		s2.FontSize = 2
		s2.Text = "Watcha"
		s2.BackgroundTransparency = 1
		s3 = Instance.new("TextButton", fm2)
		s3.Size = UDim2.new(0, 300, 0, 25)
		s3.Position = UDim2.new(0, 0, 0, 50)
		s3.TextColor3 = Color3.new(255, 255, 255)
		s3.FontSize = 2
		s3.Text = "Moonman"
		s3.BackgroundTransparency = 1
		s4 = Instance.new("TextButton", fm2)
		s4.Size = UDim2.new(0, 300, 0, 25)
		s4.Position = UDim2.new(0, 0, 0, 75)
		s4.TextColor3 = Color3.new(255, 255, 255)
		s4.FontSize = 2
		s4.Text = "Hello"
		s4.BackgroundTransparency = 1
		s5 = Instance.new("TextButton", fm2)
		s5.Size = UDim2.new(0, 300, 0, 25)
		s5.Position = UDim2.new(0, 0, 0, 100)
		s5.TextColor3 = Color3.new(255, 255, 255)
		s5.FontSize = 2
		s5.Text = "Lean"
		s5.BackgroundTransparency = 1
		s6 = Instance.new("TextButton", fm2)
		s6.Size = UDim2.new(0, 300, 0, 25)
		s6.Position = UDim2.new(0, 0, 0, 125)
		s6.TextColor3 = Color3.new(255, 255, 255)
		s6.FontSize = 2
		s6.Text = "Waves"
		s6.BackgroundTransparency = 1
		s7 = Instance.new("TextButton", fm2)
		s7.Size = UDim2.new(0, 300, 0, 25)
		s7.Position = UDim2.new(0, 0, 0, 150)
		s7.TextColor3 = Color3.new(255, 255, 255)
		s7.FontSize = 2
		s7.Text = "Baby"
		s7.BackgroundTransparency = 1
		close2 = Instance.new("TextButton", fm2)
		close2.Size = UDim2.new(0, 15, 0, 15)
		close2.Position = UDim2.new(0, 285, 0, 0)
		close2.BackgroundTransparency = 1
		close2.TextColor3 = Color3.new(255, 255, 255)
		close2.Text = "X"
		close2.MouseButton1Click:connect(function()
			fm2:Destroy()
			sg2:Destroy()
		end)
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "cmds")) then
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = Admins.PlayerGui
		local scrollingFrame = Instance.new("ScrollingFrame")
		scrollingFrame.Parent = screenGui
		scrollingFrame.Position = UDim2.new(0.2, 0, 0.1, 0)
		scrollingFrame.Size = UDim2.new(0, 500, 0, 400)
		scrollingFrame.CanvasSize = UDim2.new(0, 500, 2, 0)
		scrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
		scrollingFrame.BorderSizePixel = 2
		scrollingFrame.BorderColor3 = Color3.new(170, 0, 0)
		local closecmds = Instance.new("TextButton")
		closecmds.Parent = screenGui
		closecmds.Size = UDim2.new(0, 50, 0, 50)
		closecmds.Position = UDim2.new(0.2, 0, 0.02, 0)
		closecmds.BackgroundColor3 = Color3.new(0, 0, 0)
		closecmds.Text = "X"
		closecmds.TextColor3 = Color3.new(170, 0, 0)
		closecmds.FontSize = 3
		closecmds.BorderSizePixel = 2
		closecmds.BorderColor3 = Color3.new(170, 0, 0)
		closecmds.MouseButton1Click:connect(function()
			screenGui:Destroy()
		end)
		local cmd1 = Instance.new("TextLabel")
		cmd1.Parent = scrollingFrame
		cmd1.Position = UDim2.new(0, 0, 0, 0)
		cmd1.Size = UDim2.new(0, 500, 0, 25)
		cmd1.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd1.TextColor3 = Color3.new(170, 0, 0)
		cmd1.FontSize = 5
		cmd1.Text = Prefix .. "kill <plr>"
		cmd1.ZIndex = 0
		local cmd2 = Instance.new("TextLabel")
		cmd2.Parent = scrollingFrame
		cmd2.Position = UDim2.new(0, 0, 0, 25)
		cmd2.Size = UDim2.new(0, 500, 0, 25)
		cmd2.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd2.TextColor3 = Color3.new(170, 0, 0)
		cmd2.FontSize = 5
		cmd2.Text = Prefix .. "kick <plr>"
		cmd2.ZIndex = 0
		local cmd3 = Instance.new("TextLabel")
		cmd3.Parent = scrollingFrame
		cmd3.Position = UDim2.new(0, 0, 0, 50)
		cmd3.Size = UDim2.new(0, 500, 0, 25)
		cmd3.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd3.TextColor3 = Color3.new(170, 0, 0)
		cmd3.FontSize = 5
		cmd3.Text = Prefix .. "ban <plr>"
		cmd3.ZIndex = 0
		local cmd4 = Instance.new("TextLabel")
		cmd4.Parent = scrollingFrame
		cmd4.Position = UDim2.new(0, 0, 0, 75)
		cmd4.Size = UDim2.new(0, 500, 0, 25)
		cmd4.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd4.TextColor3 = Color3.new(170, 0, 0)
		cmd4.FontSize = 5
		cmd4.Text = Prefix .. "explode <plr>"
		cmd4.ZIndex = 0
		local cmd5 = Instance.new("TextLabel")
		cmd5.Parent = scrollingFrame
		cmd5.Position = UDim2.new(0, 0, 0, 100)
		cmd5.Size = UDim2.new(0, 500, 0, 25)
		cmd5.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd5.TextColor3 = Color3.new(170, 0, 0)
		cmd5.FontSize = 5
		cmd5.Text = Prefix .. "exe <script>"
		cmd5.ZIndex = 0
		local cmd6 = Instance.new("TextLabel")
		cmd6.Parent = scrollingFrame
		cmd6.Position = UDim2.new(0, 0, 0, 100)
		cmd6.Size = UDim2.new(0, 500, 0, 25)
		cmd6.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd6.TextColor3 = Color3.new(170, 0, 0)
		cmd6.FontSize = 5
		cmd6.Text = Prefix .. "console show"
		cmd6.ZIndex = 0
		local cmd7 = Instance.new("TextLabel")
		cmd7.Parent = scrollingFrame
		cmd7.Position = UDim2.new(0, 0, 0, 100)
		cmd7.Size = UDim2.new(0, 500, 0, 25)
		cmd7.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd7.TextColor3 = Color3.new(170, 0, 0)
		cmd7.FontSize = 5
		cmd7.Text = Prefix .. "console hide"
		cmd7.ZIndex = 0
		local cmd8 = Instance.new("TextLabel")
		cmd8.Parent = scrollingFrame
		cmd8.Position = UDim2.new(0, 0, 0, 125)
		cmd8.Size = UDim2.new(0, 500, 0, 25)
		cmd8.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd8.TextColor3 = Color3.new(170, 0, 0)
		cmd8.FontSize = 5
		cmd8.Text = Prefix .. "ff <plr>"
		cmd8.ZIndex = 0
		local cmd9 = Instance.new("TextLabel")
		cmd9.Parent = scrollingFrame
		cmd9.Position = UDim2.new(0, 0, 0, 150)
		cmd9.Size = UDim2.new(0, 500, 0, 25)
		cmd9.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd9.TextColor3 = Color3.new(170, 0, 0)
		cmd9.FontSize = 5
		cmd9.Text = Prefix .. "unff <plr>"
		cmd9.ZIndex = 0
		local cmd10 = Instance.new("TextLabel")
		cmd10.Parent = scrollingFrame
		cmd10.Position = UDim2.new(0, 0, 0, 175)
		cmd10.Size = UDim2.new(0, 500, 0, 25)
		cmd10.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd10.TextColor3 = Color3.new(170, 0, 0)
		cmd10.FontSize = 5
		cmd10.Text = Prefix .. "respawn <plr>"
		cmd10.ZIndex = 0
		local cmd11 = Instance.new("TextLabel")
		cmd11.Parent = scrollingFrame
		cmd11.Position = UDim2.new(0, 0, 0, 200)
		cmd11.Size = UDim2.new(0, 500, 0, 25)
		cmd11.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd11.TextColor3 = Color3.new(170, 0, 0)
		cmd11.FontSize = 5
		cmd11.Text = Prefix .. "lag <plr>"
		cmd11.ZIndex = 0
		local cmd12 = Instance.new("TextLabel")
		cmd12.Parent = scrollingFrame
		cmd12.Position = UDim2.new(0, 0, 0, 225)
		cmd12.Size = UDim2.new(0, 500, 0, 25)
		cmd12.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd12.TextColor3 = Color3.new(170, 0, 0)
		cmd12.FontSize = 5
		cmd12.Text = Prefix .. "removetools <plr>"
		cmd12.ZIndex = 0
		local cmd13 = Instance.new("TextLabel")
		cmd13.Parent = scrollingFrame
		cmd13.Position = UDim2.new(0, 0, 0, 250)
		cmd13.Size = UDim2.new(0, 500, 0, 25)
		cmd13.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd13.TextColor3 = Color3.new(170, 0, 0)
		cmd13.FontSize = 5
		cmd13.Text = Prefix .. "god <plr>"
		cmd13.ZIndex = 0
		local cmd14 = Instance.new("TextLabel")
		cmd14.Parent = scrollingFrame
		cmd14.Position = UDim2.new(0, 0, 0, 275)
		cmd14.Size = UDim2.new(0, 500, 0, 25)
		cmd14.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd14.TextColor3 = Color3.new(170, 0, 0)
		cmd14.FontSize = 5
		cmd14.Text = Prefix .. "ungod <plr>"
		cmd14.ZIndex = 0
		local cmd15 = Instance.new("TextLabel")
		cmd15.Parent = scrollingFrame
		cmd15.Position = UDim2.new(0, 0, 0, 300)
		cmd15.Size = UDim2.new(0, 500, 0, 25)
		cmd15.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd15.TextColor3 = Color3.new(170, 0, 0)
		cmd15.FontSize = 5
		cmd15.Text = Prefix .. "muslist"
		cmd15.ZIndex = 0
		local cmd16 = Instance.new("TextLabel")
		cmd16.Parent = scrollingFrame
		cmd16.Position = UDim2.new(0, 0, 0, 325)
		cmd16.Size = UDim2.new(0, 500, 0, 25)
		cmd16.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd16.TextColor3 = Color3.new(170, 0, 0)
		cmd16.FontSize = 5
		cmd16.Text = Prefix .. "console show"
		cmd16.ZIndex = 0
		local cmd17 = Instance.new("TextLabel")
		cmd17.Parent = scrollingFrame
		cmd17.Position = UDim2.new(0, 0, 0, 350)
		cmd17.Size = UDim2.new(0, 500, 0, 25)
		cmd17.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd17.TextColor3 = Color3.new(170, 0, 0)
		cmd17.FontSize = 5
		cmd17.Text = Prefix .. "exe <command>"
		cmd17.ZIndex = 0
		local cmd18 = Instance.new("TextLabel")
		cmd18.Parent = scrollingFrame
		cmd18.Position = UDim2.new(0, 0, 0, 375)
		cmd18.Size = UDim2.new(0, 500, 0, 25)
		cmd18.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd18.TextColor3 = Color3.new(170, 0, 0)
		cmd18.FontSize = 5
		cmd18.Text = Prefix .. "music <id> or <song (from muslist)>"
		cmd18.ZIndex = 0
		local cmd19 = Instance.new("TextLabel")
		cmd19.Parent = scrollingFrame
		cmd19.Position = UDim2.new(0, 0, 0, 375)
		cmd19.Size = UDim2.new(0, 500, 0, 25)
		cmd19.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd19.TextColor3 = Color3.new(170, 0, 0)
		cmd19.FontSize = 5
		cmd19.Text = Prefix .. "pri"
		cmd19.ZIndex = 0
		local cmd20 = Instance.new("TextLabel")
		cmd20.Parent = scrollingFrame
		cmd20.Position = UDim2.new(0, 0, 0, 400)
		cmd20.Size = UDim2.new(0, 500, 0, 25)
		cmd20.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd20.TextColor3 = Color3.new(170, 0, 0)
		cmd20.FontSize = 5
		cmd20.Text = Prefix .. "cmds"
		cmd20.ZIndex = 0
		local cmd21 = Instance.new("TextLabel")
		cmd21.Parent = scrollingFrame
		cmd21.Position = UDim2.new(0, 0, 0, 425)
		cmd21.Size = UDim2.new(0, 500, 0, 25)
		cmd21.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd21.TextColor3 = Color3.new(170, 0, 0)
		cmd21.FontSize = 5
		cmd21.Text = Prefix .. "sit <plr>"
		cmd21.ZIndex = 0
		local cmd22 = Instance.new("TextLabel")
		cmd22.Parent = scrollingFrame
		cmd22.Position = UDim2.new(0, 0, 0, 450)
		cmd22.Size = UDim2.new(0, 500, 0, 25)
		cmd22.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd22.TextColor3 = Color3.new(170, 0, 0)
		cmd22.FontSize = 5
		cmd22.Text = Prefix .. "jump <plr>"
		cmd22.ZIndex = 0
		local cmd23 = Instance.new("TextLabel")
		cmd23.Parent = scrollingFrame
		cmd23.Position = UDim2.new(0, 0, 0, 475)
		cmd23.Size = UDim2.new(0, 500, 0, 25)
		cmd23.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd23.TextColor3 = Color3.new(170, 0, 0)
		cmd23.FontSize = 5
		cmd23.Text = Prefix .. "bruh <plr>"
		cmd23.ZIndex = 0
		local cmd24 = Instance.new("TextLabel")
		cmd24.Parent = scrollingFrame
		cmd24.Position = UDim2.new(0, 0, 0, 500)
		cmd24.Size = UDim2.new(0, 500, 0, 25)
		cmd24.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd24.TextColor3 = Color3.new(170, 0, 0)
		cmd24.FontSize = 5
		cmd24.Text = Prefix .. "ws <speed>"
		cmd24.ZIndex = 0
		local cmd25 = Instance.new("TextLabel")
		cmd25.Parent = scrollingFrame
		cmd25.Position = UDim2.new(0, 0, 0, 525)
		cmd25.Size = UDim2.new(0, 500, 0, 25)
		cmd25.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd25.TextColor3 = Color3.new(170, 0, 0)
		cmd25.FontSize = 5
		cmd25.Text = Prefix .. "gear <id>"
		cmd25.ZIndex = 0
		local cmd26 = Instance.new("TextLabel")
		cmd26.Parent = scrollingFrame
		cmd26.Position = UDim2.new(0, 0, 0, 550)
		cmd26.Size = UDim2.new(0, 500, 0, 25)
		cmd26.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd26.TextColor3 = Color3.new(170, 0, 0)
		cmd26.FontSize = 5
		cmd26.Text = Prefix .. "tp <plr>"
		cmd26.ZIndex = 0
		local cmd27 = Instance.new("TextLabel")
		cmd27.Parent = scrollingFrame
		cmd27.Position = UDim2.new(0, 0, 0, 575)
		cmd27.Size = UDim2.new(0, 500, 0, 25)
		cmd27.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd27.TextColor3 = Color3.new(170, 0, 0)
		cmd27.FontSize = 5
		cmd27.Text = Prefix .. "btools <plr>"
		cmd27.ZIndex = 0
		local cmd28 = Instance.new("TextLabel")
		cmd28.Parent = scrollingFrame
		cmd28.Position = UDim2.new(0, 0, 0, 600)
		cmd28.Size = UDim2.new(0, 500, 0, 25)
		cmd28.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd28.TextColor3 = Color3.new(170, 0, 0)
		cmd28.FontSize = 5
		cmd28.Text = Prefix .. "pitch <n>"
		cmd28.ZIndex = 0
		local cmd29 = Instance.new("TextLabel")
		cmd29.Parent = scrollingFrame
		cmd29.Position = UDim2.new(0, 0, 0, 625)
		cmd29.Size = UDim2.new(0, 500, 0, 25)
		cmd29.BackgroundColor3 = Color3.new(0, 0, 0)
		cmd29.TextColor3 = Color3.new(170, 0, 0)
		cmd29.FontSize = 5
		cmd29.Text = Prefix .. "volume <n>"
		cmd29.ZIndex = 0
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "console show")) then
		sg = Instance.new("ScreenGui", Admins.PlayerGui)
		fm = Instance.new("Frame", sg)
		fm.Selectable = true
		fm.Size = UDim2.new(0, 400, 0, 300)
		fm.BackgroundColor3 = Color3.new(0, 0, 0)
		fm.BorderSizePixel = 4
		fm.BorderColor3 = Color3.new(255, 255, 255)
		fm.Position = UDim2.new(0.395, 0, 0.3, 0)
		txt = Instance.new("TextLabel", fm)
		txt.Size = UDim2.new(0, 400, 0, 25)
		txt.Text = "~Game Console~"
		txt.FontSize = Enum.FontSize.Size18
		txt.TextColor3 = Color3.new(255, 255, 255)
		txt.BackgroundColor3 = Color3.new(0, 0, 0)
		txt.BorderSizePixel = 4
		txt.BorderColor3 = Color3.new(255, 255, 255)
		box = Instance.new("TextBox", fm)
		box.Position = UDim2.new(0, 50, 0, 50)
		box.Size = UDim2.new(0, 300, 0, 200)
		box.BackgroundColor3 = Color3.new(0, 0, 0)
		box.BorderSizePixel = 4
		box.BorderColor3 = Color3.new(255, 255, 255)
		box.TextColor3 = Color3.new(255, 255, 255)
		box.ClearTextOnFocus = false
		box.MultiLine = true
		box.TextXAlignment = "Left"
		box.TextWrapped = true
		box.TextYAlignment = "Top"
		box.Text = "Click clear to clear the text or remove me by holding backspace!"
		load1 = Instance.new("TextButton", box)
		load1.Size = UDim2.new(0, 200, 0, 25)
		load1.Position = UDim2.new(0, 50, 0, 213)
		load1.BackgroundColor3 = Color3.new(0, 170, 0)
		load1.TextColor3 = Color3.new(0, 0, 0)
		load1.BorderSizePixel = 4
		load1.BorderColor3 = Color3.new(255, 255, 255)
		load1.Text = "Execute!"
		load1.MouseButton1Click:connect(function()
			loadstring(box.Text)()
		end)
		clr = Instance.new("TextButton", box)
		clr.Size = UDim2.new(0, 50, 0, 25)
		clr.Position = UDim2.new(0, 275, 0, 213)
		clr.BackgroundColor3 = Color3.new(170, 0, 0)
		clr.TextColor3 = Color3.new(0, 0, 0)
		clr.BorderSizePixel = 4
		clr.BorderColor3 = Color3.new(255, 255, 255)
		clr.Text = "Clear!"
		clr.MouseButton1Click:connect(function()
			box.Text = ""
			box:CaptureFocus()
		end)
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "console hide")) then
		fm:Destroy()
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 5) == (Prefix .. "kill")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(7))
			if (player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower()) then
				pcall(function()
					player.Character.Humanoid.Health = 0
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "kill me")) then
		Admins.Character.Humanoid.Health = 0
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "kill all")) then
		for i, v in pairs(game.Players:children()) do
			v.Character.Humanoid.Health = 0
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 5) == (Prefix .. "kick")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(7))
			if (player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower()) then
				pcall(function()
					local getrekt = Instance.new("RemoteEvent", workspace):FireClient(player, {string.rep("getkickedbro?", 200000 + 5)})
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "kick me")) then
		local getrekt = Instance.new("RemoteEvent", workspace):FireClient(Admins, {string.rep("getkickedbro?", 200000 + 5)})
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "kick all")) then
		for i, v in pairs(game.Players:children()) do
			local getrekt = Instance.new("RemoteEvent", workspace):FireClient(v, {string.rep("getkickedbro?", 200000 + 5)})
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 4) == (Prefix .. "ban")) then
		for index, player1 in pairs(Players:GetPlayers()) do
			player1.Name:lower():sub(1, #msg:sub(6))
			if (player1.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower()) then
				pcall(function()
					local getrekt = Instance.new("RemoteEvent", workspace):FireClient(player1, {string.rep("getkickedbro?", 200000 + 5)})
					if game.Players:FindFirstChild(player1.Name) then
						ban = Instance.new("StringValue", folder)
						ban.Name = player1.Name
						ban.Value = player1.Name
					end
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "ban me")) then
		local getrekt = Instance.new("RemoteEvent", workspace):FireClient(Admins, {string.rep("getkickedbro?", 200000 + 5)})
		if game.Players:FindFirstChild(Admins.Name) then
			ban = Instance.new("StringValue", folder)
			ban.Name = Admins.Name
			ban.Value = Admins.Name
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "ban all")) then
		for i, v in pairs(game.Players:children()) do
			local getrekt = Instance.new("RemoteEvent", workspace):FireClient(v, {string.rep("getkickedbro?", 200000 + 5)})
			if game.Players:FindFirstChild(v.Name) then
				ban = Instance.new("StringValue", folder)
				ban.Name = v.Name
				ban.Value = v.Name
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 8) == (Prefix .. "explode")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(10))
			if (player.Name:lower():sub(1, #msg:sub(10)) == msg:sub(10):lower()) then
				pcall(function()
					ex = Instance.new("Explosion", game.Workspace)
					ex.Position = player.Character.Torso.Position
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "explode me")) then
		ex1 = Instance.new("Explosion", game.Workspace)
		ex1.Position = Admins.Character.Torso.Position
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "explode all")) then
		for i, v in pairs(game.Players:children()) do
			ex1 = Instance.new("Explosion", game.Workspace)
			ex1.Position = v.Character.Torso.Position
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 4) == (Prefix .. "exe")) then
		loadstring(msg:sub(5, #msg))()
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 3) == (Prefix .. "ff")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(5))
			if (player.Name:lower():sub(1, #msg:sub(5)) == msg:sub(5):lower()) then
				pcall(function()
					Instance.new("ForceField", player.Character)
				end)
			else
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 5) == (Prefix .. "unff")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(7))
			if (player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower()) then
				pcall(function()
					while true do
						player.Character.ForceField:Destroy()
					end
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "ff me")) then
		Instance.new("ForceField", Admins.Character)
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "unff me")) then
		while true do
			Admins.Character.ForceField:Destroy()
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "ff all")) then
		for i, v in pairs(game.Players:children()) do
			Instance.new("ForceField", v.Character)
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "unff all")) then
		for i, v in pairs(game.Players:GetChildren()) do
			if (v and v.Character) then
				for z, cl in pairs(v.Character:children()) do
					if cl:IsA("ForceField") then
						cl:Destroy()
					end
				end
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 4) == (Prefix .. "god")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(6))
			if (player.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower()) then
				pcall(function()
					player.Character.Humanoid.MaxHealth = math.huge
				end)
			else
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 6) == (Prefix .. "ungod")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(8))
			if (player.Name:lower():sub(1, #msg:sub(8)) == msg:sub(8):lower()) then
				pcall(function()
					player.Character.Humanoid.MaxHealth = 100
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "god me")) then
		Admins.Character.Humanoid.MaxHealth = math.huge
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "ungod me")) then
		while true do
			Admins.Character.Humanoid.MaxHealth = 100
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "god all")) then
		for i, v in pairs(game.Players:children()) do
			v.Character.Humanoid.MaxHealth = math.huge
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "ungod all")) then
		for i, v in pairs(game.Players:GetChildren()) do
			v.Character.Humanoid.MaxHealth = 100
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 8) == (Prefix .. "respawn")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(10))
			if (player.Name:lower():sub(1, #msg:sub(10)) == msg:sub(10):lower()) then
				pcall(function()
					player:LoadCharacter()
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "respawn me")) then
		Admins:LoadCharacter()
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "respawn all")) then
		for i, v in pairs(game.Players:children()) do
			v:LoadCharacter()
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 4) == (Prefix .. "lag")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(6))
			if (player.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower()) then
				pcall(function()
					for i = 1, 10000 do
						if (player and player:findFirstChild("Backpack")) then
							local t1 = Instance.new("HopperBin", player.Backpack)
							t1.Name = "Move"
							t1.BinType = "GameTool"
							local t2 = Instance.new("HopperBin", player.Backpack)
							t2.Name = "Clone"
							t2.BinType = "Clone"
							local t3 = Instance.new("HopperBin", player.Backpack)
							t3.Name = "Delete"
							t3.BinType = "Hammer"
							local t4 = Instance.new("HopperBin", player.Backpack)
							t4.Name = "Resize"
						end
					end
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "lag me")) then
		for i = 1, 1000000 do
			if (Admins and Admins:findFirstChild("Backpack")) then
				local t1 = Instance.new("HopperBin", Admins.Backpack)
				t1.Name = "Move"
				t1.BinType = "GameTool"
				local t2 = Instance.new("HopperBin", Admins.Backpack)
				t2.Name = "Clone"
				t2.BinType = "Clone"
				local t3 = Instance.new("HopperBin", Admins.Backpack)
				t3.Name = "Delete"
				t3.BinType = "Hammer"
				local t4 = Instance.new("HopperBin", Admins.Backpack)
				t4.Name = "Resize"
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "lag all")) then
		for i, v in pairs(game.Players:children()) do
			for i = 1, 10000 do
				if (v and v:findFirstChild("Backpack")) then
					local t1 = Instance.new("HopperBin", v.Backpack)
					t1.Name = "Move"
					t1.BinType = "GameTool"
					local t2 = Instance.new("HopperBin", v.Backpack)
					t2.Name = "Clone"
					t2.BinType = "Clone"
					local t3 = Instance.new("HopperBin", v.Backpack)
					t3.Name = "Delete"
					t3.BinType = "Hammer"
					local t4 = Instance.new("HopperBin", v.Backpack)
					t4.Name = "Resize"
				end
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 12) == (Prefix .. "removetools")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(14))
			if (player.Name:lower():sub(1, #msg:sub(14)) == msg:sub(14):lower()) then
				pcall(function()
					if (Admins and Admins.Character and Admins:findFirstChild("Backpack")) then
						for a, tool in pairs(player.Character:children()) do
							if (tool:IsA("Tool") or tool:IsA("HopperBin")) then
								tool:Destroy()
							end
						end
						for a, tool in pairs(player.Backpack:children()) do
							if (tool:IsA("Tool") or tool:IsA("HopperBin")) then
								tool:Destroy()
							end
						end
					end
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "removetools me")) then
		if (Admins and Admins.Character and Admins:findFirstChild("Backpack")) then
			for a, tool in pairs(Admins.Character:children()) do
				if (tool:IsA("Tool") or tool:IsA("HopperBin")) then
					tool:Destroy()
				end
			end
			for a, tool in pairs(Admins.Backpack:children()) do
				if (tool:IsA("Tool") or tool:IsA("HopperBin")) then
					tool:Destroy()
				end
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "removetools all")) then
		for i, v in pairs(game.Players:children()) do
			if (v and v.Character and v:findFirstChild("Backpack")) then
				for a, tool in pairs(v.Character:children()) do
					if (tool:IsA("Tool") or tool:IsA("HopperBin")) then
						tool:Destroy()
					end
				end
				for a, tool in pairs(v.Backpack:children()) do
					if (tool:IsA("Tool") or tool:IsA("HopperBin")) then
						tool:Destroy()
					end
				end
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 4) == (Prefix .. "sit")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(6))
			if (player.Name:lower():sub(1, #msg:sub(6)) == msg:sub(6):lower()) then
				pcall(function()
					player.Character.Humanoid.Sit = true
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "sit me")) then
		Admins.Character.Humanoid.Sit = true
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "sit all")) then
		for i, v in pairs(game.Players:children()) do
			v.Character.Humanoid.Sit = true
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 5) == (Prefix .. "jump")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(7))
			if (player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower()) then
				pcall(function()
					player.Character.Humanoid.Jump = true
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "jump me")) then
		Admins.Character.Humanoid.Jump = true
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "jump all")) then
		for i, v in pairs(game.Players:children()) do
			v.Character.Humanoid.Jump = true
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 5) == (Prefix .. "bruh")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(7))
			if (player.Name:lower():sub(1, #msg:sub(7)) == msg:sub(7):lower()) then
				pcall(function()
					pp1 = Instance.new("Sound", player.Character.Torso)
					pp1.SoundId = "http://www.roblox.com/asset/?id=170040190"
					pp1.Volume = 100
					pp1.Pitch = 1
					pp1.Looped = false
					pp1:Play()
					wait(0.9)
					player.Character.Humanoid.PlatformStand = true
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "bruh me")) then
		pp1 = Instance.new("Sound", Admins.Character.Torso)
		pp1.SoundId = "http://www.roblox.com/asset/?id=170040190"
		pp1.Volume = 100
		pp1.Pitch = 1
		pp1.Looped = false
		pp1:Play()
		wait(0.9)
		Admins.Character.Humanoid.PlatformStand = true
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "bruh all")) then
		for i, v in pairs(game.Players:children()) do
			pp1 = Instance.new("Sound", v.Character.Torso)
			pp1.SoundId = "http://www.roblox.com/asset/?id=170040190"
			pp1.Volume = 100
			pp1.Pitch = 1
			pp1.Looped = false
			pp1:Play()
			wait(0.9)
			v.Character.Humanoid.PlatformStand = true
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 3) == (Prefix .. "ws")) then
		Admins.Character.Humanoid.WalkSpeed = msg:sub(4, #msg)
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 5) == (Prefix .. "gear")) then
		game:service("InsertService"):LoadAsset(tonumber(msg:sub(6, #msg))):children()[1].Parent = Admins.Backpack
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 3) == (Prefix .. "tp")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(5))
			if (player.Name:lower():sub(1, #msg:sub(5)) == msg:sub(5):lower()) then
				pcall(function()
					Admins.Character.Torso.CFrame = player.Character.Torso.CFrame
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 6) == "!music") then
		findsong = "BadLukeeSoundsz"
		if workspace.Terrain:FindFirstChild(findsong) then
			game.Debris:AddItem(workspace.Terrain[findsong], 0)
		end
		sd = Instance.new("Sound", workspace.Terrain)
		sd.SoundId = "http://www.roblox.com/asset/?id=" .. msg:sub(7, #msg)
		sd.Volume = 10
		sd.Name = "BadLukeeSoundsz"
		sd.Pitch = 1
		sd.Looped = true
		sd:play()
		if string.find(msg:lower():sub(7, #msg), "watcha") then
			sd.SoundId = "http://www.roblox.com/asset/?id=177681012"
		end
		if string.find(msg:lower():sub(7, #msg), "lean") then
			sd.SoundId = "http://www.roblox.com/asset/?id=328474897"
		end
		if string.find(msg:lower():sub(7, #msg), "baby") then
			sd.SoundId = "http://www.roblox.com/asset/?id=130841252"
		end
		if string.find(msg:lower():sub(7, #msg), "moonman") then
			sd.SoundId = "http://www.roblox.com/asset/?id=340924386"
		end
		if string.find(msg:lower():sub(7, #msg), "hello") then
			sd.SoundId = "http://www.roblox.com/asset/?id=313694441"
		end
		if string.find(msg:lower():sub(7, #msg), "waves") then
			sd.SoundId = "http://www.roblox.com/asset/?id=253545802"
		end
		if string.find(msg:lower():sub(7, #msg), "cake") then
			sd.SoundId = "http://www.roblox.com/asset/?id=313144336"
		end
	end
	if (msg:lower():sub(1, 6) == (Prefix .. "pitch")) then
		sd.Pitch = msg:sub(7, #msg)
	end
	if (msg:lower():sub(1, 7) == (Prefix .. "volume")) then
		sd.Volume = msg:sub(8, #msg)
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "pri")) then
		game.Players.PlayerAdded:connect(function(player)
			repeat
			until player.Character 
			wait()
			player:Destroy()
		end)
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower():sub(1, 7) == (Prefix .. "btools")) then
		for index, player in pairs(Players:GetPlayers()) do
			player.Name:lower():sub(1, #msg:sub(9))
			if (player.Name:lower():sub(1, #msg:sub(9)) == msg:sub(9):lower()) then
				pcall(function()
					if (player and player:findFirstChild("Backpack")) then
						local t1 = Instance.new("HopperBin", player.Backpack)
						t1.Name = "Move"
						t1.BinType = "GameTool"
						local t2 = Instance.new("HopperBin", player.Backpack)
						t2.Name = "Clone"
						t2.BinType = "Clone"
						local t3 = Instance.new("HopperBin", player.Backpack)
						t3.Name = "Delete"
						t3.BinType = "Hammer"
						local t4 = Instance.new("HopperBin", player.Backpack)
						t4.Name = "Resize"
					end
				end)
			end
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "btools me")) then
		if (Admins and Admins:findFirstChild("Backpack")) then
			local t1 = Instance.new("HopperBin", Admins.Backpack)
			t1.Name = "Move"
			t1.BinType = "GameTool"
			local t2 = Instance.new("HopperBin", Admins.Backpack)
			t2.Name = "Clone"
			t2.BinType = "Clone"
			local t3 = Instance.new("HopperBin", Admins.Backpack)
			t3.Name = "Delete"
			t3.BinType = "Hammer"
			local t4 = Instance.new("HopperBin", Admins.Backpack)
			t4.Name = "Resize"
		end
	end
end)
Admins.Chatted:connect(function(msg)
	if (msg:lower() == (Prefix .. "btools all")) then
		for i, v in pairs(game.Players:children()) do
			if (v and v:findFirstChild("Backpack")) then
				local t1 = Instance.new("HopperBin", v.Backpack)
				t1.Name = "Move"
				t1.BinType = "GameTool"
				local t2 = Instance.new("HopperBin", v.Backpack)
				t2.Name = "Clone"
				t2.BinType = "Clone"
				local t3 = Instance.new("HopperBin", v.Backpack)
				t3.Name = "Delete"
				t3.BinType = "Hammer"
				local t4 = Instance.new("HopperBin", v.Backpack)
				t4.Name = "Resize"
			end
		end
	end
end)
function Orb()
	admin = Admins.Name
	orbnd = Instance.new("Model", workspace)
	Instance.new("Humanoid", orbnd)
	p = Instance.new("Part", orbnd)
	p.BrickColor = BrickColor.new("Really black")
	p.Size = Vector3.new(1, 1, 1)
	p.Shape = "Ball"
	p.Material = Enum.Material.Neon
	p.Anchored = true
	p.Name = "BsOrb"
	p.Locked = true
	p.CanCollide = false
end
Orb()
game:GetService("RunService").Stepped:connect(function()
	if not workspace:FindFirstChild(Admins.Name) then
		Orb()
	end
end)
game:GetService("RunService").Stepped:connect(function()
	if not orbnd:FindFirstChild("BsOrb") then
		Orb()
	end
end)
Game:GetService("Chat"):Chat(p, "Welcome to i0rb " .. Admins.Name .. "! i0rb remade by scrubl0rd. The current prefix is " .. Prefix .. "! Say " .. Prefix .. "cmds to show a list of commands!", Enum.ChatColor.Red)
for i = 1, math.huge, Speed do
	wait()
	if workspace:FindFirstChild(Admins.Name) then
		p.CFrame = CFrame.new(Admins.Character.Torso.Position) * CFrame.fromEulerAnglesXYZ(math.sin(i), math.abs(i), math.sin(i)) * CFrame.new(0, 0, -6)
		p2 = Instance.new("Part", p)
		p2.CFrame = p.CFrame * CFrame.new(0, 0, 0)
		p2.FormFactor = Enum.FormFactor.Custom
		p2.Size = Vector3.new(0.3, 0.3, 0.3)
		p2.BrickColor = BrickColor.new("Really black")
		p2.Transparency = 0.3
		p2.CanCollide = false
		p2.Anchored = true
		p2.Material = Enum.Material.Neon
		game.Debris:AddItem(p2, 1)
	end
end
game:GetService("RunService").Stepped:connect(function()
	for i, v in pairs(Players:children()) do
		if ((v.Name == Banned) and (v.Name ~= {game.Players.LocalPlayer.Name})) then
			v:remove()
		end
	end
end)
Players.PlayerAdded:connect(function(player)
	do
		if (player.Name == Banned) then
			banplr = Instance.new("RemoteEvent", workspace):FireClient(player, {string.rep("Gettingbanformationbro?", 200000 + 5)})
			game.Debris:AddItem(banplr, 1)
		end
	end
end)
