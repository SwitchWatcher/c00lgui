repeat
	wait()
until game:GetService("Players").LocalPlayer.Character ~= nil 
wait(0.5)
--- vars ---
S = Instance.new("Model")
S.Name = "ValueChanger1"
S.Parent = Game.Workspace
local player = game:GetService("Players").LocalPlayer
local repstor = game:GetService("ReplicatedStorage")
local mouse = player:GetMouse()
local char = player.Character
local Hu = char.Humanoid
local Gui = player:WaitForChild("PlayerGui")
local Torsoz = char:findFirstChild("Torso")
local HRP = char:findFirstChild("HumanoidRootPart")
local HRJ = HRP:findFirstChild("RootJoint")
local RA = char:findFirstChild("Right Arm")
local LA = char:findFirstChild("Left Arm")
local RL = char:findFirstChild("Right Leg")
local LL = char:findFirstChild("Left Leg")
local H = char:findFirstChild("Head")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local RH = Torsoz:findFirstChild("Right Hip")
local LH = Torsoz:findFirstChild("Left Hip")
local N = Torsoz:findFirstChild("Neck")
local NV = Vector3.new()
local Main
local SPB, SPF, SPC, SnowPart
local SPCP = 0
local Animating = false
local Walkspeed = 16
local Shift, Alt, Space, MouseDown = false, false, false, false
local ThrowingSequence = false
local SlideCooldown = 0
local SnowballProjectiles, SnowSplosionEffects = {}, {}
local disableJump = false
local AnimSpeeds = {
	0.5, -- idle
	5, -- walking
	6.5, -- running
	7, -- jumping
	7 -- falling
}
--[[ PATCHED BY SLASHCODERS
	for i, v in pairs(char:children()) do
		if v.Name == "Cheese" then
			v:remove()
		end
	end
	script.Parent = char
	script.Name = "Cheese"
--]]
------------ animation funcs & other things ---------------
local P = Instance.new("Part")
P.Anchored = false
P.CanCollide = false
P.Name = "Part"
P.formFactor = "Custom"
P.Size = Vector3.new(0.2, 0.2, 0.2)
P.Locked = true
P.TopSurface = 10
P.BottomSurface = 10
P.FrontSurface = 10
P.BackSurface = 10
P.LeftSurface = 10
P.RightSurface = 10
function GetWeld(weld)
	if (weld:findFirstChild("WeldAngle") == nil) then
		local a = Instance.new("Vector3Value", weld)
		a.Name = "WeldAngle"
	end
	return weld.C0.p, weld.WeldAngle.Value
end
function SetWeld(weld, i, loops, origpos, origangle, nextpos, nextangle, smooth)
	smooth = smooth or 1
	if (weld:findFirstChild("WeldAngle") == nil) then
		local a = Instance.new("Vector3Value", weld)
		a.Name = "WeldAngle"
	end
	local perc = ((smooth == 1) and math.sin(((math.pi / 2) / loops) * i)) or (i / loops)
	local tox, toy, toz = 0, 0, 0
	tox = math.abs(origangle.x - nextangle.x) * perc
	toy = math.abs(origangle.y - nextangle.y) * perc
	toz = math.abs(origangle.z - nextangle.z) * perc
	tox = ((origangle.x > nextangle.x) and -tox) or tox
	toy = ((origangle.y > nextangle.y) and -toy) or toy
	toz = ((origangle.z > nextangle.z) and -toz) or toz
	local tox2, toy2, toz2 = 0, 0, 0
	tox2 = math.abs(origpos.x - nextpos.x) * perc
	toy2 = math.abs(origpos.y - nextpos.y) * perc
	toz2 = math.abs(origpos.z - nextpos.z) * perc
	tox2 = ((origpos.x > nextpos.x) and -tox2) or tox2
	toy2 = ((origpos.y > nextpos.y) and -toy2) or toy2
	toz2 = ((origpos.z > nextpos.z) and -toz2) or toz2
	weld.WeldAngle.Value = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz)
	weld.C0 = CFrame.new(origpos.x + tox2, origpos.y + toy2, origpos.z + toz2) * CFrame.Angles(origangle.x + tox, origangle.y + toy, origangle.z + toz)
end
function RAY(pos, dir, startpos, endpos, distleft, collidedlist)
	collidedlist = collidedlist or {char}
	startpos = startpos or pos
	distleft = distleft or (dir.unit * dir.magnitude)
	endpos = endpos or (pos + distleft)
	local ray = Ray.new(pos, distleft)
	local hitz, enz = workspace:FindPartOnRayWithIgnoreList(ray, collidedlist)
	if (hitz ~= nil) then
		if (hitz.CanCollide == false) then
			table.insert(collidedlist, hitz)
			local newpos = enz
			local newdistleft = distleft - (dir.unit * (pos - newpos).magnitude)
			if (newdistleft ~= NV) then
				return RAY(newpos - (dir * 0.01), dir, startpos, endpos, newdistleft + (dir * 0.01), collidedlist)
			end
		end
	end
	return hitz, enz, ray
end
function ChangeValue(obj, type, value)
	local val = Instance.new("ObjectValue")
	val.Name = type
	val.Value = obj
	local val2 = Instance.new("NumberValue", val)
	val2.Name = "value"
	val2.Value = value
	if (type == "PingTestIncrement") then
		local val3 = Instance.new("NumberValue", val)
		val3.Name = "time"
		val3.Value = repstor.TickTimer.Value
	end
	val.Parent = workspace.ValueChanger1
end
function SnowballHit(part, pos, power)
	if part.Parent:findFirstChild("Humanoid") then
		local dmg = (45 * power) - math.random(1, 4)
		dmg = ((power > 0.99) and (dmg * 1.25)) or dmg
		print("Damaging", part.Parent.Name, "by", dmg)
		part.Parent.Humanoid.Health = -dmg
	end
	SnowSplosion(pos)
end
function SnowSplosion(pos)
	local spmdl = Instance.new("Model", char)
	spmdl.Name = "SnoSplosion"
	for i = 1, 14 do
		local p = P:Clone()
		p.Parent = spmdl
		p.Name = "Effect"
		p.Anchored = true
		p.BrickColor = BrickColor.new("White")
		p.CFrame = CFrame.new(pos) * CFrame.Angles(0, math.pi * 2 * math.random(), math.pi * 2 * math.random()) * CFrame.new(0.05, 0, 0)
		p.Transparency = 0.2
		local mesh = Instance.new("SpecialMesh", p)
		mesh.MeshType = "Sphere"
		mesh.Scale = Vector3.new(5, 2, 2)
	end
	table.insert(SnowSplosionEffects, spmdl)
end
----------------------------------

---- value setup ---------
local pose = Instance.new("IntValue", script)
pose.Name = "pose"
pose.Value = 0
local invoke = Instance.new("IntValue", script)
invoke.Name = "invoke"
invoke.Value = 0
local snowballs = Instance.new("IntValue", script)
snowballs.Name = "snowballs"
snowballs.Value = 8
local Main = Instance.new("ObjectValue", script)
Main.Name = "Main"
for i, v in pairs(char:GetChildren()) do
	if ((v.Name == "health") and (v.className == "NumberValue")) then
		v:Destroy()
	end
end
local health = Instance.new("NumberValue", char)
health.Name = "health"
health.Value = 100
health.Changed:connect(function()
	if (health.Value <= 0) then
		char:BreakJoints()
	end
end)
snowballs.Changed:connect(function()
	snowballs.Value = ((snowballs.Value > 8) and 8) or snowballs.Value
	snowballs.Value = ((snowballs.Value < 0) and 0) or snowballs.Value
	local percentage = snowballs.Value / 8
	SnowPart.Mesh.Scale = Vector3.new(0.71, 0.6 * percentage, 0.71) * 5
	SnowPart.Weld.C0 = CFrame.new(0, -0.08 - (0.3 * (1 - percentage)), 0)
	SnowPart.Transparency = ((percentage == 0) and 1) or 0
end)
player.Chatted:connect(function(msg)
	if (string.sub(msg:lower(), 1, 5) == "pose/") then
		pose.Value = tonumber(string.sub(msg, 6))
	elseif (string.sub(msg:lower(), 1, 7) == "invoke/") then
		invoke.Value = tonumber(string.sub(msg, 8))
	elseif (msg == "replenish") then
		snowballs.Value = 8
	end
end)
------ designs -------------
function Build()
	for i, v in pairs(char:children()) do
		if (v.Name == "Mozzarella") then
			v:Destroy()
		end
	end
	local m = Instance.new("Model", script)
	m.Name = "Mozzarella"
	local b = P:Clone()
	b.Parent = m
	b.Name = "Bag"
	b.BrickColor = BrickColor.new("Lime green")
	b.Transparency = 1
	local mesh = Instance.new("SpecialMesh", b)
	mesh.MeshType = "Brick"
	mesh.Scale = Vector3.new(0.8, 0.6, 0.8) * 5
	local w = Instance.new("Weld", b)
	w.Part0 = RL
	w.Part1 = b
	w.C0 = CFrame.new(0.82, 0.5, 0)
	for i = 1, 10 do
		local p = P:Clone()
		p.Parent = m
		p.Name = "BagPart"
		p.BrickColor = BrickColor.new("Dark orange")
		p.Material = "Fabric"
		local mesh = Instance.new("SpecialMesh", p)
		mesh.MeshType = "Brick"
		mesh.Scale = Vector3.new(0.1, 0.4, 0.26) * 5
		local w = Instance.new("Weld", p)
		w.Part0 = b
		w.Part1 = p
		w.C1 = CFrame.new(0.35, 0.004 * (i % 2), 0)
		w.C0 = CFrame.new(0, 0.1, 0) * CFrame.Angles(0, ((math.pi * 2) / 10) * i, 0)
		if ((i % 2) == 0) then
			for j = 0, 6 do
				local mathi = math.sin((math.pi / 2) + ((math.pi / 5) * j))
				local p = P:Clone()
				p.Parent = m
				p.Name = "BagPart"
				p.BrickColor = BrickColor.new("Dark orange")
				p.Material = "Fabric"
				local mesh = Instance.new("SpecialMesh", p)
				mesh.MeshType = "Brick"
				mesh.Scale = Vector3.new(0.1, 0.22, 0.26 * mathi) * 5
				local w = Instance.new("Weld", p)
				w.Part0 = b
				w.Part1 = p
				w.C1 = CFrame.new(0.35, 0, 0)
				w.C0 = CFrame.new(0, -0.2, 0) * CFrame.Angles(0, ((math.pi * 2) / 10) * i, (math.pi / 6) * j)
			end
		end
	end
	local s = P:Clone()
	s.Parent = m
	s.Name = "Snow"
	s.BrickColor = BrickColor.new("White")
	s.Transparency = 0
	s.Material = "Sand"
	local mesh = Instance.new("CylinderMesh", s)
	mesh.Scale = Vector3.new(0.71, 0.6, 0.71) * 5
	local w = Instance.new("Weld", s)
	w.Part0 = b
	w.Part1 = s
	w.C0 = CFrame.new(0, -0.08, 0)
	SnowPart = s
end
Build()
--------------------------------

-------------- snowball power charge gui ----------------------------
function CreateGui()
	for i, v in pairs(Gui:GetChildren()) do
		if (v.Name == "SnowballPower") then
			v:Destroy()
		end
	end
	local g = Instance.new("ScreenGui", Gui)
	g.Name = "SnowballPower"
	local f = Instance.new("Frame", g)
	f.Name = "Container"
	f.Size = UDim2.new(0, 30, 0, 110)
	f.Position = UDim2.new(1, 10, 0.5, -55)
	f.Transparency = 0
	f.BackgroundColor3 = Color3.new(0.45, 0.35, 0.25)
	f.BorderColor3 = Color3.new(0.55, 0.45, 0.35)
	f.BorderSizePixel = 3
	f.Archivable = false
	f.ZIndex = 0
	SPC = f
	local b = Instance.new("Frame", f)
	b.Name = "Backing"
	b.Size = UDim2.new(0, 20, 0, 100)
	b.Position = UDim2.new(0.5, -10, 0.5, -50)
	b.BorderSizePixel = 0
	b.BackgroundColor3 = Color3.new(0.1, 0.45, 0.01)
	b.ZIndex = 1
	SPB = b
	local fr = b:Clone()
	fr.Parent = b
	fr.Size = UDim2.new(1, 0, 0.5, 0)
	fr.Position = UDim2.new(0, 0, 0.5, 0)
	fr.BackgroundColor3 = Color3.new(0.1, 0.65, 0.01)
	SPF = fr
end
CreateGui()

-------------- limb setup ---------------
pcall(function()
	char.Animate:Destroy()
end)
SetWeld(RS, 1, 1, NV, NV, Vector3.new(1.5, 0.5, 0), NV)
RS.C1 = CFrame.new(0, 0.5, 0)
SetWeld(LS, 1, 1, NV, NV, Vector3.new(-1.5, 0.5, 0), NV)
LS.C1 = CFrame.new(0, 0.5, 0)
SetWeld(RH, 1, 1, NV, NV, Vector3.new(0.5, -1, 0), NV)
RH.C1 = CFrame.new(0, 1, 0)
SetWeld(LH, 1, 1, NV, NV, Vector3.new(-0.5, -1, 0), NV)
LH.C1 = CFrame.new(0, 1, 0)
SetWeld(N, 1, 1, NV, NV, Vector3.new(0, 1, 0), NV)
N.C1 = CFrame.new(0, -0.5, 0)
SetWeld(HRJ, 1, 1, NV, NV, NV, NV)
HRJ.C1 = CFrame.new(0, 0, 0)
wait(1)
RS.MaxVelocity = 0
RS.CurrentAngle = 0
RS.DesiredAngle = 0
LS.MaxVelocity = 0
LS.CurrentAngle = 0
LS.DesiredAngle = 0
RH.MaxVelocity = 0
RH.CurrentAngle = 0
RH.DesiredAngle = 0
LH.MaxVelocity = 0
LH.CurrentAngle = 0
LH.DesiredAngle = 0
N.MaxVelocity = 0
N.CurrentAngle = 0
N.DesiredAngle = 0
HRJ.MaxVelocity = 0
HRJ.CurrentAngle = 0
HRJ.DesiredAngle = 0
-----------------

----- value changed connections ----
Main.Changed:connect(function()
	if (Main.Value ~= nil) then
		main, maina = GetWeld(Main.Value)
	else
		main, maina = nil, nil
	end
end)
Hu.Changed:connect(function()
	if (disableJump or DisableMovement) then
		Hu.Jump = false
	end
end)
------- Keys & Mouse ---------------
function B1D()
	MouseDown = true
	if not Animating then
		script.invoke.Value = 1
	else
		while Animating do
			wait()
		end
		if MouseDown then
			script.invoke.Value = 1
		end
	end
end
function B1U()
	MouseDown = false
end
mouse.Button1Down:connect(B1D)
mouse.Button1Up:connect(B1U)
function KD(key)
	if (key == "0") then
		Shift = true
		if (pose.Value == 1) then
			pose.Value = 0
			disableJump = false
		end
	elseif (key == "4") then
		Alt = true
		if (not Animating and (SlideCooldown == 0)) then
			invoke.Value = 3
		else
			while Animating or (SlideCooldown > 0) do
				wait()
			end
			if Alt then
				invoke.Value = 3
			end
		end
	elseif (key == "2") then
		if not ThrowingSequence then
			if (pose.Value == 0) then
				pose.Value = 1
				disableJump = true
			elseif (pose.Value == 1) then
				pose.Value = 0
				disableJump = false
			end
		end
	elseif (key == string.char(32)) then
		Space = true
		if (pose.Value == 1) then
			if not Animating then
				invoke.Value = 2
			else
				while Animating do
					wait()
				end
				if (Space and (pose.Value == 1)) then
					invoke.Value = 2
				end
			end
		end
	end
end
function KU(key)
	if (key == "0") then
		Shift = false
	elseif (key == "4") then
		Alt = false
	elseif (key == string.char(32)) then
		Space = false
	end
end
mouse.KeyDown:connect(KD)
mouse.KeyUp:connect(KU)
local count1 = 0
local angle = 0
local slidecount = 1
local slidecountmax = 1
local countspeed = 0.5
local cancella = false
local cancelra = false
local cancelrl = false
local cancelll = false
local canceln = false
local cancelhrp = false
local cancelmain = false
local anim = 0
local lastanim = -1
local lastpose = 0
local rs, rsa, ls, lsa, rh, rha, lh, lha, n, na, hrj, hrja, main, maina
local ghitz, genz
local prevvelocity = HRP.Velocity
function UpdateWP(max, sped)
	max = max or 5
	sped = sped or AnimSpeeds[anim + 1]
	rs, rsa = GetWeld(RS)
	ls, lsa = GetWeld(LS)
	rh, rha = GetWeld(RH)
	lh, lha = GetWeld(LH)
	n, na = GetWeld(N)
	hrj, hrja = GetWeld(HRJ)
	if (Main.Value ~= nil) then
		main, maina = GetWeld(Main.Value)
	end
	slidecount = 0
	slidecountmax = max
	countspeed = sped
end
UpdateWP()
-------------- Invoke Animations -------------------------
function Throw()
	if (not Animating and (snowballs.Value > 0)) then
		Animating = true
		ThrowingSequence = true
		pose.Value = 0
		disableJump = false
		----- sword slash ------
		cancelra = true
		cancella = true
		cancelhrp = true
		canceln = true
		cancelmain = true
		local prevslidecount = slidecount
		UpdateWP(slidecountmax, countspeed)
		slidecount = prevslidecount
		local phase = 0
		local smdl = Instance.new("Model", char)
		smdl.Name = "SnowBall"
		local ball, weld
		for i = 1, 17 do
			if MouseDown then
				if (i <= 7) then
					SetWeld(N, i, 7, n, na, Vector3.new(0, 1, 0), Vector3.new(-0.3, -math.pi / 8, 0))
					SetWeld(HRJ, i, 7, hrj, hrja, Vector3.new(0, 0, 0.1), Vector3.new(0, -math.pi / 20, 0))
					SetWeld(RS, i, 7, rs, rsa, Vector3.new(1.5, 0.26, 0), Vector3.new(-0.2, 0, -0.1))
					SetWeld(LS, i, 7, ls, lsa, Vector3.new(-1.5, 0.525, -0.01), Vector3.new(-0.25, 0, -0.12))
					phase = 1
					if (i == 7) then
						UpdateWP(slidecountmax, countspeed)
						ChangeValue(snowballs, "Increment", -1)
						ball = P:Clone()
						ball.Parent = smdl
						ball.BrickColor = BrickColor.new("White")
						ball.Material = "Sand"
						local mesh = Instance.new("SpecialMesh", ball)
						mesh.MeshType = "Sphere"
						mesh.Scale = Vector3.new(0.8, 0.8, 0.8) * 5
						weld = Instance.new("Weld", ball)
						weld.Part0 = RA
						weld.Part1 = ball
						weld.C0 = CFrame.new(0, -1.3, 0)
					end
				else
					SetWeld(N, i - 7, 10, n, na, Vector3.new(0, 1, 0), Vector3.new(0.03, math.pi / 9, 0))
					SetWeld(HRJ, i - 7, 10, hrj, hrja, Vector3.new(0, 0, 0.1), Vector3.new(0, -math.pi / 8, 0))
					SetWeld(RS, i - 7, 10, rs, rsa, Vector3.new(1.4, 0.5, 0), Vector3.new(math.pi * 1.05, 0, 0.2))
					SetWeld(LS, i - 7, 10, ls, lsa, Vector3.new(-1.3, 0.42, -0.1), Vector3.new(math.pi / 4, 0, -math.pi / 8))
					if (i == 9) then
						SPC.Archivable = true
						SPB.BackgroundColor3 = Color3.new(0.45, 0.1, 0.01)
						SPF.BackgroundColor3 = Color3.new(0.65, 0.1, 0.01)
						SPF.Size = UDim2.new(1, 0, 0, 0)
						SPF.Position = UDim2.new(0, 0, 1, 0)
					end
					phase = 2
				end
				wait(0.02)
			end
		end
		local rs2, rsa2 = GetWeld(RS)
		local ls2, lsa2 = GetWeld(LS)
		local n2, na2 = GetWeld(N)
		local hrj2, hrja2 = GetWeld(HRJ)
		local powercounter = 20
		local power = 0
		while MouseDown do
			powercounter = (powercounter % 40) + 1
			power = 1 - math.sin((math.pi / 40) * powercounter)
			SPB.BackgroundColor3 = Color3.new(((1 - power) * 0.35) + 0.1, (power * 0.35) + 0.1, 0.01)
			SPF.BackgroundColor3 = Color3.new(((1 - power) * 0.55) + 0.1, (power * 0.55) + 0.1, 0.01)
			SPF.Size = UDim2.new(1, 0, power, 0)
			SPF.Position = UDim2.new(0, 0, 1 - power, 0)
			SetWeld(RS, power, 1, rs2, rsa2, Vector3.new(1.4, 0.6, 0.05), Vector3.new(math.pi * 1.17, 0, 0.3))
			SetWeld(LS, power, 1, ls2, lsa2, Vector3.new(-1.3, 0.42, -0.16), Vector3.new(math.pi / 2.45, 0, -math.pi / 5))
			SetWeld(N, power, 1, n2, na2, Vector3.new(0, 1, 0), Vector3.new(0.07, math.pi / 8, -0.04))
			SetWeld(HRJ, power, 1, hrj2, hrja2, Vector3.new(0, 0, 0.1), Vector3.new(0, -math.pi / 7, 0))
			phase = 3
			wait(0.02)
		end
		SPC.Archivable = false
		print("Phase:", phase)
		rs2, rsa2 = GetWeld(RS)
		ls2, lsa2 = GetWeld(LS)
		n2, na2 = GetWeld(N)
		hrj2, hrja2 = GetWeld(HRJ)
		if ((phase == 1) or (phase == 2)) then
			smdl:Destroy()
			ChangeValue(snowballs, "Increment", 1)
		elseif (phase == 3) then
			print("Throwing with " .. string.sub(tostring(power * 100), 1, 5) .. "% power!")
			local mousepos = mouse.Hit.p
			for i = 1, 8 do
				SetWeld(RS, i, 8, rs2, rsa2, Vector3.new(1.4, 0.6, 0.05), Vector3.new((math.pi * 0.6) - (1.8 * power), 0.18 - (0.65 * power), 0.3))
				SetWeld(LS, i, 8, ls2, lsa2, Vector3.new(-1.36, 0.5, -0.06), Vector3.new((-math.pi / 4) - (0.4 * power), 0.2, -math.pi / 5))
				SetWeld(N, i, 8, n2, na2, Vector3.new(0, 1, 0), Vector3.new(-0.07, (-math.pi / 11) - (0.3 * power), -0.04))
				SetWeld(HRJ, i, 8, hrj2, hrja2, Vector3.new(0, 0, 0.1), Vector3.new(0, (math.pi / 10) + (0.3 * power), 0))
				if (i == 2) then
					weld:Destroy()
					ball.Anchored = true
					--- {part,gravity,currentgravity,direction,speed,power,counter,{parts},life}
					local snowball = {ball,(0.1 + (0.8 * (0.96 - power))),(1 - (0.95 * power)),(mousepos - ball.Position).unit,(1.8 + (3 * power)),power,1,{},0}
					if (power > 0.99) then
						for i = 1, 20 do
							local p = P:Clone()
							p.Anchored = true
							p.BrickColor = BrickColor.new("Bright yellow")
							local mesh = Instance.new("SpecialMesh", p)
							mesh.MeshId = "rbxassetid://9756362"
							mesh.Scale = Vector3.new(0.32, 0.32, 0.32)
							table.insert(snowball[8], p)
						end
					end
					table.insert(SnowballProjectiles, snowball)
				end
				wait(0.02)
			end
			wait(0.02)
		else
			smdl:Destroy()
		end
		UpdateWP(slidecountmax, countspeed)
		cancelra = false
		cancella = false
		cancelhrp = false
		canceln = false
		cancelmain = false
		ThrowingSequence = false
		Animating = false
	elseif (snowballs.Value <= 0) then
		print("No snow left!")
		-- alert saying you have no snow left in pouch
	end
end
function DiveRoll()
	if not Animating then
		Animating = true
		DisableMovement = true
		cancelra = true
		cancella = true
		cancelhrp = true
		canceln = true
		cancelmain = true
		cancelll = true
		cancelrl = true
		local prevslidecount = slidecount
		UpdateWP(slidecountmax, countspeed)
		slidecount = prevslidecount
		local bv = Instance.new("BodyVelocity", HRP)
		bv.maxForce = Vector3.new(1 / 0, 0, 1 / 0)
		bv.velocity = CFrame.new(NV, Vector3.new(HRP.CFrame.lookVector.x, 0, HRP.CFrame.lookVector.z)).lookVector * 28
		local bg = Instance.new("BodyGyro", HRP)
		bg.maxTorque = Vector3.new(1 / 0, 1 / 0, 1 / 0)
		bg.cframe = CFrame.new(NV, Vector3.new(HRP.CFrame.lookVector.x, 0, HRP.CFrame.lookVector.z))
		bg.D = 100
		game:GetService("Debris"):AddItem(bv, 2.5)
		game:GetService("Debris"):AddItem(bg, 2.5)
		local connex = game:GetService("RunService").RenderStepped:connect(function()
			if (HRP.Velocity.y > 0) then
				HRP.Velocity = NV
			end
			HRP.CanCollide = false
		end)
		local connex2 = game:GetService("RunService").Stepped:connect(function()
			local Ghitz, Genz = RAY(HRP.Position, Vector3.new(0, -3.1, 0))
			if Ghitz then
				HRP.CFrame = (HRP.CFrame - HRP.Position) + Genz + Vector3.new(0, 3, 0)
			end
		end)
		local animspd = 4
		for i = 1, animspd do
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 1, 0), Vector3.new(math.pi / 5, 0, 0), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, 0.4, 0), Vector3.new(-math.pi / 2.6, 0, 0), 0)
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.4, 0.5, -0.06), Vector3.new(math.pi / 1.2, 0, 0.2), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.4, 0.5, -0.06), Vector3.new(math.pi / 1.2, 0, -0.2), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.5, -0.6, -0.1), Vector3.new(0.1, 0, 0.05), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.5, -0.6, -0.1), Vector3.new(0.1, 0, -0.05), 0)
			wait(0.02)
		end
		UpdateWP(slidecountmax, countspeed)
		for i = 1, animspd do
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 1, 0), Vector3.new(math.pi / 12, 0, 0), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, -0.7, 0), Vector3.new(-math.pi / 1.5, 0, 0), 0)
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.4, 0.6, -0.06), Vector3.new(math.pi / 1.3, 0, 0.2), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.4, 0.6, -0.06), Vector3.new(math.pi / 1.3, 0, -0.2), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.5, -1, 0), Vector3.new(-0.1, 0, 0.05), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.5, -1, 0), Vector3.new(-0.1, 0, -0.05), 0)
			wait(0.02)
		end
		UpdateWP(slidecountmax, countspeed)
		for i = 1, animspd do
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 0.85, 0), Vector3.new(-math.pi / 4, 0, 0), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, -1, 0), Vector3.new(-math.pi * 0.9, 0, 0), 0)
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.4, 0.5, -0.06), Vector3.new(math.pi / 1.4, 0, 0.08), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.4, 0.5, -0.06), Vector3.new(math.pi / 1.4, 0, -0.08), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.5, -0.3, -0.4), Vector3.new(-0.12, 0, 0.05), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.5, -0.3, -0.4), Vector3.new(-0.12, 0, -0.05), 0)
			wait(0.02)
		end
		UpdateWP(slidecountmax, countspeed)
		bv.velocity = bv.velocity * 0.9
		for i = 1, animspd do
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 0.85, 0), Vector3.new(-math.pi / 3.5, 0, 0), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, -1.25, 0), Vector3.new(-math.pi * 1.1, 0, 0), 0)
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.4, 0.5, -0.06), Vector3.new(math.pi / 1.8, 0, -0.1), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.4, 0.5, -0.06), Vector3.new(math.pi / 1.8, 0, 0.1), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.5, 0.2, -0.7), Vector3.new(-0.12, 0, 0.05), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.5, 0.2, -0.7), Vector3.new(-0.12, 0, -0.05), 0)
			wait(0.02)
		end
		UpdateWP(slidecountmax, countspeed)
		for i = 1, animspd do
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 0.85, 0), Vector3.new(-math.pi / 3.7, 0, 0), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, -2.3, 0), Vector3.new(-math.pi * 1.55, 0, 0), 0)
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.4, 0.5, -0.06), Vector3.new(math.pi / 2.4, 0, -0.23), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.4, 0.5, -0.06), Vector3.new(math.pi / 2.4, 0, 0.23), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.5, 0.1, -0.7), Vector3.new(-0.1, 0, 0.04), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.5, 0.1, -0.7), Vector3.new(-0.1, 0, -0.04), 0)
			wait(0.02)
		end
		UpdateWP(slidecountmax, countspeed)
		bv.velocity = bv.velocity * 0.7
		for i = 1, animspd do
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 1.05, 0), Vector3.new(-0.4, 0, 0), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, -1.6, 0), Vector3.new(-math.pi * 1.85, 0, 0), 0)
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.4, 0.5, -0.06), Vector3.new(math.pi / 3.2, 0, -0.24), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.4, 0.5, -0.06), Vector3.new(math.pi / 3.2, 0, 0.24), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.5, -0.08, -0.6), Vector3.new(-0.22, 0, 0.04), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.5, -0.08, -0.6), Vector3.new(-0.22, 0, -0.04), 0)
			wait(0.02)
		end
		UpdateWP(slidecountmax, countspeed)
		bv.velocity = bv.velocity * 0.4
		for i = 1, animspd do
			SetWeld(RS, i, animspd, rs, rsa, Vector3.new(1.35, 0.66 + (angle * 0.012), 0.12), Vector3.new(0.2 + (angle * 0.02), -0.22, 0.446 + (angle * 0.016)), 0)
			SetWeld(LS, i, animspd, ls, lsa, Vector3.new(-1.35, 0.66 + (angle * 0.012), 0.12), Vector3.new(0.2 + (angle * 0.02), 0.22, -0.446 - (angle * 0.016)), 0)
			SetWeld(RH, i, animspd, rh, rha, Vector3.new(0.7, -0.18 - (cangle * 0.04), -0.2 - (angle * 0.01)), Vector3.new(0.2 - (angle * 0.12), -math.pi / 5, 0.12 - (angle * 0.06)), 0)
			SetWeld(LH, i, animspd, lh, lha, Vector3.new(-0.38, -0.32 + (cangle * 0.04), -0.45 + (angle * 0.01)), Vector3.new(-0.1 + (angle * 0.15), -math.pi / 5, -0.07 + (angle * 0.07)), 0)
			SetWeld(N, i, animspd, n, na, Vector3.new(0, 1, 0), Vector3.new(0.12 + (angle * 0.004), (-math.pi / 5) - (angle * 0.01), 0.1), 0)
			SetWeld(HRJ, i, animspd, hrj, hrja, Vector3.new(0, -0.7, 0), Vector3.new(((-math.pi * 2) - 0.24) + (-angle * 0.008), (math.pi / 5) + (angle * 0.01), angle * 0.01), 0)
			wait(0.02)
		end
		SetWeld(HRJ, 1, 1, hrj, hrja, Vector3.new(0, -0.7, 0), Vector3.new(-0.24 + (-angle * 0.008), (math.pi / 5) + (angle * 0.01), angle * 0.01))
		bv:Destroy()
		bg:Destroy()
		connex:disconnect()
		connex2:disconnect()
		UpdateWP()
		cancelra = false
		cancella = false
		cancelhrp = false
		canceln = false
		cancelmain = false
		cancelll = false
		cancelrl = false
		Animating = false
		DisableMovement = false
	end
end
function Slide()
	if (not Animating and Shift and (pose.Value == 0) and (SlideCooldown == 0) and (Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude >= 18)) then
		Animating = true
		DisableMovement = true
		cancelra = true
		cancella = true
		cancelhrp = true
		canceln = true
		cancelmain = true
		cancelll = true
		cancelrl = true
		local prevslidecount = slidecount
		UpdateWP(slidecountmax, countspeed)
		slidecount = prevslidecount
		local bv = Instance.new("BodyVelocity", HRP)
		bv.maxForce = Vector3.new(1 / 0, 0, 1 / 0)
		bv.velocity = CFrame.new(NV, Vector3.new(HRP.CFrame.lookVector.x, 0, HRP.CFrame.lookVector.z)).lookVector * 30
		local bg = Instance.new("BodyGyro", HRP)
		bg.maxTorque = Vector3.new(1 / 0, 1 / 0, 1 / 0)
		bg.cframe = CFrame.new(NV, Vector3.new(HRP.CFrame.lookVector.x, 0, HRP.CFrame.lookVector.z))
		bg.D = 100
		game:GetService("Debris"):AddItem(bv, 5.5)
		game:GetService("Debris"):AddItem(bg, 5.5)
		local connex = game:GetService("RunService").RenderStepped:connect(function()
			if (HRP.Velocity.y > 0) then
				HRP.Velocity = NV
			end
			HRP.CanCollide = false
		end)
		local animspd = 8
		local animcount = 1
		local bvaccel = 1
		local bvvelo = bv.velocity
		local lasttorpos = HRP.Position
		local tickcount = 0
		local cancelslide = false
		local torsoangle = 0
		while not cancelslide and (bvaccel > 0.16) do
			tickcount = tickcount + 1
			lasttorpos = HRP.Position
			animcount = ((animcount < animspd) and (animcount + 1)) or animspd
			local n2, na2 = GetWeld(N)
			local hrj2, hrja2 = GetWeld(HRJ)
			local rs2, rsa2 = GetWeld(RS)
			local ls2, lsa2 = GetWeld(LS)
			local rh2, rha2 = GetWeld(RH)
			local lh2, lha2 = GetWeld(LH)
			SetWeld(N, 1, 4, n2, na2, Vector3.new(0, 1.08, -0.1), Vector3.new(-math.pi / 4.3, -0.12, -0.08))
			SetWeld(HRJ, 1, 4, hrj2, hrja2, Vector3.new(0, -2.1, 0), Vector3.new((math.pi / 2.6) + torsoangle, 0.12 + (angle * 0.008), 0))
			SetWeld(RS, 1, 4, rs2, rsa2, Vector3.new(1.4, 0.6, -0.02), Vector3.new(-math.pi / 1.8, -(angle * 0.01), 0.2 - (angle * 0.009)))
			SetWeld(LS, 1, 4, ls2, lsa2, Vector3.new(-1.3, 0.6, -0.16), Vector3.new(-math.pi / 1.8, -(angle * 0.01), -0.6 - (angle * 0.009)))
			SetWeld(RH, 1, 4, rh2, rha2, Vector3.new(0.5, -0.8, 0), Vector3.new(0.22, -0.06 - (angle * 0.01), 0.05))
			SetWeld(LH, 1, 4, lh2, lha2, Vector3.new(-0.5, -0.35, -0.45), Vector3.new(-0.25, -0.12 - (angle * 0.01), -0.03))
			bv.velocity = bvvelo * bvaccel
			wait(0.02)
			local torsoatan = (CFrame.new(lasttorpos) * (HRP.CFrame - HRP.Position)):pointToObjectSpace(HRP.Position)
			torsoangle = math.atan2(torsoatan.y, -torsoatan.z)
			local Ghitz, Genz = RAY(HRP.Position, Vector3.new(0, -3.1, 0))
			if Ghitz then
				HRP.CFrame = (HRP.CFrame - HRP.Position) + Genz + Vector3.new(0, 3, 0)
			end
			if ((lasttorpos.y - HRP.Position.y) < -0.1) then
				bvaccel = bvaccel - 0.045
			elseif ((lasttorpos.y - HRP.Position.y) > 0.08) then
				bvaccel = bvaccel - 0.006
				if Ghitz then
					bvaccel = bvaccel + ((lasttorpos.y - HRP.Position.y) / 2.5)
				end
			else
				bvaccel = bvaccel - 0.017
			end
			bvaccel = ((bvaccel > 1.02) and 1.02) or bvaccel
			local chitz, cenz = RAY(Torsoz.Position, Vector3.new(0, 2.5, 0))
			local stationary = false
			if (tickcount > 5) then
				stationary = (Vector3.new(lasttorpos.x, 0, lasttorpos.z) - Vector3.new(HRP.Position.x, 0, HRP.Position.z)).magnitude < 0.15
			end
			if ((bvaccel < 0.16) or ((chitz == nil) and not Alt) or stationary) then
				cancelslide = true
			end
		end
		SlideCooldown = 14
		bv:Destroy()
		bg:Destroy()
		connex:disconnect()
		UpdateWP(slidecountmax, countspeed)
		cancelra = false
		cancella = false
		cancelhrp = false
		canceln = false
		cancelmain = false
		cancelll = false
		cancelrl = false
		Animating = false
		DisableMovement = false
	end
end
invokelist = {}
invokelist[1] = Throw
invokelist[2] = DiveRoll
invokelist[3] = Slide
invoke.Changed:connect(function()
	if (invoke.Value ~= 0) then
		local valu = invoke.Value
		invoke.Value = 0
		if (invokelist[valu] ~= nil) then
			invokelist[valu]()
		end
	end
end)
-------------- Animation Tween Funcs ----------------------
function Idle()
	if (script.pose.Value == 0) then
		----- regular --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5, 0.5, 0), Vector3.new(-0.1 + (angle * 0.027), 0, 0.046 - (angle * 0.021)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5, 0.5, 0), Vector3.new(-0.1 + (angle * 0.027), 0, -0.046 + (angle * 0.021)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.5, -1, 0), Vector3.new(-0.05 + (angle * 0.018), 0, 0.01 - (angle * 0.005)))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.5, -1, 0), Vector3.new(-0.05 + (angle * 0.018), 0, -0.01 + (angle * 0.005)))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.04 + (-angle * 0.02), 0, 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(0.016 + (-angle * 0.009), 0, 0))
		end
	elseif (script.pose.Value == 1) then
		----- crouch --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.35, 0.66 - (angle * 0.012), 0.12), Vector3.new(-0.1 + (angle * 0.015), -0.22, 0.446 - (angle * 0.016)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.35, 0.66 - (angle * 0.012), 0.12), Vector3.new(-0.1 + (angle * 0.015), 0.22, -0.446 + (angle * 0.016)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.55, -1.05, -0.47 - (angle * 0.006)), Vector3.new((-math.pi / 2.2) + (angle * 0.005), -math.pi / 15, 0.01 + (angle * 0.005)))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.5, 0.3, -0.55), Vector3.new(0.3 + (angle * 0.01), -math.pi / 12, 0.08 + (angle * 0.005)))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.12 + (angle * 0.004), -math.pi / 5, 0.1))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, -1.4, 0), Vector3.new(-0.16 + (-angle * 0.007), math.pi / 5, 0))
		end
	elseif (script.pose.Value == 2) then
	end
end
function Walking()
	if (script.pose.Value == 0) then
		----- regular --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5, 0.5, 0), Vector3.new(angle * 0.2, 0, -math.abs(angle * 0.02)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5, 0.5, 0), Vector3.new(-angle * 0.2, 0, math.abs(angle * 0.02)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.5, -1, 0), Vector3.new(-angle * 0.17, 0, math.abs(angle * 0.005)))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.5, -1, 0), Vector3.new(angle * 0.17, 0, -math.abs(angle * 0.005)))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.015, -angle * 0.01, 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(-0.015 - math.abs(angle * 0.02), angle * 0.01, 0))
		end
		if (not cancelmain and (Main.Value ~= nil) and (main ~= nil) and (maina ~= nil)) then
			SetWeld(Main.Value, slidecount, slidecountmax, main, maina, Vector3.new(0, -1, 0), NV)
		end
	elseif (script.pose.Value == 1) then
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.35, 0.66 + (angle * 0.012), 0.12), Vector3.new(0.2 + (angle * 0.02), -0.22, 0.446 + (angle * 0.016)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.35, 0.66 + (angle * 0.012), 0.12), Vector3.new(0.2 + (angle * 0.02), 0.22, -0.446 - (angle * 0.016)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.7, -0.18 - (cangle * 0.04), -0.2 - (angle * 0.01)), Vector3.new(0.2 - (angle * 0.12), -math.pi / 5, 0.12 - (angle * 0.06)))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.38, -0.32 + (cangle * 0.04), -0.45 + (angle * 0.01)), Vector3.new(-0.1 + (angle * 0.15), -math.pi / 5, -0.07 + (angle * 0.07)))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.12 + (angle * 0.004), (-math.pi / 5) - (angle * 0.01), 0.1))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, -0.7, 0), Vector3.new(-0.24 + (-angle * 0.008), (math.pi / 5) + (angle * 0.01), angle * 0.01))
		end
	elseif (script.pose.Value == 2) then
	end
end
function Running()
	if (script.pose.Value == 0) then
		----- regular --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5 - math.abs(angle * 0.035), 0.5 - math.abs(angle * 0.02), 0), Vector3.new(0.16 + (angle * 0.42), 0, -math.abs(angle * 0.07)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5 + math.abs(angle * 0.035), 0.5 - math.abs(angle * 0.02), 0), Vector3.new(0.16 + (-angle * 0.42), 0, math.abs(angle * 0.07)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.5, -1 + math.abs(angle * 0.05), 0), Vector3.new(-angle * 0.3, 0, math.abs(angle * 0.005)))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.5, -1 + math.abs(angle * 0.05), 0), Vector3.new(angle * 0.3, 0, -math.abs(angle * 0.005)))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.07 + math.abs(-angle * 0.02), -angle * 0.03, 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(-0.14 - math.abs(-angle * 0.04), angle * 0.035, NV))
		end
		if (not cancelmain and (Main.Value ~= nil) and (main ~= nil) and (maina ~= nil)) then
			SetWeld(Main.Value, slidecount, slidecountmax, main, maina, Vector3.new(0, -1, 0), NV)
		end
	elseif (script.pose.Value == 1) then
	elseif (script.pose.Value == 2) then
	end
end
function Jumping()
	if (script.pose.Value == 0) then
		----- regular --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5, 0.5, 0), Vector3.new(-0.16, 0, 0.3 + (angle * 0.012)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5, 0.5, 0), Vector3.new(-0.16, 0, -0.3 - (angle * 0.012)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.5, -0.8, -0.05), Vector3.new(-0.28 + (angle * 0.02), 0, 0))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.5, -0.45, -0.55), Vector3.new(-0.4 - (angle * 0.02), 0, 0))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.1, -angle * 0.01, 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(0.2 + (angle * 0.002), angle * 0.02, 0))
		end
		if (not cancelmain and (Main.Value ~= nil) and (main ~= nil) and (maina ~= nil)) then
			SetWeld(Main.Value, slidecount, slidecountmax, main, maina, Vector3.new(0, -1, 0), NV)
		end
	elseif (script.pose.Value == 1) then
		----- crouch --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5, 0.5, 0), Vector3.new(-0.16, 0, 0.3 + (angle * 0.012)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5, 0.5, 0), Vector3.new(-0.16, 0, -0.3 - (angle * 0.012)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.7, -0.8, -0.05), Vector3.new(-0.28 + (angle * 0.001), -math.pi / 6, -0.2))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.3, -0.45, -0.55), Vector3.new(-0.4 - (angle * 0.001), -math.pi / 6, -0.2))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.1, (-math.pi / 5) - (angle * 0.01), 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(-0.07 + (angle * 0.002), (math.pi / 5) + (angle * 0.02), 0))
		end
		if (not cancelmain and (Main.Value ~= nil) and (main ~= nil) and (maina ~= nil)) then
			SetWeld(Main.Value, slidecount, slidecountmax, main, maina, Vector3.new(0, -1, 0), NV)
		end
	elseif (script.pose.Value == 2) then
	end
end
function Falling()
	if (script.pose.Value == 0) then
		----- regular --------
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5, 0.5, 0), Vector3.new(math.pi * 1.1, 0, -0.08 + (angle * 0.012)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5, 0.5, 0), Vector3.new(math.pi * 1.1, 0, 0.08 - (angle * 0.012)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.5, -0.45, -0.55), Vector3.new(-0.4 + (angle * 0.02), 0, 0))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.5, -0.8, -0.05), Vector3.new(-0.28 - (angle * 0.02), 0, 0))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.1, -angle * 0.01, 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(-0.2 + (angle * 0.002), angle * 0.02, 0))
		end
		if (not cancelmain and (Main.Value ~= nil) and (main ~= nil) and (maina ~= nil)) then
			SetWeld(Main.Value, slidecount, slidecountmax, main, maina, Vector3.new(0, -1, 0), NV)
		end
	elseif (script.pose.Value == 1) then
		if not cancelra then
			SetWeld(RS, slidecount, slidecountmax, rs, rsa, Vector3.new(1.5, 0.65, 0), Vector3.new(-0.1, 0, 0.3 + (angle * 0.012)))
		end
		if not cancella then
			SetWeld(LS, slidecount, slidecountmax, ls, lsa, Vector3.new(-1.5, 0.65, 0), Vector3.new(-0.1, 0, -0.3 - (angle * 0.012)))
		end
		if not cancelrl then
			SetWeld(RH, slidecount, slidecountmax, rh, rha, Vector3.new(0.8, -0.1, -0.25), Vector3.new(-0.28 + (angle * 0.001), -math.pi / 6, -0.2))
		end
		if not cancelll then
			SetWeld(LH, slidecount, slidecountmax, lh, lha, Vector3.new(-0.3, -0.8, -0.55), Vector3.new(-0.4 - (angle * 0.001), -math.pi / 6, -0.2))
		end
		if not canceln then
			SetWeld(N, slidecount, slidecountmax, n, na, Vector3.new(0, 1, 0), Vector3.new(0.1, (-math.pi / 5) - (angle * 0.01), 0))
		end
		if not cancelhrp then
			SetWeld(HRJ, slidecount, slidecountmax, hrj, hrja, Vector3.new(0, 0, 0), Vector3.new(-0.07 + (angle * 0.002), (math.pi / 5) + (angle * 0.02), 0))
		end
		if (not cancelmain and (Main.Value ~= nil) and (main ~= nil) and (maina ~= nil)) then
			SetWeld(Main.Value, slidecount, slidecountmax, main, maina, Vector3.new(0, -1, 0), NV)
		end
	elseif (script.pose.Value == 2) then
	end
end
game:GetService("RunService").Stepped:connect(function()
	count1 = (count1 % 100) + countspeed
	angle = math.pi * math.sin(((math.pi * 2) / 100) * count1)
	cangle = math.pi * math.cos(((math.pi * 2) / 100) * count1)
	------------- snowball power gui movement ------------------
	if (SPC.Archivable == true) then
		SPCP = ((SPCP ~= 14) and (SPCP + 1)) or 14
	else
		SPCP = ((SPCP ~= 0) and (SPCP - 1)) or 0
	end
	if (SPC ~= nil) then
		local perc = math.sin(((math.pi / 2) / 14) * SPCP)
		SPC.Position = UDim2.new(1, 10 - (50 * perc), 0.5, -55)
		if (SPCP > 0) then
			SPC.Visible = true
		else
			SPC.Visible = false
		end
	end
	------------- walkspeed changes -------------------------
	if DisableMovement then
		Walkspeed = 0
		Hu.WalkSpeed = Walkspeed
	elseif (Shift and (pose.Value ~= 1)) then
		Walkspeed = 25
		Hu.WalkSpeed = Walkspeed
	else
		Walkspeed = 16
		if (pose.Value == 1) then
			Hu.WalkSpeed = Walkspeed / 2
		else
			Hu.WalkSpeed = Walkspeed
		end
	end
	-------- animation slide count and pose smoothener --------------------
	slidecount = ((slidecount < slidecountmax) and (slidecount + 1)) or slidecountmax
	SlideCooldown = ((SlideCooldown > 0) and (SlideCooldown - 1)) or 0
	if (script.pose.Value ~= lastpose) then
		UpdateWP()
	end
	--------- animation conditions -------------------
	local ghitz, genz = RAY(Torsoz.Position, Vector3.new(0, -5.2, 0))
	if ((ghitz == nil) and (Torsoz.Velocity.y > 1)) then
	----- jumping -----
		anim = 3
		if (anim ~= lastanim) then
			UpdateWP(7)
		end
		Jumping()
	elseif ((ghitz == nil) and (Torsoz.Velocity.y < -1)) then
		----- falling ------
		anim = 4
		if (anim ~= lastanim) then
			UpdateWP(7)
		end
		Falling()
	elseif (Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude < 2) then
		---- idle ---------
		anim = 0
		if (anim ~= lastanim) then
			UpdateWP(6)
		end
		Idle()
	elseif (Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude < 17) then
		---- walking -------
		anim = 1
		if (anim ~= lastanim) then
			UpdateWP(7)
		end
		Walking()
	elseif (Vector3.new(Torsoz.Velocity.x, 0, Torsoz.Velocity.z).magnitude >= 17) then
		----- running -----
		anim = 2
		if (anim ~= lastanim) then
			UpdateWP(5)
		end
		Running()
		------------
	end
	--------- breakfall roll --------
	if ((ghitz ~= nil) and (prevvelocity.y < -110)) then
		invoke.Value = 2
	end
	--------- snowball projectile movement --------
	for i, v in pairs(SnowballProjectiles) do
		local oldpos = v[1].Position
		v[1].CFrame = v[1].CFrame + (v[4] * v[5]) + Vector3.new(0, v[3], 0)
		local raydist = (v[1].Position - oldpos).unit * ((oldpos - v[1].Position).magnitude + 0.5)
		local hitz, enz = RAY(v[1].Position, raydist)
		v[3] = v[3] - (0.35 * v[2])
		v[9] = v[9] + 1
		if (#v[8] > 0) then
			v[8][v[7]].Parent = v[1].Parent
			v[8][v[7]].Transparency = 0.5 - (0.3 * math.random())
			v[8][v[7]].Mesh.Scale = Vector3.new(0.45, 0.45, 0.45) - (Vector3.new(0.3, 0.3, 0.3) * math.random())
			v[8][v[7]].CFrame = CFrame.new(oldpos, v[1].Position) * CFrame.Angles(0, 0, (math.pi * 2) / (math.random(1, 100) / 100)) * CFrame.new(math.random(1, 10) / 20, 0, 0)
			v[7] = (v[7] % #v[8]) + 1
			for j, vv in pairs(v[8]) do
				vv.CFrame = vv.CFrame * CFrame.new(0.05, 0, 0) * CFrame.Angles(0, -0.1, -0.085)
			end
		end
		if ((hitz ~= nil) or (v[9] >= 200)) then
			if (hitz ~= nil) then
				SnowballHit(hitz, enz, v[6])
			end
			v[1].Parent:Destroy()
			print("Removed Snowball#", i)
			table.remove(SnowballProjectiles, i)
		end
	end
	------ snowball splosion effects -----
	for i, v in pairs(SnowSplosionEffects) do
		for j, vv in pairs(v:GetChildren()) do
			vv.CFrame = vv.CFrame * CFrame.new(0.3, 0, 0)
			vv.Transparency = vv.Transparency + 0.12
			vv.Mesh.Scale = vv.Mesh.Scale + Vector3.new(0.3, -0.1, -0.1)
		end
		if (v:FindFirstChild("Effect").Transparency > 0.9) then
			v:Destroy()
			table.remove(SnowSplosionEffects, i)
		end
	end
	lastpose = script.pose.Value
	lastanim = anim
	prevvelocity = HRP.Velocity
end)
