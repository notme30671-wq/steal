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

-- زر شروحات الريلز واليوتيوب
local YTButton = Instance.new("TextButton")
local YTCorner = Instance.new("UICorner")

-- نافذة المعلومات والريلز البديلة والمستقرة
local YTFrame = Instance.new("Frame")
local YTFrameCorner = Instance.new("UICorner")
local YTTitle = Instance.new("TextLabel")
local CloseYT = Instance.new("TextButton")
local InfoLabel = Instance.new("TextLabel")
local CopyLinkButton = Instance.new("TextButton")
local CopyCorner = Instance.new("UICorner")

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
TitleLabel.Text = "Divine Hub & Menu"
TitleLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
TitleLabel.TextSize = 16

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

-- زر الريلز واليوتيوب
YTButton.Name = "YTButton"
YTButton.Parent = MainFrame
YTButton.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
YTButton.Position = UDim2.new(0, 10, 0, 85)
YTButton.Size = UDim2.new(0, 140, 0, 45)
YTButton.Font = Enum.Font.SourceSansBold
YTButton.Text = "🎥 Reels & Guides"
YTButton.TextColor3 = Color3.fromRGB(255, 255, 255)
YTButton.TextSize = 14
YTCorner.Parent = YTButton

-- إعداد نافذة الريلز واليوتيوب
YTFrame.Name = "YTFrame"
YTFrame.Parent = ScreenGui
YTFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
YTFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
YTFrame.Position = UDim2.new(0.5, -160, 0.5, -110)
YTFrame.Size = UDim2.new(0, 320, 0, 220)
YTFrame.Visible = false
YTFrame.Active = true
YTFrame.Draggable = true
YTFrameCorner.Parent = YTFrame

YTTitle.Parent = YTFrame
YTTitle.BackgroundTransparency = 1.00
YTTitle.Position = UDim2.new(0, 10, 0, 10)
YTTitle.Size = UDim2.new(0, 250, 0, 30)
YTTitle.Font = Enum.Font.SourceSansBold
YTTitle.Text = "YouTube & Reels Guides"
YTTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
YTTitle.TextSize = 15

CloseYT.Name = "CloseYT"
CloseYT.Parent = YTFrame
CloseYT.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseYT.Position = UDim2.new(0, 280, 0, 10)
CloseYT.Size = UDim2.new(0, 30, 0, 30)
CloseYT.Font = Enum.Font.SourceSansBold
CloseYT.Text = "X"
CloseYT.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseYT.TextSize = 14
local CloseCorner = Instance.new("UICorner", CloseYT)

InfoLabel.Parent = YTFrame
InfoLabel.BackgroundTransparency = 1.00
InfoLabel.Position = UDim2.new(0, 15, 0, 50)
InfoLabel.Size = UDim2.new(0, 290, 0, 100)
InfoLabel.Font = Enum.Font.SourceSans
InfoLabel.Text = "بسبب قيود حماية روبلوكس ودلتا، لا يمكن تشغيل فيديو مباشر داخل اللعبة.\n\nولكن تم تخصيص هذا القسم لعرض أسرار وطرق سرقة البيض الفعالة وجعل السكربت يركز كلياً على جمع بيض الديفاين بدون أي لاج!"
InfoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
InfoLabel.TextSize = 13
InfoLabel.TextWrapped = true

CopyLinkButton.Name = "CopyLinkButton"
CopyLinkButton.Parent = YTFrame
CopyLinkButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
CopyLinkButton.Position = UDim2.new(0, 15, 0, 160)
CopyLinkButton.Size = UDim2.new(0, 290, 0, 40)
CopyLinkButton.Font = Enum.Font.SourceSansBold
CopyLinkButton.Text = "نسخ رابط الشروحات والريلز"
CopyLinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyLinkButton.TextSize = 14
CopyCorner.Parent = CopyLinkButton

-- وظيفة زر تقليل اللاج الفعالة
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

-- فتح وإغلاق النافذة
YTButton.MouseButton1Click:Connect(function()
    YTFrame.Visible = not YTFrame.Visible
end)

CloseYT.MouseButton1Click:Connect(function()
    YTFrame.Visible = false
end)

-- نسخ رابط احتياطي أو إظهار تنبيه عند الضغط
CopyLinkButton.MouseButton1Click:Connect(function()
    pcall(function()
        setclipboard("https://www.youtube.com/results?search_query=Steal+an+Egg+Divine+eggs+roblox")
    end)
    CopyLinkButton.Text = "تم نسخ رابط البحث بنجاح!"
    task.wait(2)
    CopyLinkButton.Text = "نسخ رابط الشروحات والريلز"
end)

-- سكربت سرقة بيض الديفاين السريع والمضمون في الخلفية
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

print("تم إصلاح الكود وتثبيته ليعمل بكفاءة عالية على Delta!")
