-- الكود الأصلي الأساسي
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()

-- الحصول على معرف اللاعب وجلب صورة الأفاتار بدقة عالية
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local userId = LocalPlayer.UserId
local profileLink = "https://www.roblox.com/users/" .. userId .. "/profile"

local thumbType = Enum.ThumbnailType.HeadShot
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)

-- إنشاء واجهة التحكم الرئيسية (GUI) على Delta
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleLabel = Instance.new("TextLabel")

-- زر تقليل اللاج (Anti-Lag)
local LagButton = Instance.new("TextButton")
local LagCorner = Instance.new("UICorner")

-- زر صورتك الشخصية (مطابق للشكل المطلوب)
local ProfileIconButton = Instance.new("ImageButton")
local IconCorner = Instance.new("UICorner")

-- زر الوظيفة الثاني أو النص التوضيحي مع المعرف lloovv9966
local ActionButton = Instance.new("TextButton")
local ActionCorner = Instance.new("UICorner")

-- نافذة الملف الشخصي الكبيرة التي تفتح عند الضغط على صورتك
local ProfileFrame = Instance.new("Frame")
local ProfileFrameCorner = Instance.new("UICorner")
local ProfileTitle = Instance.new("TextLabel")
local CloseProfile = Instance.new("TextButton")

local AvatarImage = Instance.new("ImageLabel")
local ImageCorner = Instance.new("UICorner")

local NameLabel = Instance.new("TextLabel")
local CopyProfileButton = Instance.new("TextButton")
local CopyCorner = Instance.new("UICorner")

-- إعداد الواجهة الرئيسية
ScreenGui.Name = "DivineHubGUI"
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Position = UDim2.new(0, 20, 0, 40)
MainFrame.Size = UDim2.new(0, 210, 0, 155)
MainFrame.Active = true
MainFrame.Draggable = true
UICorner.Parent = MainFrame

TitleLabel.Parent = MainFrame
TitleLabel.BackgroundTransparency = 1.00
TitleLabel.Position = UDim2.new(0, 0, 0, 5)
TitleLabel.Size = UDim2.new(0, 210, 0, 25)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "Divine Hub & lloovv9966"
TitleLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
TitleLabel.TextSize: 15

-- زر تقليل اللاج
LagButton.Name = "LagButton"
LagButton.Parent = MainFrame
LagButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
LagButton.Position = UDim2.new(0, 10, 0, 35)
LagButton.Size = UDim2.new(0, 190, 0, 40)
LagButton.Font = Enum.Font.SourceSansBold
LagButton.Text = "Anti-Lag: OFF"
LagButton.TextColor3 = Color3.fromRGB(255, 255, 255)
LagButton.TextSize = 14
LagCorner.Parent = LagButton

-- أيقونة صورتك الشخصية على الجانب (مثل تصميم الشعلة في الصورة المرفقة)
ProfileIconButton.Name = "ProfileIconButton"
ProfileIconButton.Parent = MainFrame
ProfileIconButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ProfileIconButton.Position = UDim2.new(0, 10, 0, 85)
ProfileIconButton.Size = UDim2.new(0, 55, 0, 55)
ProfileIconButton.Image = isReady and content or ""
IconCorner.Parent = ProfileIconButton

-- زر إضافي بجانب صورتك يكتب اسمك أو يفتح القائمة
ActionButton.Name = "ActionButton"
ActionButton.Parent = MainFrame
ActionButton.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
ActionButton.Position = UDim2.new(0, 75, 0, 85)
ActionButton.Size = UDim2.new(0, 125, 0, 55)
ActionButton.Font = Enum.Font.SourceSansBold
ActionButton.Text = "👤 lloovv9966"
ActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ActionButton.TextSize = 14
ActionCorner.Parent = ActionButton

-- إعداد نافذة الملف الشخصي المنبثقة
ProfileFrame.Name = "ProfileFrame"
ProfileFrame.Parent = ScreenGui
ProfileFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ProfileFrame.BorderColor3 = Color3.fromRGB(120, 0, 200)
ProfileFrame.Position = UDim2.new(0.5, -125, 0.5, -135)
ProfileFrame.Size = UDim2.new(0, 250, 0, 270)
ProfileFrame.Visible = false
ProfileFrame.Active = true
ProfileFrame.Draggable = true
ProfileFrameCorner.Parent = ProfileFrame

ProfileTitle.Parent = ProfileFrame
ProfileTitle.BackgroundTransparency = 1.00
ProfileTitle.Position = UDim2.new(0, 10, 0, 10)
ProfileTitle.Size = UDim2.new(0, 190, 0, 30)
ProfileTitle.Font = Enum.Font.SourceSansBold
ProfileTitle.Text = "My Profile"
ProfileTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ProfileTitle.TextSize = 15

CloseProfile.Name = "CloseProfile"
CloseProfile.Parent = ProfileFrame
CloseProfile.BackgroundColor3 = Color3.fromRGB(200, 0, 0)
CloseProfile.Position = UDim2.new(0, 210, 0, 10)
CloseProfile.Size = UDim2.new(0, 30, 0, 30)
CloseProfile.Font = Enum.Font.SourceSansBold
CloseProfile.Text = "X"
CloseProfile.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseProfile.TextSize = 14
local CloseCorner = Instance.new("UICorner", CloseProfile)

AvatarImage.Name = "AvatarImage"
AvatarImage.Parent = ProfileFrame
AvatarImage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
AvatarImage.Position = UDim2.new(0, 75, 0, 50)
AvatarImage.Size = UDim2.new(0, 100, 0, 100)
AvatarImage.Image = isReady and content or ""
ImageCorner.Parent = AvatarImage

NameLabel.Parent = ProfileFrame
NameLabel.BackgroundTransparency = 1.00
NameLabel.Position = UDim2.new(0, 10, 0, 155)
NameLabel.Size = UDim2.new(0, 230, 0, 30)
NameLabel.Font = Enum.Font.SourceSansBold
NameLabel.Text = "lloovv9966"
NameLabel.TextColor3 = Color3.fromRGB(0, 255, 128)
NameLabel.TextSize = 16
NameLabel.TextWrapped = true

CopyProfileButton.Name = "CopyProfileButton"
CopyProfileButton.Parent = ProfileFrame
CopyProfileButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
CopyProfileButton.Position = UDim2.new(0, 20, 0, 200)
CopyProfileButton.Size = UDim2.new(0, 210, 0, 45)
CopyProfileButton.Font = Enum.Font.SourceSansBold
CopyProfileButton.Text = "نسخ رابط الحساب"
CopyProfileButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyProfileButton.TextSize = 14
CopyCorner.Parent = CopyProfileButton

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

-- فتح وإغلاق النافذة عند الضغط على صورتك أو زر اسمك
local function toggleProfile()
    ProfileFrame.Visible = not ProfileFrame.Visible
end

ProfileIconButton.MouseButton1Click:Connect(toggleProfile)
ActionButton.MouseButton1Click:Connect(toggleProfile)

CloseProfile.MouseButton1Click:Connect(function()
    ProfileFrame.Visible = false
end)

CopyProfileButton.MouseButton1Click:Connect(function()
    pcall(function()
        setclipboard(profileLink)
    end)
    CopyProfileButton.Text = "تم نسخ الرابط بنجاح!"
    task.wait(2)
    CopyProfileButton.Text = "نسخ رابط الحساب"
end)

-- سكربت سرقة بيض الديفاين في الخلفية
local Workspace = game:GetService("Workspace")
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

print("تم تطبيق صورتك كأيقونة جانبية وتثبيت اسم lloovv9966 بنجاح!")
