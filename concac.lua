local Library = {}
local Tween = game:GetService('TweenService')
function Library:CreateMain(Name)
for _,v in pairs(game:GetService('CoreGui'):GetDescendants()) do
    if v:IsA('IntValue') and v.Name == 'Ngu' then
        v.Parent.Parent:Destroy()
    end
end
   

local UIS = game:GetService("UserInputService");
local Heartbeat = game:GetService("RunService").Heartbeat;
 
local dragger = {};
 
    do
        local mouse        = game:GetService("Players").LocalPlayer:GetMouse();
        local inputService = game:GetService('UserInputService');
        local heartbeat    = game:GetService("RunService").Heartbeat;
 
        -- // credits to Ririchi / Inori for this cute drag function :)
        function dragger.new(frame, secondlol)
            frame.Active = true;
            secondlol.Active = true;
           
            secondlol.MouseLeave:connect(function()
                IsInFrame = false;
            end)
 
            secondlol.MouseEnter:connect(function()
                IsInFrame = true;
            end)
 
            local input = secondlol.InputBegan:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 and IsInFrame then
                    local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
                    while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        pcall(function()
                            frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Linear', 0.01, true);
                        end)
                    end
                end
            end)
        end
    end
    Library.gui = Instance.new("ScreenGui")
    Library.gui.Parent = game:WaitForChild('CoreGui')
    Library.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Library.gui.Name = game:GetService("HttpService"):GenerateGUID(false):lower():sub(1, 10);
    Library.toggled = true
 
    game:GetService('UserInputService').InputBegan:connect(function(key, gpe)
        --if (not gpe) then
            if key.KeyCode == Enum.KeyCode.RightShift and Library.gui then
                Library.toggled = not Library.toggled;
                Library.gui.Enabled = Library.toggled;
            end
        --end
    end)
 
 
local MainFRame = Instance.new("ImageLabel")
local Tabline = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local TitleFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local Underline = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local TabFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local ContainerFrame = Instance.new("Frame")
local ContainerFolder = Instance.new("Folder")
local UIpage = Instance.new("UIPageLayout")

MainFRame.Name = "MainFRame"
MainFRame.Parent = Library.gui
MainFRame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFRame.BackgroundTransparency = 1.000
MainFRame.Position = UDim2.new(0.366440475, 0, 0.283783793, 0)
MainFRame.Size = UDim2.new(0, 500, 0, 250)
MainFRame.Image = "rbxassetid://3570695787"
MainFRame.ImageColor3 = Color3.fromRGB(58, 58, 58)
MainFRame.ScaleType = Enum.ScaleType.Slice
MainFRame.SliceCenter = Rect.new(100, 100, 100, 100)
MainFRame.SliceScale = 0.050
MainFRame.ClipsDescendants = true

Tabline.Name = "Tabline"
Tabline.Parent = MainFRame
Tabline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabline.BorderSizePixel = 0
Tabline.Position = UDim2.new(0.25, 0, 0, 25)
Tabline.Size = UDim2.new(0, 2, 1, -25)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(26, 75, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 131, 255))}
UIGradient.Parent = Tabline

TitleFrame.Name = "TitleFrame"
TitleFrame.Parent = MainFRame
TitleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleFrame.BackgroundTransparency = 1.000
TitleFrame.Size = UDim2.new(0, 500, 0, 25)

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = TitleFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Position = UDim2.new(0, 5, 0, 0)
TitleLabel.Size = UDim2.new(0, 200, 0, 25)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextSize = 14.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
TitleLabel.Text = Name

Underline.Name = "Underline"
Underline.Parent = MainFRame
Underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Underline.BorderSizePixel = 0
Underline.Position = UDim2.new(2.98023224e-08, 0, 0, 25)
Underline.Size = UDim2.new(1, 0, 0, 2)

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(26, 75, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 131, 255))}
UIGradient_2.Parent = Underline

TabFrame.Name = "TabFrame"
TabFrame.Parent = MainFRame
TabFrame.Active = true
TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TabFrame.BackgroundTransparency = 1.000
TabFrame.Position = UDim2.new(0, 0, 0.140000001, 0)
TabFrame.Size = UDim2.new(0, 125, 1, -35)
TabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
TabFrame.ScrollBarThickness = 0

UIListLayout.Parent = TabFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

ContainerFrame.Name = "ContainerFrame"
ContainerFrame.Parent = MainFRame
ContainerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContainerFrame.BackgroundTransparency = 1.000
ContainerFrame.Position = UDim2.new(0.254000008, 0, 0.140000001, 0)
ContainerFrame.Size = UDim2.new(1, -127, 1, -35)
ContainerFrame.ClipsDescendants = true

ContainerFolder.Name = "ContainerFolder"
ContainerFolder.Parent = ContainerFrame

UIpage.Name = 'UIpage'
UIpage.Parent = ContainerFolder
UIpage.SortOrder = Enum.SortOrder.LayoutOrder
UIpage.EasingStyle = Enum.EasingStyle.Quart
UIpage.FillDirection = Enum.FillDirection.Vertical
UIpage.TweenTime = 0.500
	
dragger.new(MainFRame,MainFRame)
	
local bulonlaohac = {}

local LayoutOrder = - 1
 
function bulonlaohac:CreateTab(Name)
	LayoutOrder = LayoutOrder + 1
local Container = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new('UIListLayout')
		
UIListLayout.Parent = Container
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)
		
Container.Name = Name.."Container"
Container.Parent = ContainerFolder
Container.Active = true
Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(0.254000008, 0, 0.140000001, 0)
Container.Size = UDim2.new(1, 0, 1, 0)
Container.CanvasSize = UDim2.new(0, 0, 0, 0)
Container.ScrollBarThickness = 5
Container.ClipsDescendants = true
Container.LayoutOrder = LayoutOrder

local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local ButtonImage = Instance.new("ImageLabel")


Frame.Parent = TabFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(0, 115, 0, 20)
Frame.Name = Name..'TabFrame'

Button.Name = Name.."Button"
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Button.BackgroundTransparency = 1.000
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 115, 0, 20)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000
Button.Text = Name

ButtonImage.Name = "ButtonImage"
ButtonImage.Parent = Frame
ButtonImage.Active = true
ButtonImage.AnchorPoint = Vector2.new(0.5, 0.5)
ButtonImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonImage.BackgroundTransparency = 1.000
ButtonImage.Position = UDim2.new(0.5, 0, 0.5, 0)
ButtonImage.Selectable = true
ButtonImage.Size = UDim2.new(1, 0, 1, 0)
ButtonImage.Image = "rbxassetid://3570695787"
ButtonImage.ImageColor3 = Color3.fromRGB(38, 38, 38)
ButtonImage.ScaleType = Enum.ScaleType.Slice
ButtonImage.SliceCenter = Rect.new(100, 100, 100, 100)
ButtonImage.SliceScale = 0.050

		
Button.MouseButton1Click:Connect(function()
			if Button.Name == Name..'Button' then
				for i,v in pairs(ContainerFolder:GetChildren()) do
					if not (v:IsA('UIListLayout')) then
					if v.Name == Name..'Container' then
						UIpage:JumpToIndex(Container.LayoutOrder)
				end
			end
		end
	end
		end)
		
		
		local bumiengkoem = {}
		
		
			bulonlaohac.Container = Container
size = size or 0 
function bumiengkoem:Resize()
        local count = 0
        for i,v in pairs(Container:GetChildren()) do
            if not v:IsA('UIListLayout') then
                count = count + 1
            end
			        end
			Container.CanvasSize = UDim2.new(0, 0, 0, count * 25 );
			local clampedSize
			local scrollSize
			if count * 25 > 215 then
    		clampedSize = UDim2.new(1, -127, 0, 215)
			scrollSize = 5;
			local Size = UDim2.new(1, 0, 0, 215)
			Container.Size = Size
			Container.CanvasSize = UDim2.new(0, 0, 0, count * 25 );
				Container.ScrollBarThickness = scrollSize
				local cancassizevailon = Container.CanvasSize.Y.Offset
			end
    end
		
		function bumiengkoem:Toggle(Name,callback)
			
local Toggled = false
			
local ToggleFrame = Instance.new("Frame")
local ToggleName = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local ToggledIcon = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

ToggleFrame.Name = Name.."ToggleFrame"
ToggleFrame.Parent = Container
ToggleFrame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ToggleFrame.BackgroundTransparency = 1.000
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Size = UDim2.new(1, -23, 0, 20)

ToggleName.Name = "ToggleName"
ToggleName.Parent = ToggleFrame
ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName.BackgroundTransparency = 1.000
ToggleName.Position = UDim2.new(0, 5, 0, 0)
ToggleName.Size = UDim2.new(1, -30, 1, 0)
ToggleName.Font = Enum.Font.GothamBold
ToggleName.Text = Name
ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName.TextSize = 14.000
ToggleName.TextXAlignment = Enum.TextXAlignment.Left

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleFrame
ToggleButton.AnchorPoint = Vector2.new(1, 0.5)
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundTransparency = 1.000
ToggleButton.Position = UDim2.new(1, 0, 0.5, 0)
ToggleButton.Size = UDim2.new(0, 20, 1, 0)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.TextSize = 14.000

ToggledIcon.Name = "ToggledIcon"
ToggledIcon.Parent = ToggleButton
ToggledIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ToggledIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggledIcon.BackgroundTransparency = 1.000
ToggledIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
ToggledIcon.Size = UDim2.new(1, 0, 1, 0)
ToggledIcon.Image = "rbxassetid://3570695787"
ToggledIcon.ImageColor3 = Color3.fromRGB(31, 31, 31)
ToggledIcon.ScaleType = Enum.ScaleType.Slice
ToggledIcon.SliceCenter = Rect.new(100, 100, 100, 100)
ToggledIcon.SliceScale = 0.050

TextLabel.Parent = ToggledIcon
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
			
			ToggleButton.MouseButton1Click:Connect(function()
				Toggled = not Toggled
				iconcolor = Toggled and Color3.fromRGB(39, 220, 115) or Color3.fromRGB(31,31,31)
				texts = Toggled and utf8.char(10003) or ""
				Tween:Create(ToggledIcon, TweenInfo.new(0.25), {ImageColor3 = iconcolor}):Play()
				TextLabel.Text = texts
				callback(Toggled)
			end)	
			self:Resize()
		end
		
		function bumiengkoem:Button(Name,Callback)
local ButtonFrame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local ButtonIcon = Instance.new("ImageLabel")

ButtonFrame.Name = Name.."ButtonFrame"
ButtonFrame.Parent = Container
ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonFrame.BackgroundTransparency = 1.000
ButtonFrame.Size = UDim2.new(1, -23, 0, 20)

Button.Name = "Button"
Button.Parent = ButtonFrame
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 5, 0, 0)
Button.Size = UDim2.new(1, -5, 1, 0)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000
Button.TextXAlignment = Enum.TextXAlignment.Left
Button.Text = Name

ButtonIcon.Name = "ButtonIcon"
ButtonIcon.Parent = ButtonFrame
ButtonIcon.Active = true
ButtonIcon.AnchorPoint = Vector2.new(1, 0.5)
ButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonIcon.BackgroundTransparency = 1.000
ButtonIcon.Position = UDim2.new(1, 0, 0.5, 0)
ButtonIcon.Selectable = true
ButtonIcon.Size = UDim2.new(1, 0, 1, 0)
ButtonIcon.Image = "rbxassetid://3570695787"
ButtonIcon.ImageColor3 = Color3.fromRGB(38, 38, 38)
ButtonIcon.ScaleType = Enum.ScaleType.Slice
ButtonIcon.SliceCenter = Rect.new(100, 100, 100, 100)
ButtonIcon.SliceScale = 0.050
			
local function asdbf()
local Gay = Instance.new("ImageLabel")
Gay.Name = "Gay"
Gay.Parent = ButtonIcon
Gay.Active = true
Gay.AnchorPoint = Vector2.new(0, 0)
Gay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gay.BackgroundTransparency = 1.000
Gay.Position = UDim2.new(0, 0, 0, 0)
Gay.Selectable = true
Gay.Size = UDim2.new(0, 0, 1, 0)
Gay.Image = "rbxassetid://3570695787"
Gay.ImageTransparency = 1.000
Gay.ScaleType = Enum.ScaleType.Slice
Gay.SliceCenter = Rect.new(100, 100, 100, 100)
Gay.ZIndex = 1
Gay.SliceScale = 0.050

Gay:TweenSize(UDim2.new(1,0,1,0))
local UIGradient_2 = Instance.new('UIGradient')			
UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(26, 75, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 131, 255))}
UIGradient_2.Parent = Gay
				
for i=0,20 do wait(0.0020)
	i = i + 1
	Gay.ImageTransparency = i/20
end
Gay:Destroy()
end
			
Button.MouseButton1Click:Connect(function()
local ngivai = coroutine.wrap(asdbf)
ngivai()
Callback()
end)		
			self:Resize()
		end
		
		function bumiengkoem:Label(Name)
			local LabelFrame = Instance.new("Frame")
local LabelName = Instance.new("TextLabel")
local Labelicon = Instance.new("ImageLabel")

LabelFrame.Name = Name.."LabelFrame"
LabelFrame.Parent = Container
LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelFrame.BackgroundTransparency = 1.000
LabelFrame.Size = UDim2.new(1, -23, 0, 20)

LabelName.Name = "LabelName"
LabelName.Parent = LabelFrame
LabelName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelName.BackgroundTransparency = 1.000
LabelName.BorderSizePixel = 0
LabelName.Position = UDim2.new(0, 5, 0, 0)
LabelName.Size = UDim2.new(1, -5, 1, 0)
LabelName.ZIndex = 2
LabelName.Font = Enum.Font.GothamBold
LabelName.TextColor3 = Color3.fromRGB(255, 255, 255)
LabelName.TextSize = 14.000
LabelName.TextXAlignment = Enum.TextXAlignment.Left
LabelName.Text = Name

Labelicon.Name = "Labelicon"
Labelicon.Parent = LabelFrame
Labelicon.AnchorPoint = Vector2.new(1, 0.5)
Labelicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Labelicon.BackgroundTransparency = 1.000
Labelicon.Position = UDim2.new(1, 0, 0.5, 0)
Labelicon.Size = UDim2.new(1, 0, 1, 0)
Labelicon.Image = "rbxassetid://3570695787"
Labelicon.ImageColor3 = Color3.fromRGB(38, 38, 38)
Labelicon.ScaleType = Enum.ScaleType.Slice
Labelicon.SliceCenter = Rect.new(100, 100, 100, 100)
			Labelicon.SliceScale = 0.050
			self:Resize()

			local label = {Text = Name}

			function label:SetText(text)
				LabelName.Text = text
			end

			return label

		end
		
		function bumiengkoem:Box(Name,Callback)
			local BoxFrame = Instance.new("Frame")
local Box = Instance.new("TextBox")
local FolderIcon = Instance.new("ImageLabel")

BoxFrame.Name = "BoxFrame"
BoxFrame.Parent = Container
BoxFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
BoxFrame.BackgroundTransparency = 1.000
BoxFrame.Position = UDim2.new(0, 0, 0.397727281, 0)
BoxFrame.Size = UDim2.new(1, -23, 0, 20)

Box.Name = "Box"
Box.Parent = BoxFrame
Box.AnchorPoint = Vector2.new(0.5, 0.5)
Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box.BackgroundTransparency = 1.000
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.5, 3, 0.5, 0)
Box.Size = UDim2.new(1, -3, 1, 0)
Box.ZIndex = 2
Box.ClearTextOnFocus = false
Box.Font = Enum.Font.SourceSansBold
Box.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Box.PlaceholderText = Name
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Box.TextSize = 16.000
Box.TextXAlignment = Enum.TextXAlignment.Left

FolderIcon.Name = "FolderIcon"
FolderIcon.Parent = BoxFrame
FolderIcon.AnchorPoint = Vector2.new(0.5, 0)
FolderIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FolderIcon.BackgroundTransparency = 1.000
FolderIcon.Position = UDim2.new(0.5, 0, 0, 0)
FolderIcon.Size = UDim2.new(1, 0, 0, 20)
FolderIcon.Image = "rbxassetid://3570695787"
FolderIcon.ImageColor3 = Color3.fromRGB(38, 38, 38)
FolderIcon.ScaleType = Enum.ScaleType.Slice
FolderIcon.SliceCenter = Rect.new(100, 100, 100, 100)
FolderIcon.SliceScale = 0.050
			
			Box.FocusLost:Connect(function()
			Callback(tostring(Box.Text))
			end)	
			self:Resize()
		end
		
		function bumiengkoem:Slider(Name,min,max,Callback)
			
local SliderFrame = Instance.new("Frame")
local SliderName = Instance.new("TextLabel")
local BarFrame = Instance.new("ImageLabel")
local Bar = Instance.new("ImageLabel")
local SliderButton = Instance.new("TextButton")
local ButtonIcon = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local SliderValue = Instance.new("TextLabel")
local SliderValueFrame = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local Labelicon = Instance.new("ImageLabel")


SliderFrame.Name = "SliderFrame"
SliderFrame.Parent = Container
SliderFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
SliderFrame.BackgroundTransparency = 1.000
SliderFrame.BorderSizePixel = 0
SliderFrame.Position = UDim2.new(0, 0, 0.594377518, 0)
SliderFrame.Size = UDim2.new(1, -23, 0, 20)

SliderName.Name = "SliderName"
SliderName.Parent = SliderFrame
SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderName.BackgroundTransparency = 1.000
SliderName.Position = UDim2.new(0, 5, 0, 0)
SliderName.Size = UDim2.new(0.114285715, 40, 1, 0)
SliderName.ZIndex = 2
SliderName.Font = Enum.Font.GothamBold
SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderName.TextSize = 14.000
SliderName.TextWrapped = true
SliderName.TextXAlignment = Enum.TextXAlignment.Left
SliderName.Text = Name
if string.len(SliderName.Text) > 10 then 
	SliderName.TextScaled = true
end

BarFrame.Name = "BarFrame"
BarFrame.Parent = SliderFrame
BarFrame.AnchorPoint = Vector2.new(1, 0.5)
BarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BarFrame.BackgroundTransparency = 1.000
BarFrame.Position = UDim2.new(1, -10, 0.5, 0)
BarFrame.Size = UDim2.new(1, -100, 0, 5)
BarFrame.ZIndex = 2
BarFrame.Image = "rbxassetid://3570695787"
BarFrame.ScaleType = Enum.ScaleType.Slice
BarFrame.SliceCenter = Rect.new(100, 100, 100, 100)
BarFrame.SliceScale = 0.370

Bar.Name = "Bar"
Bar.Parent = BarFrame
Bar.AnchorPoint = Vector2.new(0, 1)
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 1.000
Bar.Position = UDim2.new(0, 0, 1, 0)
Bar.Size = UDim2.new(0, 0, 1, 0)
Bar.ZIndex = 2
Bar.Image = "rbxassetid://3570695787"
Bar.ScaleType = Enum.ScaleType.Slice
Bar.SliceCenter = Rect.new(100, 100, 100, 100)
Bar.SliceScale = 0.370

SliderButton.Name = "SliderButton"
SliderButton.Parent = Bar
SliderButton.AnchorPoint = Vector2.new(0, 0.5)
SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderButton.BackgroundTransparency = 1.000
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(1, 0, 0.5, 0)
SliderButton.Size = UDim2.new(0, 12, 0, 12)
SliderButton.ZIndex = 2
SliderButton.Font = Enum.Font.SourceSans
SliderButton.Text = ""
SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SliderButton.TextSize = 14.000

ButtonIcon.Name = "ButtonIcon"
ButtonIcon.Parent = SliderButton
ButtonIcon.Active = true
ButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonIcon.BackgroundTransparency = 1.000
ButtonIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
ButtonIcon.Selectable = true
ButtonIcon.Size = UDim2.new(1, 0, 1, 0)
ButtonIcon.ZIndex = 2
ButtonIcon.Image = "rbxassetid://3570695787"
ButtonIcon.ScaleType = Enum.ScaleType.Slice
ButtonIcon.SliceCenter = Rect.new(100, 100, 100, 100)

Icon.Name = "Icon"
Icon.Parent = SliderButton
Icon.AnchorPoint = Vector2.new(0.5, 0)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0, -5)
Icon.Rotation = 90.000
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.ZIndex = 3
Icon.Image = "http://www.roblox.com/asset/?id=4765412721"
Icon.ImageColor3 = Color3.fromRGB(26, 26, 26)
Icon.ImageTransparency = 1.000

SliderValue.Name = "SliderValue"
SliderValue.Parent = SliderButton
SliderValue.AnchorPoint = Vector2.new(0.5, 0)
SliderValue.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
SliderValue.BackgroundTransparency = 1.000
SliderValue.BorderSizePixel = 0
SliderValue.Position = UDim2.new(0.5, 0, 0, -20)
SliderValue.Size = UDim2.new(0, 50, 0, 20)
SliderValue.ZIndex = 3
SliderValue.Font = Enum.Font.GothamBold
SliderValue.Text = ""
SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderValue.TextSize = 12.000
SliderValue.TextTransparency = 1.000

SliderValueFrame.Name = "SliderValueFrame"
SliderValueFrame.Parent = SliderButton
SliderValueFrame.AnchorPoint = Vector2.new(0.5, 0)
SliderValueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderValueFrame.BackgroundTransparency = 1.000
SliderValueFrame.Position = UDim2.new(0.5, 0, -1, -8)
SliderValueFrame.Size = UDim2.new(0, 50, 0, 20)
SliderValueFrame.ZIndex = 2
SliderValueFrame.Image = "rbxassetid://3570695787"
SliderValueFrame.ImageColor3 = Color3.fromRGB(26, 26, 26)
SliderValueFrame.ImageTransparency = 1.000
SliderValueFrame.ScaleType = Enum.ScaleType.Slice
SliderValueFrame.SliceCenter = Rect.new(100, 100, 100, 100)
SliderValueFrame.SliceScale = 0.050

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(26, 75, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 131, 255))}
UIGradient.Parent = Bar

Labelicon.Name = "Labelicon"
Labelicon.Parent = SliderFrame
Labelicon.AnchorPoint = Vector2.new(1, 0.5)
Labelicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Labelicon.BackgroundTransparency = 1.000
Labelicon.Position = UDim2.new(1, 0, 0.5, 0)
Labelicon.Size = UDim2.new(1, 0, 1, 0)
Labelicon.Image = "rbxassetid://3570695787"
Labelicon.ImageColor3 = Color3.fromRGB(38, 38, 38)
Labelicon.ScaleType = Enum.ScaleType.Slice
Labelicon.SliceCenter = Rect.new(100, 100, 100, 100)
Labelicon.SliceScale = 0.050
			
minvalue = min or 0
maxvalue = max or 100

Callback = Callback or function() end

local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
local Value;

SliderValue.Text = minvalue


SliderButton.MouseButton1Down:Connect(function()
    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 240) * Bar.AbsoluteSize.X) + tonumber(minvalue)) or 0
    pcall(function()
        Callback(Value)
    end)
    Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 240), 0, 5)
    moveconnection = mouse.Move:Connect(function()
        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 240) * Bar.AbsoluteSize.X) + tonumber(minvalue))
        pcall(function()
            Callback(Value)
        end)
		SliderValue.Text = Value
        Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 240), 0, 5)
    end)
    releaseconnection = uis.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 240) * Bar.AbsoluteSize.X) + tonumber(minvalue))
            pcall(function()
                Callback(Value)
            end)
            Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 240), 0, 5)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
        end
    end)
			end)	
			
			SliderFrame.MouseEnter:Connect(function()
	Tween:Create(Icon, TweenInfo.new(0.25), {ImageTransparency = 0}):Play()
	Tween:Create(SliderValueFrame, TweenInfo.new(0.25), {ImageTransparency = 0}):Play()
	Tween:Create(SliderValue, TweenInfo.new(0.25), {TextTransparency = 0}):Play()
end)

SliderFrame.MouseLeave:Connect(function()
	Tween:Create(Icon, TweenInfo.new(0.25), {ImageTransparency = 1}):Play()
	Tween:Create(SliderValueFrame, TweenInfo.new(0.25), {ImageTransparency = 1}):Play()
	Tween:Create(SliderValue, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
end)
		self:Resize()	
		end
		
		function bumiengkoem:Dropdown(Name,List,Callback)
			

local DropdownFrame = Instance.new("Frame")
local Dropdowntitle = Instance.new("TextLabel")
local DropdownButton = Instance.new("TextButton")
local Dropdownicon = Instance.new("ImageLabel")
local Dropdowniamge = Instance.new("ImageLabel")
local DropdownContainer = Instance.new("Frame")
local Dropdowniamge_2 = Instance.new("ImageLabel")
local IndropdownContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Dropdowntitleframe = Instance.new("Frame")
local Titlecontainer = Instance.new("TextLabel")


DropdownFrame.Name =Name.. "DropdownFrame"
DropdownFrame.Parent = Container
DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownFrame.BackgroundTransparency = 1.000
DropdownFrame.ClipsDescendants = true
DropdownFrame.Position = UDim2.new(0.0308310986, 0, 0.627906978, 0)
DropdownFrame.Size = UDim2.new(1, -23, 0, 20)
DropdownFrame.ZIndex = 2

Dropdowntitle.Name = "Dropdowntitle"
Dropdowntitle.Parent = DropdownFrame
Dropdowntitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowntitle.BackgroundTransparency = 1.000
Dropdowntitle.Position = UDim2.new(0, 5, 0, 0)
Dropdowntitle.Size = UDim2.new(1, -25, 0, 20)
Dropdowntitle.ZIndex = 2
Dropdowntitle.Font = Enum.Font.GothamBold
Dropdowntitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Dropdowntitle.TextSize = 14.000
Dropdowntitle.TextXAlignment = Enum.TextXAlignment.Left
Dropdowntitle.Text = Name

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = DropdownFrame
DropdownButton.AnchorPoint = Vector2.new(1, 0)
DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownButton.BackgroundTransparency = 1.000
DropdownButton.Position = UDim2.new(1, 0, 0, 0)
DropdownButton.Size = UDim2.new(0, 20, 0, 20)
DropdownButton.ZIndex = 2
DropdownButton.Font = Enum.Font.GothamBold
DropdownButton.Text = ""
DropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DropdownButton.TextSize = 14.000

Dropdownicon.Name = "Dropdownicon"
Dropdownicon.Parent = DropdownButton
Dropdownicon.AnchorPoint = Vector2.new(0.5, 0.5)
Dropdownicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdownicon.BackgroundTransparency = 1.000
Dropdownicon.Position = UDim2.new(0.5, 0, 0.5, 0)
Dropdownicon.Size = UDim2.new(1, -4, 1, -4)
Dropdownicon.ZIndex = 2
Dropdownicon.Image = 'rbxassetid://4765412721'

Dropdowniamge.Name = "Dropdowniamge"
Dropdowniamge.Parent = DropdownFrame
Dropdowniamge.AnchorPoint = Vector2.new(0.5, 0)
Dropdowniamge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowniamge.BackgroundTransparency = 1.000
Dropdowniamge.Position = UDim2.new(0.5, 0, 0, 0)
Dropdowniamge.Size = UDim2.new(1, 0, 0, 20)
Dropdowniamge.Image = "rbxassetid://3570695787"
Dropdowniamge.ImageColor3 = Color3.fromRGB(38, 38, 38)
Dropdowniamge.ScaleType = Enum.ScaleType.Slice
Dropdowniamge.SliceCenter = Rect.new(100, 100, 100, 100)
Dropdowniamge.SliceScale = 0.050

DropdownContainer.Name = "DropdownContainer"
DropdownContainer.Parent = DropdownFrame
DropdownContainer.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
DropdownContainer.BorderSizePixel = 0
DropdownContainer.Position = UDim2.new(0, 0, 0, 20)
DropdownContainer.Size = UDim2.new(1, 0, 0, 20)
DropdownContainer.ZIndex = 3

Dropdowniamge_2.Name = "Dropdowniamge"
Dropdowniamge_2.Parent = DropdownContainer
Dropdowniamge_2.AnchorPoint = Vector2.new(0.5, 0)
Dropdowniamge_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowniamge_2.BackgroundTransparency = 1.000
Dropdowniamge_2.Position = UDim2.new(0.5, 0, 0, 0)
Dropdowniamge_2.Size = UDim2.new(1, 0, 1, 0)
Dropdowniamge_2.ZIndex = 3
Dropdowniamge_2.Image = "rbxassetid://3570695787"
Dropdowniamge_2.ImageColor3 = Color3.fromRGB(38, 38, 38)
Dropdowniamge_2.ScaleType = Enum.ScaleType.Slice
Dropdowniamge_2.SliceCenter = Rect.new(100, 100, 100, 100)
Dropdowniamge_2.SliceScale = 0.050

IndropdownContainer.Name = "IndropdownContainer"
IndropdownContainer.Parent = DropdownContainer
IndropdownContainer.Active = true
IndropdownContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IndropdownContainer.BackgroundTransparency = 1
IndropdownContainer.Size = UDim2.new(1, 0, 1, 0)
IndropdownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
IndropdownContainer.ScrollBarThickness = 0
IndropdownContainer.ZIndex = 3

UIListLayout.Parent = IndropdownContainer
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Dropdowntitleframe.Name = "Dropdowntitleframe"
Dropdowntitleframe.Parent = IndropdownContainer
Dropdowntitleframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowntitleframe.BackgroundTransparency = 1.000
Dropdowntitleframe.Size = UDim2.new(1, 0, 0, 20)
Dropdowntitleframe.ZIndex = 3

Titlecontainer.Name = "Titlecontainer"
Titlecontainer.Parent = Dropdowntitleframe
Titlecontainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Titlecontainer.BackgroundTransparency = 1.000
Titlecontainer.Position = UDim2.new(0, 5, 0, 0)
Titlecontainer.Size = UDim2.new(1, -5, 0, 20)
Titlecontainer.ZIndex = 4
Titlecontainer.Font = Enum.Font.GothamBlack
Titlecontainer.TextColor3 = Color3.fromRGB(255, 255, 255)
Titlecontainer.TextSize = 14.000
Titlecontainer.TextXAlignment = Enum.TextXAlignment.Left
Titlecontainer.Text = Name
		
local dropngu = false
DropdownButton.MouseButton1Click:Connect(function()
local vailonsize = UDim2.new(1, 0, 0, (drosSize+20) - 5)
local clampedSize;
local scrollSize = 0;

if vailonsize.Y.Offset > 100 then
    clampedSize = UDim2.new(1, 0, 0, 100)
    scrollSize = 5;
end

local goSize = (clampedSize ~= nil and clampedSize) or vailonsize; 
IndropdownContainer.CanvasSize = UDim2.new(0, 0, 0, vailonsize.Y.Offset );
IndropdownContainer.ScrollBarThickness = scrollSize
dropngu = not dropngu
daubuoi = dropngu and 90 or 0
local NguSize = dropngu and goSize or UDim2.new(1,0,0,0)
local GayFrame = dropngu and "Out" or 'In'
cavasfolder = dropngu and UDim2.new(0,0,0,(Container.CanvasSize.Y.Offset + (concou-37))) or UDim2.new(0,0,0,Container.CanvasSize.Y.Offset - (concou-40))
Tween:Create(Container,TweenInfo.new(0.3),{CanvasSize=cavasfolder}):Play()
local foldesize = dropngu and UDim2.new(1,-23,0,(concou-20)) or UDim2.new(1,-23,0,20)
DropdownFrame:TweenSize(foldesize, GayFrame, "Quad", 0.3, true)
Tween:Create(Dropdownicon,TweenInfo.new(0.3),{Rotation=daubuoi}):Play()
				if dropngu == false then
							DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true) wait(.3)
		DropdownFrame.ClipsDescendants = true
	end
				if dropngu == true then
					      DropdownFrame.ClipsDescendants = false
		DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true)
	end
end)
concou = 17.5
drosSize = 17.5
for i, v in next, List do
local cc = Instance.new('TextButton')
drosSize = drosSize + 17.5
concou = concou + 25
DropdownContainer.Size = UDim2.new(1,0,0,0)

local TextButton = Instance.new("TextButton")

TextButton.Parent = IndropdownContainer
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0, 150, 0, 15)
TextButton.ZIndex = 4
TextButton.Font = Enum.Font.GothamBold
TextButton.TextColor3 = Color3.fromRGB(149, 149, 149)
TextButton.TextSize = 14.000
TextButton.Text = v
TextButton.Name = v
if string.len(v) > 16 then 
	TextButton.TextScaled = true
end
TextButton.MouseEnter:Connect(function()
Tween:Create(TextButton, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()			
end)
TextButton.MouseLeave:Connect(function()
Tween:Create(TextButton, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(149, 149, 149)}):Play()			
end)
				
TextButton.MouseButton1Click:Connect(function()
	if Callback then
		spawn(function()
	Callback(v)
		end)
	end
					Titlecontainer.Text = v
					local vailonsize = UDim2.new(1, 0, 0, drosSize+20)
local clampedSize;
local scrollSize = 0;

if vailonsize.Y.Offset > 100 then
    clampedSize = UDim2.new(1, 0, 0, 100)
    scrollSize = 5;
end

local goSize = (clampedSize ~= nil and clampedSize) or vailonsize; 
IndropdownContainer.CanvasSize = UDim2.new(0, 0, 0, (vailonsize.Y.Offset ));
IndropdownContainer.ScrollBarThickness = scrollSize
dropngu = false
daubuoi = dropngu and 90 or 0
local NguSize = dropngu and goSize or UDim2.new(1,0,0,0)
local GayFrame = 'In'
Tween:Create(Dropdownicon,TweenInfo.new(0.3),{Rotation=daubuoi}):Play()
cavasfolder = UDim2.new(0,0,0,Container.CanvasSize.Y.Offset - (concou))
Tween:Create(Container,TweenInfo.new(0.3),{CanvasSize=cavasfolder}):Play()
local foldesize = dropngu and UDim2.new(1,-23,0,20) or UDim2.new(1,-23,0,(20+concou))
DropdownFrame:TweenSize(foldesize, GayFrame, "Quad", 0.3, true)
				if dropngu == false then
							DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true) wait(.3)
		DropdownFrame.ClipsDescendants = true
	end
				if dropngu == true then
					      DropdownFrame.ClipsDescendants = false
		DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true)
	end
					
end)
			end
			self:Resize()
end
		
		function bumiengkoem:Bind(Name,default,Callback)
local keycodename = default
local default = default

local Type = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode"
keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "")
keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "")
local UIS = game:GetService("UserInputService");			

local BindFrame = Instance.new("Frame")
local BindName = Instance.new("TextLabel")
local BindButton = Instance.new("TextButton")
local BindIcon = Instance.new("ImageLabel")

BindFrame.Name = "BindFrame"
BindFrame.Parent = Container
BindFrame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
BindFrame.BackgroundTransparency = 1.000
BindFrame.BorderSizePixel = 0
BindFrame.Size = UDim2.new(1, -23, 0, 20)

BindName.Name = "BindName"
BindName.Parent = BindFrame
BindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindName.BackgroundTransparency = 1.000
BindName.Position = UDim2.new(0, 5, 0, 0)
BindName.Size = UDim2.new(1, -30, 1, 0)
BindName.Font = Enum.Font.GothamBold
BindName.Text = Name
BindName.TextColor3 = Color3.fromRGB(255, 255, 255)
BindName.TextSize = 14.000
BindName.TextXAlignment = Enum.TextXAlignment.Left

BindButton.Name = "BindButton"
BindButton.Parent = BindFrame
BindButton.AnchorPoint = Vector2.new(1, 0.5)
BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindButton.BackgroundTransparency = 1.000
BindButton.Position = UDim2.new(1, 0, 0.5, 0)
BindButton.Size = UDim2.new(0.114285715, 20, 1, 0)
BindButton.ZIndex = 2
BindButton.Font = Enum.Font.GothamBold
BindButton.Text = ""
BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BindButton.TextSize = 14.000
BindButton.Text = tostring(default):gsub("Enum.KeyCode.", "")

BindIcon.Name = "BindIcon"
BindIcon.Parent = BindFrame
BindIcon.AnchorPoint = Vector2.new(1, 0.5)
BindIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindIcon.BackgroundTransparency = 1.000
BindIcon.Position = UDim2.new(1, 0, 0.5, 0)
BindIcon.Size = UDim2.new(1, -290, 1, 0)
BindIcon.Image = "rbxassetid://3570695787"
BindIcon.ImageColor3 = Color3.fromRGB(31, 31, 31)
BindIcon.ScaleType = Enum.ScaleType.Slice
BindIcon.SliceCenter = Rect.new(100, 100, 100, 100)
BindIcon.SliceScale = 0.050
			
			local WhitelistedType = {
			[Enum.UserInputType.MouseButton1] = "Mouse1";
			[Enum.UserInputType.MouseButton2] = "Mouse2";
			[Enum.UserInputType.MouseButton3] = "Mouse3";
		};

local connection
BindButton.MouseButton1Click:Connect(function()
	local Connection;

			BindButton.Text = "...";

			Connection = UIS.InputBegan:Connect(function(i)
				if WhitelistedType[i.UserInputType] then
					BindButton.Text = WhitelistedType[i.UserInputType];
					spawn(function()
						wait(0.1)
						default = i.UserInputType;
						Type = "UserInputType";
					end);
				elseif i.KeyCode ~= Enum.KeyCode.Unknown then
					BindButton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
					spawn(function()
						wait(0.1)
						default = i.KeyCode;
						Type = "KeyCode";
					end);
				else
					warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
				end;

				
				Connection:Disconnect();
			end);
		end);

		UIS.InputBegan:Connect(function(i)
			if (default == i.UserInputType or default == i.KeyCode) then
				Callback();
			end;
		end);
			
			self:Resize()
		end
		
		function bumiengkoem:CreateFolder(Name)
local FolderFrame = Instance.new("Frame")
local FolderLabel = Instance.new("TextLabel")
local FolderButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local FolderIcon = Instance.new("ImageLabel")
local InFolderFrame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")

FolderFrame.Name = "FolderFrame"
FolderFrame.Parent = Container
FolderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FolderFrame.BackgroundTransparency = 1.000
FolderFrame.Position = UDim2.new(0.0308310986, 0, 0.627906978, 0)
FolderFrame.Size = UDim2.new(1, -23, 0, 20)
FolderFrame.ClipsDescendants = true

FolderLabel.Name = "FolderLabel"
FolderLabel.Parent = FolderFrame
FolderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FolderLabel.BackgroundTransparency = 1.000
FolderLabel.Position = UDim2.new(0, 5, 0, 0)
FolderLabel.Size = UDim2.new(1, -25, 0, 20)
FolderLabel.ZIndex = 2
FolderLabel.Font = Enum.Font.GothamBold
FolderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FolderLabel.TextSize = 14.000
FolderLabel.TextXAlignment = Enum.TextXAlignment.Left
FolderLabel.Text = Name

FolderButton.Name = "FolderButton"
FolderButton.Parent = FolderFrame
FolderButton.AnchorPoint = Vector2.new(1, 0)
FolderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FolderButton.BackgroundTransparency = 1.000
FolderButton.Position = UDim2.new(1, 0, 0, 0)
FolderButton.Size = UDim2.new(0, 20, 0, 20)
FolderButton.ZIndex = 2
FolderButton.Font = Enum.Font.GothamBold
FolderButton.Text = ""
FolderButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FolderButton.TextSize = 14.000

ImageLabel.Parent = FolderButton
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(1, -4, 1, -4)
ImageLabel.ZIndex = 2
ImageLabel.Image = 'rbxassetid://4765412721'

FolderIcon.Name = "FolderIcon"
FolderIcon.Parent = FolderFrame
FolderIcon.AnchorPoint = Vector2.new(0.5, 0)
FolderIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FolderIcon.BackgroundTransparency = 1.000
FolderIcon.Position = UDim2.new(0.5, 0, 0, 0)
FolderIcon.Size = UDim2.new(1, 0, 0, 20)
FolderIcon.Image = "rbxassetid://3570695787"
FolderIcon.ImageColor3 = Color3.fromRGB(38, 38, 38)
FolderIcon.ScaleType = Enum.ScaleType.Slice
FolderIcon.SliceCenter = Rect.new(100, 100, 100, 100)
FolderIcon.SliceScale = 0.050

InFolderFrame.Name = "InFolderFrame"
InFolderFrame.Parent = FolderFrame
InFolderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InFolderFrame.BackgroundTransparency = 1.000
InFolderFrame.Position = UDim2.new(0, 0, 0, 25)
InFolderFrame.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = InFolderFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)
			self:Resize()
			
			local huphaukoem = {}
			
						sziesf = 0
			local folderto = false
			FolderButton.MouseButton1Click:Connect(function()
                folderto = not folderto
				daubuoi = folderto and 90 or 0
				cavasfolder = folderto and UDim2.new(0,0,0,(Container.CanvasSize.Y.Offset + sziesf)) or UDim2.new(0,0,0,Container.CanvasSize.Y.Offset - sziesf)
				local foldesize = folderto and UDim2.new(1,-23,0,(20+sziesf)) or UDim2.new(1,-23,0,20)
				Tween:Create(Container,TweenInfo.new(0.3),{CanvasSize=cavasfolder}):Play()
				local NguSize = folderto and UDim2.new(1,0,0,sziesf) or UDim2.new(1,0,0,0)
					local GayFrame = folderto and "Out" or 'In'
                Tween:Create(ImageLabel,TweenInfo.new(0.3),{Rotation=daubuoi}):Play()
                FolderFrame:TweenSize(foldesize, GayFrame, "Quad", 0.3, true)
				if folderto == true then
					InFolderFrame:TweenSize(NguSize, GayFrame, "Quad", 0.3, true)
					FolderFrame.ClipsDescendants = false
				end
				if folderto == false then
					InFolderFrame:TweenSize(NguSize, GayFrame, "Quad", 0.3, true)
					FolderFrame.ClipsDescendants = true
				end
			end)		
			function huphaukoem:Label(Name)	
sziesf = sziesf + 25	
local LabelFrame = Instance.new("Frame")
local LabelName = Instance.new("TextLabel")
local Labelicon = Instance.new("ImageLabel")

LabelFrame.Name = Name.."LabelFrame"
LabelFrame.Parent = InFolderFrame
LabelFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelFrame.BackgroundTransparency = 1.000
LabelFrame.Size = UDim2.new(1, 0, 0, 20)

LabelName.Name = "LabelName"
LabelName.Parent = LabelFrame
LabelName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LabelName.BackgroundTransparency = 1.000
LabelName.BorderSizePixel = 0
LabelName.Position = UDim2.new(0, 5, 0, 0)
LabelName.Size = UDim2.new(1, -5, 1, 0)
LabelName.ZIndex = 2
LabelName.Font = Enum.Font.GothamBold
LabelName.TextColor3 = Color3.fromRGB(255, 255, 255)
LabelName.TextSize = 14.000
LabelName.TextXAlignment = Enum.TextXAlignment.Left
LabelName.Text = Name

Labelicon.Name = "Labelicon"
Labelicon.Parent = LabelFrame
Labelicon.AnchorPoint = Vector2.new(1, 0.5)
Labelicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Labelicon.BackgroundTransparency = 1.000
Labelicon.Position = UDim2.new(1, 0, 0.5, 0)
Labelicon.Size = UDim2.new(1, 0, 1, 0)
Labelicon.Image = "rbxassetid://3570695787"
Labelicon.ImageColor3 = Color3.fromRGB(38, 38, 38)
Labelicon.ScaleType = Enum.ScaleType.Slice
Labelicon.SliceCenter = Rect.new(100, 100, 100, 100)
Labelicon.SliceScale = 0.050

local label = {Text = Name}

function label:SetText(text)
	LabelName.Text = text
end

return label

end
			
function huphaukoem:Toggle(Name,callback)
sziesf = sziesf + 25
local Toggled = false
			
local ToggleFrame = Instance.new("Frame")
local ToggleName = Instance.new("TextLabel")
local ToggleButton = Instance.new("TextButton")
local ToggledIcon = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

ToggleFrame.Name = Name.."ToggleFrame"
ToggleFrame.Parent = InFolderFrame
ToggleFrame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
ToggleFrame.BackgroundTransparency = 1.000
ToggleFrame.BorderSizePixel = 0
ToggleFrame.Size = UDim2.new(1, 0, 0, 20)

ToggleName.Name = "ToggleName"
ToggleName.Parent = ToggleFrame
ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName.BackgroundTransparency = 1.000
ToggleName.Position = UDim2.new(0, 5, 0, 0)
ToggleName.Size = UDim2.new(1, -30, 1, 0)
ToggleName.Font = Enum.Font.GothamBold
ToggleName.Text = Name
ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName.TextSize = 14.000
ToggleName.TextXAlignment = Enum.TextXAlignment.Left

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = ToggleFrame
ToggleButton.AnchorPoint = Vector2.new(1, 0.5)
ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundTransparency = 1.000
ToggleButton.Position = UDim2.new(1, 0, 0.5, 0)
ToggleButton.Size = UDim2.new(0, 20, 1, 0)
ToggleButton.Font = Enum.Font.SourceSans
ToggleButton.Text = ""
ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.TextSize = 14.000

ToggledIcon.Name = "ToggledIcon"
ToggledIcon.Parent = ToggleButton
ToggledIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ToggledIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggledIcon.BackgroundTransparency = 1.000
ToggledIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
ToggledIcon.Size = UDim2.new(1, 0, 1, 0)
ToggledIcon.Image = "rbxassetid://3570695787"
ToggledIcon.ImageColor3 = Color3.fromRGB(31, 31, 31)
ToggledIcon.ScaleType = Enum.ScaleType.Slice
ToggledIcon.SliceCenter = Rect.new(100, 100, 100, 100)
ToggledIcon.SliceScale = 0.050

TextLabel.Parent = ToggledIcon
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
			
			ToggleButton.MouseButton1Click:Connect(function()
				Toggled = not Toggled
				iconcolor = Toggled and Color3.fromRGB(39, 220, 115) or Color3.fromRGB(31,31,31)
				texts = Toggled and utf8.char(10003) or ""
				Tween:Create(ToggledIcon, TweenInfo.new(0.25), {ImageColor3 = iconcolor}):Play()
				TextLabel.Text = texts
				callback(Toggled)
			end)	
			end		
			
			function huphaukoem:Button(Name,Callback)
				sziesf = sziesf+25
local ButtonFrame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local ButtonIcon = Instance.new("ImageLabel")

ButtonFrame.Name = Name.."ButtonFrame"
ButtonFrame.Parent = InFolderFrame
ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonFrame.BackgroundTransparency = 1.000
ButtonFrame.Size = UDim2.new(1, 0, 0, 20)

Button.Name = "Button"
Button.Parent = ButtonFrame
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 5, 0, 0)
Button.Size = UDim2.new(1, -5, 1, 0)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamBold
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 14.000
Button.TextXAlignment = Enum.TextXAlignment.Left
Button.Text = Name

ButtonIcon.Name = "ButtonIcon"
ButtonIcon.Parent = ButtonFrame
ButtonIcon.Active = true
ButtonIcon.AnchorPoint = Vector2.new(1, 0.5)
ButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonIcon.BackgroundTransparency = 1.000
ButtonIcon.Position = UDim2.new(1, 0, 0.5, 0)
ButtonIcon.Selectable = true
ButtonIcon.Size = UDim2.new(1, 0, 1, 0)
ButtonIcon.Image = "rbxassetid://3570695787"
ButtonIcon.ImageColor3 = Color3.fromRGB(38, 38, 38)
ButtonIcon.ScaleType = Enum.ScaleType.Slice
ButtonIcon.SliceCenter = Rect.new(100, 100, 100, 100)
ButtonIcon.SliceScale = 0.050
			
local function asdbf()
local Gay = Instance.new("ImageLabel")
Gay.Name = "Gay"
Gay.Parent = ButtonIcon
Gay.Active = true
Gay.AnchorPoint = Vector2.new(0, 0)
Gay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Gay.BackgroundTransparency = 1.000
Gay.Position = UDim2.new(0, 0, 0, 0)
Gay.Selectable = true
Gay.Size = UDim2.new(0, 0, 1, 0)
Gay.Image = "rbxassetid://3570695787"
Gay.ImageTransparency = 1.000
Gay.ScaleType = Enum.ScaleType.Slice
Gay.SliceCenter = Rect.new(100, 100, 100, 100)
Gay.ZIndex = 1
Gay.SliceScale = 0.050

Gay:TweenSize(UDim2.new(1,0,1,0))
local UIGradient_2 = Instance.new('UIGradient')			
UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(26, 75, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 131, 255))}
UIGradient_2.Parent = Gay
				
for i=0,20 do wait(0.0020)
	i = i + 1
	Gay.ImageTransparency = i/20
end
Gay:Destroy()
end
			
Button.MouseButton1Click:Connect(function()
local ngivai = coroutine.wrap(asdbf)
ngivai()
Callback()
				end)	
			end
			
			
			function huphaukoem:Box(Name,Callback)
				sziesf = sziesf +25
			local BoxFrame = Instance.new("Frame")
local Box = Instance.new("TextBox")
local FolderIcon = Instance.new("ImageLabel")

BoxFrame.Name = "BoxFrame"
BoxFrame.Parent = InFolderFrame
BoxFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
BoxFrame.BackgroundTransparency = 1.000
BoxFrame.Position = UDim2.new(0, 0, 0.397727281, 0)
BoxFrame.Size = UDim2.new(1, 0, 0, 20)

Box.Name = "Box"
Box.Parent = BoxFrame
Box.AnchorPoint = Vector2.new(0.5, 0.5)
Box.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Box.BackgroundTransparency = 1.000
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.5, 3, 0.5, 0)
Box.Size = UDim2.new(1, -3, 1, 0)
Box.ZIndex = 2
Box.ClearTextOnFocus = false
Box.Font = Enum.Font.SourceSansBold
Box.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
Box.PlaceholderText = Name
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(255, 255, 255)
Box.TextSize = 16.000
Box.TextXAlignment = Enum.TextXAlignment.Left

FolderIcon.Name = "FolderIcon"
FolderIcon.Parent = BoxFrame
FolderIcon.AnchorPoint = Vector2.new(0.5, 0)
FolderIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FolderIcon.BackgroundTransparency = 1.000
FolderIcon.Position = UDim2.new(0.5, 0, 0, 0)
FolderIcon.Size = UDim2.new(1, 0, 0, 20)
FolderIcon.Image = "rbxassetid://3570695787"
FolderIcon.ImageColor3 = Color3.fromRGB(38, 38, 38)
FolderIcon.ScaleType = Enum.ScaleType.Slice
FolderIcon.SliceCenter = Rect.new(100, 100, 100, 100)
FolderIcon.SliceScale = 0.050
			
			Box.FocusLost:Connect(function()
			Callback(tostring(Box.Text))
			end)	
		end
		
		function huphaukoem:Slider(Name,min,max,Callback)
			sziesf =sziesf + 25
local SliderFrame = Instance.new("Frame")
local SliderName = Instance.new("TextLabel")
local BarFrame = Instance.new("ImageLabel")
local Bar = Instance.new("ImageLabel")
local SliderButton = Instance.new("TextButton")
local ButtonIcon = Instance.new("ImageLabel")
local Icon = Instance.new("ImageLabel")
local SliderValue = Instance.new("TextLabel")
local SliderValueFrame = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")
local Labelicon = Instance.new("ImageLabel")


SliderFrame.Name = "SliderFrame"
SliderFrame.Parent = InFolderFrame
SliderFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
SliderFrame.BackgroundTransparency = 1.000
SliderFrame.BorderSizePixel = 0
SliderFrame.Position = UDim2.new(0, 0, 0.594377518, 0)
SliderFrame.Size = UDim2.new(1, 0, 0, 20)

SliderName.Name = "SliderName"
SliderName.Parent = SliderFrame
SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderName.BackgroundTransparency = 1.000
SliderName.Position = UDim2.new(0, 5, 0, 0)
SliderName.Size = UDim2.new(0.114285715, 40, 1, 0)
SliderName.ZIndex = 2
SliderName.Font = Enum.Font.GothamBold
SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderName.TextSize = 14.000
SliderName.TextWrapped = true
SliderName.TextXAlignment = Enum.TextXAlignment.Left
SliderName.Text = Name
if string.len(SliderName.Text) > 10 then 
	SliderName.TextScaled = true
end

BarFrame.Name = "BarFrame"
BarFrame.Parent = SliderFrame
BarFrame.AnchorPoint = Vector2.new(1, 0.5)
BarFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BarFrame.BackgroundTransparency = 1.000
BarFrame.Position = UDim2.new(1, -10, 0.5, 0)
BarFrame.Size = UDim2.new(1, -100, 0, 5)
BarFrame.ZIndex = 2
BarFrame.Image = "rbxassetid://3570695787"
BarFrame.ScaleType = Enum.ScaleType.Slice
BarFrame.SliceCenter = Rect.new(100, 100, 100, 100)
BarFrame.SliceScale = 0.370

Bar.Name = "Bar"
Bar.Parent = BarFrame
Bar.AnchorPoint = Vector2.new(0, 1)
Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Bar.BackgroundTransparency = 1.000
Bar.Position = UDim2.new(0, 0, 1, 0)
Bar.Size = UDim2.new(0, 0, 1, 0)
Bar.ZIndex = 2
Bar.Image = "rbxassetid://3570695787"
Bar.ScaleType = Enum.ScaleType.Slice
Bar.SliceCenter = Rect.new(100, 100, 100, 100)
Bar.SliceScale = 0.370

SliderButton.Name = "SliderButton"
SliderButton.Parent = Bar
SliderButton.AnchorPoint = Vector2.new(0, 0.5)
SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderButton.BackgroundTransparency = 1.000
SliderButton.BorderSizePixel = 0
SliderButton.Position = UDim2.new(1, 0, 0.5, 0)
SliderButton.Size = UDim2.new(0, 12, 0, 12)
SliderButton.ZIndex = 2
SliderButton.Font = Enum.Font.SourceSans
SliderButton.Text = ""
SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SliderButton.TextSize = 14.000

ButtonIcon.Name = "ButtonIcon"
ButtonIcon.Parent = SliderButton
ButtonIcon.Active = true
ButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
ButtonIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonIcon.BackgroundTransparency = 1.000
ButtonIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
ButtonIcon.Selectable = true
ButtonIcon.Size = UDim2.new(1, 0, 1, 0)
ButtonIcon.ZIndex = 2
ButtonIcon.Image = "rbxassetid://3570695787"
ButtonIcon.ScaleType = Enum.ScaleType.Slice
ButtonIcon.SliceCenter = Rect.new(100, 100, 100, 100)

Icon.Name = "Icon"
Icon.Parent = SliderButton
Icon.AnchorPoint = Vector2.new(0.5, 0)
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.Position = UDim2.new(0.5, 0, 0, -5)
Icon.Rotation = 90.000
Icon.Size = UDim2.new(1, 0, 1, 0)
Icon.ZIndex = 3
Icon.Image = "http://www.roblox.com/asset/?id=4765412721"
Icon.ImageColor3 = Color3.fromRGB(26, 26, 26)
Icon.ImageTransparency = 1.000

SliderValue.Name = "SliderValue"
SliderValue.Parent = SliderButton
SliderValue.AnchorPoint = Vector2.new(0.5, 0)
SliderValue.BackgroundColor3 = Color3.fromRGB(62, 62, 62)
SliderValue.BackgroundTransparency = 1.000
SliderValue.BorderSizePixel = 0
SliderValue.Position = UDim2.new(0.5, 0, 0, -20)
SliderValue.Size = UDim2.new(0, 50, 0, 20)
SliderValue.ZIndex = 3
SliderValue.Font = Enum.Font.GothamBold
SliderValue.Text = ""
SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
SliderValue.TextSize = 12.000
SliderValue.TextTransparency = 1.000

SliderValueFrame.Name = "SliderValueFrame"
SliderValueFrame.Parent = SliderButton
SliderValueFrame.AnchorPoint = Vector2.new(0.5, 0)
SliderValueFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderValueFrame.BackgroundTransparency = 1.000
SliderValueFrame.Position = UDim2.new(0.5, 0, -1, -8)
SliderValueFrame.Size = UDim2.new(0, 50, 0, 20)
SliderValueFrame.ZIndex = 2
SliderValueFrame.Image = "rbxassetid://3570695787"
SliderValueFrame.ImageColor3 = Color3.fromRGB(26, 26, 26)
SliderValueFrame.ImageTransparency = 1.000
SliderValueFrame.ScaleType = Enum.ScaleType.Slice
SliderValueFrame.SliceCenter = Rect.new(100, 100, 100, 100)
SliderValueFrame.SliceScale = 0.050

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(26, 75, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(37, 131, 255))}
UIGradient.Parent = Bar

Labelicon.Name = "Labelicon"
Labelicon.Parent = SliderFrame
Labelicon.AnchorPoint = Vector2.new(1, 0.5)
Labelicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Labelicon.BackgroundTransparency = 1.000
Labelicon.Position = UDim2.new(1, 0, 0.5, 0)
Labelicon.Size = UDim2.new(1, 0, 1, 0)
Labelicon.Image = "rbxassetid://3570695787"
Labelicon.ImageColor3 = Color3.fromRGB(38, 38, 38)
Labelicon.ScaleType = Enum.ScaleType.Slice
Labelicon.SliceCenter = Rect.new(100, 100, 100, 100)
Labelicon.SliceScale = 0.050
			
minvalue = min or 0
maxvalue = max or 100

Callback = Callback or function() end

local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")
local Value;

SliderValue.Text = minvalue


SliderButton.MouseButton1Down:Connect(function()
    Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 240) * Bar.AbsoluteSize.X) + tonumber(minvalue)) or 0
    pcall(function()
        Callback(Value)
    end)
    Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 240), 0, 5)
    moveconnection = mouse.Move:Connect(function()
        Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 240) * Bar.AbsoluteSize.X) + tonumber(minvalue))
        pcall(function()
            Callback(Value)
        end)
		SliderValue.Text = Value
        Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 240), 0, 5)
    end)
    releaseconnection = uis.InputEnded:Connect(function(Mouse)
        if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
            Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 240) * Bar.AbsoluteSize.X) + tonumber(minvalue))
            pcall(function()
                Callback(Value)
            end)
            Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 240), 0, 5)
            moveconnection:Disconnect()
            releaseconnection:Disconnect()
        end
    end)
			end)	
			
			SliderFrame.MouseEnter:Connect(function()
	Tween:Create(Icon, TweenInfo.new(0.25), {ImageTransparency = 0}):Play()
	Tween:Create(SliderValueFrame, TweenInfo.new(0.25), {ImageTransparency = 0}):Play()
	Tween:Create(SliderValue, TweenInfo.new(0.25), {TextTransparency = 0}):Play()
end)

SliderFrame.MouseLeave:Connect(function()
	Tween:Create(Icon, TweenInfo.new(0.25), {ImageTransparency = 1}):Play()
	Tween:Create(SliderValueFrame, TweenInfo.new(0.25), {ImageTransparency = 1}):Play()
	Tween:Create(SliderValue, TweenInfo.new(0.25), {TextTransparency = 1}):Play()
end)
		end
		
		function huphaukoem:Dropdown(Name,List,Callback)
sziesf = sziesf + 25			

local DropdownFrame = Instance.new("Frame")
local Dropdowntitle = Instance.new("TextLabel")
local DropdownButton = Instance.new("TextButton")
local Dropdownicon = Instance.new("ImageLabel")
local Dropdowniamge = Instance.new("ImageLabel")
local DropdownContainer = Instance.new("Frame")
local Dropdowniamge_2 = Instance.new("ImageLabel")
local IndropdownContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Dropdowntitleframe = Instance.new("Frame")
local Titlecontainer = Instance.new("TextLabel")


DropdownFrame.Name =Name.. "DropdownFrame"
DropdownFrame.Parent = InFolderFrame
DropdownFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownFrame.BackgroundTransparency = 1.000
DropdownFrame.ClipsDescendants = true
DropdownFrame.Position = UDim2.new(0.0308310986, 0, 0.627906978, 0)
DropdownFrame.Size = UDim2.new(1, 0, 0, 20)
DropdownFrame.ZIndex = 2

Dropdowntitle.Name = "Dropdowntitle"
Dropdowntitle.Parent = DropdownFrame
Dropdowntitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowntitle.BackgroundTransparency = 1.000
Dropdowntitle.Position = UDim2.new(0, 5, 0, 0)
Dropdowntitle.Size = UDim2.new(1, -25, 0, 20)
Dropdowntitle.ZIndex = 2
Dropdowntitle.Font = Enum.Font.GothamBold
Dropdowntitle.TextColor3 = Color3.fromRGB(255, 255, 255)
Dropdowntitle.TextSize = 14.000
Dropdowntitle.TextXAlignment = Enum.TextXAlignment.Left
Dropdowntitle.Text = Name

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = DropdownFrame
DropdownButton.AnchorPoint = Vector2.new(1, 0)
DropdownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropdownButton.BackgroundTransparency = 1.000
DropdownButton.Position = UDim2.new(1, 0, 0, 0)
DropdownButton.Size = UDim2.new(0, 20, 0, 20)
DropdownButton.ZIndex = 2
DropdownButton.Font = Enum.Font.GothamBold
DropdownButton.Text = ""
DropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DropdownButton.TextSize = 14.000

Dropdownicon.Name = "Dropdownicon"
Dropdownicon.Parent = DropdownButton
Dropdownicon.AnchorPoint = Vector2.new(0.5, 0.5)
Dropdownicon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdownicon.BackgroundTransparency = 1.000
Dropdownicon.Position = UDim2.new(0.5, 0, 0.5, 0)
Dropdownicon.Size = UDim2.new(1, -4, 1, -4)
Dropdownicon.ZIndex = 2
Dropdownicon.Image = 'rbxassetid://4765412721'

Dropdowniamge.Name = "Dropdowniamge"
Dropdowniamge.Parent = DropdownFrame
Dropdowniamge.AnchorPoint = Vector2.new(0.5, 0)
Dropdowniamge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowniamge.BackgroundTransparency = 1.000
Dropdowniamge.Position = UDim2.new(0.5, 0, 0, 0)
Dropdowniamge.Size = UDim2.new(1, 0, 0, 20)
Dropdowniamge.Image = "rbxassetid://3570695787"
Dropdowniamge.ImageColor3 = Color3.fromRGB(38, 38, 38)
Dropdowniamge.ScaleType = Enum.ScaleType.Slice
Dropdowniamge.SliceCenter = Rect.new(100, 100, 100, 100)
Dropdowniamge.SliceScale = 0.050

DropdownContainer.Name = "DropdownContainer"
DropdownContainer.Parent = DropdownFrame
DropdownContainer.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
DropdownContainer.BorderSizePixel = 0
DropdownContainer.Position = UDim2.new(0, 0, 0, 20)
DropdownContainer.Size = UDim2.new(1, 0, 0, 20)
DropdownContainer.ZIndex = 3

Dropdowniamge_2.Name = "Dropdowniamge"
Dropdowniamge_2.Parent = DropdownContainer
Dropdowniamge_2.AnchorPoint = Vector2.new(0.5, 0)
Dropdowniamge_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowniamge_2.BackgroundTransparency = 1.000
Dropdowniamge_2.Position = UDim2.new(0.5, 0, 0, 0)
Dropdowniamge_2.Size = UDim2.new(1, 0, 1, 0)
Dropdowniamge_2.ZIndex = 3
Dropdowniamge_2.Image = "rbxassetid://3570695787"
Dropdowniamge_2.ImageColor3 = Color3.fromRGB(38, 38, 38)
Dropdowniamge_2.ScaleType = Enum.ScaleType.Slice
Dropdowniamge_2.SliceCenter = Rect.new(100, 100, 100, 100)
Dropdowniamge_2.SliceScale = 0.050

IndropdownContainer.Name = "IndropdownContainer"
IndropdownContainer.Parent = DropdownContainer
IndropdownContainer.Active = true
IndropdownContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
IndropdownContainer.BackgroundTransparency = 1
IndropdownContainer.Size = UDim2.new(1, 0, 1, 0)
IndropdownContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
IndropdownContainer.ScrollBarThickness = 0
IndropdownContainer.ZIndex = 3

UIListLayout.Parent = IndropdownContainer
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Dropdowntitleframe.Name = "Dropdowntitleframe"
Dropdowntitleframe.Parent = IndropdownContainer
Dropdowntitleframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dropdowntitleframe.BackgroundTransparency = 1.000
Dropdowntitleframe.Size = UDim2.new(1, 0, 0, 20)
Dropdowntitleframe.ZIndex = 3

Titlecontainer.Name = "Titlecontainer"
Titlecontainer.Parent = Dropdowntitleframe
Titlecontainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Titlecontainer.BackgroundTransparency = 1.000
Titlecontainer.Position = UDim2.new(0, 5, 0, 0)
Titlecontainer.Size = UDim2.new(1, -5, 0, 20)
Titlecontainer.ZIndex = 4
Titlecontainer.Font = Enum.Font.GothamBlack
Titlecontainer.TextColor3 = Color3.fromRGB(255, 255, 255)
Titlecontainer.TextSize = 14.000
Titlecontainer.TextXAlignment = Enum.TextXAlignment.Left
Titlecontainer.Text = Name
			
local dropngu = false
DropdownButton.MouseButton1Click:Connect(function()
local vailonsize = UDim2.new(1, 0, 0, drosSize+20)
local clampedSize;
local scrollSize = 0;

if vailonsize.Y.Offset > 100 then
    clampedSize = UDim2.new(1, 0, 0, 100)
    scrollSize = 5;
end

local goSize = (clampedSize ~= nil and clampedSize) or vailonsize; 

IndropdownContainer.CanvasSize = UDim2.new(0, 0, 0, vailonsize.Y.Offset + 5);
IndropdownContainer.ScrollBarThickness = scrollSize
dropngu = not dropngu
daubuoi = dropngu and 90 or 0
local NguSize = dropngu and goSize or UDim2.new(1,0,0,0)
local GayFrame = dropngu and "Out" or 'In'
Tween:Create(Dropdownicon,TweenInfo.new(0.3),{Rotation=daubuoi}):Play()
cavasfolder = dropngu and UDim2.new(0,0,0,(Container.CanvasSize.Y.Offset + (concou))) or UDim2.new(0,0,0,Container.CanvasSize.Y.Offset - (concou))
Tween:Create(Container,TweenInfo.new(0.3),{CanvasSize=cavasfolder}):Play()
local foldesize = dropngu and UDim2.new(1,0,0,(concou-20)) or UDim2.new(1,0,0,20)
DropdownFrame:TweenSize(foldesize, GayFrame, "Quad", 0.3, true)
Tween:Create(Dropdownicon,TweenInfo.new(0.3),{Rotation=daubuoi}):Play()
				if dropngu == false then
							DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true) wait(.3)
		DropdownFrame.ClipsDescendants = true
	end
				if dropngu == true then
					      DropdownFrame.ClipsDescendants = false
		DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true)
	end
end)
drosSize = 17.5
concou = 17.5
for i, v in next, List do
local cc = Instance.new('TextButton')
drosSize = drosSize + 17.5
concou = concou+ 25
DropdownContainer.Size = UDim2.new(1,0,0,0)

local TextButton = Instance.new("TextButton")

TextButton.Parent = IndropdownContainer
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(0, 150, 0, 15)
TextButton.ZIndex = 4
TextButton.Font = Enum.Font.GothamBold
TextButton.TextColor3 = Color3.fromRGB(149, 149, 149)
TextButton.TextSize = 14.000
TextButton.Text = v
TextButton.Name = v
if string.len(v) > 16 then 
	TextButton.TextScaled = true
end
TextButton.MouseEnter:Connect(function()
Tween:Create(TextButton, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()			
end)
TextButton.MouseLeave:Connect(function()
Tween:Create(TextButton, TweenInfo.new(0.25), {TextColor3 = Color3.fromRGB(149, 149, 149)}):Play()			
end)
				
TextButton.MouseButton1Click:Connect(function()
					if Callback then
						spawn(function()
					Callback(v)
						end)
					end
					Titlecontainer.Text = v
					local vailonsize = UDim2.new(1, 0, 0, drosSize+20)
local clampedSize;
local scrollSize = 0;

if vailonsize.Y.Offset > 100 then
    clampedSize = UDim2.new(1, 0, 0, 100)
    scrollSize = 5;
end

local goSize = (clampedSize ~= nil and clampedSize) or vailonsize; 

IndropdownContainer.CanvasSize = UDim2.new(0, 0, 0, vailonsize.Y.Offset + 5);
IndropdownContainer.ScrollBarThickness = scrollSize
dropngu = false
daubuoi = dropngu and 90 or 0
local NguSize = dropngu and goSize or UDim2.new(1,0,0,0)
local GayFrame ='In'
Tween:Create(Dropdownicon,TweenInfo.new(0.3),{Rotation=daubuoi}):Play()
cavasfolder = UDim2.new(0,0,0,Container.CanvasSize.Y.Offset - (concou))
Tween:Create(Container,TweenInfo.new(0.3),{CanvasSize=cavasfolder}):Play()
local foldesize = dropngu and UDim2.new(1,-23,0,20) or UDim2.new(1,-23,0,(concou))
DropdownFrame:TweenSize(foldesize, GayFrame, "Quad", 0.3, true)
				if dropngu == false then
							DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true) wait(.3)
		DropdownFrame.ClipsDescendants = true
	end
				if dropngu == true then
					      DropdownFrame.ClipsDescendants = false
		DropdownContainer:TweenSize(NguSize, GayFrame, "Quad", 0.3, true)
	end
					
end)
			end


end
		
			function huphaukoem:Bind(Name,default,Callback)
				sziesf = sziesf + 25
local keycodename = default
local default = default

local Type = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode"
keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "")
keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "")
local UIS = game:GetService("UserInputService");			

local BindFrame = Instance.new("Frame")
local BindName = Instance.new("TextLabel")
local BindButton = Instance.new("TextButton")
local BindIcon = Instance.new("ImageLabel")

BindFrame.Name = "BindFrame"
BindFrame.Parent = InFolderFrame
BindFrame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
BindFrame.BackgroundTransparency = 1.000
BindFrame.BorderSizePixel = 0
BindFrame.Size = UDim2.new(1, 0, 0, 20)

BindName.Name = "BindName"
BindName.Parent = BindFrame
BindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindName.BackgroundTransparency = 1.000
BindName.Position = UDim2.new(0, 5, 0, 0)
BindName.Size = UDim2.new(1, -30, 1, 0)
BindName.Font = Enum.Font.GothamBold
BindName.Text = Name
BindName.TextColor3 = Color3.fromRGB(255, 255, 255)
BindName.TextSize = 14.000
BindName.TextXAlignment = Enum.TextXAlignment.Left

BindButton.Name = "BindButton"
BindButton.Parent = BindFrame
BindButton.AnchorPoint = Vector2.new(1, 0.5)
BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindButton.BackgroundTransparency = 1.000
BindButton.Position = UDim2.new(1, 0, 0.5, 0)
BindButton.Size = UDim2.new(0.114285715, 20, 1, 0)
BindButton.ZIndex = 2
BindButton.Font = Enum.Font.GothamBold
BindButton.Text = ""
BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
BindButton.TextSize = 14.000
BindButton.Text = tostring(default):gsub("Enum.KeyCode.", "")

BindIcon.Name = "BindIcon"
BindIcon.Parent = BindFrame
BindIcon.AnchorPoint = Vector2.new(1, 0.5)
BindIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BindIcon.BackgroundTransparency = 1.000
BindIcon.Position = UDim2.new(1, 0, 0.5, 0)
BindIcon.Size = UDim2.new(1, -290, 1, 0)
BindIcon.Image = "rbxassetid://3570695787"
BindIcon.ImageColor3 = Color3.fromRGB(31, 31, 31)
BindIcon.ScaleType = Enum.ScaleType.Slice
BindIcon.SliceCenter = Rect.new(100, 100, 100, 100)
BindIcon.SliceScale = 0.050
			
			local WhitelistedType = {
			[Enum.UserInputType.MouseButton1] = "Mouse1";
			[Enum.UserInputType.MouseButton2] = "Mouse2";
			[Enum.UserInputType.MouseButton3] = "Mouse3";
		};

local connection
BindButton.MouseButton1Click:Connect(function()
	local Connection;

			BindButton.Text = "...";

			Connection = UIS.InputBegan:Connect(function(i)
				if WhitelistedType[i.UserInputType] then
					BindButton.Text = WhitelistedType[i.UserInputType];
					spawn(function()
						wait(0.1)
						default = i.UserInputType;
						Type = "UserInputType";
					end);
				elseif i.KeyCode ~= Enum.KeyCode.Unknown then
					BindButton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
					spawn(function()
						wait(0.1)
						default = i.KeyCode;
						Type = "KeyCode";
					end);
				else
					warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
				end;

				
				Connection:Disconnect();
			end);
		end);

		UIS.InputBegan:Connect(function(i)
			if (default == i.UserInputType or default == i.KeyCode) then
				Callback();
			end;
		end);
			

		end
			
			
			return huphaukoem		
		

		
			

			
end

		return bumiengkoem
		
end
		local Ngu= Instance.new('IntValue',MainFRame )
	Ngu.Name = 'Ngu'
	
		
	
	return bulonlaohac
	
end

return Library
