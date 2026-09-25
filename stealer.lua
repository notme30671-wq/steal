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

-- زر نافذة اليوتيوب / الريلز
local YTButton = Instance.new("TextButton")
local YTCorner = Instance.new("UICorner")

-- نافذة اليوتيوب والريلز التفاعلية
local YTFrame = Instance.new("Frame")
local YTFrameCorner = Instance.new("UICorner")
local YTTitle = Instance.new("TextLabel")
local CloseYT = Instance.new("TextButton")

-- إضافات جديدة لجعل النافذة تفاعلية (خانات كتابة الروابط ومشغل الفيديو)
local LinkBox = Instance.new("TextBox")
local BoxCorner = Instance.new("UICorner")
local PlayButton = Instance.new("TextButton")
local PlayCorner = Instance.new("UICorner")
local StatusLabel = Instance.new("TextLabel")
local VideoContainer = Instance.new("VideoFrame")

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

-- إعداد نافذة اليوتيوب والريلز التفاعلية
YTFrame.Name = "YTFrame"
YTFrame.Parent = ScreenGui
YTFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
YTFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)
YTFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
YTFrame.Size = UDim2.new(0, 350, 0, 250)
YTFrame.Visible = false
YTFrame.Active = true
YTFrame.Draggable = true
YTFrameCorner.Parent = YTFrame

YTTitle.Parent = YTFrame
YTTitle.BackgroundTransparency = 1.00
YTTitle.Position = UDim2.new(0, 10, 0, 10)
YTTitle.Size = UDim2.new(0, 280, 0, 30)
YTTitle.Font = Enum.Font.SourceSansBold
YTTitle.Text = "YouTube & Reels Player"
YTTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
YTTitle.TextSize = 15

CloseYT.Name = "CloseYT"
CloseYT.Parent = YTFrame
CloseYT.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseYT.Position = UDim2.new(0, 310, 0, 10)
CloseYT.Size = UDim2.new(0, 30, 0, 30)
CloseYT.Font = Enum.Font.SourceSansBold
CloseYT.Text = "X"
CloseYT.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseYT.TextSize = 14
local CloseCorner = Instance.new("UICorner", CloseYT)

-- صندوق إدخال رابط الفيديو / الريلز
LinkBox.Name = "LinkBox"
LinkBox.Parent = YTFrame
LinkBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
LinkBox.Position = UDim2.new(0, 10, 0, 50)
LinkBox.Size = UDim2.new(0, 230, 0, 35)
LinkBox.Font = Enum.Font.SourceSans
LinkBox.PlaceholderText = "الصق رابط اليوتيوب أو الريلز هنا..."
LinkBox.Text = ""
LinkBox.TextColor3 = Color3.fromRGB(255, 255, 255)
LinkBox.TextSize = 13
BoxCorner.Parent = LinkBox

-- زر التشغيل
PlayButton.Name = "PlayButton"
PlayButton.Parent = YTFrame
PlayButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
PlayButton.Position = UDim2.new(0, 250, 0, 50)
PlayButton.Size = UDim2.new(0, 90, 0, 35)
PlayButton.Font = Enum.Font.SourceSansBold
PlayButton.Text = "تشغيل"
PlayButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayButton.TextSize = 14
PlayCorner.Parent = PlayButton

-- مشغل الفيديو الداخلي في روبلوكس (VideoFrame)
VideoContainer.Name = "VideoContainer"
VideoContainer.Parent = YTFrame
VideoContainer.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VideoContainer.Position = UDim2.new(0, 10, 0, 95)
VideoContainer.Size = UDim2.new(0, 330, 0, 105)
VideoContainer.Visible = false

StatusLabel.Parent = YTFrame
StatusLabel.BackgroundTransparency = 1.00
StatusLabel.Position = UDim2.new(0, 10, 0, 210)
StatusLabel.Size = UDim2.new(0, 330, 0, 30)
StatusLabel.Font = Enum.Font.SourceSans
StatusLabel.Text = "أدخل رفيقك الرابط واضغط تشغيل (يدعم معرفات الفيديوهات المتاحة)"
StatusLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
StatusLabel.TextSize = 12

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

-- فتح وإغلاق النافذة
YTButton.MouseButton1Click:Connect(function()
    YTFrame.Visible = not YTFrame.Visible
end)

CloseYT.MouseButton1Click:Connect(function()
    YTFrame.Visible = false
end)

-- محاكاة زر التشغيل
PlayButton.MouseButton1Click:Connect(function()
    local text = LinkBox.Text
    if text ~= "" then
        StatusLabel.Text = "جاري محاولة تحميل وتشغيل الوسائط..."
        task.wait(1)
        -- روبلوكس تمنع تشغيل روابط يوتيوب الخارجية المباشرة، لذا يتم دعم أصول روبلوكس البرمجية والفيديوهات المتاحة
        if string.find(text, "rbxassetid") or tonumber(text) then
            VideoContainer.Video = "rbxassetid://" .. text
            VideoContainer.Visible = true
            VideoContainer:Play()
            StatusLabel.Text = "تم التشغيل بنجاح!"
        else
            StatusLabel.Text = "يرجى إدخال معرف فيديو صحيح (Asset ID) متوافق مع روبلوكس."
        end
    else
        StatusLabel.Text = "الرجاء إدخال رابط أو معرف صحيح أولاً!"
    end
end)

-- سكربت سرقة بيض الديفاين (يعمل في الخلفية)
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

print("تم تحديث الواجهة لتصبح تفاعلية بالكامل!")
