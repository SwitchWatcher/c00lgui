if game.CoreGui:FindFirstChild("culgui") then
	game.CoreGui:FindFirstChild("culgui"):Destroy()
end

local cka = Instance.new("ScreenGui")
cka.Parent = game.CoreGui
cka.Name = "culgui"
cka.ResetOnSpawn = false
cka.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local frame = Instance.new("Frame")
frame.Parent = cka
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BorderColor3 = Color3.fromRGB(255, 0, 0)
frame.BorderSizePixel = 3
frame.Name = "Frame"
frame.Position = UDim2.new(0.003, 0, 0.030, 0)
frame.Size = UDim2.new(0.300, 0, 0.800, 0)

local title = Instance.new("TextLabel")
title.Parent = frame
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3.000
title.Name = "Title"
title.Position = UDim2.new(0.000, 0, 0.000, 0)
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSans"
title.FontSize = "Size18"
title.Text = "c00lgui Reborn Rc7 by v3rx"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local page = Instance.new("Frame")
page.Parent = frame
page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
page.BorderColor3 = Color3.fromRGB(255, 0, 0)
page.BorderSizePixel = 3
page.Name = "Settings"
page.Position = UDim2.new(1.003, 0, 0.000, 0)
page.Size = UDim2.new(1.000, 0, 1.000, 0)
page.ZIndex = 1
page.Visible = true

local title = Instance.new("TextLabel")
title.Parent = page
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3.000
title.Name = "Title"
title.Position = UDim2.new(0.000, 0, 0.000, 0)
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSans"
title.FontSize = "Size18"
title.Text = "Settings"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local pge1 = Instance.new("Frame")
pge1.Parent = page
pge1.BorderColor3 = Color3.fromRGB(255, 0, 0)
pge1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
pge1.BorderSizePixel = 3
pge1.Name = "Page1"
pge1.Position = UDim2.new(0.000, 0, 0.226, 0)
pge1.Size = UDim2.new(1.000, 0, 0.837, 0)
pge1.ZIndex = 1

local sdi = Instance.new("Frame")
sdi.Parent = pge1
sdi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sdi.BorderColor3 = Color3.fromRGB(255, 0, 0)
sdi.BorderSizePixel = 3
sdi.Name = "Skybox/Decal ID"
sdi.Position = UDim2.new(0.000, 0, 0.000, 0)
sdi.Size = UDim2.new(0.500, 0, 0.200, 0)
sdi.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = sdi
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Skybox/Decal ID"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Skybox/Decal ID"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = sdi
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "158118263"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local pi = Instance.new("Frame")
pi.Parent = pge1
pi.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
pi.BorderColor3 = Color3.fromRGB(255, 0, 0)
pi.BorderSizePixel = 3
pi.Name = "Place ID"
pi.Position = UDim2.new(0.500, 0, 0.000, 0)
pi.Size = UDim2.new(0.500, 0, 0.200, 0)
pi.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = pi
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Place ID"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Place ID"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = pi
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "149559312"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local mid = Instance.new("Frame")
mid.Parent = pge1
mid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mid.BorderColor3 = Color3.fromRGB(255, 0, 0)
mid.BorderSizePixel = 3
mid.Name = "Music ID"
mid.Position = UDim2.new(0.000, 0, 0.213, 0)
mid.Size = UDim2.new(0.500, 0, 0.200, 0)
mid.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = mid
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Music ID"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Music ID"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = mid
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "142930454"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local mp = Instance.new("Frame")
mp.Parent = pge1
mp.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mp.BorderColor3 = Color3.fromRGB(255, 0, 0)
mp.BorderSizePixel = 3
mp.Name = "Music Pitch"
mp.Position = UDim2.new(0.500, 0, 0.213, 0)
mp.Size = UDim2.new(0.500, 0, 0.200, 0)
mp.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = mp
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Music Pitch"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Music Pitch"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = mp
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "1"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local god = Instance.new("Frame")
god.Parent = pge1
god.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
god.BorderColor3 = Color3.fromRGB(255, 0, 0)
god.BorderSizePixel = 3
god.Name = "God"
god.Position = UDim2.new(0.000, 0, 0.426, 0)
god.Size = UDim2.new(0.500, 0, 0.200, 0)
god.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = god
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "God"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "God"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = god
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "God"
button.Position = UDim2.new(0.000, 0, 0.534, 0)
button.Size = UDim2.new(1.000, 0, 0.466, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "On"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	if button.Text == "Off" then
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
		game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
		button.Text = "On"
	else
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
		game.Players.LocalPlayer.Character.Humanoid.Health = 100
		button.Text = "Off"
	end
end)

local inv = Instance.new("Frame")
inv.Parent = pge1
inv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
inv.BorderColor3 = Color3.fromRGB(255, 0, 0)
inv.BorderSizePixel = 3
inv.Name = "Invisible"
inv.Position = UDim2.new(0.500, 0, 0.426, 0)
inv.Size = UDim2.new(0.500, 0, 0.200, 0)
inv.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = inv
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Invisible"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Invisible"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = inv
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.534, 0)
button.Size = UDim2.new(1.000, 0, 0.466, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "On"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	if button.Text == "Off" then
		game.Players.LocalPlayer.Character.Head.Transparency = 1
		game.Players.LocalPlayer.Character.Head.face.Transparency = 1
		game.Players.LocalPlayer.Character.Torso.Transparency = 1
		game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
		game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
		game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
		game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
		button.Text = "On"
	else
		game.Players.LocalPlayer.Character.Head.Transparency = 0
		game.Players.LocalPlayer.Character.Head.face.Transparency = 0
		game.Players.LocalPlayer.Character.Torso.Transparency = 0
		game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0
		game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0
		game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
		game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0
		button.Text = "Off"
	end
end)

local cgid = Instance.new("Frame")
cgid.Parent = pge1
cgid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cgid.BorderColor3 = Color3.fromRGB(255, 0, 0)
cgid.BorderSizePixel = 3
cgid.Name = "Custom Gear ID"
cgid.Position = UDim2.new(0.000, 0, 0.639, 0)
cgid.Size = UDim2.new(0.500, 0, 0.200, 0)
cgid.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = cgid
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Music ID"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Custom Gear ID"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = cgid
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "108149175"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local bgt = Instance.new("Frame")
bgt.Parent = pge1
bgt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bgt.BorderColor3 = Color3.fromRGB(255, 0, 0)
bgt.BorderSizePixel = 3
bgt.Name = "Billboard Gui Text"
bgt.Position = UDim2.new(0.500, 0, 0.639, 0)
bgt.Size = UDim2.new(0.500, 0, 0.200, 0)
bgt.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = bgt
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Billboard Gui Text"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Billboard Gui Text"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = bgt
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "c00lkidd"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local pge2 = Instance.new("Frame")
pge2.Parent = page
pge2.BorderColor3 = Color3.fromRGB(255, 0, 0)
pge2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
pge2.BorderSizePixel = 3
pge2.Name = "Page2"
pge2.Position = UDim2.new(0.000, 0, 0.226, 0)
pge2.Size = UDim2.new(1.000, 0, 0.837, 0)
pge2.ZIndex = 1
pge2.Visible = false

local wsa = Instance.new("Frame")
wsa.Parent = pge2
wsa.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
wsa.BorderColor3 = Color3.fromRGB(255, 0, 0)
wsa.BorderSizePixel = 3
wsa.Name = "Walkspeed Amount"
wsa.Position = UDim2.new(0.500, 0, 0.000, 0)
wsa.Size = UDim2.new(0.500, 0, 0.200, 0)

local titl = Instance.new("TextLabel")
titl.Parent = wsa
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Walkspeed Amount"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Walkspeed Amount"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = wsa
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "50"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local lsn = Instance.new("Frame")
lsn.Parent = pge2
lsn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lsn.BorderColor3 = Color3.fromRGB(255, 0, 0)
lsn.BorderSizePixel = 3
lsn.Name = "Leaderstat Name"
lsn.Position = UDim2.new(0.000, 0, 0.213, 0)
lsn.Size = UDim2.new(0.500, 0, 0.200, 0)
lsn.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = lsn
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Leaderstat Name"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Leaderstat Name"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = lsn
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "KOs"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local nmb = Instance.new("Frame")
nmb.Parent = pge2
nmb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
nmb.BorderColor3 = Color3.fromRGB(255, 0, 0)
nmb.BorderSizePixel = 3
nmb.Name = "Name Box"
nmb.Position = UDim2.new(0.500, 0, 0.213, 0)
nmb.Size = UDim2.new(0.500, 0, 0.200, 0)
nmb.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = nmb
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Name Box"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Name Box"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = nmb
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "God"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local cst = Instance.new("Frame")
cst.Parent = pge2
cst.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cst.BorderColor3 = Color3.fromRGB(255, 0, 0)
cst.BorderSizePixel = 3
cst.Name = "Chat Spam Text"
cst.Position = UDim2.new(0.000, 0, 0.426, 0)
cst.Size = UDim2.new(0.500, 0, 0.200, 0)
cst.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = cst
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Chat Spam Text"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Chat Spam Text"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = cst
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "join team c00lkidd!"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local lsa = Instance.new("Frame")
lsa.Parent = pge2
lsa.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
lsa.BorderColor3 = Color3.fromRGB(255, 0, 0)
lsa.BorderSizePixel = 3
lsa.Name = "Leaderstat Amount"
lsa.Position = UDim2.new(0.500, 0, 0.426, 0)
lsa.Size = UDim2.new(0.500, 0, 0.200, 0)
lsa.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = lsa
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Leaderstat Amount"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Leaderstat Amount"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = lsa
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "God"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local bgc = Instance.new("Frame")
bgc.Parent = pge2
bgc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bgc.BorderColor3 = Color3.fromRGB(255, 0, 0)
bgc.BorderSizePixel = 3
bgc.Name = "Billboard Gui Color"
bgc.Position = UDim2.new(0.000, 0, 0.639, 0)
bgc.Size = UDim2.new(0.500, 0, 0.200, 0)
bgc.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = bgc
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Billboard Gui Color"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Billboard Gui Color"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx1 = Instance.new("TextBox")
textbx1.Parent = bgc
textbx1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx1.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx1.BorderSizePixel = 3
textbx1.ClearTextOnFocus = true
textbx1.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx1.Size = UDim2.new(0.333, 0, 0.500, 0)
textbx1.Font = "SourceSans"
textbx1.FontSize = "Size10"
textbx1.Text = "200"
textbx1.TextColor3 = Color3.fromRGB(255, 255, 255)
textbx1.Name = "TextBox1"

local textbx2 = Instance.new("TextBox")
textbx2.Parent = bgc
textbx2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx2.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx2.BorderSizePixel = 3
textbx2.ClearTextOnFocus = true
textbx2.Position = UDim2.new(0.333, 0, 0.500, 0)
textbx2.Size = UDim2.new(0.333, 0, 0.500, 0)
textbx2.Font = "SourceSans"
textbx2.FontSize = "Size10"
textbx2.Text = "0"
textbx2.TextColor3 = Color3.fromRGB(255, 255, 255)
textbx2.Name = "TextBox2"

local textbx3 = Instance.new("TextBox")
textbx3.Parent = bgc
textbx3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx3.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx3.BorderSizePixel = 3
textbx3.ClearTextOnFocus = true
textbx3.Position = UDim2.new(0.666, 0, 0.500, 0)
textbx3.Size = UDim2.new(0.333, 0, 0.500, 0)
textbx3.Font = "SourceSans"
textbx3.FontSize = "Size10"
textbx3.Text = "0"
textbx3.TextColor3 = Color3.fromRGB(255, 255, 255)
textbx3.Name = "TextBox3"

local arr = Instance.new("Frame")
arr.Parent = pge2
arr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
arr.BorderColor3 = Color3.fromRGB(255, 0, 0)
arr.BorderSizePixel = 3
arr.Name = "Anti Robloxian Rage"
arr.Position = UDim2.new(0.500, 0, 0.639, 0)
arr.Size = UDim2.new(0.500, 0, 0.200, 0)
arr.ZIndex = 2

local titl = Instance.new("TextLabel")
titl.Parent = arr
titl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
titl.BorderColor3 = Color3.fromRGB(255, 0, 0)
titl.BorderSizePixel = 3
titl.Name = "Anti Robloxian Rage"
titl.Size = UDim2.new(1.000, 0, 0.460, 0)
titl.ZIndex = 2
titl.Font = "SourceSansBold"
titl.FontSize = "Size10"
titl.Text = "Anti Robloxian Rage"
titl.TextColor3 = Color3.fromRGB(255, 255, 255)

local textbx = Instance.new("TextBox")
textbx.Parent = arr
textbx.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textbx.BorderColor3 = Color3.fromRGB(255, 0, 0)
textbx.BorderSizePixel = 3
textbx.ClearTextOnFocus = true
textbx.Position = UDim2.new(0.000, 0, 0.500, 0)
textbx.Size = UDim2.new(1.000, 0, 0.500, 0)
textbx.Font = "SourceSans"
textbx.FontSize = "Size10"
textbx.Text = "200"
textbx.TextColor3 = Color3.fromRGB(255, 255, 255)

local rgt = Instance.new("TextButton")
rgt.Parent = page
rgt.BorderColor3 = Color3.fromRGB(255, 0, 0)
rgt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
rgt.BorderSizePixel = 3
rgt.Name = "<"
rgt.Position = UDim2.new(0.000, 0, 0.113, 0)
rgt.Size = UDim2.new(0.500, 0, 0.100, 0)
rgt.ZIndex = 1
rgt.Font = "SourceSans"
rgt.FontSize = "Size48"
rgt.Text = "<"
rgt.TextColor3 = Color3.fromRGB(255, 255, 255)
rgt.MouseButton1Down:connect(function()
	if pge1.Visible == true then
		pge1.Visible = false
		pge2.Visible = true
	elseif pge2.Visible == true then
		pge2.Visible = false
		pge1.Visible = true
	end
end)

local lft = Instance.new("TextButton")
lft.Parent = page
lft.BorderColor3 = Color3.fromRGB(255, 0, 0)
lft.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
lft.BorderSizePixel = 3
lft.Name = ">"
lft.Position = UDim2.new(0.500, 0, 0.113, 0)
lft.Size = UDim2.new(0.500, 0, 0.100, 0)
lft.ZIndex = 1
lft.Font = "SourceSans"
lft.FontSize = "Size48"
lft.Text = ">"
lft.TextColor3 = Color3.fromRGB(255, 255, 255)
lft.MouseButton1Down:connect(function()
	if pge1.Visible == true then
		pge1.Visible = false
		pge2.Visible = true
	elseif pge2.Visible == true then
		pge2.Visible = false
		pge1.Visible = true
	end
end)

local sbutton = Instance.new("TextButton")
sbutton.Parent = page
sbutton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sbutton.BorderColor3 = Color3.fromRGB(255, 0, 0)
sbutton.BorderSizePixel = 3
sbutton.Name = "SettingsButton"
sbutton.Position = UDim2.new(1.013, 0, 0.000, 0)
sbutton.Size = UDim2.new(0.100, 0, 1.063, 0)
sbutton.Font = "SourceSans"
sbutton.FontSize = "Size36"
sbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
sbutton.Text = "<"
cango = true
sbutton.TextWrapped = true
sbutton.MouseButton1Down:connect(function()
	if cango == true then
		if sbutton.Text == "<" then
			sbutton.Text = ">"
			cango = false
			repeat
			wait()
			page.Position = UDim2.new(1.003, page.Position.X.Offset-10, 0.000, 0)
			until page.Position.X.Offset <= -236
			wait()
			page.Position = UDim2.new(0.003, 0, 0.000, 0)
			pge1.Visible = false
			pge2.Visible = false
			cango = true
		else
			pge1.Visible = true
			pge2.Visible = true
			sbutton.Text = "<"
			cango = false
			repeat
			wait()
			page.Position = UDim2.new(0.003, page.Position.X.Offset+10, 0.000, 0)
			until page.Position.X.Offset >= 236
			wait()
			page.Position = UDim2.new(1.003, 0, 0.000, 0)
			cango = true
		end	
	end
end)

local page1 = Instance.new("Frame")
page1.Parent = frame
page1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
page1.BorderColor3 = Color3.fromRGB(255, 0, 0)
page1.BorderSizePixel = 3.000
page1.Name = "Page1"
page1.Position = UDim2.new(0.000, 0, 0.226, 0)
page1.Size = UDim2.new(1.000, 0, 0.774, 0)
page1.ZIndex = 2
page1.Visible = true

local sd = Instance.new("Frame")
sd.Parent = page1
sd.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
sd.BorderColor3 = Color3.fromRGB(255, 0, 0)
sd.BorderSizePixel = 3
sd.Name = "Server Destruction"
sd.Position = UDim2.new(0.000, 0, 0.000, 0)
sd.Size = UDim2.new(0.500, 0, 1.000, 0)
sd.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = sd
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Server Destruction"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Flood"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Flood"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	game.Workspace.Terrain:SetCells(Region3int16.new(Vector3int16.new(-100, -100, -100), Vector3int16.new(100, 100, 100)), 17, "Solid", "X")
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Clear Terrain"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Clear Terrain"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	game.Workspace.Terrain:Clear()
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Apoc Troll"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Apoc Troll"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	ds = CFrame.new(game.Players.LocalPlayer.Character.Head.Position)
	wait()
	for i,  v in pairs(game.Players:GetChildren()) do
		v.Character.Torso.CFrame = ds * CFrame.new(math.random(0, 50), 0, math.random(0, 50))
		v.Character:BreakJoints()
	end
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Set Skybox"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Set Skybox"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local s = Instance.new("Sky")
	s.Name = "Sky"
	s.Parent = game.Lighting
	local skyboxID = frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text
	s.SkyboxBk = "http://www.roblox.com/asset/?id="..skyboxID
	s.SkyboxDn = "http://www.roblox.com/asset/?id="..skyboxID
	s.SkyboxFt = "http://www.roblox.com/asset/?id="..skyboxID
	s.SkyboxLf = "http://www.roblox.com/asset/?id="..skyboxID
	s.SkyboxRt = "http://www.roblox.com/asset/?id="..skyboxID
	s.SkyboxUp = "http://www.roblox.com/asset/?id="..skyboxID
	game.Lighting.TimeOfDay = 12
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Unanchor All"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Unanchor All"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	function exPro(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("BasePart") then
				v.Material = "Plastic"
				v.Transparency = 0
				v.Anchored = false
				v.Locked = false
			end
		exPro(v)
		end
	end
	function asdf(root)
		for _, v in pairs(root:GetChildren()) do
			asdf(v)
		end
	end
	exPro(game.Workspace)
	asdf(game.Workspace)
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Decalspam"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Decalspam"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	decalID = frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text
	function exPro(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("Decal") and v.Texture ~= "http://www.roblox.com/asset/?id="..decalID then
				v.Parent = nil
			elseif v:IsA("BasePart") then
				v.Material = "Plastic"
				v.Transparency = 0
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "http://www.roblox.com/asset/?id="..decalID
				Two.Texture = "http://www.roblox.com/asset/?id="..decalID
				Three.Texture = "http://www.roblox.com/asset/?id="..decalID
				Four.Texture = "http://www.roblox.com/asset/?id="..decalID
				Five.Texture = "http://www.roblox.com/asset/?id="..decalID
				Six.Texture = "http://www.roblox.com/asset/?id="..decalID
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			exPro(v)
		end
	end
	function asdf(root)
		for _, v in pairs(root:GetChildren()) do
			asdf(v)
		end
	end
	exPro(game.Workspace)
	asdf(game.Workspace)
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Force Teleport"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Force Teleport"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local placeID = frame.Settings.Page1["Place ID"].TextBox.Text
	for i,v in pairs(game.Players:GetChildren()) do
		game:GetService'TeleportService':Teleport(placeID,v.Character)
	end
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Clear Workspace"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Clear Workspace"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	game.Workspace:ClearAllChildren()
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Kill All"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Kill All"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	for i, v in pairs(game.Players:GetChildren()) do
		v.Character:BreakJoints()
	end
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Kick All"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Kick All"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	for i, v in pairs(game.Players:GetChildren()) do
		v:Remove()
	end
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Create Baseplate"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Create Baseplate"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local pt = Instance.new("Part")
	pt.BrickColor = BrickColor.new("Silver")
	pt.Anchored = true
	pt.CanCollide = true
	pt.BottomSurface = "Weld"
	pt.Parent = workspace
	pt.Name = (math.random(1, 1000000))
	pt.Size = Vector3.new(1000, 1, 1000)
end)

local button = Instance.new("TextButton")
button.Parent = sd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Intimidation"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Intimidation"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	s = Instance.new("Sky")
	s.Name = "Sky"
	s.Parent = game.Lighting
	skyboxID = frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text
	s.SkyboxBk = "http://www.roblox.com/asset/?id=" .. skyboxID
	s.SkyboxDn = "http://www.roblox.com/asset/?id=" .. skyboxID
	s.SkyboxFt = "http://www.roblox.com/asset/?id=" .. skyboxID
	s.SkyboxLf = "http://www.roblox.com/asset/?id=" .. skyboxID
	s.SkyboxRt = "http://www.roblox.com/asset/?id=" .. skyboxID
	s.SkyboxUp = "http://www.roblox.com/asset/?id=" .. skyboxID
	game.Lighting.TimeOfDay = 12
	local spin = coroutine.create(function(pic)
		while wait() do
			wait()
			pic.Rotation = pic.Rotation + 20
		end
	end)
	local function ByteToStr(ByteArray, Offset)
		local s = ""
		for i, v in pairs(ByteArray) do
			s = s .. string.char(v - Offset)
		end
		return s
	end
	for i, v in pairs(game.Players:GetChildren()) do
		s = Instance.new("ScreenGui")
		s.Parent = v.PlayerGui
		s.Name = "swag"
		f = Instance.new("Frame")
		f.Parent = s
		f.BackgroundColor3 = Color3.new(NaN, NaN, NaN)
		f.Size = UDim2.new(1, 100, 1, 100)
		so = Instance.new("Sound")
		so.Looped = true
		so.Parent = f
		so.SoundId = "http://www.roblox.com/asset/?id=142930454"
		so:Play()
		wait(0.1)
		so:Play()
		i = Instance.new("ImageLabel")
		i.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=500&y=500&Format=Png&username=" .. game.Players.LocalPlayer.Name
		i.Parent = f
		i.Size = UDim2.new(0, 300, 0, 300)
		i.Position = UDim2.new(0.30, 0, 0.1, 0)
		t = Instance.new("TextLabel")
		t.BackgroundTransparency = 1
		t.Parent = f
		t.Position = UDim2.new(0.4, 0, 0, 0)
		t.Font = "Legacy"
		t.FontSize = "Size24"
		t.Text = "Don't " .. ByteToStr({422,437,419,427}, 320) .. " with " .. game.Players.LocalPlayer.Name .. " :^)"
		t.TextColor3 = Color3.new(255, 255, 255)
		t.Size = UDim2.new(0, 100, 0, 100)
		te = t:Clone()
		te.Parent = f
		te.Text = ""
		te.Name = "yolo"
		te.Position = UDim2.new(0.4, 0, 0.7, 0)
		game.Workspace[v.Name]:Remove()
		wait(0.1)
		coroutine.resume(spin, i)
	end
	for i, x in pairs(game.Workspace:GetChildren()) do
		wait()
		if (x.Name == "Terrain") then
			game.Workspace.Terrain:Clear()
		else
			x:Remove()
			for i, v in pairs(game.Players:GetChildren()) do
				v.PlayerGui.swag.Frame.yolo.Text = "Removing " .. x.Name
			end
		end
	end
	for i, v in pairs(game.Players:GetChildren()) do
		v.PlayerGui.swag.Frame.yolo.Text = "Done! :^)"
		coroutine.resume(spin, i)
	end
end)

local acg = Instance.new("Frame")
acg.Parent = page1
acg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
acg.BorderColor3 = Color3.fromRGB(255, 0, 0)
acg.BorderSizePixel = 3
acg.Name = "Admin Commands/Guis"
acg.Position = UDim2.new(0.500, 0, 0.000, 0)
acg.Size = UDim2.new(0.500, 0, 1.000, 0)
acg.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = acg
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Admin Commands/Guis"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "iOrb"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "i0rb"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/i0rb.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Kohls Admin"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Scrub's Admin"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Scrub's%20Admin.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Nex Pluvia Admin"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Nex Pluvia\nAdmin"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Nex%20Pluvia.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Silent Executor"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Silent Executor"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Silent%20Executor.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Remso Admin"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Remso\nAdmin"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Remso%20Admin.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Nilizer"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Nilizer"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Nilizer.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Kill Gui"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Kill Gui"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Kill%20Gui.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "X Admin"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "X Admin"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/X%20Admin.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Lag Gui"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Lag Gui"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Admin%20Commands/Lag%20Gui.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Global Message Gui"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Global\nMessage Gui"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	for _,v in pairs(game.Players:GetChildren()) do
		game:service'Chat':Chat(v.Character.Head,frame.Settings.Page2["Chat Spam Text"].TextBox.Text,Enum.ChatColor.Blue)
		wait()
		game:service'Chat':Chat(v.Character.Head,frame.Settings.Page2["Chat Spam Text"].TextBox.Text,Enum.ChatColor.Red)
		wait()
		game:service'Chat':Chat(v.Character.Head,frame.Settings.Page2["Chat Spam Text"].TextBox.Text,Enum.ChatColor.Green)
	end
end)

local button = Instance.new("TextButton")
button.Parent = acg
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local page2 = Instance.new("Frame")
page2.Parent = frame
page2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
page2.BorderColor3 = Color3.fromRGB(255, 0, 0)
page2.BorderSizePixel = 3.000
page2.Name = "Page2"
page2.Position = UDim2.new(0.000, 0, 0.226, 0)
page2.Size = UDim2.new(1.000, 0, 0.774, 0)
page2.ZIndex = 2
page2.Visible = false

local ws = Instance.new("Frame")
ws.Parent = page2
ws.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ws.BorderColor3 = Color3.fromRGB(255, 0, 0)
ws.BorderSizePixel = 3
ws.Name = "Weapon Scripts"
ws.Position = UDim2.new(0.000, 0, 0.000, 0)
ws.Size = UDim2.new(0.500, 0, 1.000, 0)
ws.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = ws
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Weapon Scripts"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Drage"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Drage"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Drage.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Dual Blades"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Dual Blades"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Dual%20Blades.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Eyelaser"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Eyelaser"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Eyelaser.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Knife"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Knife"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Knife.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Lance"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Lance"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Lightsaber"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Lightsaber"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Lightsaber.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Master Head"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Master Hand"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Master%20Hand.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Plane"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Plane"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Plane.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Snowball"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Snowball"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Snowball.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Staff"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Staff"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Staff.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Techno Gauntlet"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Techno\nGauntlet"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Techno%20Gauntlet.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Wand"
button.Position = UDim2.new(0.000, 0, 0.805, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Wand"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/Wand.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = ws
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "xBow"
button.Position = UDim2.new(0.500, 0, 0.805, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "xBow"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Weapon%20Scripts/xBow.lua"))()
end)

local gt = Instance.new("Frame")
gt.Parent = page2
gt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gt.BorderColor3 = Color3.fromRGB(255, 0, 0)
gt.BorderSizePixel = 3
gt.Name = "Gear/Tools"
gt.Position = UDim2.new(0.500, 0, 0.000, 0)
gt.Size = UDim2.new(0.500, 0, 1.000, 0)
gt.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = gt
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Gear/Tools"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Custom Gear"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Custom Gear"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local x = game:GetService("InsertService"):LoadAsset(frame.Settings.Page1["Custom Gear ID"].TextBox.Text)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Stamper Tools"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Stamper Tools"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local x = game:GetService("InsertService"):LoadAsset(73089166)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
	x = game:GetService("InsertService"):LoadAsset(73089204)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
	x = game:GetService("InsertService"):LoadAsset(73089190)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
	x = game:GetService("InsertService"):LoadAsset(58880579)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
	x = game:GetService("InsertService"):LoadAsset(60791062)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
	x = game:GetService("InsertService"):LoadAsset(73089239)
	for i,v in pairs(x:GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Backpack
	end
	x:Remove()
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Tool Stealer"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Tool Stealer"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local z = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	z.Name = "Tool Stealer"
	function onButton1Down(mouse)
		local hit = mouse.Target
		if (hit == nil) then
		return
		end
		for i,v in pairs(hit.Parent:GetChildren()) do
			if v:IsA("Tool") or v:IsA("HopperBin") then
				v.Parent = game.Players.LocalPlayer.Backpack
			end
		end
	end
	function onSelected(mouse)
		mouse.Button1Down:connect(function()
			onButton1Down(mouse)
		end)
	end

	z.Selected:connect(onSelected)
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Dev Uzi"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Dev Uzi"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Gear/Dev%20Uzi.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Laser Rifle"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Laser Rifle"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Gear/Laser%20Rifle.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Draw Tool"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Draw Tool"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/Gear/Draw%20Tool.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = gt
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local page3 = Instance.new("Frame")
page3.Parent = frame
page3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
page3.BorderColor3 = Color3.fromRGB(255, 0, 0)
page3.BorderSizePixel = 3.000
page3.Name = "Page3"
page3.Position = UDim2.new(0.000, 0, 0.226, 0)
page3.Size = UDim2.new(1.000, 0, 0.774, 0)
page3.ZIndex = 2
page3.Visible = false

local misc = Instance.new("Frame")
misc.Parent = page3
misc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
misc.BorderColor3 = Color3.fromRGB(255, 0, 0)
misc.BorderSizePixel = 3
misc.Name = "Misc."
misc.Position = UDim2.new(0.000, 0, 0.000, 0)
misc.Size = UDim2.new(0.500, 0, 1.000, 0)
misc.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = misc
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Misc."
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Become Owner in Personal Server"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Become\nOwner [PS]"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	while game.Players.LocalPlayer.PersonalServerRank<255 do
		game:GetService("PersonalServerService"):Promote(game.Players.LocalPlayer)
	end
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Disco Fog"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Disco Fog"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	basics = {Color3.new(255/255,0/255,0/255),Color3.new(255/255,85/255,0/255),Color3.new(218/255,218/255,0/255),Color3.new(0/255,190/255,0/255),Color3.new(0/255,85/255,255/255),Color3.new(0/255,0/255,127/255),Color3.new(170/255,0/255,255/255),Color3.new(0/255,204/255,204/255),Color3.new(255/255,85/255,127/255),Color3.new(0/255,0/255,0/255),Color3.new(255/255,255/255,255/255)}
	game.Lighting.FogStart = 25
	game.Lighting.FogEnd = 300
	while true do
		wait(0.5)
		game.Lighting.FogColor = basics[math.random(1,#basics)]
	end
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Fencing Restore"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Fencing\nRestore"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	--Fencing Restore script made by Yelock--
	--Now restoring fencing Please wait ----------
	--Censore
	--mediafire
	--hitler
	--megaupload
	--globe of geeks
	--lego
	--cheez
	--chicken
	--requires c>2
	function X(ws)
		for _, v in pairs(ws:GetChildren()) do
			v.Archivable = true
			if v.Name ~= "UClear" and v.Name ~= "Terrain" and game.Players:GetPlayerFromCharacter(v)==nil and v~=game.Workspace.CurrentCamera then
				if v:IsA("Script") or v:IsA("LocalScript") then
					v.Disabled = true
					v:remove()
				else
					v:remove()
				end
			end
		if game.Workspace:findFirstChild("Base") ~= nil then
			else
				local Base=Instance.new("Part",game.Workspace)
				Base.Name="Base"
				Base.Size=Vector3.new(1000,1,1000)
				Base.BrickColor=BrickColor.new("Earth green")
				Base.Anchored=true
				Base.Locked=true
				Base.TopSurface="Universal"
				Base.CFrame=CFrame.new(Vector3.new(0,0,0))
				local Spawn=Instance.new("SpawnLocation",game.Workspace)
				Spawn.Name="lol"
				Spawn.Size=Vector3.new(6,1,6)
				Spawn.Transparency=1
				Spawn.CanCollide=false
				Spawn.Anchored=true
				Spawn.Locked=true
				Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
			end
		end
	end
	X(game.Workspace)
	X(game.Teams)
	X(game.StarterGui)
	wait()
	game.Workspace:InsertContent("rbxassetid://118791953")
	wait()
	game.workspace.Base:Destroy()
	wait()
	game.workspace.lol:Destroy()
	wait()
	game.Lighting.Ambient = Color3.new(255,255,255)
	game.Lighting.TimeOfDay = 12
	game.Lighting.Brightness = 0.5
	game.Lighting.FogEnd = 100000
	game.Lighting.GlobalShadows = false
	game.Lighting.Sky:Destroy()
	game.Lighting.FogEnd = 100000
	game.Lighting.Brightness = 1
	game.Workspace.Terrain:clear()
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Leaderstat Add"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Leaderstat\nAdd"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	while true do
		wait(.1)
		game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Name"].TextBox.Text).Value = game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Name"].TextBox.Text)+game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Amount"].TextBox.Text)	
	end
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Leaderstat Change"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Leaderstat\nChange"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Name"].TextBox.Text)game.Players.LocalPlayer.leaderstats:FindFirstChild(frame.Settings.Page2["Leaderstat Amount"].TextBox.Text)
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Play Music"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Play Music"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	for i,v in pairs(game.Workspace:GetChildren()) do
		if v.className == "Sound" then
			v:Stop()
			v:Remove()
		end
	end
	s = Instance.new("Sound",Workspace)
	s.SoundId = "rbxassetid://"..frame.Settings.Page1["Music ID"].TextBox.Text
	s.Volume = 1
	s.Looped = true
	s.Pitch = frame.Settings.Page1["Music Pitch"].TextBox.Text
	s:Play()
	wait(.1)
	s:Play()
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Restore Skybox"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Restore\nSkybox"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	for i,v in pairs(game.Lighting:GetChildren()) do
		v:Remove()
	end
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Steal Player\nPoints"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Steal Player Points"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local service = game:GetService("PointsService")
	service:AwardPoints(game.Players.LocalPlayer.userId, service:GetAwardablePoints())
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = misc
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local localp = Instance.new("Frame")
localp.Parent = page3
localp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
localp.BorderColor3 = Color3.fromRGB(255, 0, 0)
localp.BorderSizePixel = 3
localp.Name = "LocalPlayer"
localp.Position = UDim2.new(0.500, 0, 0.000, 0)
localp.Size = UDim2.new(0.500, 0, 1.000, 0)
localp.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = localp
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "LocalPlayer"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Anti-Robloxian"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Anti-Robloxian"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Billboard Gui"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Billboard Gui"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	if game.Players.LocalPlayer.Character.Head:FindFirstChild("BillboardGui") then
		game.Players.LocalPlayer.Character.Head:FindFirstChild("BillboardGui"):Remove()
	end
	plr = game.Players.LocalPlayer.Name
	y = Instance.new("BillboardGui")
	y.Size = UDim2.new(0,100,0,150)
	y.StudsOffset = Vector3.new(0,1,0)
	y.Parent = game.Players[plr].Character.Head
	y.Adornee = game.Players[plr].Character.Head
	f = Instance.new("TextLabel")
	f.Parent = y
	f.BackgroundTransparency = 1
	f.Position = UDim2.new(0,0,0,-50)
	f.Size = UDim2.new(0,100,0,100)
	f.Font = "Arial"
	f.FontSize = "Size48"
	f.Text = frame.Settings.Page1["Billboard Gui Text"].TextBox.Text
	f.TextStrokeColor3 = Color3.new(0,0,0)
	f.TextColor3 = Color3.new(frame.Settings.Page2["Billboard Gui Color"].TextBox1.Text/255,frame.Settings.Page2["Billboard Gui Color"].TextBox2.Text/255,frame.Settings.Page2["Billboard Gui Color"].TextBox3.Text/255)
	f.TextStrokeTransparency = 0
	f.TextYAlignment = "Bottom"
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Change Name"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Change Name"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local You = game.Players.LocalPlayer.Name
	local head = workspace[You].Head:Clone()
	local model = Instance.new("Model",workspace)
	local humanoid = Instance.new("Humanoid",model)
	head.Parent = model
	model.Name = frame.Settings.Page2["Name Box"].TextBox.Text
	humanoid.MaxHealth = 0
	local w = Instance.new("Weld",model)
	w.Part0,w.Part1 = workspace[You].Head,head
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Chicken Arms"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Chicken Arms"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/SwitchWatcher/c00lgui/refs/heads/main/LocalPlayer/Chicken%20Arms.lua"))()
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Disco Character"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Disco\nCharacter"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	presets = {"Bright red","Bright yellow","Bright orange","Bright violet","Bright blue","Bright bluish green","Bright green"}
	while true do
		wait(0.5)
		ye = game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()
		for i,v in pairs(ye) do
			if v.className == "Part" then
				v.BrickColor = BrickColor.new(presets[math.random(1,#presets)])
			end
		end
	end
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Dominus Ghost"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Dominus\nGhost"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	function nob(who,tra,hat)
	c=who.Character
	pcall(function()u=c["Body Colors"]
		u.HeadColor=BrickColor.new("Black")
		u.LeftLegColor=BrickColor.new("Black")
		u.RightLegolor=BrickColor.new("Black")
		u.LeftArmColor=BrickColor.new("Black")
		u.TorsoColor=BrickColor.new("Black")
		u.RightArmColor=BrickColor.new("Black")
	end)
	pcall(function()
		c.Shirt:Destroy()
		c.Pants:Destroy()
	end)
	for i,v in pairs(c:GetChildren()) do
		if v:IsA("BasePart") then
			v.Transparency=tra
			if v.Name=="HumanoidRootPart" or v.Name=="Head" then
				v.Transparency=1
			end
		wait()
		v.BrickColor=BrickColor.new("Black")
		elseif v:IsA("Hat") then
			v:Destroy()
		end
	end
	xx=game:service("InsertService"):LoadAsset(hat)
	xy=game:service("InsertService"):LoadAsset(47433)["LinkedSword"]
	xy.Parent=who.Backpack
	for a,hat in pairs(xx:children()) do
		hat.Parent=c
	end
	xx:Destroy()
	h=who.Character.Humanoid
	h.MaxHealth=50000
	wait(1.5)
	h.Health=50000
	h.WalkSpeed=32
	end
	nob(game.Players.LocalPlayer,0.6,21070012)
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Floating Pad"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Floating Pad"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	local name = game.Players.LocalPlayer.Name
	local p = Instance.new("Part")
	p.Parent = workspace
	p.Locked = true
	p.BrickColor = BrickColor.new("White")
	p.BrickColor = BrickColor.new(104)
	p.Size = Vector3.new(8, 1.2, 8)
	p.Anchored = true
	local m = Instance.new("CylinderMesh")
	m.Scale = Vector3.new(1, 0.5, 1)
	m.Parent = p
	while true do
		p.CFrame = CFrame.new(game.Players:findFirstChild(name).Character.Torso.CFrame.x, game.Players:findFirstChild(name).Character.Torso.CFrame.y - 4, game.Players:findFirstChild(name).Character.Torso.CFrame.z)
		wait()
	end
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Head Shake"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Head Shake"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	for X = 1, math.huge, 0.2 do
	wait()
		game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C0 = CFrame.new(math.sin(X) / 1,1.5,0)
		game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C1 = CFrame.new(0,0,0)
	end
	for X = 1, math.huge, 0.1 do
		wait()
		game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromAxisAngle(Vector3.new(0,1,0), X)
		game.Workspace[game.Players.LocalPlayer.Name].Torso.Neck.C1 = CFrame.new(0,0,0)
	end
	for _,c in pairs(game.Players:GetChildren()) do
		c.Character.Head.Mesh.Scale = Vector3.new(100, 100, 100)
	end
	for _,c in pairs(game.Players:GetChildren()) do
		c.Character.Head.Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	end
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Heal"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Heal"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Mesh Disco"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Mesh Disco"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	plr = game.Players.LocalPlayer.Name
	meshes = {"Brick","Cylinder","Head","Sphere","Torso","Wedge"}
	h = game.Workspace[plr].Head.Mesh
	t = Instance.new("SpecialMesh",game.Workspace[plr].Torso)
	la = Instance.new("SpecialMesh",game.Workspace[plr]["Left Arm"])
	ra = Instance.new("SpecialMesh",game.Workspace[plr]["Right Arm"])
	ll = Instance.new("SpecialMesh",game.Workspace[plr]["Left Leg"])
	rl = Instance.new("SpecialMesh",game.Workspace[plr]["Right Leg"])
	while true do
		wait(0.1)
		h.MeshType = meshes[math.random(1,#meshes)]
		h.Parent.BrickColor = BrickColor.Random()
		t.MeshType = meshes[math.random(1,#meshes)]
		t.Parent.BrickColor = BrickColor.Random()
		la.MeshType = meshes[math.random(1,#meshes)]
		la.Parent.BrickColor = BrickColor.Random()
		ra.MeshType = meshes[math.random(1,#meshes)]
		ra.Parent.BrickColor = BrickColor.Random()
		ll.MeshType = meshes[math.random(1,#meshes)]
		ll.Parent.BrickColor = BrickColor.Random()
		rl.MeshType = meshes[math.random(1,#meshes)]
		rl.Parent.BrickColor = BrickColor.Random()
	end
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Set Walkspeed"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Set Walkspeed"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = frame.Settings.Page2["Walkspeed Amount"].TextBox.Text
end)

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.805, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = localp
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.805, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local page4 = Instance.new("Frame")
page4.Parent = frame
page4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
page4.BorderColor3 = Color3.fromRGB(255, 0, 0)
page4.BorderSizePixel = 3.000
page4.Name = "Page4"
page4.Position = UDim2.new(0.000, 0, 0.226, 0)
page4.Size = UDim2.new(1.000, 0, 0.774, 0)
page4.ZIndex = 2
page4.Visible = false

local psd = Instance.new("Frame")
psd.Parent = page4
psd.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
psd.BorderColor3 = Color3.fromRGB(255, 0, 0)
psd.BorderSizePixel = 3
psd.Name = "Preset Skybox/Decal IDs"
psd.Position = UDim2.new(0.000, 0, 0.000, 0)
psd.Size = UDim2.new(0.500, 0, 1.000, 0)
psd.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = psd
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Preset Skybox/Decal IDs"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Team c00lkidd Logo 1"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Team c00lkidd\nLogo 1"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 158118263
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Team c00lkidd Logo 2"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Team\nc00lkidd Logo 2"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 164661730
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Thomas"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Thomas"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 160456772
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "c00lkidd"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "c00lkidd"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 157755295
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "team skrubl0rd"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "old team\nskrubl0rdz"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Skybox/Decal ID"].TextBox.Text = 358313209
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.805, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = psd
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.805, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local pmi = Instance.new("Frame")
pmi.Parent = page4
pmi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
pmi.BorderColor3 = Color3.fromRGB(255, 0, 0)
pmi.BorderSizePixel = 3
pmi.Name = "Preset Music IDs"
pmi.Position = UDim2.new(0.500, 0, 0.000, 0)
pmi.Size = UDim2.new(0.500, 0, 1.000, 0)
pmi.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = pmi
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Preset Music IDs"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Chop Suey"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 147407900
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Electro Sp00k"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Electro Sp00k"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 142930454
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Scream"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Scream"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 138097458
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Wonga"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Wonga"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Music ID"].TextBox.Text = 147909316
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = pmi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local page5 = Instance.new("Frame")
page5.Parent = frame
page5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
page5.BorderColor3 = Color3.fromRGB(255, 0, 0)
page5.BorderSizePixel = 3.000
page5.Name = "Page5"
page5.Position = UDim2.new(0.000, 0, 0.226, 0)
page5.Size = UDim2.new(1.000, 0, 0.774, 0)
page5.ZIndex = 2
page5.Visible = false

local pgi = Instance.new("Frame")
pgi.Parent = page5
pgi.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
pgi.BorderColor3 = Color3.fromRGB(255, 0, 0)
pgi.BorderSizePixel = 3
pgi.Name = "Preset Gear IDs"
pgi.Position = UDim2.new(0.000, 0, 0.000, 0)
pgi.Size = UDim2.new(0.500, 0, 1.000, 0)
pgi.ZIndex = 2

local title = Instance.new("TextLabel")
title.Parent = pgi
title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
title.BorderColor3 = Color3.fromRGB(255, 0, 0)
title.BorderSizePixel = 3
title.Name = "Title"
title.Size = UDim2.new(1.000, 0, 0.100, 0)
title.ZIndex = 2
title.Font = "SourceSansBold"
title.FontSize = "Size10"
title.Text = "Preset Gear IDs"
title.TextColor3 = Color3.fromRGB(255, 255, 255)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Airstrike"
button.Position = UDim2.new(0.000, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Airstrike"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 88885539
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Dual Darkhearts"
button.Position = UDim2.new(0.500, 0, 0.115, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Dual Darkhearts"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 108149175
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Dual Venomshanks"
button.Position = UDim2.new(0.000, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Dual\nVenomshanks"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 158069180
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Ghostfire\nSword"
button.Position = UDim2.new(0.500, 0, 0.230, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Ghostfire Sword"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 64220933
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Gravity Coil"
button.Position = UDim2.new(0.000, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Gravity Coil"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 16688968
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Hyperbike"
button.Position = UDim2.new(0.500, 0, 0.345, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Hyperbike"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 130113061
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Icedagger"
button.Position = UDim2.new(0.000, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Icedagger"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 83704165
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Linked Sword"
button.Position = UDim2.new(0.500, 0, 0.460, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Linked Sword"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	frame.Settings.Page1["Custom Gear ID"].TextBox.Text = 125013769
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.575, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true
button.MouseButton1Down:connect(function()
	
end)

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.500, 0, 0.690, 0)
button.Size = UDim2.new(0.500, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = "Size10"
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local button = Instance.new("TextButton")
button.Parent = pgi
button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
button.BorderColor3 = Color3.fromRGB(255, 0, 0)
button.BorderSizePixel = 3
button.Name = "Empty"
button.Position = UDim2.new(0.000, 0, 0.805, 0)
button.Size = UDim2.new(0.480, 0, 0.100, 0)
button.ZIndex = 2
button.Font = "SourceSans"
button.FontSize = 3
button.Text = "Empty"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextWrapped = true

local edn = Instance.new("Frame")
edn.Parent = page5
edn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
edn.BorderColor3 = Color3.fromRGB(255, 0, 0)
edn.BorderSizePixel = 3
edn.Name = "End"
edn.Position = UDim2.new(0.500, 0, 0.000, 0)
edn.Size = UDim2.new(0.500, 0, 1.000, 0)
edn.ZIndex = 2

local t3xt = Instance.new("TextLabel")
t3xt.Parent = edn
t3xt.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
t3xt.BorderColor3 = Color3.fromRGB(255, 0, 0)
t3xt.BorderSizePixel = 3
t3xt.Name = "Empty"
t3xt.Position = UDim2.new(0.000, 0, 0.000, 0)
t3xt.Size = UDim2.new(1.000, 0, 1.000, 0)
t3xt.ZIndex = 2
t3xt.Font = "SourceSans"
t3xt.FontSize = "Size10"
t3xt.Text = "Thank you for using c00lgui\nscripted! Addons coming\nsoon! Post Ideas in the\nThread!!!"
t3xt.TextColor3 = Color3.fromRGB(255, 255, 255)
t3xt.TextWrapped = true
t3xt.TextYAlignment = "Top"

local left = Instance.new("TextButton")
left.Parent = frame
left.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
left.BorderColor3 = Color3.fromRGB(255, 0, 0)
left.BorderSizePixel = 3
left.Name = "<"
left.Position = UDim2.new(0.000, 0, 0.113, 0)
left.Size = UDim2.new(0.500, 0, 0.100, 0)
left.ZIndex = 2
left.Font = "SourceSans"
left.FontSize = "Size48"
left.Text = "<"
left.TextColor3 = Color3.fromRGB(255, 255, 255)
left.MouseButton1Down:connect(function()
	if page1.Visible == true then
		page1.Visible = false
		page5.Visible = true
	elseif page2.Visible == true then
		page2.Visible = false
		page1.Visible = true
	elseif page3.Visible == true then
		page3.Visible = false
		page2.Visible = true
	elseif page4.Visible == true then
		page4.Visible = false
		page3.Visible = true
	elseif page5.Visible == true then
		page5.Visible = false
		page4.Visible = true
	end
end)

local right = Instance.new("TextButton")
right.Parent = frame
right.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
right.BorderColor3 = Color3.fromRGB(255, 0, 0)
right.BorderSizePixel = 3
right.Name = ">"
right.Position = UDim2.new(0.500, 0, 0.113, 0)
right.Size = UDim2.new(0.500, 0, 0.100, 0)
right.ZIndex = 2
right.Font = "SourceSans"
right.FontSize = "Size48"
right.Text = ">"
right.TextColor3 = Color3.fromRGB(255, 255, 255)
right.MouseButton1Down:connect(function()
	if page1.Visible == true then
		page1.Visible = false
		page2.Visible = true
	elseif page2.Visible == true then
		page2.Visible = false
		page3.Visible = true
	elseif page3.Visible == true then
		page3.Visible = false
		page4.Visible = true
	elseif page4.Visible == true then
		page4.Visible = false
		page5.Visible = true
	elseif page5.Visible == true then
		page5.Visible = false
	page1.Visible = true
	end
end)

local cope = Instance.new("TextButton")
cope.Parent = cka
cope.Active = true
cope.AutoButtonColor = true
cope.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
cope.BorderColor3 = Color3.fromRGB(255, 0, 0)
cope.BorderSizePixel = 3.000
cope.Name = "Close/Open"
cope.Position = UDim2.new(0.003, 0, 0.830, 0)
cope.Selectable = true
cope.Size = UDim2.new(0.300, 0, 0.050, 0)
cope.ZIndex = 3
cope.Font = "SourceSans"
cope.FontSize = "Size14"
cope.Text = "Close"
cope.TextColor3 = Color3.new(255, 255, 255)
cope.TextXAlignment = "Center"
cope.TextYAlignment = "Center"
cope.MouseButton1Down:connect(function()
	if cope.Text == "Close" then
		frame.Visible = false
		cope.Text = "Open" else
		frame.Visible = true
		cope.Text = "Close"
	end
end)
