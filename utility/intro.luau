local TweenService = game:GetService("TweenService")

return function(GAME_NAME)
	local gui = Instance.new("ScreenGui")
	gui.Name = "SynapseNotification"
	gui.Parent = game:GetService("CoreGui")
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local frame = Instance.new("Frame")
	frame.Name = "MainFrame"
	frame.Size = UDim2.new(0, 450, 0, 180)
	frame.Position = UDim2.new(0.5, -225, -0.5, 0)
	frame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
	frame.BorderSizePixel = 0
	frame.Rotation = 0
	frame.Parent = gui

	local corner = Instance.new("UICorner")
	corner.CornerRadius = UDim.new(0, 16)
	corner.Parent = frame

	local gradient = Instance.new("UIGradient")
	gradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(35, 35, 50)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 30))
	}
	gradient.Rotation = 45
	gradient.Parent = frame

	local glow = Instance.new("Frame")
	glow.Name = "Glow"
	glow.Size = UDim2.new(1, 8, 1, 8)
	glow.Position = UDim2.new(0.5, -4, 0.5, -4)
	glow.AnchorPoint = Vector2.new(0.5, 0.5)
	glow.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	glow.BackgroundTransparency = 0.6
	glow.BorderSizePixel = 0
	glow.ZIndex = 0
	glow.Parent = frame

	local glowCorner = Instance.new("UICorner")
	glowCorner.CornerRadius = UDim.new(0, 18)
	glowCorner.Parent = glow

	local topBar = Instance.new("Frame")
	topBar.Name = "TopBar"
	topBar.Size = UDim2.new(1, 0, 0, 45)
	topBar.Position = UDim2.new(0, 0, 0, 0)
	topBar.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	topBar.BackgroundTransparency = 0.9
	topBar.BorderSizePixel = 0
	topBar.Parent = frame

	local topBarCorner = Instance.new("UICorner")
	topBarCorner.CornerRadius = UDim.new(0, 16)
	topBarCorner.Parent = topBar

	local topBarGradient = Instance.new("UIGradient")
	topBarGradient.Color = ColorSequence.new{
		ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 130, 255))
	}
	topBarGradient.Rotation = 90
	topBarGradient.Transparency = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0.85),
		NumberSequenceKeypoint.new(1, 0.95)
	}
	topBarGradient.Parent = topBar

	local gameTitle = Instance.new("TextLabel")
	gameTitle.Name = "GameTitle"
	gameTitle.Size = UDim2.new(0, 200, 0, 45)
	gameTitle.Position = UDim2.new(0, 20, 0, 0)
	gameTitle.BackgroundTransparency = 1
	gameTitle.Text = GAME_NAME
	gameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	gameTitle.TextSize = 16
	gameTitle.Font = Enum.Font.GothamBold
	gameTitle.TextXAlignment = Enum.TextXAlignment.Left
	gameTitle.TextTransparency = 1
	gameTitle.Rotation = 0
	gameTitle.Parent = frame

	local line = Instance.new("Frame")
	line.Name = "Line"
	line.Size = UDim2.new(0, 0, 0, 2)
	line.Position = UDim2.new(0, 20, 0, 50)
	line.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	line.BorderSizePixel = 0
	line.BackgroundTransparency = 0.3
	line.Parent = frame

	local iconFrame = Instance.new("Frame")
	iconFrame.Name = "IconFrame"
	iconFrame.Size = UDim2.new(0, 12, 0, 12)
	iconFrame.Position = UDim2.new(0, 20, 0, 70)
	iconFrame.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
	iconFrame.BorderSizePixel = 0
	iconFrame.BackgroundTransparency = 1
	iconFrame.Rotation = 0
	iconFrame.Parent = frame

	local iconCorner = Instance.new("UICorner")
	iconCorner.CornerRadius = UDim.new(1, 0)
	iconCorner.Parent = iconFrame

	local header = Instance.new("TextLabel")
	header.Name = "Header"
	header.Size = UDim2.new(1, -45, 0, 40)
	header.Position = UDim2.new(0, 40, 0, 65)
	header.BackgroundTransparency = 1
	header.Text = "Join discord for more scripts"
	header.TextColor3 = Color3.fromRGB(255, 255, 255)
	header.TextSize = 20
	header.Font = Enum.Font.GothamBold
	header.TextXAlignment = Enum.TextXAlignment.Left
	header.TextTransparency = 1
	header.Parent = frame

	local subtext = Instance.new("TextLabel")
	subtext.Name = "Subtext"
	subtext.Size = UDim2.new(1, -45, 0, 30)
	subtext.Position = UDim2.new(0, 40, 0, 105)
	subtext.BackgroundTransparency = 1
	subtext.Text = "(link copied to clipboard)"
	subtext.TextColor3 = Color3.fromRGB(150, 150, 170)
	subtext.TextSize = 14
	subtext.Font = Enum.Font.Gotham
	subtext.TextXAlignment = Enum.TextXAlignment.Left
	subtext.TextTransparency = 1
	subtext.Parent = frame

	local checkmark = Instance.new("TextLabel")
	checkmark.Name = "Checkmark"
	checkmark.Size = UDim2.new(0, 20, 0, 20)
	checkmark.Position = UDim2.new(1, -35, 0, 108)
	checkmark.BackgroundTransparency = 1
	checkmark.Text = "✓"
	checkmark.TextColor3 = Color3.fromRGB(67, 181, 129)
	checkmark.TextSize = 18
	checkmark.Font = Enum.Font.GothamBold
	checkmark.TextTransparency = 1
	checkmark.Rotation = -90
	checkmark.Parent = frame

	local particles = {}
	for i = 1, 8 do
		local particle = Instance.new("Frame")
		particle.Size = UDim2.new(0, 4, 0, 4)
		particle.Position = UDim2.new(0.5, 0, 0.5, 0)
		particle.AnchorPoint = Vector2.new(0.5, 0.5)
		particle.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
		particle.BorderSizePixel = 0
		particle.BackgroundTransparency = 1
		particle.ZIndex = 10
		particle.Parent = frame
		
		local particleCorner = Instance.new("UICorner")
		particleCorner.CornerRadius = UDim.new(1, 0)
		particleCorner.Parent = particle
		
		table.insert(particles, particle)
	end

	setclipboard('https://discord.gg/wXdsxBGdZx')

	local slideIn = TweenService:Create(
		frame,
		TweenInfo.new(1.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
		{Position = UDim2.new(0.5, -225, 0.5, -90), Rotation = 0}
	)

	local fadeInGameTitle = TweenService:Create(
		gameTitle,
		TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0.8),
		{TextTransparency = 0}
	)

	local spinGameTitle = TweenService:Create(
		gameTitle,
		TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 0.5),
		{Rotation = 0}
	)

	local expandLine = TweenService:Create(
		line,
		TweenInfo.new(0.8, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 0, false, 1),
		{Size = UDim2.new(1, -40, 0, 2)}
	)

	local fadeInIcon = TweenService:Create(
		iconFrame,
		TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 1.2),
		{BackgroundTransparency = 0}
	)

	local fadeInHeader = TweenService:Create(
		header,
		TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 1.3),
		{TextTransparency = 0}
	)

	local fadeInSubtext = TweenService:Create(
		subtext,
		TweenInfo.new(0.6, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 1.5),
		{TextTransparency = 0.3}
	)

	local fadeInCheckmark = TweenService:Create(
		checkmark,
		TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out, 0, false, 1.7),
		{TextTransparency = 0, Rotation = 0}
	)

	local glowPulse = TweenService:Create(
		glow,
		TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true),
		{BackgroundTransparency = 0.85, Size = UDim2.new(1, 16, 1, 16), Rotation = 5}
	)

	local glowSpin = TweenService:Create(
		glow,
		TweenInfo.new(8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1),
		{Rotation = 5}
	)

	local function animateHeaderColor()
		while frame.Parent do
			local colorTween = TweenService:Create(
				header,
				TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{TextColor3 = Color3.fromRGB(150, 160, 255)}
			)
			colorTween:Play()
			wait(3)
			
			local colorTweenBack = TweenService:Create(
				header,
				TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{TextColor3 = Color3.fromRGB(255, 255, 255)}
			)
			colorTweenBack:Play()
			wait(3)
		end
	end

	local function animateIcon()
		while frame.Parent do
			local iconSpin = TweenService:Create(
				iconFrame,
				TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out),
				{Rotation = 360}
			)
			iconSpin:Play()
			
			local iconPulse = TweenService:Create(
				iconFrame,
				TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 16, 0, 16), BackgroundColor3 = Color3.fromRGB(150, 160, 255)}
			)
			iconPulse:Play()
			wait(1)
			
			local iconPulseBack = TweenService:Create(
				iconFrame,
				TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(88, 101, 242), Rotation = 720}
			)
			iconPulseBack:Play()
			wait(1)
		end
	end

	local function animateParticles()
		for i, particle in ipairs(particles) do
			local angle = (i - 1) * (360 / #particles)
			local distance = 100
			
			spawn(function()
				wait(1.8 + (i * 0.05))
				
				local fadeIn = TweenService:Create(
					particle,
					TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.3}
				)
				fadeIn:Play()
				
				while frame.Parent do
					local radians = math.rad(angle)
					local targetX = math.cos(radians) * distance
					local targetY = math.sin(radians) * distance
					
					local moveTween = TweenService:Create(
						particle,
						TweenInfo.new(4, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
						{Position = UDim2.new(0.5, targetX, 0.5, targetY)}
					)
					moveTween:Play()
					
					angle = angle + 90
					wait(4)
				end
			end)
		end
	end

	local function animateGradient()
		while frame.Parent do
			local gradientTween = TweenService:Create(
				gradient,
				TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{Rotation = 225}
			)
			gradientTween:Play()
			wait(5)
			
			local gradientTweenBack = TweenService:Create(
				gradient,
				TweenInfo.new(5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
				{Rotation = 45}
			)
			gradientTweenBack:Play()
			wait(5)
		end
	end

	slideIn:Play()
	fadeInGameTitle:Play()
	spinGameTitle:Play()
	expandLine:Play()
	fadeInIcon:Play()
	fadeInHeader:Play()
	fadeInSubtext:Play()
	fadeInCheckmark:Play()
	glowPulse:Play()
	glowSpin:Play()

	spawn(animateHeaderColor)
	spawn(animateIcon)
	spawn(animateParticles)
	spawn(animateGradient)

	wait(7)

	local spinOut = TweenService:Create(
		frame,
		TweenInfo.new(0.8, Enum.EasingStyle.Exponential, Enum.EasingDirection.In),
		{Position = UDim2.new(0.5, -225, 1.5, 0), Rotation = 1}
	)

	local glowFadeOut = TweenService:Create(
		glow,
		TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
		{BackgroundTransparency = 1}
	)

	spinOut:Play()
	glowFadeOut:Play()
	spinOut.Completed:Connect(function()
		gui:Destroy()
	end)
end 
