local lib = {}
function lib:CreateWindow(nameText)
local FreddyUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CreditLabel = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local TextButton = Instance.new("TextButton")
FreddyUI.Name = "FreddyUI"
FreddyUI.Parent = game.Players.LocalPlayer:WaitForChild("CoreGui")
FreddyUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = FreddyUI
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.278202683, 0, 0.213147417, 0)
Frame.Size = UDim2.new(0, 643, 0, 298)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(-0.000179886818, 0, -0.00161768496, 0)
TextLabel.Size = UDim2.new(0, 643, 0, 26)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = nameText
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

CreditLabel.Name = "CreditLabel"
CreditLabel.Parent = Frame
CreditLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
CreditLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
CreditLabel.Position = UDim2.new(-0.000179886818, 0, 0.998368979, 0)
CreditLabel.Size = UDim2.new(0, 643, 0, 15)
CreditLabel.Font = Enum.Font.GothamBlack
CreditLabel.Text = "P to open/close | Credits: freddy#7572 "
CreditLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CreditLabel.TextScaled = true
CreditLabel.TextSize = 14.000
CreditLabel.TextWrapped = true

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0, 0, 0.0856306329, 0)
ScrollingFrame.Size = UDim2.new(0, 642, 0, 271)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 121, 0, 32)

local op = {}

function op:Button(name, callback)
callback = callback or function() end
TextButton.Parent = ScrollingFrame
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0108864699, 0, 0.114093959, 0)
TextButton.Size = UDim2.new(0, 121, 0, 32)
TextButton.Font = Enum.Font.GothamBold
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
	pcall(callback)
end)
end
end
return lib
