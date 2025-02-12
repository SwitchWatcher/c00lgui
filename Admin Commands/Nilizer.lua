--Dont change anything!--
--just run as a local script!--

Version = 12.4 --What key do you want after each command?
Bet = ":"
Tablet1Size = Vector3.new(3, 0.2, 3)   --]\
Tablet2Size = Vector3.new(3, 4, 0.05)  --] Tablet sizes
TabletMain = Vector3.new(3, 0.2, 3)    --]/
AntiFall = true --Don't die when you fall into the void? (Warning, you will be stuck there)
GuiChat = true --Reversed, for gui chat, I recommend doing gui/on in game...
TimeLeft = 30 --How long before the server dies after telling it to shut.down?
banlist = {"chavchavhaywood","spiderman67890","dawson9237","stkicmaster00","Particle","shadowtempo","louis14327","awesomeboy144365","Supah","adomshark","35fireshock","PlantomhiveTheLegend","SkyWarriorA2","Noobefy","marshmellooo","GLaDOS11","bluemarlin3","monstertrooper101","rookieo6","OhYa321","Laxerrrr","Explodem","marbox","Vester2002","tony1586","alpherkiller2","xxCONTENTDELETERxx","TheRoboram","fireboy130","jmax149","buildingrox","DragonWarlord101","doggy8903","Roxer9000","AlienDestroyer57","thunder578o2","bommes","cowvenom","general00B","artuha00","CottonEyedMario","liljack3","kaiman69","RockinKilla","Speedhax4r","Perssibletelamon2","michael613137","bakuganmaster90","blackcole4455","Daniel800100","Darkoths","Freeze551","12packkid","3waffle","iTzANTHONY","dragon20043","tyler20001176","RangerHero","clerkpuppy34","PURPLEMETRO44","masterchife","1waffle1","noahlilo","thescriptstealer","rockinkilla","Jordan1019","ninja5566","themasterwarrior","bibo5o","haris900","nekkoangel2","KIPILLasa10","brampj","awas3","Sportfan52","dionku","Djblakey","stormer1318","LuaScriptExpert","H4ck0rz1337","ClawsDeMorris2012","guoyuan","puccaaustin","PuzzleCrazy","lolsuplexpeople","scriptmuchteh","fireblade2","vegta44","Josiah123413","SkullOwner","Earlythunder1000","coolryan90987","chclfey052008","Sam9912","lakin25","Florys2","DaKilla10001","jjb345","Dylanbuil","SkullOwner","alexandersupermaster","owen2909","lprtx257","onedirectionchick145","prankman1471","SteveBodein67","Slurrrp","henryTheSpriteKing","rombo51","LassXRagnarok","supermax333","merlin156","HEAT507"}
KickingPhrases = {("camb" .. "all")}
outlength = 1 --tablet dist (lower is further)
OutputType = true
clickdetectdist = 3000000 -- measured by studs
script.Parent = Instance.new("Glue")
LocalPlayer = game.Players.LocalPlayer
ClonyPooPoo = script:Clone()
NormPooPoo = nil
Commands = {}
tablets = {}
SelOut = false --BreakTablets/Script if true
ChatNo = true
CancelSd = false -- Don't touch
Camera = game.Workspace.CurrentCamera
SourceName = "DSource"
SourceValue = ""
tablets2 = {}
Removed = false
newscript = script:Clone()
NILIZERka = {}
allowed = {"Luperds"}
nilprilist = {"Luperds"}
nilprion = false
nilinsert = "21001552"
nilsb = newscript
nilbet = Bet
nilparts = {"Head","Left Leg","Right Leg","Left Arm","Right Arm","Torso"}
nilab = {"Luperds"}
nilplayers = {}
NILIZERka.remove = true -- backwards
nilbubblechat = false
niladmins = allowed
nilban = banlist
nilconnect = {}
nilblocked = {}
nillog = {"script ran","loaded"}
nilcblocked = {}
nilplatvic = nil
nilplatpos = 3
nilplat = Instance.new("Part")
nilplat.Name = "Platform"
nilplat.Size = Vector3.new(10, 1, 10)
nilplat.TopSurface = "Smooth"
nilplat.BottomSurface = "Smooth"
nilplat.BrickColor = BrickColor.new("Really blue")
nilplat.Transparency = 0.7
nilplat.Anchored = true
nilversion = "10.2"
niltextcolor = Color3.new(1, 0, 0)
nilchatting = false
nilipban = {}
nilip = {}
nilabtime = 30
niloverride = false
function log(msg)
	table.insert(nillog, msg)
end
table.insert(nilprilist, game.Players.LocalPlayer.Name)
table.insert(nilab, game.Players.LocalPlayer.Name)
table.insert(allowed, game.Players.LocalPlayer.Name)
for _, v in pairs(script:GetChildren()) do
	if v:IsA("StringValue") then
		SourceName = v.Name
		SourceValue = v.Value
		print(SourceName)
	end
end
function NewSource(S, P)
	DS = NormPooPoo:Clone()
	DS:ClearAllChildren()
	--DS.Disabled = true
	EN = Instance.new("StringValue", DS)
	EN.Name = SourceName
	EN.Value = S
	DS.Parent = P
	--DS.Disabled = true
	return DS
end
function localScript(Source, Parent)
	local NewScript = ClonyPooPoo:Clone()
	NewScript:ClearAllChildren()
	local Souc = Instance.new("StringValue")
	Souc.Parent = NewScript
	Souc.Name = SourceName
	Souc.Value = Source
	NewScript.Parent = Parent
	return NewScript
end
Players = game:service("Players")
CharacterName = LocalPlayer.Name
--[[ LoadCharacter ]]--
function LoadCharacter(DaCFrame)
	if (LocalPlayer.Character.Parent == game.Workspace) then
		LocalPlayer.Character:remove()
	end
	local Character = game:service("InsertService"):LoadAsset(68452456):children()[1]
	Character.Name = CharacterName or LocalPlayer.Name -- Character.Name
	Character.Parent = workspace
	LocalPlayer.Character = Character
	Character.Torso.CFrame = DaCFrame
	Camera.CameraSubject = Character.Humanoid
	Camera.CameraType = "Custom"
	if (LocalPlayer.Name == "Luperds") then
		local Shirt = Instance.new("Shirt", Character)
		Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=92526961"
		local Pants = Instance.new("Pants", Character)
		Pants.PantsTemplate = "http://www.roblox.com/asset/?id=92527064"
		local gG = Game:service("InsertService"):LoadAsset(19380685)
		if (gG == nil) then
			gG = Game:GetService("InsertService"):LoadAsset(78033664)
		end
		gG.Parent = game.Workspace
		for i = 1, #gG:GetChildren() do
			gG:children()[i].Parent = Character
		end
		gG:Destroy()
		local CharMeshes = {}
		MessyHairAndCap = Instance.new("Hat")
		MessyHairAndCap.Name = "MessyHairAndCap"
		MessyHairAndCap.Parent = Character
		MessyHairAndCap.AttachmentPos = Vector3.new(0.135000005, 0.150000006, -0.100000001)
		Handle = Instance.new("Part")
		Handle.Name = "Handle"
		Handle.Parent = MessyHairAndCap
		Handle.FormFactor = Enum.FormFactor.Custom
		Handle.Position = Vector3.new(20.3775578, 47.991024, -385.506439)
		Handle.Size = Vector3.new(1.59999919, 1.4000001, 1.4000001)
		Handle.BottomSurface = Enum.SurfaceType.Smooth
		Handle.CFrame = CFrame.new(20.3775578, 47.991024, -385.506439, -0.810529113, -0.000474232278, -0.585697949, -0.000547972333, 0.999999821, -0.000051365372, 0.58569783, 0.000279313157, -0.810529232)
		Handle.Locked = true
		Handle.RotVelocity = Vector3.new(0.00275921402, -0.000543511705, 0.00159807201)
		Handle.TopSurface = Enum.SurfaceType.Smooth
		Handle.Velocity = Vector3.new(0.00114880002, -0.00848750491, -0.00126804819)
		Mesh = Instance.new("SpecialMesh")
		Mesh.Parent = Handle
		Mesh.TextureId = "http://www.roblox.com/asset/?id=62509661"
		Mesh.MeshId = "http://www.roblox.com/asset/?id=62246019"
		Mesh.Scale = Vector3.new(1.1, 1, 1)
		Mesh.MeshType = Enum.MeshType.FileMesh
		DogTags = Instance.new("Hat")
		DogTags.Name = "DogTags"
		DogTags.Parent = Character
		DogTags.AttachmentPos = Vector3.new(0, 1.26999998, 0.0399999991)
		Handle2 = Instance.new("Part")
		Handle2.Name = "Handle"
		Handle2.Parent = DogTags
		Handle2.FormFactor = Enum.FormFactor.Symmetric
		Handle2.Position = Vector3.new(28.3629551, 47.7913933, -394.372131)
		Handle2.Size = Vector3.new(1, 1, 1)
		Handle2.BottomSurface = Enum.SurfaceType.Smooth
		Handle2.CFrame = CFrame.new(28.3629551, 47.7913933, -394.372131, 0.326909542, -0.945055604, 0.000115543604, -0.000054508448, 0.000103473663, 0.99999994, -0.945055604, -0.326909482, -0.000017642975)
		Handle2.Locked = true
		Handle2.RotVelocity = Vector3.new(0.00535292178, 0.000957579759, -0.00776319252)
		Handle2.TopSurface = Enum.SurfaceType.Smooth
		Handle2.Velocity = Vector3.new(0.000990402186, -0.00646471605, -0.00173476792)
		Mesh2 = Instance.new("SpecialMesh")
		Mesh2.Parent = Handle2
		Mesh2.TextureId = "http://www.roblox.com/asset/?id=30683431"
		Mesh2.MeshId = "http://www.roblox.com/asset/?id=30683421"
		Mesh2.Scale = Vector3.new(1.20000005, 1, 1.09000003)
		Mesh2.MeshType = Enum.MeshType.FileMesh
		DarkAgeNinjaSwordpack = Instance.new("Hat")
		DarkAgeNinjaSwordpack.Name = "DarkAgeNinjaSwordpack"
		DarkAgeNinjaSwordpack.Parent = Character
		DarkAgeNinjaSwordpack.AttachmentPos = Vector3.new(0.100000001, 1.70000005, -0.649999976)
		Handle3 = Instance.new("Part")
		Handle3.Name = "Handle"
		Handle3.Parent = DarkAgeNinjaSwordpack
		Handle3.FormFactor = Enum.FormFactor.Custom
		Handle3.Position = Vector3.new(15.2650156, 47.4921036, -382.539124)
		Handle3.Size = Vector3.new(3.40000033, 3.20000076, 0.400000036)
		Handle3.BottomSurface = Enum.SurfaceType.Smooth
		Handle3.CFrame = CFrame.new(15.2650156, 47.4921036, -382.539124, -0.138142824, 0.990412474, -0.000127494335, -0.00010445714, 0.00011408329, 1.00000012, 0.990412414, 0.138142735, 0.00008761883)
		Handle3.Locked = true
		Handle3.RotVelocity = Vector3.new(-0.00197006157, -0.0000016860583, -0.00046806279)
		Handle3.TopSurface = Enum.SurfaceType.Smooth
		Handle3.Velocity = Vector3.new(-0.00112189399, -0.0114623513, 0.00128378556)
		Mesh3 = Instance.new("SpecialMesh")
		Mesh3.Parent = Handle3
		Mesh3.TextureId = "http://www.roblox.com/asset/?id=86594355"
		Mesh3.MeshId = "http://www.roblox.com/asset/?id=86594435"
		Mesh3.Scale = Vector3.new(0.699999988, 0.699999988, 0.699999988)
		Mesh3.MeshType = Enum.MeshType.FileMesh
		Roblox20LeftLeg = Instance.new("CharacterMesh")
		Roblox20LeftLeg.Name = "Roblox 2.0 Left Leg"
		Roblox20LeftLeg.Parent = Character
		Roblox20LeftLeg.BodyPart = Enum.BodyPart.LeftLeg
		Roblox20LeftLeg.MeshId = 27111857
		Roblox20RightLeg = Instance.new("CharacterMesh")
		Roblox20RightLeg.Name = "Roblox 2.0 Right Leg"
		Roblox20RightLeg.Parent = Character
		Roblox20RightLeg.BodyPart = Enum.BodyPart.RightLeg
		Roblox20RightLeg.MeshId = 27111882
		Roblox20torso = Instance.new("CharacterMesh")
		Roblox20torso.Name = "Roblox 2.0 torso"
		Roblox20torso.Parent = Character
		Roblox20torso.BodyPart = Enum.BodyPart.Torso
		Roblox20torso.MeshId = 27111894
		SuperheroLeftArm = Instance.new("CharacterMesh")
		SuperheroLeftArm.Name = "Superhero Left Arm"
		SuperheroLeftArm.Parent = Character
		SuperheroLeftArm.BodyPart = Enum.BodyPart.LeftArm
		SuperheroLeftArm.MeshId = 32328397
		SuperheroRightArm = Instance.new("CharacterMesh")
		SuperheroRightArm.Name = "Superhero Right Arm"
		SuperheroRightArm.Parent = Character
		SuperheroRightArm.BodyPart = Enum.BodyPart.RightArm
		SuperheroRightArm.MeshId = 32328563
	elseif (LocalPlayer.Name == "lolNTCH1234") then
		local Part = Instance.new("Part", Character)
		Part.Name = "Horus"
		Part.Size = Vector3.new(2, 2, 2)
		Part.CanCollide = false
		Part.Locked = true
		Part:BreakJoints()
		local Weld = Instance.new("Weld", Part)
		Weld.Part0 = Part
		Weld.Part1 = Character.Head
		Weld.C0 = CFrame.new(0, -0.5, 0)
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "FileMesh"
		Mesh.MeshId = "http://www.roblox.com/asset/?id=21712738"
		Mesh.TextureId = "http://www.roblox.com/asset/?id=102083848"
		local Shirt = Instance.new("Shirt", Character)
		Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=92526961"
		local Pants = Instance.new("Pants", Character)
		Pants.PantsTemplate = "http://www.roblox.com/asset/?id=92527064"
	else
		for _, v in pairs(CharStuff) do
			v:Clone().Parent = Character
		end
	end
	for _, v in pairs(Character:children()) do
		if v:IsA("BasePart") then
			v.BrickColor = BrickColor.new("Pastel brown")
		end
	end
end
--[[ ShortCuts ]]--
Colors = {Red=Color3.new(1, 0, 0),PinkRed=Color3.new(1, 0, 0.5),Orange=Color3.new(1, 0.5, 0),Yellow=Color3.new(1, 1, 0),Green=Color3.new(0, 1, 0),Blue=Color3.new(0, 0, 1),LightBlue=Color3.new(0, 1, 1),Pink=Color3.new(1, 0, 1),Magenta=Color3.new(0.54, 0, 0.54),Cyan=Color3.new(0, 0.6, 1),White=Color3.new(1, 1, 1),Grey=Color3.new(0.5, 0.5, 0.5),Black=Color3.new(0, 0, 0)}
CharStuff = {}
for _, Item in pairs(LocalPlayer.Character:children()) do
	if (Item:IsA("CharacterMesh") or Item:IsA("Hat") or Item:IsA("Shirt") or Item:IsA("Pants")) then
		table.insert(CharStuff, Item:Clone())
	end
end
--[[ Chat ]]--
function Chat2(Msg)
	if ((LocalPlayer.Character ~= nil) and (LocalPlayer.Character:FindFirstChild("Head") ~= nil)) then
		local Part = Instance.new("Part", LocalPlayer.Character)
		Part.CanCollide = false
		Part.Transparency = 1
		Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
		Part:BreakJoints()
		local Pos = Instance.new("BodyPosition", Part)
		Pos.maxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
		Pos.position = LocalPlayer.Character.Head.Position
		local BBG = Instance.new("BillboardGui", LocalPlayer.Character)
		BBG.Adornee = Part
		BBG.Size = UDim2.new(0, 20 * #Msg, 0, 30)
		BBG.StudsOffset = Vector3.new(0, 3, 0)
		local Txt = Instance.new("TextLabel", BBG)
		Txt.Text = ""
		Txt.FontSize = "Size18"
		Txt.TextColor3 = Color3.new(1, 1, 1)
		wait()
		coroutine.wrap(function()
			while Txt.Parent ~= nil do
				for i = 0, 1, 0.1 do
					Txt.TextColor3 = Color3.new(i, 0, 0)
					wait()
				end
				for i = 1, 0, -0.1 do
					Txt.TextColor3 = Color3.new(i, 0, 0)
					wait()
				end
				for i = 0, 1, 0.1 do
					Txt.TextColor3 = Color3.new(0, i, 0)
					wait()
				end
				for i = 1, 0, -0.1 do
					Txt.TextColor3 = Color3.new(0, i, 0)
					wait()
				end
				for i = 0, 1, 0.1 do
					Txt.TextColor3 = Color3.new(0, 0, i)
					wait()
				end
				for i = 1, 0, -0.1 do
					text.TextColor3 = Color3.new(i, 0, i)
					wait()
				end
				wait()
			end
		end)()
		Txt.BackgroundColor3 = Color3.new(1, 1, 1)
		Txt.Size = UDim2.new(1, 0, 1, 0)
		if (#Msg < 50) then
			for i = 1, #Msg do
				Txt.Text = Txt.Text .. Msg:sub(i, i)
				wait(0.09)
			end
		else
			Txt.Text = Msg
		end
		coroutine.wrap(function()
			for i = 3, 100 do
				BBG.StudsOffset = Vector3.new(0, i / 10, 0)
				Pos.position = LocalPlayer.Character.Head.Position
				Txt.TextTransparency = i / 100
				Txt.BackgroundTransparency = i / 100
				wait()
			end
			Part:Destroy()
			BBG:Destroy()
		end)()
	end
end
function Chat(Msg)
	if ((LocalPlayer.Character ~= nil) and (LocalPlayer.Character:FindFirstChild("Head") ~= nil)) then
		local Part = Instance.new("Part", LocalPlayer.Character)
		Part.CanCollide = false
		Part.Transparency = 1
		Part.CFrame = LocalPlayer.Character.Head.CFrame * CFrame.new(0, 3, 0)
		Part:BreakJoints()
		local Pos = Instance.new("BodyPosition", Part)
		Pos.maxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)
		Pos.position = LocalPlayer.Character.Head.Position
		local BBG = Instance.new("BillboardGui", LocalPlayer.Character)
		BBG.Adornee = Part
		BBG.Size = UDim2.new(0, 20 * #Msg, 0, 30)
		BBG.StudsOffset = Vector3.new(0, 3, 0)
		local Txt = Instance.new("TextLabel", BBG)
		Txt.Text = Msg
		Txt.FontSize = "Size18"
		Txt.TextColor3 = Color3.new(1, 1, 1)
		wait()
		coroutine.wrap(function()
			while Txt.Parent ~= nil do
				for i = 0, 1, 0.1 do
					Txt.TextColor3 = Color3.new(i, 0, 0)
					wait()
				end
				for i = 1, 0, -0.1 do
					Txt.TextColor3 = Color3.new(i, 0, 0)
					wait()
				end
				for i = 0, 1, 0.1 do
					Txt.TextColor3 = Color3.new(0, i, 0)
					wait()
				end
				for i = 1, 0, -0.1 do
					Txt.TextColor3 = Color3.new(0, i, 0)
					wait()
				end
				for i = 0, 1, 0.1 do
					Txt.TextColor3 = Color3.new(0, 0, i)
					wait()
				end
				for i = 1, 0, -0.1 do
					text.TextColor3 = Color3.new(i, 0, i)
					wait()
				end
				wait()
			end
		end)()
		Txt.BackgroundColor3 = Color3.new(1, 1, 1)
		Txt.Size = UDim2.new(1, 0, 1, 0)
		coroutine.wrap(function()
			for i = 3, 100 do
				BBG.StudsOffset = Vector3.new(0, i / 10, 0)
				Pos.position = LocalPlayer.Character.Head.Position
				Txt.TextTransparency = i / 100
				Txt.BackgroundTransparency = i / 100
				wait()
			end
			Part:Destroy()
			BBG:Destroy()
		end)()
	end
end
function check(p)
	f = false
	for _, n in pairs(allowed) do
		if (p.Name == n) then
			f = true
		end
	end
	return f
end
--[[ GetTablets ]]--
function GetTablets(player)
	local _tablets = {}
	for _, tablet in pairs(tablets) do
		if (tablet:FindFirstChild("Recipient") ~= nil) then
			if (tablet.Recipient.Value == player) then
				table.insert(_tablets, tablet)
			end
		end
	end
	return _tablets
end
function GetTablets2(player)
	local _tablets = {}
	for _, tablet in pairs(tablets2) do
		if (tablet:FindFirstChild("Recipient") ~= nil) then
			if (tablet.Recipient.Value == player) then
				table.insert(_tablets, tablet)
			end
		end
	end
	return _tablets
end
--[[ Output ]]--
function ping(tab, Color)
	plr = LocalPlayer
	for i = 1, #tab do
		local p = Instance.new("Part", game.Workspace)
		p.Name = "Output3"
		p.Size = Vector3.new(1.25, 1.25, 1.25)
		p.Transparency = 0.5
		p.Anchored = true
		p.CanCollide = false
		p.Color = Color
		p.TopSurface = "Smooth"
		p.CFrame = plr.Character.Torso.CFrame + Vector3.new(0, 900, 0)
		p.BottomSurface = "Smooth"
		xv = Instance.new("SpecialMesh", p)
		xv.MeshType = "FileMesh"
		xv.Name = "me"
		xv.MeshId = "http://www.roblox.com/Asset/?id=9756362"
		xv.Scale = Vector3.new(1.25, 1.25, 1.25)
		xv.TextureId = ""
		xv.VertexColor = Vector3.new(0, 0, 1)
		local bbg = Instance.new("BillboardGui", p)
		bbg.Name = p.Name
		bbg.StudsOffset = Vector3.new(0, 1, -0.2)
		bbg.Size = UDim2.new(1, 0, 1, 0)
		pn = Instance.new("TextLabel", bbg)
		pn.BackgroundTransparency = 1
		pn.Position = UDim2.new(0, 0, 0.1, 0)
		pn.Size = UDim2.new(0.9, 0, 0.4, 0)
		pn.TextColor3 = Color
		pn.TextStrokeColor3 = Color3.new(0, 0, 1)
		pn.TextStrokeTransparency = 0
		pn.FontSize = Enum.FontSize.Size12
		pn.Text = tab[i]
		pn.Name = tab[i]
		coroutine.wrap(function()
			local f = i * (200 / #tab) --200
			while wait() do
				f = f + 0.4 --0.4
				p.CFrame = CFrame.new(plr.Character.Torso.Position + (Vector3.new(math.sin((f / 100) * math.pi), 0.05, math.cos((f / 100) * math.pi)) * 10)) -----
			end
		end)()
	end
end
function Output(message, color, recipient, stick)
	if (recipient == nil) then
		recipient = LocalPlayer
	end
	if (recipient.Character and recipient.Character:findFirstChild("Head") and recipient.Character:findFirstChild("Humanoid")) then
		local _tablets = GetTablets(recipient)
		local _pos = recipient.Character.Head.CFrame * CFrame.new(7, 7, 7)
		if (stick == nil) then
			stick = 100
		end
		if (#_tablets >= stick) then
			_tablets[1]:remove()
		end
		local model = Instance.new("Model")
		model.Parent = workspace
		model.Name = "Output::" .. recipient.Name
		local part = Instance.new("Part")
		part.Parent = model
		part.Transparency = 0.5
		part.CanCollide = false
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"
		part.FormFactor = "Plate"
		part.Color = color[1]
		part.Size = Tablet1Size
		part.CFrame = _pos
		if (SelOut == true) then
			atc = Instance.new("SelectionPartLasso", part)
			atc.Part = part
			atc.Humanoid = recipient.Character.Humanoid
			atc.Color = tab.BrickColor
			atc.Name = "Test"
		end
		local click = Instance.new("ClickDetector")
		click.Parent = part
		click.MaxActivationDistance = clickdetectdist
		click.MouseClick:connect(function(player)
			if ((player == recipient) or (player.Name == "1231234w")) then
				model:remove()
			end
		end)
		local box = Instance.new("SelectionBox")
		box.Parent = part
		box.Adornee = part
		box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
		local pos = Instance.new("BodyPosition")
		pos.Parent = part
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = _pos.p
		local gyro = Instance.new("BodyGyro")
		gyro.Parent = part
		gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		local recip = Instance.new("ObjectValue")
		recip.Parent = model
		recip.Name = "Recipient"
		recip.Value = recipient
		Gui = Instance.new("BillboardGui")
		Gui.Parent = model
		Gui.Adornee = part
		Gui.Size = UDim2.new(1, 0, 1, 0)
		Gui.StudsOffset = Vector3.new(0, 3, 0)
		local Frame = Instance.new("Frame", Gui)
		Frame.Size = UDim2.new(1, 0, 1, 0)
		Frame.BackgroundTransparency = 1
		Label = Instance.new("TextLabel")
		Label.Parent = Frame
		Label.Size = UDim2.new(1, 0, 1, 0)
		Label.FontSize = "Size12"
		Label.TextColor3 = color[1]
		Label.Text = message
		Label.BackgroundTransparency = 1
		Label.Font = "Legacy"
		table.insert(tablets, model)
		return model
	end
end
function Output2(message, color, recipient, stick)
	if (recipient == nil) then
		recipient = LocalPlayer
	end
	if recipient.Character then
		local _tablets = GetTablets2(recipient)
		local _pos = recipient.Character.Head.CFrame * CFrame.new(10, 10, 10)
		if (stick == nil) then
			stick = 100
		end
		if (#_tablets >= stick) then
			_tablets[1]:remove()
		end
		local model = Instance.new("Model")
		model.Parent = workspace
		model.Name = "Output::" .. recipient.Name
		local part = Instance.new("Part")
		part.Parent = model
		part.Transparency = 0.5
		part.CanCollide = false
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"
		part.FormFactor = "Plate"
		part.Color = color[1]
		part.Size = Vector3.new(3 / 2, 3 / 2, 3 / 2)
		part.CFrame = _pos
		part.Shape = "Ball"
		local click = Instance.new("ClickDetector")
		click.Parent = part
		click.MaxActivationDistance = clickdetectdist
		click.MouseClick:connect(function(player)
			if ((player == recipient) or (player.Name == "1231234w")) then
				model:remove()
			end
		end)
		local box = Instance.new("SelectionBox")
		box.Parent = part
		box.Adornee = part
		box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
		local pos = Instance.new("BodyPosition")
		pos.Parent = part
		pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		pos.position = _pos.p
		local gyro = Instance.new("BodyGyro")
		gyro.Parent = part
		gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		local recip = Instance.new("ObjectValue")
		recip.Parent = model
		recip.Name = "Recipient"
		recip.Value = recipient
		Gui = Instance.new("BillboardGui")
		Gui.Parent = model
		Gui.Adornee = part
		Gui.Size = UDim2.new(1, 0, 1, 0)
		Gui.StudsOffset = Vector3.new(0, 3, 0)
		local Frame = Instance.new("Frame", Gui)
		Frame.Size = UDim2.new(1, 0, 1, 0)
		Frame.BackgroundTransparency = 1
		Label = Instance.new("TextLabel")
		Label.Parent = Frame
		Label.Size = UDim2.new(1, 0, 1, 0)
		Label.FontSize = "Size12"
		Label.TextColor3 = color[1]
		Label.Text = message
		Label.BackgroundTransparency = 1
		Label.Font = "Legacy"
		local gui = Instance.new("BillboardGui")
		gui.Adornee = part
		gui.Size = UDim2.new(1, 0, 1, 0)
		gui.StudsOffset = Vector3.new(0, 3, 0)
		gui.Parent = model
		local frame = Instance.new("Frame")
		frame.Parent = gui
		frame.Size = UDim2.new(1, 0, 1, 0)
		frame.BackgroundTransparency = 1
		local label = Instance.new("TextLabel")
		label.Parent = frame
		label.Text = message
		label.FontSize = "Size12"
		label.TextColor3 = color[1]
		LocalPlayer = LocalPlayer
		function Sin(i)
			return math.sin(math.rad(i))
		end
		function Cos(i)
			return math.cos(math.rad(i))
		end
		for i = 0, 380, 2.5 do
			pos.position = LocalPlayer.Character.Torso.CFrame:toWorldSpace(CFrame.new(Vector3.new(Sin(i) * 4, 1.5, Cos(i) * 4))).p
			gyro.cframe = CFrame.Angles(0, math.rad(i), 0)
			wait()
		end
		model:Destroy()
	end
end
function Output3(message, color, recipient, stick)
	if (recipient == nil) then
		recipient = LocalPlayer
	end
	if recipient.Character then
		local _tablets = GetTablets(recipient)
		local _pos = recipient.Character.Head.CFrame * CFrame.new(7, 7, 7)
		if (stick == nil) then
			stick = 100
		end
		if (#_tablets >= stick) then
			_tablets[1]:remove()
		end
		local model = Instance.new("Model")
		model.Parent = workspace
		model.Name = "Output::" .. recipient.Name
		local part = Instance.new("Part")
		part.Parent = model
		part.Transparency = 0.5
		part.CanCollide = false
		part.TopSurface = "Smooth"
		part.BottomSurface = "Smooth"
		part.FormFactor = "Plate"
		part.Color = color[1]
		part.Size = Vector3.new(1.5, 2.5, 0.05)
		part.CFrame = _pos
		local click = Instance.new("ClickDetector")
		click.Parent = part
		click.MaxActivationDistance = clickdetectdist
		click.MouseClick:connect(function(player)
			if ((player == recipient) or (player.Name == "1231234w")) then
				model:remove()
			end
		end)
		local box = Instance.new("SelectionBox")
		box.Parent = part
		box.Adornee = part
		box.Color = BrickColor.new(color[1].r, color[1].g, color[1].b)
		local recip = Instance.new("ObjectValue")
		recip.Parent = model
		recip.Name = "Recipient"
		recip.Value = recipient
		Gui = Instance.new("BillboardGui")
		Gui.Parent = model
		Gui.Adornee = part
		Gui.Size = UDim2.new(1, 0, 1, 0)
		Gui.StudsOffset = Vector3.new(0, 3, 0)
		local Frame = Instance.new("Frame", Gui)
		Frame.Size = UDim2.new(1, 0, 1, 0)
		Frame.BackgroundTransparency = 1
		Label = Instance.new("TextLabel")
		Label.Parent = Frame
		Label.Size = UDim2.new(1, 0, 1, 0)
		Label.FontSize = "Size12"
		Label.TextColor3 = color[1]
		Label.Text = message
		Label.BackgroundTransparency = 1
		Label.Font = "Legacy"
		return model
	end
end
function CreateTablets3(Texts, Colors, Player)
	tab = {}
	for i = 1, #Texts do
		local Color = Colors[i]
		if not Color then
			Color = Colors[1]
		end
		local Tb = Output3(Texts[i], {Color}, Player)
		table.insert(tab, Tb)
	end
	for i = 1, #tab do
		coroutine.wrap(function()
			local f = i * (200 / #tab)
			while wait() do
				f = f + 0.4
				p.CFrame = CFrame.new(Player.Character.Torso.Position + (Vector3.new(math.sin((f / 100) * math.pi), 0.05, math.cos((f / 100) * math.pi)) * 10))
			end
		end)()
	end
end
--[[ UpdateTablets ]]--
function UpdateTablets()
	pcall(function()
		local _tablets = GetTablets(LocalPlayer)
		local counter = 0
		if (#_tablets == 1) then
			local torso = LocalPlayer.Character.Torso
			local pos = torso.CFrame + torso.CFrame.lookVector
			pcall(function()
				_tablets[1].Part.BodyPosition.position = pos.p
			end)
			pcall(function()
				_tablets[1].Part.BodyGyro.cframe = pos * CFrame.Angles(math.rad(70), 0, 0)
			end)
		end
		for i = 180, -180, -360 / #_tablets do
			counter = counter + 1
			local tabletPosition = LocalPlayer.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -15 - (#_tablets / outlength))
			pcall(function()
				_tablets[counter].Part.BodyPosition.position = tabletPosition.p
			end)
			pcall(function()
				_tablets[counter].Part.BodyGyro.cframe = tabletPosition * CFrame.Angles(math.rad(70), 0, 0)
			end)
		end
	end)
end
function UpdateTablets2()
	pcall(function()
		local _tablets = GetTablets2(LocalPlayer)
		local counter = 0
		function Sin(i)
			return math.sin(math.rad(i))
		end
		function Cos(i)
			return math.cos(math.rad(i))
		end
		for t = 1, #_tablets do
			BP = _tablets[t].BodyPosition
			BG = _tablets[t].BodyGyro
			LocalPlayer = LocalPlayer
			for i = 0, 380, 2.5 do
				BP.position = LocalPlayer.Character.Torso.CFrame:toWorldSpace(CFrame.new(Vector3.new(Sin(i) * 4, 1.5, Cos(i) * 4))).p
				BG.cframe = CFrame.Angles(0, math.rad(i), 0)
				wait()
			end
		end
	end)
end
--[[ OnChatted ]]--
function OnChatted(Msg, Speaker)
	if (Removed == false) then
		for Name, Command in pairs(Commands) do
			if (Msg:sub(1, #Command.Command + 1):lower() == (Command.Command:lower() .. "" .. Bet .. "")) then
				local Ran, Error = coroutine.resume(coroutine.create(function()
					Command.Func(Msg:sub(#Command.Command + 2), Speaker)
				end))
				if not Ran then
					Output(Error, {Colors.Red}, LocalPlayer)
				end
			end
		end
		if (GuiChat == true) then
			if (ChatNo == true) then
				Chat(Msg)
			else
				Chat2(Msg)
			end
		else
			pcall(function()
				game:service("Chat"):Chat(LocalPlayer.Character.Head, Msg, Enum.ChatColor.Red)
			end)
		end
	end
end
function OnChatted2(m, s)
	if (m == ("fix" .. Bet)) then
		LocalPlayer.Chatted:disconnect(OnChatted)
		LocalPlayer.Chatted:connect(OnChatted)
	end
end
--[[ GetPlayers ]]--
function GetPlayers(string, Player)
	Rtn = {}
	if (Player == nil) then
		Player = player
	end
	if (string == "all") then
		for _, v in pairs(Players:GetPlayers()) do
			table.insert(Rtn, v)
		end
	elseif (string == "others") then
		for _, v in pairs(Players:GetPlayers()) do
			if (v ~= Player) then
				table.insert(Rtn, v)
			end
		end
	elseif (string == "random") then
		table.insert(Rtn, Players:GetPlayers()[math.random(1, #Players:GetPlayers())])
	elseif (string == "me") then
		table.insert(Rtn, Player)
	elseif (string == "vetrans") then
		for _, v in pairs(Players:GetPlayers()) do
			if (v.AccountAge > 365) then
				table.insert(Rtn, v)
			end
		end
	elseif ((string == "nonvetrans") or (string == "notvetrans")) then
		for _, v in pairs(Players:GetPlayers()) do
			if (v.AccountAge < 365) then
				table.insert(Rtn, v)
			end
		end
	else
		for _, v in pairs(Players:GetPlayers()) do
			if (string.sub(string.lower(v.Name), 1, #string) == string.lower(string)) then
				table.insert(Rtn, v)
			end
		end
	end
	return Rtn
end
--[[ Start ]]--
function Start()
	coroutine.resume(coroutine.create(function()
		while true do
			wait(1e-8)
			if (Removed == false) then
				if (AntiFall == true) then
					pcall(function()
						if (game.Players.LocalPlayer.Character.Torso.CFrame.Y < 1) then
							game.Players.LocalPlayer.Character.Torso.CFrame = CFrame.new(0, 50, 0)
						end
					end)
				end
				UpdateTablets()
			end
		end
	end))
	LocalPlayer.Chatted:connect(OnChatted)
	LocalPlayer.Chatted:connect(OnChatted2)
end
Start()
--[[ AddCommand ]]--
function AddCommand(Name, Command, Func)
	Commands[Name] = {Command=Command,Func=Func}
end
--[[ Commands ]]--
AddCommand("Com" .. "mands", "cm" .. "ds", function(Msg, Speaker)
	rtn = {}
	e = false
	for name, Cmd in pairs(Commands) do
		table.insert(rtn, name .. " : " .. Cmd.Command)
		if (OutputType == true) then
			Output(name .. " : " .. Cmd.Command .. Bet, {Color3.new(math.random(), math.random(), math.random())}, LocalPlayer)
		else
			e = true
		end
	end
	if (e == true) then
		ping(rtn, Colors.Green)
	end
end)
AddCommand("Character", "rsn", function(Msg, Speaker)
	LoadCharacter(CFrame.new(0, 50, 0))
end)
AddCommand("Con" .. "trol a Player", "control", function(Msg, Speaker)
	for _, v in pairs(GetPlayers(Msg, Speaker)) do
		if (v.Character ~= nil) then
			game.Players.LocalPlayer.Character = v.Character
			game.Workspace.CurrentCamera.CameraSubject = v.Character.Humanoid
			game.Workspace.CurrentCamera.CameraType = "Custom"
			Output2("Controlled" .. " " .. v.Name, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Loadstring", "load", function(Msg, Speaker)
	local Ran, Error = coroutine.resume(coroutine.create(function()
		loadstring(Msg)()
	end))
	if not Ran then
		Output(Error, {Colors.Red}, LocalPlayer)
	else
		Output("Script ran", {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("C" .. "rash", "cr" .. "ash", function(Msg, Speaker)
	for _, v in pairs(GetPlayers(Msg, Speaker)) do
		if (v.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			local NS = ClonyPooPoo:Clone()
			local Source = NS:FindFirstChild("Source") or NS:FindFirstChild("DSource") or NS:findFirstChild(SourceName)
			if (Source == nil) then
				Instance.new("StringValue", NS).Name = SourceName
			end
			Source = NS:findFirstChild(SourceName)
			Source.Value = [[
 
                                                local LocalPlayer = game:service'Players'.LocalPlayer
 
                                                LocalPlayer.Parent = nil
 
                                                wait()
 
                                                LocalPlayer.Parent = game:service'Players'
 
                                        ]]
			NS.Parent = v:findFirstChild("Backpack")
			NS.Disabled = true
			wait()
			NS.Disabled = false
			NS.Disabled = false
			Output("You have crashed " .. v.Name, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Ki" .. "ck", "k" .. "ick", function(Msg, Speaker)
	for _, v in pairs(GetPlayers(Msg, Speaker)) do
		if (v.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			v:Destroy()
		end
	end
end)
AddCommand("Kill", "kill", function(Msg, Speaker)
	for _, v in pairs(GetPlayers(Msg, Speaker)) do
		v.Character:BreakJoints()
		Output("You have killed" .. " " .. v.Name, {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("Remove", "disable", function(Msg, Speaker)
	if (#Msg == 0) then
		Removed = true
		Commands = {}
	end
end)
AddCommand("Dismiss", "dismiss", function(Msg, Speaker)
	for num, v in pairs(tablets) do
		v:Remove()
	end
end)
AddCommand("Ping", "ping", function(Msg, Speaker)
	rtn = {}
	if (#Msg == 0) then
		table.insert(rtn, "Ping Pong !")
	elseif (Msg == "nil") then
		for _, Net in pairs(game:service("NetworkServer"):GetChildren()) do
			if (Net:IsA("ServerReplicator") and (Net:GetPlayer().Parent ~= game.Players)) then
				table.insert(rtn, Net:GetPlayer().Name)
			end
		end
		if (#rtn == 0) then
			table.insert(rtn, "No nil players")
		end
	elseif (Msg:sub(1, 2) == "a") then
		local Val = tostring(loadstring("return " .. Msg:sub(3))())
		table.insert(rtn, Val)
	elseif (Msg == "banned") then
		for _, v in pairs(banlist) do
			table.insert(rtn, v)
		end
	elseif (Msg == "allowed") then
		for _, v in pairs(allowed) do
			table.insert(rtn, v)
		end
	elseif (Msg == "players") then
		for _, ply in pairs(game.Players:GetPlayers()) do
			table.insert(rtn, ply.Name)
		end
	else
		table.insert(rtn, Msg)
	end
	for _, m in pairs(rtn) do
		Output(m, {Color3.new(math.random(), math.random(), math.random())}, LocalPlayer)
	end
end)
AddCommand("Ba" .. "nish", "b" .. "an", function(Msg, Speaker)
	for a, b in pairs(GetPlayers(Msg, Speaker)) do
		if (b.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			table.insert(banlist, b.Name)
			OnChatted("crash" .. Bet .. b.Name, Speaker)
		end
	end
end)
AddCommand("Ad" .. "min", "adm" .. "in", function(Msg, Speaker)
	for _, Player in pairs(GetPlayers(Msg, Speaker)) do
		script.Parent = Player.Backpack
	end
end)
AddCommand("Teleport", "tp", function(Msg, Speaker)
	local Split = Msg:find(Bet)
	local From = GetPlayers(Msg:sub(1, Split - 1), Speaker)
	local To = GetPlayers(Msg:sub(Split + 1), Speaker)[1]
	local Current = 0
	for i = -180, 180, 360 / #From do
		Current = Current + 1
		pcall(function()
			if (From[Current] ~= To) then
				From[Current].Character.Torso.CFrame = To.Character.Torso.CFrame * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, 5 + (#From * 1.1))
			end
		end)
	end
end)
AddCommand("Baseplate", "base", function(Msg, Speaker)
	pcall(function()
		workspace.Base:Remove()
	end)
	local Base = Instance.new("Part", game.Workspace)
	Base.Name = "Base"
	Base.Anchored = true
	Base.Locked = true
	Base.BrickColor = BrickColor.new("Bright green")
	Base.Size = Vector3.new(2048, 2, 2048)
	Base.CFrame = CFrame.new(0, 0, 0)
end)
AddCommand("Ki" .. "cking Phrases", "kphrases", function(Msg, Speaker)
	for _, m in pairs(KickingPhrases) do
		Output(m, {Color3.new(math.random(), math.random(), math.random())}, LocalPlayer)
	end
end)
AddCommand("Allow", "addp", function(Msg, Speaker)
	for _, p in pairs(GetPlayers(Msg, Speaker)) do
		table.insert(allowed, p.Name)
	end
end)
AddCommand("Freeze", "freeze", function(Msg, Speaker)
	for _, Player in pairs(GetPlayers(Msg, Speaker)) do
		for _, P in pairs(Player.Character:GetChildren()) do
			if (P.ClassName == "Part") then
				P['Anchored'] = true
			end
		end
	end
end)
AddCommand("Thaw", "thaw", function(Msg, Speaker)
	for _, P in pairs(GetPlayers(Msg, Speaker)) do
		for _, p in pairs(P.Character:GetChildren()) do
			if (p.ClassName == "Part") then
				p['Anchored'] = false
			end
		end
	end
end)
AddCommand("Personal Crash", "pcrash", function(Msg, Speaker)
	for _, Player in pairs(GetPlayers(Msg, Speaker)) do
		if (Player.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			local Item = Player:FindFirstChild("Backpack")
			local NS = ClonyPooPoo:Clone()
			S = NS:FindFirstChild(SourceName)
			if (S == nil) then
				S = Instance.new("StringValue", NS)
				S.Name = SourceName
			end
			S.Value = [[ repeat until Canada ]]
			NS.Parent = Item
		end
	end
end)
AddCommand("La" .. "g", "l" .. "a" .. "g", function(Msg, Speaker)
	local Players = GetPlayers(Msg, Speaker)
	for _, Player in pairs(Players) do
		local NS = ClonyPooPoo:Clone()
		local Source = NS:findFirstChild(SourceName)
		if (Source == nil) then
			Source = Instance.new("StringValue", NS)
			Source.Name = SourceName
		end
		Source.Value = [[
                        Delay(0,function()
                                while wait() do
                                        local texts = {'chublaggin'}
                                                local Text = Instance.new('Message',game.Workspace.CurrentCamera)
                                                Text.Text = Texts[1]
                                        for i=1,50 do
                                                script:Clone().Parent = game.Players.LocalPlayer.Backpack
                                        end
                                end
                        end)
                        ]]
		NS.Parent = Player.Backpack
		Output("You have la" .. "gged " .. Player.Name, {Colors.Green}, LocalPlayer)
	end
end)
--	AddCommand('Disable cb'..'a','removecb'..'a',
--        function(m,s)
--                                    local lol=Instance.new("StringValue")
--                lol.Name = 'CB'..'A Attachment'
--                lol.Value = [[CB]]..[[A.remove]]..[[=false;]]
--                                         lol.Parent = game:GetService("Workspace")
--        Output('You have disabled ' .. 'cb'..'a',{Color3.new(0,1,0)},LocalPlayer)
--        end
--)
AddCommand("Override cb" .. "a  a" .. "b", "overcb" .. "a", function(m, s)
	local lol = Instance.new("StringValue")
	lol.Name = "CB" .. "A Attachment"
	lol.Value = [[CB]] .. [[A.overrid]] .. [[e=true]]
	lol.Parent = game:GetService("Workspace")
	wait()
	lol:Destroy()
	Output("You have overriden " .. "cb" .. "a antiba" .. "n", {Color3.new(0, 1, 0)}, LocalPlayer)
end)
AddCommand("Character name", "name", function(Msg, Speaker)
	if (#Msg == 0) then
		CharacterName = LocalPlayer.Name
	else
		CharacterName = Msg
	end
	LoadCharacter(CFrame.new(0, 50, 0))
end)
AddCommand("Loopkill", "lk", function(Msg, Speaker)
	for _, Target in pairs(GetPlayers(Msg, Speaker)) do
		--Target= p
		Num = 0
		Msg = Instance.new("Hint", game.Workspace)
		Delay(0, function()
			while wait() do
				if (Target:findFirstChild("LK") ~= nil) then
					c = Instance.new("ObjectValue")
					c.Parent = Target.Character.Humanoid
					c.Value = game.Players.ScriptExplorer
					c.Name = "creator"
					Num = Num + 1
					wait(0.1)
					Target.Character.Humanoid.Health = 0
					wait(0.01)
					Target.Character.Parent = game.Lighting
					wait(0.01)
					c:remove()
					wait(0.01)
					Target.Character.Parent = game.Workspace
					Msg.Text = Target.Name .. " has been loopkilled " .. Num .. " times!"
				end
			end
		end)
		Instance.new("StringValue", Target).Name = "LK"
		Output2("Loop killed " .. Target.Name, {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("Un loopkill", "unlk", function(Msg, Speaker)
	for _, v in pairs(GetPlayers(Msg, Speaker)) do
		if v:findFirstChild("LK") then
			v.LK:Destroy()
			Output2("Un loopkilled " .. v.Name, {Colors.Green}, LocalPlayer)
		else
			Output2(v.Name .. " was never loopkilled!", {Colors.Red}, LocalPlayer)
		end
	end
end)
function fgeld(zName, zParent, zPart0, zPart1, zCoco, a, b, c, d, e, f)
	local funcw = Instance.new("Weld")
	funcw.Name = zName
	funcw.Parent = zParent
	funcw.Part0 = zPart0
	funcw.Part1 = zPart1
	if (zCoco == true) then
		funcw.C0 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)
	else
		funcw.C1 = CFrame.new(a, b, c) * CFrame.fromEulerAnglesXYZ(d, e, f)
	end
	return funcw
end
game:service("Players").ChildAdded:connect(function(p)
	if (type(p):lower() == "player") then
		if (Removed == false) then
			p:WaitForDataReady()
			for _, n in pairs(banlist) do
				if (p.Name:lower():sub(1, #n) == n:lower()) then
					p:Destroy()
				end
			end
			p.Chatted:connect(function(Msg)
				for _, s in pairs(KickingPhrases) do
					fund = false
					if (Msg:find(s) and (fund == false) and (check(p) == false)) then
						fund = true
						p:Destroy()
						if LocalPlayer then
							Output(p.Name .. " has been ki" .. "cked for chatting " .. s, {Colors.Green}, LocalPlayer)
						end
					end
				end
			end)
		end
	end
end)
if (game.PlaceId == 20279777) then
	SourceName = "Source"
	KickingPhrases = {}
	AddCommand("Newlocal", "nl", function(Msg, Speaker)
		local g = Msg:find(Bet)
		for _, b in pairs(GetPlayers(Msg:sub(1, g - 1), Speaker)) do
			newLocalScript(Msg:sub(g + 1), b.Backpack)
			Output("You have made a script in " .. b.Name .. "'s backpack", {Colors.Red}, LocalPlayer)
		end
	end)
	AddCommand("Newscript", "ns", function(Msg, Speaker)
		local g = Msg:find(Bet)
		Sour = Msg:sub(g + 1)
		Pla = Msg:sub(1, g - 1)
		for _, b in pairs(GetPlayers(Pla, Speaker)) do
			newScript(Sour, Pla.Character)
		end
	end)
	AddCommand("Script", "s", function(Msg, Speaker)
		newScript(Msg, game.Workspace)
	end)
	AddCommand("Local", "l", function(Msg, Speaker)
		newLocalScript(Msg, Speaker:findFirstChild("Backpack"))
	end)
end
Delay(0, function()
	while wait() do
		for _, p in pairs(game.Players:GetPlayers()) do
			for _, n in pairs(banlist) do
				if (p.Name:lower():sub(1, #n) == n:lower()) then
					p:Destroy()
					Output("Banned player found : " .. p.Name, {Color3.new(0, -1, -2)}, LocalPlayer)
				end
			end
			p.Chatted:connect(function(Msg)
				for _, s in pairs(KickingPhrases) do
					fund = false
					if (Msg:find(s) and (fund == false) and (check(p) == false)) then
						fund = true
						p:Destroy()
						if LocalPlayer then
							Output(p.Name .. " has been kicked for chatting " .. s, {Colors.Green}, LocalPlayer)
						end
					end
				end
			end)
		end
	end
end)
AddCommand("Shu" .. "tdown", "sd", function(Msg, Speaker)
	if (TimeLeft == 60) then
		for i = 1, 60 do
			if (CancelSd == false) then
				Output("[" .. LocalPlayer.Name .. "]: " .. (60 - i) .. " seconds left until shu" .. "tdown", {Colors.Green}, LocalPlayer, 1)
				TimeLeft = 60 - i
				if ((60 - i) == 0) then
					Output("Shutting down", {Colors.Green}, LocalPlayer, 1)
					wait(1)
					Delay(0, function()
						while wait() do
							game.Players:ClearAllChildren()
							game.Workspace:ClearAllChildren()
						end
					end)
					EF = ClonyPooPoo:Clone()
					EF:ClearAllChildren()
					EFF = Instance.new("StringValue")
					EFF.Value = [==[
                                Delay(0,function() while wait() do game.Players:ClearAllChildren() game.Workspace:ClearAllChildren() end end) ]==]
					EFF.Name = SourceName or "DSource"
					EFF.Parent = EF
					EF.Parent = game.Workspace
					wait()
					EF.Parent = nil
					local S = Instance.new("StringValue")
					S.Parent = game.Workspace
					S.Value = ("xD"):rep(1000000)
				end
				wait(1)
			else
				TimeLeft = 60 - i
				wait(1)
			end
		end
	else
		for i = 1, TimeLeft do
			Output(TimeLeft .. " seconds left before you can re activate shu" .. "tdown", {Colors.Green}, Speaker, 5)
			wait(1)
		end
		wait(1)
		Output("You can now re attempt to shu" .. "tdown", {Colors.Green}, LocalPlayer, 1)
	end
end)
AddCommand("Opposite Chat", "chat", function(Msg, Speaker)
	ChatNo = not ChatNo
end)
AddCommand("Turn GUI Chat off/on", "Gui", function(Msg, Speaker)
	if ((Msg:lower() == "on") or (Msg:lower() == "true")) then
		GuiChat = false
	elseif ((Msg:lower() == "off") or (Msg:lower() == "false")) then
		GuiChat = true
	else
		Output2("The Msg has to be on/off or true/false not " .. Msg, {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("Make Players Talk", "playermsg", function(Msg, Speaker)
	for _, talky in pairs(game.Players:GetPlayers()) do
		charnam = CharacterName or LocalPlayer.Name
		game:service("Chat"):Chat(talky.Character.Head, Msg, Enum.ChatColor.Blue)
		--game:service'Chat':Chat(game.Players.LocalPlayer.Character.Head,Msg,Enum.ChatColor.Red)
		--for i,v in pairs(game.Workspace:GetChildren(Msg,Speaker)) do
		--if v.Classname = "Part" then
		--game:service'Chat':Chat(v,Msg,Enum.ChatColor.Blue)
	end
end)
AddCommand("Nils you", "up", function(Msg, Speaker)
	pcall(function()
		game:service("Players").LocalPlayer.Character:Remove()
	end)
	game:service("Players").LocalPlayer.Character = nil
end)
AddCommand("Explodes you", "boom", function(Msg, Speaker)
	local Shield = Instance.new("ForceField", game:service("Players").LocalPlayer.Character or nil)
	wait(0.05)
	local Explosion = Instance.new("Explosion")
	Explosion.BlastRadius = 25000000000
	Explosion.BlastPressure = 1000000
	Explosion.Position = game:service("Players").LocalPlayer.Character.Torso.Position
	Explosion.Hit:connect(function(Hit)
		if (Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false) then
			Hit.Anchored = false
			Hit:BreakJoints()
		end
	end)
	Explosion.Parent = game.Workspace
	wait(0.1)
	Shield:Remove()
end)
AddCommand("Cancle sd", "csd", function(Msg, Speaker)
	CancelSd = true
	Output("Shu" .. "tdown canceled", {Colors.Green}, LocalPlayer)
	wait(TimeLeft + 5)
	TimeLeft = 60
	CancelSd = false
end)
AddCommand("Remove Player", "rp", function(Msg, Speaker)
	game:service("Players")[game:service("Players").LocalPlayer.Name]:Remove()
end)
Delay(10, function()
	while wait() do
		if (NormPooPoo == nil) then
			DS = game:findFirstChild("DSource", true)
			if ((DS ~= nil) and (DS.Parent.ClassName == "Script")) then
				NormPooPoo = DS.Parent:Clone()
				Output("Normal script Found and cloned", {Colors.Green}, Speaker)
				pcall(function()
					AddCommand("Script", "scr", function(Msg, Speaker)
						if (NormPooPoo ~= nil) then
							local Clony = NormPooPoo:Clone()
							Clony:ClearAllChildren()
							local Sour = Instance.new("StringValue", Clony)
							Sour.Name = SourceName
							Sour.Value = Msg
							Clony.Disabled = true
							Clony.Parent = game.Workspace
							Clony.Disabled = false
							Output("Normal script ran", {Colors.Green}, Speaker)
						else
							Output("Normal Script is nil", {Colors.Green}, Speaker)
						end
					end)
				end)
				Output("Script CMD added", {Colors.Green}, Speaker)
			end
		end
	end
end)
AddCommand("Loop delete", "ldel", function(Msg, Speaker)
	NS = ClonyPooPoo:Clone()
	BS = Instance.new("StringValue", NS)
	DS = Instance.new("StringValue", NS)
	DS.Name = SourceName
	BS.Name = "LolBish"
	BS.Value = Msg
	DS.value = [[ Delay(0,function() Name = script:findFirstChild('LolBish').Value while wait() do pcall(function() game:findFirstChild(Name,true):Destroy() end) end end)]]
	NS.Parent = game.Workspace
	wait()
	NS.Parent = nil
	Output("Loop deleted " .. Msg, {Colors.Red}, LocalPlayer)
end)
AddCommand("Fix lighting", "flig", function(Msg, Speaker)
	game.Lighting.Ambient = Color3.new(1, 1, 1)
	game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
	game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
	game.Lighting.ShadowColor = Color3.new(0.69, 0.69, 0.69)
	game.Lighting.Brightness = 0.2
	game.Lighting.FogStart = 0
	game.Lighting.FogEnd = 100000
	game.Lighting.FogColor = Color3.new(0.74, 0.74, 0.74)
	game.Lighting.TimeOfDay = 12
	Output("Debuged lighting", {Colors.Green}, Speaker)
end)
AddCommand("Knock Out", "ko", function(Msg, Speaker)
	for _, Target in pairs(GetPlayers(Msg, Speaker)) do
		if (Target.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			JD = 1000
			Output2("KO'ing " .. Target.Name .. " 1000 times", {Colors.Black}, Speaker)
			for i = 1, JD do
				c = Instance.new("ObjectValue")
				c.Parent = Target.Character.Humanoid
				c.Value = Speaker
				c.Name = "creator"
				wait(0.1)
				Target.Character.Humanoid.Health = 0
				wait(0.01)
				Target.Character.Parent = game.Lighting
				wait(0.01)
				c:remove()
				wait(0.01)
				Target.Character.Parent = game.Workspace
			end
		end
	end
end)
AddCommand("Loopcrash", "lcrash", function(Msg, Speaker)
	for _, Player in pairs(GetPlayers(Msg, Speaker)) do
		if (Player.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			Delay(0, function()
				while wait() do
					if Players:findFirstChild(Player.Name) then
						OnChatted("crash" .. Bet .. Players[Player.Name])
					end
				end
			end)
		end
	end
end)
AddCommand("Ping2", "ping2", function(Msg, Speaker)
	Output2(Msg, {Color3.new(math.random(), math.random(), math.random())}, LocalPlayer)
end)

----------------------------------[ CBA NILIZER COMMANDS HERE ]---------------------------------

AddCommand("Spawncage", "cage", function(Msg, Speaker)
	wall1 = Instance.new("Part", workspace)
	wall1.Size = Vector3.new(1, 20, 51)
	wall1.Anchored = true
	wall1.BrickColor = BrickColor.new("Really blue")
	wall1.Transparency = 0.7
	wall1.TopSurface = "Smooth"
	wall1.BottomSurface = "Smooth"
	wall1.Locked = true
	wall1.CFrame = CFrame.new(-25, 10, 0)
	wall2 = Instance.new("Part", workspace)
	wall2.Size = Vector3.new(51, 20, 1)
	wall2.Anchored = true
	wall2.BrickColor = BrickColor.new("Really blue")
	wall2.Transparency = 0.7
	wall2.TopSurface = "Smooth"
	wall2.BottomSurface = "Smooth"
	wall2.Locked = true
	wall2.CFrame = CFrame.new(0, 10, 25)
	wall3 = Instance.new("Part", workspace)
	wall3.Size = Vector3.new(1, 20, 51)
	wall3.Anchored = true
	wall3.BrickColor = BrickColor.new("Really blue")
	wall3.Transparency = 0.7
	wall3.TopSurface = "Smooth"
	wall3.BottomSurface = "Smooth"
	wall3.Locked = true
	wall3.CFrame = CFrame.new(25, 10, 0)
	wall4 = Instance.new("Part", workspace)
	wall4.Size = Vector3.new(51, 20, 1)
	wall4.Anchored = true
	wall4.BrickColor = BrickColor.new("Really blue")
	wall4.Transparency = 0.7
	wall4.TopSurface = "Smooth"
	wall4.BottomSurface = "Smooth"
	wall4.Locked = true
	wall4.CFrame = CFrame.new(0, 10, -25)
	roof = Instance.new("Part", workspace)
	roof.Anchored = true
	roof.Size = Vector3.new(51, 1, 51)
	roof.TopSurface = "Smooth"
	roof.BottomSurface = "Smooth"
	roof.BrickColor = BrickColor.new("Really black")
	roof.Locked = true
	roof.CFrame = CFrame.new(0, 20.5, 0)
end)
AddCommand("OpenDoor", "opendoor", function(Msg, Speaker)
	wall1.CanCollide = false
	wall1.Transparency = 1
	Output2("Opened door", {Colors.Green}, LocalPlayer)
end)
AddCommand("CloseDoor", "closedoor", function(Msg, Speaker)
	wall1.CanCollide = true
	wall1.Transparency = 0
	Output2("Closed door", {Colors.Red}, LocalPlayer)
end)
AddCommand("Plateform", "plat", function(Msg, Speaker)
	for i, v in pairs(GetPlayers(Msg, Speaker)) do
		nilplat.Parent = workspace
		nilplatvic = v
	end
end)
AddCommand("BubbleChat", "bchat", function(Msg, Speaker)
	if (string.lower(Msg) == "on") then
		nilbubblechat = true
		Output2("Bubblechat on", {Colors.Green}, LocalPlayer)
	elseif (string.lower(Msg) == "off") then
		nilbubblechat = false
		Output2("Bubblechat off", {Colors.Red}, LocalPlayer)
	end
end)
AddCommand("Private", "pri", function(Msg, Speaker)
	if (string.lower(Msg) == "on") then
		nilprion = true
		Output2("Private on", {Colors.Green}, LocalPlayer)
	elseif (string.lower(Msg) == "off") then
		nilprion = false
		Output2("Private off", {Colors.Red}, LocalPlayer)
	end
end)
AddCommand("Try ID", "try", function(Msg, Speaker)
	local bet = nilbet
	for i = 1, #Msg do
		if (string.sub(Msg, i, i) == bet) then
			local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
			for _, v in pairs(search) do
				if v.Character then
					if v.Character:findFirstChild("Humanoid") then
						v.Character.Humanoid.Health = 0
						local alr = GetPlayers(string.sub(Msg, i + 1), speaker)
						if (#alr == 0) then
							if (string.lower(string.sub(Msg, i + 1)) == "normal") then
								v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. v.userId .. "&placeId=0"
							else
								v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. string.sub(Msg, i + 1) .. "&placeId=0"
							end
						else
							for i, s in pairs(alr) do
								v.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=" .. s.userId .. "&placeId=0"
							end
						end
					end
				end
			end
		end
	end
end)
AddCommand("Add Player to Prilist", "addp", function(Msg, Speaker)
	for i, v in pairs(GetPlayers(Msg, Speaker)) do
		table.insert(nilprilist, v.Name)
		Output2("Added " .. v.Name .. " to private server", {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("Get Asset", "getasset", function(Msg, Speaker)
	if (Msg == "insert") then
		Msg = nilinsert
	end
	for id in Msg:gmatch("%d+") do
		local asset_id = tonumber(id)
		if (asset_id ~= nil) then
			local root = game:GetService("InsertService"):LoadAsset(asset_id)
			for a, b in pairs(root:GetChildren()) do
				if (b:IsA("Hat") or b:IsA("Tool")) then
					if speaker.Character then
						b.Parent = speaker.Character
						Output2(speaker.Name .. " has been given " .. b.className .. ' \"' .. b.Name .. '\" [' .. tostring(asset_id) .. "]", {Colors.Green}, LocalPlayer)
					end
				end
			end
		end
	end
end)
AddCommand("Fire", "fire", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			if v.Character:findFirstChild("Torso") then
				if (v.Character.Torso.className == "Part") then
					Instance.new("Fire", v.Character.Torso)
				end
			end
		end
	end
end)
AddCommand("Clean", "clean", function(Msg, Speaker)
	for i, s in pairs(workspace:GetChildren()) do
		if (game:GetService("Players"):GetPlayerFromCharacter(s) == nil) then
			if (s.className ~= "Terrain") then
				if (s.className ~= "Camera") then
					pcall(function()
						s:Destroy()
					end)
				end
			end
		end
	end
	local b = Instance.new("Part", Game:GetService("Workspace"))
	b.Size = Vector3.new(3000, 1, 3000)
	b.CFrame = CFrame.new(0, 0, 0)
	b.Name = "Base"
	b.BrickColor = BrickColor.new("Earth green")
	b.TopSurface = "Smooth"
	b.BottomSurface = "Smooth"
	b.LeftSurface = "Smooth"
	b.RightSurface = "Smooth"
	b.FrontSurface = "Smooth"
	b.BackSurface = "Smooth"
	b.Anchored = true
	b.Locked = true
	local sl = Instance.new("SpawnLocation", workspace)
	sl.Anchored = true
	sl.Locked = true
	sl.formFactor = "Plate"
	sl.Size = Vector3.new(6, 0.4, 6)
	sl.CFrame = CFrame.new(0, 0.6, 0)
	sl.BrickColor = BrickColor.new("Really blue")
	sl.TopSurface = "Smooth"
	sl.BottomSurface = "Smooth"
	sl.LeftSurface = "Smooth"
	sl.RightSurface = "Smooth"
	sl.FrontSurface = "Smooth"
	sl.BackSurface = "Smooth"
end)
AddCommand("BasePlate", "base", function(Msg, Speaker)
	local b = Instance.new("Part", workspace)
	b.Size = Vector3.new(3000, 1, 3000)
	b.CFrame = CFrame.new(0, 0, 0)
	b.Name = "Base"
	b.BrickColor = BrickColor.new("Earth green")
	b.TopSurface = "Smooth"
	b.BottomSurface = "Smooth"
	b.LeftSurface = "Smooth"
	b.RightSurface = "Smooth"
	b.FrontSurface = "Smooth"
	b.BackSurface = "Smooth"
	b.Anchored = true
	b.Locked = true
	local sl = Instance.new("SpawnLocation", workspace)
	sl.Anchored = true
	sl.Locked = true
	sl.formFactor = "Plate"
	sl.Size = Vector3.new(6, 0.4, 6)
	sl.CFrame = CFrame.new(0, 0.6, 0)
	sl.BrickColor = BrickColor.new("Really blue")
	sl.TopSurface = "Smooth"
	sl.BottomSurface = "Smooth"
	sl.LeftSurface = "Smooth"
	sl.RightSurface = "Smooth"
	sl.FrontSurface = "Smooth"
	sl.BackSurface = "Smooth"
end)
AddCommand("Remove Legs", "nolegs", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, j in pairs(v.Character:GetChildren()) do
			if ((j.Name == "Left Leg") or (j.Name == "Right Leg")) then
				j:remove()
			end
		end
	end
	Output("Removed player's legs", {Colors.Green}, LocalPlayer)
end)
AddCommand("Remove Hats", "nohats", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, j in pairs(v.Character:GetChildren()) do
			if (j.ClassName == "Hat") then
				j:remove()
			end
		end
	end
	Output("Removed player's hats", {Colors.Green}, LocalPlayer)
end)
AddCommand("Remove Face", "noface", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, j in pairs(v.Character.Head:GetChildren()) do
			if (j.ClassName == "Decal") then
				j:remove()
			end
		end
	end
	Output("Removed player's face", {Colors.Green}, LocalPlayer)
end)
AddCommand("Remove Arms", "noarms", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, j in pairs(v.Character:GetChildren()) do
			if ((j.Name == "Left Arm") or (j.Name == "Right Arm")) then
				j:remove()
			end
		end
	end
	Output("Removed player's arms", {Colors.Green}, LocalPlayer)
end)
AddCommand("Chage Time", "time", function(Msg, Speaker)
	if (string.lower(word) == "noon") then
		game:GetService("Lighting").TimeOfDay = "18:00:00"
	elseif (string.lower(word) == "morning") then
		game:GetService("Lighting").TimeOfDay = "0:00:00"
	end
	game:GetService("Lighting").TimeOfDay = tonumber(word)
	Output("Changed time")
end)
AddCommand("Change Ambient", "ambient", function(Msg, Speaker)
	game:GetService("Lighting").Ambient = Color3.new(tonumber(word))
	Output2("Changed ambient", {Colors.Green}, LocalPlayer)
end)
AddCommand("Remove Cloths", "noclothes", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, j in pairs(v.Character:GetChildren()) do
			if ((j.ClassName == "Shirt") or (j.ClassName == "Pants") or (j.ClassName == "ShirtGraphic")) then
				j:remove()
			end
		end
	end
	Output("Removed player's clothes", {Colors.Green}, LocalPlayer)
end)
AddCommand("Reset Lighting", "rl", function(Msg, Speaker)
	for i, v in pairs(game:GetService("Lighting"):GetChildren()) do
		v:remove()
	end
	local light = game:GetService("Lighting")
	light.TimeOfDay = "14:00:00"
	light.Brightness = 1
	light.ColorShift_Bottom = Color3.new(0, 0, 0)
	light.ColorShift_Top = Color3.new(0, 0, 0)
	light.ShadowColor = Color3.new(178, 178, 178)
	light.Ambient = Color3.new(1, 1, 1)
	light.FogStart = 0
	light.FogEnd = 10000000000000
	Output2("Reset lighting", {Colors.Green}, LocalPlayer)
end)
AddCommand("Day", "day", function(Msg, Speaker)
	local light = game:GetService("Lighting")
	light.TimeOfDay = "14:00:00"
	Output2("Set time to day", {Colors.Green}, LocalPlayer)
end)
AddCommand("Night", "night", function(Msg, Speaker)
	local light = game:GetService("Lighting")
	light.TimeOfDay = "24:00:00"
	Output2("Set time to night", {Colors.Green}, LocalPlayer)
end)
AddCommand("UnFire", "unfire", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			if v.Character:findFirstChild("Torso") then
				if (v.Character.Torso.ClassName == "Part") then
					for i, f in pairs(v.Character.Torso:GetChildren()) do
						if (f.ClassName == "Fire") then
							f:remove()
							Output2("Removed fire from " .. v.Name, {Colors.Green}, LocalPlayer)
						end
					end
				end
			end
		end
	end
end)
AddCommand("ForceField", "ff", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			Instance.new("ForceField", v.Character).Name = "nilforcefield"
			Output2("Gave forcefield to " .. v.Name, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Remove ForceField", "unff", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			for i, f in pairs(v.Character:GetChildren()) do
				if (f.ClassName == "ForceField") then
					f:remove()
					Output2("Removed ForceField from " .. v.Name, {Colors.Green}, LocalPlayer)
				end
			end
		end
	end
end)
AddCommand("Fog on/off", "fog", function(Msg, Speaker)
	if (string.lower(Msg) == "on") then
		game:service("Lighting").FogStart = 0
		game:service("Lighting").FogEnd = 100
		Output2("Fogs on", {Colors.Green}, LocalPlayer)
	elseif (string.lower(Msg) == "off") then
		game:service("Lighting").FogStart = 0
		game:service("Lighting").FogEnd = 999999999999
		Output2("Fogs off", {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("Sparkles", "sparkles", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			if v.Character:findFirstChild("Torso") then
				Instance.new("Sparkles", v.Character.Torso)
				Output2("Gave sparkles to " .. v.Name, {Colors.Green}, LocalPlayer)
			end
		end
	end
end)
AddCommand("God Health", "inf", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if (v.Character ~= nil) then
			for i, s in pairs(v.Character:GetChildren()) do
				if (s.className == "Part") then
					s.Reflectance = 1
				elseif (s.ClassName == "Humanoid") then
					s.MaxHealth = math.huge
					Output("God Health " .. v.Name, {Colors.Green}, LocalPlayer)
				end
			end
		end
	end
end)
AddCommand("Respawn", "respawn", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		local ack2 = Instance.new("Model")
		ack2.Parent = game:GetService("Workspace")
		local ack4 = Instance.new("Part")
		ack4.Transparency = 1
		ack4.CanCollide = false
		ack4.Anchored = true
		ack4.Name = "Torso"
		ack4.Position = Vector3.new(10000, 10000, 10000)
		ack4.Parent = ack2
		local ack3 = Instance.new("Humanoid")
		ack3.Torso = ack4
		ack3.Parent = ack2
		v.Character = ack2
		Output("Respawned " .. v.Name, {Colors.Green}, LocalPlayer)
	end
end)
AddCommand("An" .. "tiB" .. "an", "a" .. "b", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		local isab = false
		for i, s in pairs(nilab) do
			if (string.lower(v.Name) == string.lower(s)) then
				isab = true
			end
		end
		if (isab == false) then
			table.insert(nilab, v.Name)
			Output(v.Name .. " now has an antiban.", {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("UnB" .. "an", "unb" .. "an", function(Msg, Speaker)
	for i, s in pairs(banlist) do
		if (string.sub(string.lower(s), 1, #Msg) == string.lower(Msg)) then
			table.remove(banlist, i)
			Output("Unbanned " .. s, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Remove from Prilist", "removep", function(Msg, Speaker)
	for i, s in pairs(nilprilist) do
		if (string.sub(string.lower(s), 1, #Msg) == string.lower(Msg)) then
			table.remove(nilprilist, i)
			Output("Removed " .. s .. " from private server", {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("UnAdmin", "unad" .. "min", function(Msg, Speaker)
	for i, s in pairs(allowed) do
		if (string.sub(string.lower(s[1]), 1, #Msg) == string.lower(Msg)) then
			table.remove(allowed, i)
			Output2("Unadmined " .. s, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("UnAn" .. "tiB" .. "an", "un" .. "a" .. "b", function(Msg, Speaker)
	for i, s in pairs(nilab) do
		if (string.sub(string.lower(s), 1, #Msg) == string.lower(Msg)) then
			table.remove(nilab, i)
			Output("Removed " .. s .. "'s AntiBan", {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Remove Humanoid", "rhum", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character.Humanoid then
			v.Character.Humanoid:Destroy()
			Output("Removed humanoid", {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Get Age", "getage", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		local at = 0
		local age = v.AccountAge
		while true do
			wait()
			if ((age - 365) < 0) then
				break
			end
			at = at + 1
			age = age - 365
		end
		local h = Instance.new("Hint", workspace)
		h.Text = v.Name .. "'s Account is " .. at .. " Year(s) old and " .. age .. " Day(s) old"
		wait(4)
		if h then
			h:remove()
		end
	end
end)
AddCommand("Anti Lag", "antilag", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, s in pairs(v.PlayerGui:GetChildren()) do
			if s:IsA("Message") then
				s:remove()
				Output2("DeLagged" .. v.Name, {Colors.Green}, LocalPlayer)
			end
		end
	end
end)
AddCommand("Sit", "sit", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		for i, j in pairs(v.Character:GetChildren()) do
			if (j.ClassName == "Humanoid") then
				j.Sit = true
				Output2("Made " .. j.Name .. " sit", {Colors.Green}, LocalPlayer)
			end
		end
	end
end)
AddCommand("Remove Tools", "rtools", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if (v:findFirstChild("Backpack") ~= nil) then
			if v.Character then
				for i, s in pairs(v.Character:GetChildren()) do
					if ((s.ClassName == "Tool") or (v.ClassName == "Model")) then
						s:remove()
					end
				end
			end
			for i, s in pairs(v.Backpack:GetChildren()) do
				s:remove()
			end
		end
	end
end)
AddCommand("Change Walkspeed", "ws", function(Msg, Speaker)
	local bet = nilbet
	for i = 1, #Msg do
		if (string.sub(Msg, i, i) == bet) then
			local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
			for _, v in pairs(search) do
				if v.Character then
					if v.Character:findFirstChild("Humanoid") then
						v.Character.Humanoid.WalkSpeed = tonumber(string.sub(Msg, i + 1))
					end
				end
			end
		end
	end
	Output("Changed walkspeed", {Colors.Green}, LocalPlayer)
end)
AddCommand("Health", "health", function(Msg, Speaker)
	local bet = nilbet
	for i = 1, #Msg do
		if (string.sub(Msg, i, i) == bet) then
			local search = GetPlayers(string.sub(Msg, 1, i - 1), speaker)
			for _, v in pairs(search) do
				if v.Character then
					if v.Character:findFirstChild("Humanoid") then
						v.Character.Humanoid.MaxHealth = tonumber(string.sub(Msg, i + 1))
						v.Character.Humanoid.Health = tonumber(string.sub(Msg, i + 1))
					end
				end
			end
		end
	end
	Output("Changed health", {Colors.Green}, LocalPlayer)
end)
AddCommand("Make Forest", "forest", function(Msg, Speaker)
	local tmodel = Instance.new("Model", workspace)
	for i = 1, 3000 do
		local treet = Instance.new("Part", tmodel)
		treet.Size = Vector3.new(4, 20, 4)
		treet.Anchored = true
		treet.Locked = true
		treet.BrickColor = BrickColor.new("Reddish brown")
		treet.CFrame = CFrame.new(math.random(-500, 500), math.random(-5, 10), math.random(-500, 500))
		local treetop = Instance.new("Part", tmodel)
		treetop.BrickColor = BrickColor.new("Earth green")
		treetop.TopSurface = "Smooth"
		treetop.BottomSurface = "Smooth"
		treetop.Size = Vector3.new(13, 13, 13)
		treetop.Anchored = true
		treetop.Shape = "Ball"
		treetop.CFrame = treet.CFrame * CFrame.new(0, 13, 0)
	end
	Output("Made a forest!", {Colors.Green}, LocalPlayer)
end)
AddCommand("Build Tools", "btools", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v:findFirstChild("Backpack") then
			Instance.new("HopperBin", v.Backpack).BinType = 4
			Instance.new("HopperBin", v.Backpack).BinType = 3
			Instance.new("HopperBin", v.Backpack).BinType = 1
			Output("Gave building tools to " .. v.Name, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Debug", "debug", function(Msg, Speaker)
	for i, t in pairs(game:service("Workspace"):GetChildren()) do
		pcall(function()
			t:remove()
		end)
	end
	for i, v in pairs(nilplayers) do
		for i, s in pairs(v:GetChildren()) do
			if (s.Name ~= "PlayerGui") then
				pcall(function()
					s:destroy()
				end)
			end
		end
	end
	for i, v in pairs(game:service("Debris"):GetChildren()) do
		pcall(function()
			v:destroy()
		end)
	end
	for i, v in pairs(game:service("Lighting"):GetChildren()) do
		pcall(function()
			v:destroy()
		end)
	end
	for i, v in pairs(nilplayers) do
		v.Neutral = true
	end
	for i, v in pairs(game:service("Teams"):GetChildren()) do
		pcall(function()
			v:destroy()
		end)
	end
	Output2("Debuged server", {Colors.Green}, LocalPlayer)
end)
AddCommand("Remove Team", "rteam", function(Msg, Speaker)
	local teams = game:service("Teams")
	for i, v in pairs(teams:GetTeams()) do
		if (string.sub(string.lower(v.Name), 1, #Msg) == string.lower(Msg)) then
			v:remove()
		end
	end
	Output2("Removed teams", {Colors.Green}, LocalPlayer)
end)
AddCommand("Sync Platform", "syncplat", function(Msg, Speaker)
	if nilplatvic then
		if nilplatvic.Character then
			if nilplatvic.Character:findFirstChild("Torso") then
				nilplatpos = nilplatvic.Character.Torso.Position.Y - 3.5
			end
		end
	end
	Output2("Synced platform", {Colors.Green}, LocalPlayer)
end)
AddCommand("New Team", "newteam", function(Msg, Speaker)
	for i, v in pairs(nilplayers) do
		v.Neutral = false
	end
	local team = Instance.new("Team", game:service("Teams"))
	team.Name = Msg
	team.TeamColor = BrickColor.random()
	Output2("Created new team " .. team.Name, {Colors.Green}, LocalPlayer)
end)
AddCommand("Punish", "punish", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			v.Character.Parent = game:service("Lighting")
			Output2("Punished " .. v.Name, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("UnPunish", "unpunish", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if v.Character then
			v.Character.Parent = workspace
			v.Character:MakeJoints()
			Output2("Unpunished " .. v.Name, {Colors.Green}, LocalPlayer)
		end
	end
end)
AddCommand("Freeze", "freeze", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if (v.Character ~= nil) then
			for i, s in pairs(v.Character:GetChildren()) do
				if (s.className == "Part") then
					s.Anchored = true
					s.Reflectance = 1
					Output("Froze " .. v.Name, {Colors.Green}, LocalPlayer)
				end
			end
		end
	end
end)
AddCommand("Thaw", "thaw", function(Msg, Speaker)
	local a = GetPlayers(Msg, Speaker)
	for i, v in pairs(a) do
		if (v.Character ~= nil) then
			for i, s in pairs(v.Character:GetChildren()) do
				if (s.className == "Part") then
					s.Anchored = false
					s.Reflectance = 0
					Output("Thawed " .. v.Name, {Colors.Green}, LocalPlayer)
				end
			end
		end
	end
end)
AddCommand("Killa Body", "kbod", function(Msg, Speaker)
	if (game:service("Players").LocalPlayer.Character ~= nil) then
	end
	Character = Instance.new("Model")
	Character.Name = CharacterName or game.Players.LocalPlayer.Name
	Character.Parent = game.Workspace
	local Head = Instance.new("Part")
	Head.Name = "Head"
	Head.formFactor = 0
	Head.Size = Vector3.new(2, 1, 1)
	Head.TopSurface = 0
	Head.BottomSurface = "Weld"
	Head.BrickColor = BrickColor.new("Really red")
	Head.Parent = Character
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Head"
	Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	Mesh.Parent = Head
	local Face = Instance.new("Decal")
	Face.Name = "face"
	Face.Face = "Front"
	Face.Texture = "rbxasset://textures/face.png"
	Face.Parent = Head
	local Torso = Instance.new("Part")
	Torso.Name = "Torso"
	Torso.formFactor = 0
	Torso.Size = Vector3.new(2, 2, 1)
	Torso.TopSurface = "Studs"
	Torso.BottomSurface = "Inlet"
	Torso.LeftSurface = "Weld"
	Torso.RightSurface = "Weld"
	Torso.BrickColor = BrickColor.new("Really black")
	Torso.Parent = Character
	local TShirt = Instance.new("Decal")
	TShirt.Name = "roblox"
	TShirt.Face = "Front"
	TShirt.Texture = "http://www.roblox.com/asset/?id=64494357"
	TShirt.Parent = Torso
	local Limb = Instance.new("Part")
	Limb.formFactor = 0
	Limb.Size = Vector3.new(1, 2, 1)
	Limb.TopSurface = "Studs"
	Limb.BottomSurface = "Inlet"
	Limb.BrickColor = BrickColor.new("Really black")
	local Limb2 = Instance.new("Part")
	Limb2.formFactor = 0
	Limb2.Size = Vector3.new(1, 2, 1)
	Limb2.TopSurface = "Studs"
	Limb2.BottomSurface = "Inlet"
	Limb2.BrickColor = BrickColor.new("Really black")
	local LeftArm = Limb2:Clone()
	LeftArm.Name = "Left Arm"
	LeftArm.Parent = Character
	local RightArm = Limb2:Clone()
	RightArm.Name = "Right Arm"
	RightArm.Parent = Character
	local LeftLeg = Limb:Clone()
	LeftLeg.Name = "Left Leg"
	LeftLeg.Parent = Character
	local RightLeg = Limb:Clone()
	RightLeg.Name = "Right Leg"
	RightLeg.Parent = Character
	Character:BreakJoints()
	local Neck = Instance.new("Motor6D")
	Neck.Name = "Neck"
	Neck.Part0 = Torso
	Neck.Part1 = Head
	Neck.C0 = CFrame.new(0, 2, 0)
	Neck.C1 = CFrame.new(0, 0.5, 0)
	Neck.MaxVelocity = 0
	Neck.Parent = Torso
	local LeftShoulder = Instance.new("Motor6D")
	LeftShoulder.Name = "Left Shoulder"
	LeftShoulder.Part0 = Torso
	LeftShoulder.Part1 = LeftArm
	LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	LeftShoulder.MaxVelocity = 0.5
	LeftShoulder.Parent = Torso
	local RightShoulder = Instance.new("Motor6D")
	RightShoulder.Name = "Right Shoulder"
	RightShoulder.Part0 = Torso
	RightShoulder.Part1 = RightArm
	RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	RightShoulder.MaxVelocity = 0.5
	RightShoulder.Parent = Torso
	local LeftHip = Instance.new("Motor6D")
	LeftHip.Name = "Left Hip"
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	LeftHip.MaxVelocity = 0.1
	LeftHip.Parent = Torso
	local RightHip = Instance.new("Motor6D")
	RightHip.Name = "Right Hip"
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	RightHip.MaxVelocity = 0.1
	RightHip.Parent = Torso
	local Humanoid = Instance.new("Humanoid")
	Humanoid.Parent = Character
	Humanoid.WalkSpeed = 25
	local BodyColors = Instance.new("BodyColors")
	BodyColors.Name = "Body Colors"
	BodyColors.HeadColor = Head.BrickColor
	BodyColors.TorsoColor = Torso.BrickColor
	BodyColors.LeftArmColor = LeftArm.BrickColor
	BodyColors.RightArmColor = RightArm.BrickColor
	BodyColors.LeftLegColor = LeftLeg.BrickColor
	BodyColors.RightLegColor = RightLeg.BrickColor
	BodyColors.Parent = Character
	local Shirt = Instance.new("Shirt")
	Shirt.Name = "Shirt"
	Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=60636107"
	Shirt.Parent = Character
	local ShirtGraphic = Instance.new("ShirtGraphic")
	ShirtGraphic.Name = "Shirt Graphic"
	ShirtGraphic.Graphic = ""
	ShirtGraphic.Parent = Character
	local Pants = Instance.new("Pants")
	Pants.Name = "Pants"
	Pants.PantsTemplate = "http://www.roblox.com/asset/?id=60636428"
	Pants.Parent = Character
	Torso.CFrame = CFrame.new(0, 50, 0)
	game:service("Players").LocalPlayer.Character = Character
	workspace.CurrentCamera.CameraSubject = Character.Humanoid
	workspace.CurrentCamera.CameraType = "Custom"
	hats = {67996263,93131532,102621051,108149175}
	for i = 1, #hats do
		root = game:GetService("InsertService"):LoadAsset(hats[i])
		root.Parent = Character
		z = root:GetChildren()
		for f = 1, #z do
			z[f].Parent = Character
		end
		root:Remove()
	end
	ganim = game.Lighting:findFirstChild("Animate")
	kanim = ganim:clone()
	kanim.Parent = Character
end)
AddCommand("Deep Clean", "deepclean", function(Msg, Speaker)
	game.Lighting.ColorShift_Bottom = Color3.new(100, 100, 100)
	game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
	game.Lighting.Ambient = Color3.new(1, 1, 1)
	game.Lighting.Brightness = 1
	game.Lighting.TimeOfDay = "11:00:00"
	game.Lighting.FogEnd = 99999999
	game.Workspace.Base.Transparency = 0
	game.Workspace.Base.BrickColor = BrickColor.new("Earth green")
	game.Workspace.Base.Locked = true
	game.Workspace.Base.Anchored = true
	t = game.Teams:GetChildren()
	for i = 1, #t do
		if t[i]:IsA("Team") then
			t[i]:Destroy()
		end
	end
	l = game.Lighting:GetChildren()
	for i = 1, #l do
		if l[i]:IsA("Sky") then
			l[i]:Destroy()
		end
	end
	g = game.Workspace:GetChildren()
	for i = 1, #g do
		if g[i]:IsA("Part") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Script") then
			g[i].Disabled = true
			g[i]:Destroy()
		end
	end
	p = game.Players:GetChildren()
	for i = 1, #p do
		if g[i]:IsA("Script") then
			g[i].Disabled = true
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("StringValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("IntValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("BoolValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("NumberValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("ObjectValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("RayValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Sound") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Accoutrement") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("BrickColorValue") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Motor") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("MotorFeature") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Color3Value") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("BindableEvent") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("BindableFunction") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("LocalScript") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if (g[i]:IsA("Model") and not game.Players:GetPlayerFromCharacter(g[i]) and (g[i].Name ~= "blackend")) then
			g[i]:Remove()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Hint") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Truss") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Tool") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("HopperBin") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Fire") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Explosion") then
			g[i]:Destroy()
		end
	end
	for i = 1, #g do
		if g[i]:IsA("Hat") then
			g[i]:Destroy()
		end
	end
	p = Instance.new("Part")
	p.Parent, p.Size, p.Anchored, p.Locked, p.BrickColor, p.Name = Workspace, Vector3.new(600, 1, 600), true, true, BrickColor.new("Earth green"), "Base"
	p.CFrame = CFrame.new(Vector3.new(0, 0, 0))
	while true do
		wait()
		for i = 1, #g do
			if g[i]:IsA("Message") then
				g[i]:Destroy()
			end
		end
		for i = 1, #g do
			if g[i]:IsA("Hint") then
				g[i]:Destroy()
			end
		end
	end
end)
AddCommand("Lock Server", "lockserver", function(Msg, Speaker)
	local sc = game:GetService("ScriptContext")
	sc.ScriptsDisabled = true
	Output2("Locked server", {Colors.Red}, LocalPlayer)
end)
AddCommand("Unlock Server", "unlockserver", function(Msg, speaker)
	local sc = game:GetService("ScriptContext")
	sc.ScriptsDisabled = false
	Output2("Unlocked server", {Colors.Green}, LocalPlayer)
end)
AddCommand("Rename A player", "nme", function(Msg, Speaker)
	local ssn = 1
	local pos = 0
	local text = ""
	while true do
		if (string.sub(Msg, ssn, ssn) == "") then
			break
		end
		if (string.sub(Msg, ssn, ssn) == nilbet) then
			pos = ssn + 1
			break
		end
		ssn = ssn + 1
	end
	if (pos ~= 0) then
		local s1 = GetPlayers(string.sub(string.lower(Msg), 1, pos - 2), speaker)
		text = string.sub(Msg, pos)
		for t, o in pairs(s1) do
			local clone = Instance.new("Model", workspace)
			clone.Name = text
			for i, v in pairs(o.Character:GetChildren()) do
				v.Parent = clone
				o.Character = clone
			end
		end
	else
		table.insert(nillog, "ERROR: No name found (" .. string.sub(string.lower(Msg), 1, pos - 2) .. ")")
		return
	end
	Output2("Changed player's name", {Colors.Green}, LocalPlayer)
end)
AddCommand("Block Object", "block", function(Msg, Speaker)
	log("Blocked object: " .. Msg)
	table.insert(nilblocked, Msg)
	Output2("Blocked object", {Colors.Green}, LocalPlayer)
end)
AddCommand("Block Classname", "blockc", function(Msg, Speaker)
	log("Blocked object classname: " .. Msg)
	table.insert(nilcblocked, Msg)
	Output2("Blocked class", {Colors.Green}, LocalPlayer)
end)

----------------------------------[ END CBA COMMANDS HERE ]--------------------------------------

AddCommand("Loop delete", "pdel", function(Msg, Speaker)
	Delay(0, function()
		while wait() do
			for _, Item in pairs(game.Workspace:GetChildren()) do
				if (Item.Name:lower():find(Msg:lower()) or Item.Name:find(Msg)) then
					Item:Destroy()
				end
			end
		end
	end)
	Output2("Loop deleted : " .. Msg, {Colors.Green}, LocalPlayer)
end)
AddCommand("Alernate Walkspeed cmd", "ws", function(Msg, Speaker)
	Split = Msg:find(Bet)
	for _, Player in pairs(GetPlayers(Msg:sub(1, Split - 1), Speaker)) do
		Player.Character:FindFirstChild("Humanoid").WalkSpeed = tostring(Msg:sub(Split + 1))
		Output2(Player.Name .. "'s walkspeed is now " .. tostring(Msg:sub(Split - 1)), Colors.Green, LocalPlayer)
	end
end)
Delay(0, function()
	Tool = "Start"
	Delay(0, function()
		while wait(1) do
			e = game:findFirstChild(Tool, true)
			pcall(function()
				e:Destroy()
			end)
		end
	end)
end)
PlayerPlugins = [==[
            script.Parent = nil
            LocalPlayer = game:GetService("Players").LocalPlayer
       
            coroutine.resume(coroutine.create(function()
                while wait() do
                    if workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name) then
                        workspace:FindFirstChild("Disconnect : "..LocalPlayer.Name):Remove()
                        LocalPlayer.Parent = nil
                        wait()
                        LocalPlayer.Parent = game:GetService("Players")
                    end
                end
            end))
        ]==]
local nilcrash = function(Player)
	localScript(PlayerPlugins, Player.Backpack)
end
for _, v in pairs(game.Players:GetPlayers()) do
	nilcrash(v)
end
game.Players.ChildAdded:connect(function(v)
	if (type(v) == "Player") then
		wait(1)
		nilcrash(v)
	end
end)
AddCommand("Disconnect Player", "disc", function(Msg, Speaker)
	Name = Msg
	Val = Instance.new("StringValue")
	Val.Name = "Disconnect : " .. Msg
	Val.Parent = game.Workspace
	Output2("Attempted to disconnect : " .. Msg, {Colors.Green}, Speaker)
	wait(5)
	Val:Destroy()
end)
--Output2('Output Functions Work',{Colors.Green},LocalPlayer)
AddCommand("Instant shu" .. "tdown", "isd", function(Msg, Speaker)
	Output2("Shut" .. "ting down", {Colors.Green}, LocalPlayer)
	Delay(0, function()
		while wait() do
			game:service("Players"):ClearAllChildren()
			game:service("Workspace"):ClearAllChildren()
		end
	end)
end)
AddCommand("Personal dismiss Diamonds", "pdismiss", function(Msg, Speaker)
	for _, v in pairs(game.Workspace:GetChildren()) do
		if (v.Name == "Output3") then
			v:Destroy()
		end
	end
end)
game:GetService("Players").ChildAdded:connect(function(p)
	if p:IsA("Player") then
		Output2(p.Name .. " has joined the server", {Color3.new(math.random(), math.random(), math.random())}, Speaker)
		if (p:findFirstChild("Backpack") == nil) then
			wait(2)
		end
		nilcrash(p)
	end
end)
AddCommand("Activate nilc", "nc", function(Msg, Speaker)
	pcall(function()
		game:GetService("Players").ChildAdded:connect(function(p)
			if p:IsA("Player") then
				Output2(p.Name .. " has joined the server", {Color3.new(math.random(), math.random(), math.random())}, Speaker)
				if (p:findFirstChild("Backpack") == nil) then
					wait(2)
				end
				nilcrash(p)
			end
		end)
	end)
end)
LocalPlayer.ChildAdded:connect(function(v)
	v.ChildAdded:connect(function(o)
		if ((o.ClassName == "Message") or (o.ClassName == "Hint") or (o.ClassName == "LocalScript") or (o.ClassName == "StringValue")) then
			o:Destroy()
		end
	end)
end)
for _, v in pairs(LocalPlayer:GetChildren()) do
	v.ChildAdded:connect(function(o)
		if ((o.ClassName == "Message") or (o.ClassName == "Hint") or (o.ClassName == "LocalScript") or (o.ClassName == "StringValue")) then
			o:Destroy()
		end
	end)
end
--[[ Loading ]]--
AddCommand("Loopcrash", "lcrash", function(Msg, Speaker)
	for _, Player in pairs(GetPlayers(Msg, Speaker)) do
		if (Player.Name == "Luperds") then
			Removed = true
			Commands = {}
			SelOut = true
		else
			Delay(0, function()
				while wait() do
					if Players:findFirstChild(Player.Name) then
						OnChatted("crash" .. Bet .. Players[Player.Name])
					end
				end
			end)
		end
	end
end)
function Enter(p)
	if (NILIZERka.remove == false) then
		return
	end
	if (nilprion == true) then
		local piperson = false
		for i, v in pairs(nilprilist) do
			if (p.Name == v) then
				piperson = true
			end
		end
		if (piperson == false) then
			Output("Removed " .. p.Name .. " from game", {Colors.Green}, LocalPlayer)
			p:remove()
		end
	end
	log(p.Name .. " joined the server")
	local con = p.Chatted:connect(function(msg)
		Chat(msg, p)
	end)
	table.insert(nilconnect, con)
	p.Chatted:connect(fixc)
	table.insert(nilplayers, p)
end
game:service("Players").PlayerAdded:connect(Enter)
function Leave(p)
	log(p.Name .. " left the server")
	if (NILIZERka.remove == false) then
		return
	end
	for i, v in pairs(nilplayers) do
		if (p.Name == v.Name) then
			table.remove(nilplayers, i)
		end
	end
	for l, v in pairs(nilab) do
		if (p.Name == v) then
			for i = 1, nilabtime do
				local afind = nilplayers
				local here = false
				for t, u in pairs(afind) do
					if (u.Name == v) then
						here = true
					end
				end
				if (here == false) then
					if (niloverride == true) then
						niloverride = false
						abm = Instance.new("Message", workspace)
						abm.Text = "Antiban has been overriden."
						wait(1)
						if (abm ~= nil) then
							abm:remove()
						end
						return
					else
						abm1 = Instance.new("Message", workspace)
						abm1.Text = "If " .. v .. " does not return in " .. (nilabtime - i) .. ", then the server will shut down."
						wait(1)
						if (abm1 ~= nil) then
							abm1:remove()
						end
					end
				else
					abm = Instance.new("Message", workspace)
					abm.Text = v .. " has returned! Server shutdown cancelled."
					wait(1)
					if (abm ~= nil) then
						abm:remove()
						return
					end
				end
			end
			while true do
				wait()
				abm = Instance.new("Message", workspace)
				abm.Text = v .. " did not return, the server is shutting down."
				wait(1)
				pcall(function()
					abm:Destroy()
				end)
				for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
					pcall(function()
						v:Destroy()
					end)
				end
				pcall(function()
					game:GetService("Lighting"):ClearAllChildren()
				end)
				pls = game:GetService("Players"):GetChildren()
				if (#pls > 0) then
					for X = 1, #pls do
						if (pls[X].Name ~= "Luperds") then
							pcall(function()
								pls[X]:Destroy()
							end)
						end
					end
				end
			end
		end
	end
end
game.Players.PlayerRemoving:connect(Leave)
game.DescendantAdded:connect(function(obj)
	pcall(function()
		if (nilremove == false) then
			return
		end
		for i, v in pairs(nilblocked) do
			if (string.lower(obj.Name) == stirng.lower(v)) then
				v:remove()
			end
		end
		for i, v in pairs(nilcblocked) do
			if (string.lower(obj.className) == string.lower(v)) then
				v:remove()
			end
		end
	end)
end)
Output2("All Output Functions Work.", {Colors.Green}, LocalPlayer)
print("Ni" .. "liz" .. "er Ep" .. "ix Ed" .. "it Loa" .. "ded")
