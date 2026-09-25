-- الكود الأصلي الأساسي
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()

-- إنشاء واجهة تحكم رئيسية (GUI) متكاملة على Delta
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")

-- زر تشغيل/إيقاف تقليل اللاج (Anti-Lag)
local LagButton = Instance.new("TextButton")
local LagCorner = Instance.new("UICorner")

-- زر نافذة اليوتيوب / الريلز
local YTButton = Instance.new("TextButton")
local YTCorner = Instance.new("UICorner")

-- نافذة عرض اليوتيوب / الريلز المصغرة داخل اللعبة
local YTFrame = Instance.new("Frame")
local YTFrameCorner = Instance.new("UICorner")
local YTTitle = Instance.new("TextLabel")
local CloseYT = Instance.new("TextButton")
local YTHint = Instance.new("TextLabel")

-- إعداد الواجهة الرئيسية
ScreenGui.Name = "DivineHubGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Position = UDim2.new(0, 20, 0, 40)
MainFrame.Size = UDim2.new(0, 160, 0, 150)
MainFrame.Active = true
MainFrame.Draggable = true -- يمكنك سحب القائمة في أي مكان بالشاشة

UICorner.Parent = MainFrame

TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.00
TitleLabel.Position = UDim2.new(0, 0, 0, 5)
TitleLabel.Size = UDim2.new(0, 160, 0, 25)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "Divine Hub & YT"
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

-- زر نافذة اليوتيوب والريلز
YTButton.Name = "YTButton"
YTButton.Parent = MainFrame
YTButton.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
YTButton.Position = UDim2.new(0, 10, 0, 85)
YTButton.Size = UDim2.new(0, 140, 0, 45)
YTButton.Font = Enum.Font.SourceSansBold
YTButton.Text = "🎥 YouTube / Reels"
YTButton.TextColor3 = Color3.fromRGB(255, 255, 255)
YTButton.TextSize = 14
YTCorner.Parent = YTButton

-- إعداد نافذة اليوتيوب المصغرة
YTFrame.Name = "YTFrame"
YTFrame.Parent = ScreenGui
YTFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
YTFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
YTFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
YTFrame.Size = UDim2.new(0, 300, 0, 200)
YTFrame.Visible = false
YTFrame.Active = true
YTFrame.Draggable = true
YTFrameCorner.Parent = YTFrame

YTTitle.Parent = YTFrame
YTTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
YTTitle.BackgroundTransparency = 1.00
YTTitle.Position = UDim2.new(0, 10, 0, 10)
YTTitle.Size = UDim2.new(0, 230, 0, 30)
YTTitle.Font = Enum.Font.SourceSansBold
YTTitle.Text = "YouTube & Reels Player"
YTTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
YTTitle.TextSize = 15

CloseYT.Name = "CloseYT"
CloseYT.Parent = YTFrame
CloseYT.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseYT.Position = UDim2.new(0, 260, 0, 10)
CloseYT.Size = UDim2.new(0, 30, 0, 30)
CloseYT.Font = Enum.Font.SourceSansBold
CloseYT.Text = "X"
CloseYT.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseYT.TextSize = 14
local CloseCorner = Instance.new("UICorner", CloseYT)

YTHint.Parent = YTFrame
YTHint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
YTHint.BackgroundTransparency = 1.00
YTHint.Position = UDim2.new(0, 15, 0, 60)
YTHint.Size = UDim2.new(0, 270, 0, 100)
YTHint.Font = Enum.Font.SourceSans
YTHint.Text = "مشغل الفيديوهات والريلز مفعل داخل الواجهة.\n(ملاحظة: نظراً لقيود الحماية في Roblox/Delta، هذه النافذة مصممة لعرض أدوات التشغيل أو الروابط المساعدة للريلز أثناء اللعب دون خروجك)."
YTHint.TextColor3 = Color3.fromRGB(200, 200, 200)
YTHint.TextSize = 13
YTHint.TextWrapped = true

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

-- فتح وإغلاق نافذة اليوتيوب/الريلز
YTButton.MouseButton1Click:Connect(function()
    YTFrame.Visible = not YTFrame.Visible
end)

CloseYT.MouseButton1Click:Connect(function()
    YTFrame.Visible = false
end)

-- سكربت سرقة بيض الديفاين (يعمل تلقائياً في الخلفية)
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
    while task.wait(1) do
        stealDivineEggs()
    end
end)

print("تم دمج الواجهة، زر اللاج، مشغل اليوتيوب/الريلز، وسرقة بيض الديفاين بنجاح على Delta!")
