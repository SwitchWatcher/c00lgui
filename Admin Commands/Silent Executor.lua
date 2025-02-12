openkey = "y"
closing = false
function doclose()
	if (not closing and not opening) then
		closing = true
		if (exe.Rotation == 0) then
			for i = 0, -360, -20 do
				exe.Rotation = i
				wait()
			end
			exe.Rotation = 0
			for i = 1, 20 do
				exe.Position = exe.Position + UDim2.new(-0.1, 0, 0, 0)
				wait()
			end
			exe.Visible = false
			show.Visible = true
			exe.Position = UDim2.new(0.5, -291, 0.5, -157)
			for _, mpops in pairs(CodeExecutorLocal.Parent:GetChildren()) do
				if (mpops:IsA("ScreenGui") and (mpops.Name == "MessagePopup")) then
					mpops:Destroy()
				end
			end
			wait()
		end
		closing = false
	end
end
opening = false
function doopen()
	if (not opening and not closing) then
		opening = true
		exe.Visible = true
		show.Visible = false
		for i = 0, 360, 20 do
			exe.Rotation = i
			wait()
		end
		exe.Rotation = 0
		if not viewed then
			viewed = true
			wait(3)
			for i = 1, 55 do
				V3Logo.Position = V3Logo.Position + UDim2.new(0, 0, -0.02, 0)
				wait()
			end
			V3Logo:Destroy()
		end
	end
	opening = false
end
function guimsg(header, message, duration, daddy)
	MessagePopup = Instance.new("ScreenGui", daddy)
	MessagePopup.Name = "MessagePopup"
	bg = Instance.new("Frame", MessagePopup)
	bg.Name = "bg"
	bg.Position = UDim2.new(0.5, -200, 0.20000000298023, 0)
	bg.Size = UDim2.new(0, 400, 0, 140)
	bg.BackgroundColor3 = Color3.new(0, 0, 0)
	bg.BorderSizePixel = 0
	bg.Style = Enum.FrameStyle.RobloxRound
	bg.ZIndex = 9
	title = Instance.new("TextBox", bg)
	title.Name = "title"
	title.Size = UDim2.new(1, 0, 0, 50)
	title.BackgroundColor3 = Color3.new(0.66666668653488, 0, 0)
	title.BackgroundTransparency = 1
	title.BorderSizePixel = 0
	title.Text = header
	title.Font = Enum.Font.SourceSansBold
	title.FontSize = Enum.FontSize.Size48
	title.TextScaled = true
	title.TextWrapped = true
	title.TextColor3 = Color3.new(0.66666668653488, 0, 0)
	title.ZIndex = 10
	desc = Instance.new("TextBox", bg)
	desc.Name = "desc"
	desc.Position = UDim2.new(0, 0, 0, 60)
	desc.Size = UDim2.new(1, 0, 0, 50)
	desc.BackgroundColor3 = Color3.new(0.66666668653488, 0, 0)
	desc.BackgroundTransparency = 1
	desc.BorderSizePixel = 0
	desc.Text = message
	desc.Font = Enum.Font.SourceSansBold
	desc.FontSize = Enum.FontSize.Size36
	desc.TextScaled = true
	desc.TextWrapped = true
	desc.TextColor3 = Color3.new(1, 1, 1)
	desc.ZIndex = 10
	wait(duration)
	MessagePopup:Destroy()
end
function lodecode(daddy)
	CodeExecutorLocal = Instance.new("ScreenGui", daddy)
	CodeExecutorLocal.Name = "CodeExecutorLocal"
	exe = Instance.new("Frame", CodeExecutorLocal)
	exe.Name = "exe"
	exe.Position = UDim2.new(0.5, -291, 0.5, -157)
	exe.Size = UDim2.new(0, 600, 0, 300)
	exe.BackgroundColor3 = Color3.new(0, 1, 0)
	exe.BackgroundTransparency = 0.5
	exe.BorderSizePixel = 0
	exe.Visible = false
	exe.Active = true
	exe.ZIndex = 7
	exe.Draggable = true
	run = Instance.new("TextButton", exe)
	run.Name = "run"
	run.Position = UDim2.new(0, 0, 1, -30)
	run.Size = UDim2.new(0, 140, 0, 30)
	run.BackgroundColor3 = Color3.new(1, 1, 1)
	run.BorderSizePixel = 0
	run.Text = "Execute"
	run.Font = Enum.Font.ArialBold
	run.FontSize = Enum.FontSize.Size24
	run.TextColor3 = Color3.new(0, 1, 0)
	run.ZIndex = 10
	clear = Instance.new("TextButton", exe)
	clear.Name = "clear"
	clear.Position = UDim2.new(0, 460, 1, -30)
	clear.Size = UDim2.new(0, 140, 0, 30)
	clear.BackgroundColor3 = Color3.new(1, 1, 1)
	clear.BorderSizePixel = 0
	clear.Text = "Clear"
	clear.Font = Enum.Font.ArialBold
	clear.FontSize = Enum.FontSize.Size24
	clear.TextWrapped = true
	clear.TextColor3 = Color3.new(1, 0, 0)
	clear.ZIndex = 10
	code = Instance.new("TextBox", exe)
	code.Name = "code"
	code.Size = UDim2.new(1, 0, 0.89999997615814, 0)
	code.BackgroundColor3 = Color3.new(0, 0, 0)
	code.BorderSizePixel = 0
	code.Text = 'print(\"Hello Local World!\")'
	code.FontSize = Enum.FontSize.Size11
	code.TextWrapped = true
	code.TextXAlignment = Enum.TextXAlignment.Left
	code.TextYAlignment = Enum.TextYAlignment.Top
	code.TextColor3 = Color3.new(0, 1, 0)
	code.ClearTextOnFocus = false
	code.ZIndex = 8
	hide = Instance.new("TextButton", exe)
	hide.Name = "hide"
	hide.Position = UDim2.new(0.5, -70, 1, -30)
	hide.Size = UDim2.new(0, 140, 0, 30)
	hide.BackgroundColor3 = Color3.new(1, 1, 1)
	hide.BorderSizePixel = 0
	hide.Text = "Hide"
	hide.Font = Enum.Font.ArialBold
	hide.FontSize = Enum.FontSize.Size24
	hide.TextColor3 = Color3.new(0, 0, 0)
	hide.ZIndex = 10
	V3Logo = Instance.new("ImageLabel", exe)
	V3Logo.Name = "V3Logo"
	V3Logo.Position = UDim2.new(0.10000000149012, 0, 0.20000000298023, 0)
	V3Logo.Size = UDim2.new(0.80000001192093, 0, 0.30000001192093, 0)
	V3Logo.BackgroundColor3 = Color3.new(1, 1, 1)
	V3Logo.Image = "rbxassetid://127743025"
	V3Logo.ZIndex = 10
	V3Logo.BackgroundTransparency = 1
	V3Logo.BorderSizePixel = 0
	show = Instance.new("TextButton", CodeExecutorLocal)
	show.Name = "show"
	show.Position = UDim2.new(-0.0099999997764826, 0, 1, -30)
	show.Size = UDim2.new(0, 140, 0, 30)
	show.BackgroundColor3 = Color3.new(1, 1, 1)
	show.BorderSizePixel = 0
	show.Text = "Show "
	show.Font = Enum.Font.ArialBold
	show.FontSize = Enum.FontSize.Size24
	show.TextXAlignment = Enum.TextXAlignment.Right
	show.TextColor3 = Color3.new(0, 1, 0)
	show.ZIndex = 10
	append = Instance.new("TextButton", exe)
	append.Name = "append"
	append.Position = UDim2.new(0.5, -70, 1, 0)
	append.Size = UDim2.new(0, 140, 0, 30)
	append.BackgroundColor3 = Color3.new(1, 1, 1)
	append.BorderColor3 = Color3.new(0.10588235408068, 0.16470588743687, 0.20784313976765)
	append.Text = "Append Code"
	append.Font = Enum.Font.ArialBold
	append.FontSize = Enum.FontSize.Size24
	append.TextColor3 = Color3.new(0, 0, 0)
	append.ZIndex = 10
	nl = Instance.new("TextButton", exe)
	nl.Name = "nl"
	nl.Position = UDim2.new(0.5, -70, 1, 30)
	nl.Size = UDim2.new(0, 140, 0, 30)
	nl.BackgroundColor3 = Color3.new(1, 1, 1)
	nl.Text = "New Line"
	nl.Font = Enum.Font.ArialBold
	nl.FontSize = Enum.FontSize.Size24
	nl.TextColor3 = Color3.new(0, 0, 0)
	nl.ZIndex = 10
end
if pcall(function()
	lodecode(game.CoreGui)
end) then
	hascore = true
else
	pcall(function()
		lodecode(game.Players.LocalPlayer.PlayerGui)
	end)
	hascore = false
end
wait()
savecode = Instance.new("StringValue")
savecode.Parent = exe
savecode.Name = "AppendedCode"
savecode.Value = ""
appe = false
append.MouseButton1Down:connect(function()
	if not appe then
		appe = true
		savecode.Value = savecode.Value .. code.Text
		wait()
		append.Text = "Appended"
		code.Text = ""
		wait(3)
		append.Text = "Append Code"
		appe = false
	end
end)
nl.MouseButton1Down:connect(function()
	code.Text = code.Text .. "\n"
end)
local cl = true
viewed = false
show.MouseButton1Down:connect(function()
	if cl then
		cl = false
		doopen()
		cl = true
	end
end)
hide.MouseEnter:connect(function()
	hide.BackgroundColor3 = Color3.new(1, 0, 0)
end)
hide.MouseLeave:connect(function()
	hide.BackgroundColor3 = Color3.new(1, 1, 1)
end)
run.MouseEnter:connect(function()
	run.BackgroundColor3 = Color3.new(0, 1, 0)
	run.TextColor3 = Color3.new(1, 1, 1)
end)
run.MouseLeave:connect(function()
	run.BackgroundColor3 = Color3.new(1, 1, 1)
	run.TextColor3 = Color3.new(0, 1, 0)
end)
clear.MouseEnter:connect(function()
	clear.BackgroundColor3 = Color3.new(1, 0, 0)
	clear.TextColor3 = Color3.new(1, 1, 1)
end)
clear.MouseLeave:connect(function()
	clear.BackgroundColor3 = Color3.new(1, 1, 1)
	clear.TextColor3 = Color3.new(1, 0, 0)
end)
clear.MouseButton1Down:connect(function()
	code.Text = ""
	savecode.Value = ""
end)
show.MouseEnter:connect(function()
	show.BackgroundColor3 = Color3.new(0, 1, 0)
	show.TextColor3 = Color3.new(1, 1, 1)
end)
show.MouseLeave:connect(function()
	show.BackgroundColor3 = Color3.new(1, 1, 1)
	show.TextColor3 = Color3.new(0, 1, 0)
end)
cl2 = true
hide.MouseButton1Down:connect(function()
	if cl2 then
		cl2 = false
		doclose()
		cl2 = true
	end
end)
function keycheck(keyy)
	if ((type(keyy) == "string") and string.byte(string.lower(keyy))) then
		return string.lower(keyy)
	else
		return false
	end
end
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
	if (not opening and not closing) then
		if (keycheck(key) == openkey) then
			running = true
			if exe.Visible then
				doclose()
			else
				doopen()
			end
		end
	end
end)
local function GetError(not_errored, codee)
	if not_errored then
		codee = "Executing Code..."
	end
	for _, mpops in pairs(CodeExecutorLocal.Parent:GetChildren()) do
		if (mpops:IsA("ScreenGui") and (mpops.Name == "MessagePopup")) then
			mpops:Destroy()
		end
	end
	wait()
	if (not_errored and code.Text:match("%S+") and savecode.Value:match("%S")) then
		guimsg("Vermillion: ", codee, 3, CodeExecutorLocal.Parent)
	elseif (not code.Text:match("%S+") and not savecode.Value:match("%S+")) then
		guimsg("Error:", "Did not enter code.", 3, CodeExecutorLocal.Parent)
	else
		guimsg("Error:", codee, 3, CodeExecutorLocal.Parent)
	end
end
deb = true
run.MouseButton1Down:connect(function()
	if deb then
		deb = false
		coroutine.resume(coroutine.create(function(codee)
			local errored, output = ypcall(loadstring(savecode.Value .. code.Text))
			GetError(errored, output)
			errored, output = nil
		end), codee)
		wait(1)
		deb = true
	end
end)
