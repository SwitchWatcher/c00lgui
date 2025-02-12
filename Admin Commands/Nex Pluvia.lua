
version = "Pluvia"
Selection = 1
TextBoxInUse = false
Player = nil
ColorSelection = BrickColor.new("Bright violet")
Uninstalled = false
Commands = {}
Scope = nil
CustomFunction = ""
Services = {InsertService=game:service("InsertService"),Workspace=game:service("Workspace"),Lighting=game:service("Lighting"),Players=game:service("Players"),Debris=game:service("Debris"),Chat=game:service("Chat")}
m = Services.Players.LocalPlayer:GetMouse()
SGUI = Instance.new("ScreenGui", Services.Players.LocalPlayer.PlayerGui)
BAR = Instance.new("Frame", SGUI)
BAR.Size = UDim2.new(1, 0, 0, 20)
BAR.Position = UDim2.new(0, 0, 0, 20)
BAR.BorderSizePixel = 0
BAR.BackgroundColor3 = Color3.new(0, 0, 0)
TEXTBOX = Instance.new("TextLabel", BAR)
TEXTBOX.Size = UDim2.new(1, 0, 1, 0)
TEXTBOX.BackgroundTransparency = 1
TEXTBOX.TextColor3 = Color3.new(453, 0, 435)
TEXTBOX.FontSize = "Size12"
function PlayerCheck()
	if (m.Target ~= nil) then
		for i, v in ipairs(Services.Players:GetPlayers()) do
			if (v.Character and m.Target:IsDescendantOf(v.Character)) then
				return v
			end
		end
	end
end
function GUIRefresh()
	if not TextBoxInUse then
		local StartOp = ""
		local EndOp = ""
		if (Selection > 1) then
			StartOp = Scope[Selection - 1][1]
		end
		if (Selection < #Scope) then
			EndOp = Scope[Selection + 1][1]
		end
		TEXTBOX.Text = "<-- " .. StartOp .. " | [" .. Selection .. "]: [" .. Scope[Selection][1] .. "] | " .. EndOp .. " -->"
	end
end
function GUIDisplay(string)
	TextBoxInUse = true
	for i = 1, string.len(string) do
		TEXTBOX.Text = string.sub(string, 1, i) .. "_"
		wait(0.05)
	end
	wait(string.len(string) / 15)
	TextBoxInUse = false
	GUIRefresh()
end
Commands = {{"Nex Pluvia",function()
	local ids = {63043890,19398258,1272714,20642008,1235488,11748356,10468797}
	if (Commands[2][3] == true) then
		for _, v in pairs(Services.Players.LocalPlayer.Character:GetChildren()) do
			for _, x in pairs(ids) do
				if (v.Name == "ExtraAsset") then
					v.Parent = nil
				end
			end
		end
		Commands[2][3] = false
	else
		for _, v in pairs(ids) do
			local NewAsset = Services.InsertService:LoadAsset(v):GetChildren()[1]
			NewAsset.Parent = Services.Players.LocalPlayer.Character
			NewAsset.Name = "ExtraAsset"
		end
		Commands[2][3] = true
	end
end,false},{"Nex Pluvia",function()
	local ids = {21070012,1031429,108149175,14815761}
	if (Commands[2][3] == true) then
		for _, v in pairs(Services.Players.LocalPlayer.Character:GetChildren()) do
			for _, x in pairs(ids) do
				if (v.Name == "ExtraAsset") then
					v.Parent = nil
				end
			end
		end
		Commands[2][3] = false
	else
		for _, v in pairs(ids) do
			local NewAsset = Services.InsertService:LoadAsset(v):GetChildren()[1]
			NewAsset.Parent = Services.Players.LocalPlayer.Character
			NewAsset.Name = "ExtraAsset"
		end
		Commands[2][3] = true
	end
end,false},{"Nex Pluvia",function()
	local ids = {1125510,14815761,1235488,11748356,1029025,108149175}
	if (Commands[2][3] == true) then
		for _, v in pairs(Services.Players.LocalPlayer.Character:GetChildren()) do
			for _, x in pairs(ids) do
				if (v.Name == "ExtraAsset") then
					v.Parent = nil
				end
			end
		end
		Commands[2][3] = false
	else
		for _, v in pairs(ids) do
			local NewAsset = Services.InsertService:LoadAsset(v):GetChildren()[1]
			NewAsset.Parent = Services.Players.LocalPlayer.Character
			NewAsset.Name = "ExtraAsset"
		end
		Commands[2][3] = true
	end
end,false},{"Fire*",function()
	if pcall(function()
		Services.Players.LocalPlayer.Character.Head.Fire.Parent = nil
	end) then
	else
		pcall(function()
			fire = Instance.new("Fire", Services.Players.LocalPlayer.Character.Head)
			fire.Size = 3
			fire.Color = Color3.new(453, 0, 435)
			fire.SecondaryColor = Color3.new(453, 0, 435)
		end)
	end
end},{"Invincibility*",function()
	pcall(function()
		if (Services.Players.LocalPlayer.Character.Humanoid.MaxHealth == 100) then
			Services.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
		else
			Services.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
		end
	end)
end},{"Teleport*",function()
	if (m.Target ~= nil) then
		pcall(function()
			Services.Players.LocalPlayer.Character:MoveTo(m.Hit.p)
		end)
	end
end},{"Teleport",function()
	if ((Player == nil) and (m.Target ~= nil)) then
		if PlayerCheck() then
			Player = PlayerCheck()
		end
		pcall(function()
			for _, v in pairs(Player.Character:GetChildren()) do
				if v:IsA("Part") then
					local sb = Instance.new("SelectionBox", Services.Workspace.CurrentCamera)
					sb.Adornee = v
					sb.Name = "sb"
					sb.Color = BrickColor.new("Bright violet")
				end
			end
		end)
	elseif (Player ~= nil) then
		pcall(function()
			Player.Character:MoveTo(m.Hit.p)
		end)
		Player = nil
		for _, v in pairs(Services.Workspace.CurrentCamera:GetChildren()) do
			if (v:IsA("SelectionBox") and (v.Name == "sb")) then
				v.Parent = nil
			end
		end
	end
end},{"Kill",function()
	pcall(function()
		PlayerCheck().Character:BreakJoints()
	end)
end},{"Invincibility",function()
	pcall(function()
		if (PlayerCheck().Character.Humanoid.MaxHealth == 100) then
			PlayerCheck().Character.Humanoid.MaxHealth = math.huge
		else
			PlayerCheck().Character.Humanoid.MaxHealth = 100
		end
	end)
end},{":BreakJoints()",function()
	pcall(function()
		m.Target:BreakJoints()
	end)
end},{"Kick",function()
	pcall(function()
		PlayerCheck().Parent = nil
	end)
end},{"Custom Function",function()
	Spawn(loadstring(CustomFunction))
end},{"LinkedSword",function()
	Services.InsertService:LoadAsset(47433):GetChildren()[1].Parent = Services.Players.LocalPlayer.Backpack
end},{":GetFullName()",function()
	if m.Target then
		local string = m.Target:GetFullName()
		if string then
			GUIDisplay(string)
		end
	else
		GUIDisplay("nil")
	end
end},{"Humanoid",function()
	Scope = Commands.Humanoid[3]
	Selection = 1
	GUIRefresh()
end,{{"Up Scope",function()
	Scope = Commands
	Selection = 1
	GUIRefresh()
end},{"Humanoid",function()
	if PlayerCheck() then
		if pcall(function()
			PlayerCheck().Character.Humanoid.Parent = nil
		end) then
		else
			pcall(function()
				Instance.new("Humanoid", PlayerCheck().Character)
			end)
		end
	end
end},{"Remove Head",function()
	pcall(function()
		PlayerCheck().Character.Head.Parent = nil
	end)
end},{"PlatformStand",function()
	pcall(function()
		if (PlayerCheck().Character.Humanoid.PlatformStand == true) then
			PlayerCheck().Character.Humanoid.PlatformStand = false
		else
			PlayerCheck().Character.Humanoid.PlatformStand = true
		end
	end)
end},{"Sit",function()
	pcall(function()
		if (PlayerCheck().Character.Humanoid.Sit == true) then
			PlayerCheck().Character.Humanoid.Sit = false
		else
			PlayerCheck().Character.Humanoid.Sit = true
		end
	end)
end},{"WalkSpeed",function()
	pcall(function()
		if (PlayerCheck().Character.Humanoid.WalkSpeed == 16) then
			PlayerCheck().Character.Humanoid.WalkSpeed = 0
		else
			PlayerCheck().Character.Humanoid.WalkSpeed = 16
		end
	end)
end}}},{"Building",function()
	Scope = Commands.Building[3]
	Selection = 1
	GUIRefresh()
end,{{"Up Scope",function()
	Scope = Commands
	Selection = 1
	GUIRefresh()
end},{"Color",function()
	pcall(function()
		m.Target.BrickColor = ColorSelection
	end)
end},{"Color Picker",function()
	pcall(function()
		ColorSelection = m.Target.BrickColor
	end)
end},{"Anchor",function()
	pcall(function()
		m.Target.Anchored = true
	end)
end},{"Unanchor",function()
	pcall(function()
		m.Target.Anchored = false
	end)
end},{"Decal",function()
	pcall(function()
		decal = Instance.new("Decal", m.Target)
		decal.Face = m.TargetSurface
		decal.Texture = "http://roblox.com/asset/?id=123659742"
	end)
end},{"Decal2",function()
	pcall(function()
		decal = Instance.new("Decal", m.Target)
		decal.Face = m.TargetSurface
		decal.Texture = "http://roblox.com/asset/?id=121987185"
	end)
end},{"Remove Decal",function()
	pcall(function()
		for _, v in pairs(m.Target:GetChildren()) do
			if v:IsA("Decal") then
				if (v.Face == m.TargetSurface) then
					v.Parent = nil
				end
			end
		end
	end)
end}}}}
for i, v in ipairs(Commands) do
	Commands[v[1]] = v
end
Scope = Commands
if script then
	script.Parent = Services.Players.LocalPlayer.PlayerGui
	script.Name = "[Nex v" .. version .. "]"
end
coroutine.wrap(function()
	repeat
		wait()
	until Services.Players.LocalPlayer.Character 
	Services.Chat:Chat(Services.Players.LocalPlayer.Character.Head, "Nex " .. version .. " Installed", Enum.ChatColor.Blue)
end)()
GUIDisplay("..Nex Loaded - Made by Nex Pluvia...")
QDown = false
EDown = false
m.KeyDown:connect(function(key)
	if not Uninstalled then
		if (key == "q") then
			if not EDown then
				QDown = true
				repeat
					if (Selection > 1) then
						Selection = Selection - 1
					end
					GUIRefresh()
					wait(0.25)
				until QDown == false 
			end
		elseif (key == "e") then
			if not QDown then
				EDown = true
				repeat
					if (Selection < #Scope) then
						Selection = Selection + 1
					end
					GUIRefresh()
					wait(0.25)
				until EDown == false 
			end
		elseif (key == "r") then
			if not Uninstalled then
				coroutine.wrap(function()
					if m.Target then
						sb = Instance.new("SelectionBox", Services.Workspace.CurrentCamera)
						sb.Adornee = m.Target
						sb.Name = "sb"
						sb.Color = BrickColor.new("Bright violet")
						wait(0.25)
						for _, v in pairs(Services.Workspace.CurrentCamera:GetChildren()) do
							if (v:IsA("SelectionBox") and (v.Name == "sb")) then
								v.Parent = nil
							end
						end
					end
				end)()
				Scope[Selection][2]()
			end
		end
	end
end)
m.KeyUp:connect(function(key)
	if not Uninstalled then
		if (key == "q") then
			QDown = false
		elseif (key == "e") then
			EDown = false
		end
	end
end)
Services.Players.LocalPlayer.Chatted:connect(function(msg)
	if not Uninstalled then
		if (string.lower(msg) == "uninstall Nex") then
			Uninstalled = true
			Services.Chat:Chat(Services.Players.LocalPlayer.Character.Head, "Nex " .. version .. " UNINSTALLED", Enum.ChatColor.Blue)
			SGUI.Parent = nil
			if script then
				script.Parent = nil
			end
		elseif (string.sub(string.lower(msg), 1, 2) == "c/") then
			pcall(function()
				ColorSelection = BrickColor.new(string.sub(msg, 3))
			end)
		elseif (string.sub(string.lower(msg), 1, 2) == "m/") then
			for _, v in pairs(Services.Players:GetChildren()) do
				if (v.Name ~= Services.Players.LocalPlayer.Name) then
					Services.Chat:Chat(v.Character.Head, string.sub(msg, 3), Enum.ChatColor.Green)
				end
			end
		elseif (string.sub(string.lower(msg), 1, 3) == "cf/") then
			CustomFunction = string.sub(msg, 4)
		end
	end
end)
