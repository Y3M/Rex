local Main = {}

function Main:AddFrame(Textname)
local Library = Instance.new("ScreenGui")
local UI = Instance.new("ImageLabel")
local FrameText = Instance.new("TextLabel")
local Frame = Instance.new("ImageLabel")
local PlaceItemsHere = Instance.new("ScrollingFrame")
local List_Manager = Instance.new("UIListLayout")

Library.Name = "Library"
Library.Parent = game.CoreGui

UI.Name = "UI"
UI.Parent = Library
UI.Active = true
UI.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI.BackgroundTransparency = 1.000
UI.Position = UDim2.new(0.0544747077, 0, 0.0617529899, 0)
UI.Size = UDim2.new(0, 202, 0, 44)
UI.Image = "rbxassetid://3570695787"
UI.ImageColor3 = Color3.fromRGB(40, 40, 40)
UI.ScaleType = Enum.ScaleType.Slice
UI.SliceCenter = Rect.new(100, 100, 100, 100)
UI.SliceScale = 0.120

FrameText.Name = "FrameText"
FrameText.Parent = UI
FrameText.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
FrameText.BackgroundTransparency = 1.000
FrameText.BorderColor3 = Color3.fromRGB(40, 40, 40)
FrameText.BorderSizePixel = 0
FrameText.Size = UDim2.new(0, 202, 0, 44)
FrameText.Font = Enum.Font.GothamSemibold
FrameText.Text = Textname
FrameText.TextColor3 = Color3.fromRGB(255, 255, 255)
FrameText.TextSize = 23.000
FrameText.TextWrapped = true

Frame.Name = "Frame"
Frame.Parent = UI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 1.13636363, 0)
Frame.Size = UDim2.new(0, 202, 0, 288)
Frame.Image = "rbxassetid://3570695787"
Frame.ImageColor3 = Color3.fromRGB(40, 40, 40)
Frame.ScaleType = Enum.ScaleType.Slice
Frame.SliceCenter = Rect.new(100, 100, 100, 100)
Frame.SliceScale = 0.120

PlaceItemsHere.Name = "PlaceItemsHere"
PlaceItemsHere.Parent = Frame
PlaceItemsHere.Active = true
PlaceItemsHere.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PlaceItemsHere.BorderSizePixel = 0
PlaceItemsHere.Position = UDim2.new(0.0396039598, 0, 0.024305556, 0)
PlaceItemsHere.Size = UDim2.new(0, 186, 0, 273)

List_Manager.Name = "List_Manager"
List_Manager.Parent = PlaceItemsHere
List_Manager.HorizontalAlignment = Enum.HorizontalAlignment.Center
List_Manager.SortOrder = Enum.SortOrder.LayoutOrder

local Items = {}

function Items:AddButton(buttonText, getscript)
-- [[ ]] --
getscript = getscript or function() end
-- [[ ]] --
local ButtonFrame = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
ButtonFrame.Name = "ButtonFrame"
ButtonFrame.Parent = PlaceItemsHere
ButtonFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ButtonFrame.BackgroundTransparency = 1.000
ButtonFrame.Position = UDim2.new(0.112903222, 0, 0.0171512514, 0)
ButtonFrame.Size = UDim2.new(0, 144, 0, 31)
ButtonFrame.Image = "rbxassetid://3570695787"
ButtonFrame.ImageColor3 = Color3.fromRGB(30, 30, 30)
ButtonFrame.ScaleType = Enum.ScaleType.Slice
ButtonFrame.SliceCenter = Rect.new(100, 100, 100, 100)
ButtonFrame.SliceScale = 0.120
TextButton.Parent = ButtonFrame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Text = buttonText
TextButton.Position = UDim2.new(0.0486111119, 0, 0.0967741907, 0)
TextButton.Size = UDim2.new(0, 130, 0, 25)
TextButton.Font = Enum.Font.GothamSemibold
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 23.000
TextButton.TextWrapped = true
TextButton.MouseButton1Click:Connect(function()
pcall(getscript)
end)
end
return Items
end
return Main
