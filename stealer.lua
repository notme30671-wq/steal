-- الكود الأصلي الأساسي
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()

-- إنشاء واجهة التحكم الرئيسية (GUI) على Delta
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")

-- زر تقليل اللاج (Anti-Lag)
local LagButton = Instance.new("TextButton")
local LagCorner = Instance.new("UICorner")

-- زر فتح نافذة الرقص بالذكاء الاصطناعي
local DanceButton = Instance.new("TextButton")
local DanceCorner = Instance.new("UICorner")

-- نافذة عرض الشخصية الراقصة بالذكاء الاصطناعي
local DanceFrame = Instance.new("Frame")
local DanceFrameCorner = Instance.new("UICorner")
local DanceTitle = Instance.new("TextLabel")
local CloseDance = Instance.new("TextButton")

-- عنصر الصورة المتحركة لشخصية ترقص
local DanceImage = Instance.new("ImageLabel")
local ImageCorner = Instance.new("UICorner")

-- إعداد الواجهة الرئيسية
ScreenGui.Name = "DivineHubGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Position = UDim2.new(0, 20, 0, 40)
MainFrame.Size = UDim2.new(0, 160, 0, 150)
MainFrame.Active = true
MainFrame.Draggable = true
UICorner.Parent = MainFrame

TitleLabel.Parent = MainFrame
TitleLabel.BackgroundTransparency = 1.00
TitleLabel.Position = UDim2.new(0, 0, 0, 5)
TitleLabel.Size = UDim2.new(0, 160, 0, 25)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "Divine Hub & AI Dance"
TitleLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
TitleLabel.TextSize = 15

-- زر تقليل اللاج
LagButton.Name = "LagButton"
LagButton.Parent = MainFrame
LagButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LagButton.Position = UDim2.new(0, 10, 0, 35)
LagButton.Size = UDim2.new(0, 140, 0, 40)
LagButton.Font = Enum.Font.SourceSansBold
LagButton.Text = "Anti-Lag: OFF"
LagButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LagButton.TextSize = 14
LagCorner.Parent = LagButton

-- زر الرقص بالذكاء الاصطناعي
DanceButton.Name = "DanceButton"
DanceButton.Parent = MainFrame
DanceButton.BackgroundColor3 = Color3.fromRGB(150, 0, 150)
DanceButton.Position = UDim2.new(0, 10, 0, 85)
DanceButton.Size = UDim2.new(0, 140, 0, 45)
DanceButton.Font = Enum.Font.SourceSansBold
DanceButton.Text = "💃 AI Dance Robot"
DanceButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceButton.TextSize = 14
DanceCorner.Parent = DanceButton

-- إعداد نافذة الرقص
DanceFrame.Name = "DanceFrame"
DanceFrame.Parent = ScreenGui
DanceFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
DanceFrame.BorderColor3 = Color3.fromRGB(150, 0, 150)
DanceFrame.Position = UDim2.new(0.5, -125, 0.5, -140)
DanceFrame.Size = UDim2.new(0, 250, 0, 280)
DanceFrame.Visible = false
DanceFrame.Active = true
DanceFrame.Draggable = true
DanceFrameCorner.Parent = DanceFrame

DanceTitle.Parent = DanceFrame
DanceTitle.BackgroundTransparency = 1.00
DanceTitle.Position = UDim2.new(0, 10, 0, 10)
DanceTitle.Size = UDim2.new(0, 190, 0, 30)
DanceTitle.Font = Enum.Font.SourceSansBold
DanceTitle.Text = "AI Dancing Character"
DanceTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
DanceTitle.TextSize = 14

CloseDance.Name = "CloseDance"
CloseDance.Parent = DanceFrame
CloseDance.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseDance.Position = UDim2.new(0, 210, 0, 10)
CloseDance.Size = UDim2.new(0, 30, 0, 30)
CloseDance.Font = Enum.Font.SourceSansBold
CloseDance.Text = "X"
CloseDance.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseDance.TextSize = 14
local CloseCorner = Instance.new("UICorner", CloseDance)

-- عرض الشخصية المتحركة (صورة رقص مصممة عبر أصول روبلوكس المتاحة)
DanceImage.Name = "DanceImage"
DanceImage.Parent = DanceFrame
DanceImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DanceImage.Position = UDim2.new(0, 15, 0, 50)
DanceImage.Size = UDim2.new(0, 220, 0, 210)
-- استخدام أداة عرض رسوم متحركة مدمجة في نظام روبلوكس
DanceImage.Image = "rbxassetid://6031094678" -- صورة رمزية متحركة لشخصية تفاعلية
ImageCorner.Parent = DanceImage

-- وظيفة زر تقليل اللاج
local antiLagEnabled = false
LagButton.MouseButton1Click:Connect(function()
    antiLagEnabled = not antiLagEnabled
    if antiLagEnabled then
        LagButton.Text = "Anti-Lag: ON"
        LagButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
        pcall(function()
            local Lighting = game:GetService("Lighting")
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9e9
            for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("BasePart") then
                    v.Material = Enum.Material.SmoothPlastic
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") then
                    v.Transparency = 1
                end
            end
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end)
    else
        LagButton.Text = "Anti-Lag: OFF"
        LagButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        pcall(function()
            game:GetService("Lighting").GlobalShadows = true
        end)
    end
end)

-- فتح وإغلاق نافذة الرقص
DanceButton.MouseButton1Click:Connect(function()
    DanceFrame.Visible = not DanceFrame.Visible
end)

CloseDance.MouseButton1Click:Connect(function()
    DanceFrame.Visible = false
end)

-- سكربت سرقة بيض الديفاين في الخلفية
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

local divineEggNames = {
    "divine", "egg", "unicorn", "kitsune", "dreadscale", 
    "nightflame", "shattered", "archangel", "world burner", "aetheron"
}

local function stealDivineEggs()
    pcall(function()
        for _, obj in pairs(Workspace:GetChildren()) do
            if obj:IsA("BasePart") then
                local objNameLower = string.lower(obj.Name)
                for _, targetName in ipairs(divineEggNames) do
                    if string.find(objNameLower, targetName) then
                        if obj:FindFirstChild("TouchInterest") or obj:FindFirstChild("ProximityPrompt") then
                            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj, 0)
                                task.wait(0.02)
                                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj, 1)
                            end
                        end
                        break
                    end
                end
            end
        end
    end)
end

task.spawn(function()
    while task.wait(0.5) do
        stealDivineEggs()
    end
end)

print("تم إضافة شاشة الرقص بالذكاء الاصطناعي بنجاح!")
