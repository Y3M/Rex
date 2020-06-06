local library = {}
function library:Window(name)
local UI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local help = Instance.new("TextLabel")

UI.Name = "UI"
UI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = UI
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(187, 28, 198)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.0334608033, 0, 0.143426299, 0)
Frame.Size = UDim2.new(0, 165, 0, 29)
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(187, 28, 198)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 165, 0, 29)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = name
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.BorderColor3 = Color3.fromRGB(187, 28, 198)
ScrollingFrame.BorderSizePixel = 2
ScrollingFrame.Position = UDim2.new(0, 0, 1.20689654, 0)
ScrollingFrame.Size = UDim2.new(0, 165, 0, 241)

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

help.Name = "help"
help.Parent = Frame
help.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
help.Position = UDim2.new(1.15151513, 0, 1, 0)
help.Size = UDim2.new(0, 656, 0, 297)
help.Font = Enum.Font.SourceSans
help.Text = "P to OPEN/CLOSE"
help.TextColor3 = Color3.fromRGB(0, 0, 0)
help.TextScaled = true
help.TextSize = 14.000
help.TextWrapped = true

local epic = {}

function epic:Button(buttontext, callback)
callback = callback or function() end
local TextButton = Instance.new("TextButton")
TextButton.Text = buttontext
TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 165, 0, 29)
TextButton.Font = Enum.Font.SciFi
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
	pcall(callback)
end)
end


wait(2)
help:Destroy()
return epic
end
return library
