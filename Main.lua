local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/dvrk666/Private-menu/main/source.lua'))()
 
local Window = Rayfield:CreateWindow({
    Name = "A|MZ PRIVATE CHEAT",
    LoadingTitle = "Loading . . . PRIVATE INJECTED",
    LoadingSubtitle = "By 666_BIOHAZARD",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil,
       FileName = "A|MZ PRIVATE"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {""}
    }
 })
 
 local MainTab = Window:CreateTab("This hack is Private", nill)
 local MainSection = MainTab:CreateSection("Main")
 
 Rayfield:Notify({
    Title = "Executed A|MZ",
    Content = "Have Fun with A|MZ PRIVATE!",
    Duration = 2.5,
    Image = nill,
    Actions = {
       Ignore = {
           Name = "KILL THEM ALL",
          Callback = function()
          print("The user tapped KILL THEM ALL")
       end
    },
 },
 })
 
 local Button = MainTab:CreateButton({
    Name = "Aimbot Enemy",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Eags1vTx"))()
    end,
 })
 
 local Button = MainTab:CreateButton({
    Name = "Aimbot All",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/whhdUBTM"))()
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Box ESP",
    Callback = function()
        local plr = game.Players.LocalPlayer
        local camera = game.Workspace.CurrentCamera
        
        for i, v in pairs(game.Players:GetChildren()) do
            local Top = Drawing.new("Line")
            Top.Visible = false
            Top.From = Vector2.new(0, 0)
            Top.To = Vector2.new(200, 200)
            Top.Color = Color3.fromRGB(255, 0, 0)
            Top.Thickness = 2
            Top.Transparency = 1
        
            local Bottom = Drawing.new("Line")
            Bottom.Visible = false
            Bottom.From = Vector2.new(0, 0)
            Bottom.To = Vector2.new(200, 200)
            Bottom.Color = Color3.fromRGB(255, 0, 0)
            Bottom.Thickness = 2
            Bottom.Transparency = 1
        
            local Left = Drawing.new("Line")
            Left.Visible = false
            Left.From = Vector2.new(0, 0)
            Left.To = Vector2.new(200, 200)
            Left.Color = Color3.fromRGB(255, 0, 0)
            Left.Thickness = 2
            Left.Transparency = 1
        
            local Right = Drawing.new("Line")
            Right.Visible = false
            Right.From = Vector2.new(0, 0)
            Right.To = Vector2.new(200, 200)
            Right.Color = Color3.fromRGB(255, 0, 0)
            Right.Thickness = 2
            Right.Transparency = 1
        
            function ESP()
                local connection
                connection = game:GetService("RunService").RenderStepped:Connect(function()
                    if v.Character ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v.Name ~= plr.Name  and v.Character.Humanoid.Health > 0 then 
                        local ScreenPos, OnScreen = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                        if OnScreen then
                            local Scale = v.Character.Head.Size.Y/2
                            local Size = Vector3.new(2, 3, 0) * (Scale * 2)
                            local humpos = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                            local TL = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, 0)).p)
                            local TR = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, 0)).p)
                            local BL = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, 0)).p)
                            local BR = camera:WorldToViewportPoint((v.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, 0)).p)
        
                            Top.From = Vector2.new(TL.X, TL.Y)
                            Top.To = Vector2.new(TR.X, TR.Y)
        
                            Left.From = Vector2.new(TL.X, TL.Y)
                            Left.To = Vector2.new(BL.X, BL.Y)
        
                            Right.From = Vector2.new(TR.X, TR.Y)
                            Right.To = Vector2.new(BR.X, BR.Y)
        
                            Bottom.From = Vector2.new(BL.X, BL.Y)
                            Bottom.To = Vector2.new(BR.X, BR.Y)
        
                            if v.TeamColor == plr.TeamColor then
                                Top.Color = Color3.fromRGB(0, 255, 0)
                                Left.Color = Color3.fromRGB(0, 255, 0)
                                Bottom.Color = Color3.fromRGB(0, 255, 0)
                                Right.Color = Color3.fromRGB(0, 255, 0)
                            else 
                                Top.Color = Color3.fromRGB(255, 0, 0)
                                Left.Color = Color3.fromRGB(255, 0, 0)
                                Bottom.Color = Color3.fromRGB(255, 0, 0)
                                Right.Color = Color3.fromRGB(255, 0, 0)
                            end
        
                            Top.Visible = true
                            Left.Visible = true
                            Bottom.Visible = true
                            Right.Visible = true
                        else 
                            Top.Visible = false
                            Left.Visible = false
                            Bottom.Visible = false
                            Right.Visible = false
                        end
                    else 
                        Top.Visible = false
                        Left.Visible = false
                        Bottom.Visible = false
                        Right.Visible = false
                        if game.Players:FindFirstChild(v.Name) == nil then
                            connection:Disconnect()
                        end
                    end
                end)
            end
            coroutine.wrap(ESP)()
        end
        
        game.Players.PlayerAdded:Connect(function(newplr) --Parameter gets the new player that has been added
            local Top = Drawing.new("Line")
            Top.Visible = false
            Top.From = Vector2.new(0, 0)
            Top.To = Vector2.new(200, 200)
            Top.Color = Color3.fromRGB(255, 0, 0)
            Top.Thickness = 2
            Top.Transparency = 1
        
            local Bottom = Drawing.new("Line")
            Bottom.Visible = false
            Bottom.From = Vector2.new(0, 0)
            Bottom.To = Vector2.new(200, 200)
            Bottom.Color = Color3.fromRGB(255, 0, 0)
            Bottom.Thickness = 2
            Bottom.Transparency = 1
        
            local Left = Drawing.new("Line")
            Left.Visible = false
            Left.From = Vector2.new(0, 0)
            Left.To = Vector2.new(200, 200)
            Left.Color = Color3.fromRGB(255, 0, 0)
            Left.Thickness = 2
            Left.Transparency = 1
        
            local Right = Drawing.new("Line")
            Right.Visible = false
            Right.From = Vector2.new(0, 0)
            Right.To = Vector2.new(200, 200)
            Right.Color = Color3.fromRGB(255, 0, 0)
            Right.Thickness = 2
            Right.Transparency = 1
        
            function ESP()
                local connection
                connection = game:GetService("RunService").RenderStepped:Connect(function()
                    if newplr.Character ~= nil and newplr.Character:FindFirstChild("HumanoidRootPart") ~= nil and newplr.Name ~= plr.Name  and newplr.Character.Humanoid.Health > 0 then
                        local ScreenPos, OnScreen = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                        if OnScreen then
                            local Scale = newplr.Character.Head.Size.Y/2
                            local Size = Vector3.new(2, 3, 0) * (Scale * 2)
                            local humpos = camera:WorldToViewportPoint(newplr.Character.HumanoidRootPart.Position)
                            local TL = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, Size.Y, 0)).p)
                            local TR = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, Size.Y, 0)).p)
                            local BL = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(Size.X, -Size.Y, 0)).p)
                            local BR = camera:WorldToViewportPoint((newplr.Character.HumanoidRootPart.CFrame * CFrame.new(-Size.X, -Size.Y, 0)).p)
        
                            Top.From = Vector2.new(TL.X, TL.Y)
                            Top.To = Vector2.new(TR.X, TR.Y)
        
                            Left.From = Vector2.new(TL.X, TL.Y)
                            Left.To = Vector2.new(BL.X, BL.Y)
        
                            Right.From = Vector2.new(TR.X, TR.Y)
                            Right.To = Vector2.new(BR.X, BR.Y)
        
                            Bottom.From = Vector2.new(BL.X, BL.Y)
                            Bottom.To = Vector2.new(BR.X, BR.Y)
        
                            if newplr.TeamColor == plr.TeamColor then
                                Top.Color = Color3.fromRGB(0, 255, 0)
                                Left.Color = Color3.fromRGB(0, 255, 0)
                                Bottom.Color = Color3.fromRGB(0, 255, 0)
                                Right.Color = Color3.fromRGB(0, 255, 0)
                            else 
                                Top.Color = Color3.fromRGB(255, 0, 0)
                                Left.Color = Color3.fromRGB(255, 0, 0)
                                Bottom.Color = Color3.fromRGB(255, 0, 0)
                                Right.Color = Color3.fromRGB(255, 0, 0)
                            end
        
                            Top.Visible = true
                            Left.Visible = true
                            Bottom.Visible = true
                            Right.Visible = true
                        else 
                            Top.Visible = false
                            Left.Visible = false
                            Bottom.Visible = false
                            Right.Visible = false
                        end
                    else 
                        Top.Visible = false
                        Left.Visible = false
                        Bottom.Visible = false
                        Right.Visible = false
                        if game.Players:FindFirstChild(newplr.Name) == nil then
                            connection:Disconnect()
                        end
                    end
                end)
            end
            coroutine.wrap(ESP)()
        end)
    end,
 })

local Button = MainTab:CreateButton({
    Name = "ESP",
    Callback = function()
        local Holder = Instance.new("Folder", game.CoreGui)
Holder.Name = "ESP"
 
local Box = Instance.new("BoxHandleAdornment")
Box.Name = "nilBox"
Box.Size = Vector3.new(4, 7, 4)
Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Box.Transparency = 0.7
Box.ZIndex = 0
Box.AlwaysOnTop = true
Box.Visible = true
 
local NameTag = Instance.new("BillboardGui")
NameTag.Name = "nilNameTag"
NameTag.Enabled = false
NameTag.Size = UDim2.new(0, 200, 0, 50)
NameTag.AlwaysOnTop = true
NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
local Tag = Instance.new("TextLabel", NameTag)
Tag.Name = "Tag"
Tag.BackgroundTransparency = 1
Tag.Position = UDim2.new(0, -50, 0, 0)
Tag.Size = UDim2.new(0, 300, 0, 20)
Tag.TextSize = 20
Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
Tag.TextStrokeTransparency = 0.4
Tag.Text = "nil"
Tag.Font = Enum.Font.SourceSansBold
Tag.TextScaled = false
 
local LoadCharacter = function(v)
    repeat wait() until v.Character ~= nil
    v.Character:WaitForChild("Humanoid")
    local vHolder = Holder:FindFirstChild(v.Name)
    vHolder:ClearAllChildren()
    local b = Box:Clone()
    b.Name = v.Name .. "Box"
    b.Adornee = v.Character
    b.Parent = vHolder
    local t = NameTag:Clone()
    t.Name = v.Name .. "NameTag"
    t.Enabled = true
    t.Parent = vHolder
    t.Adornee = v.Character:WaitForChild("Head", 5)
    if not t.Adornee then
        return UnloadCharacter(v)
    end
    t.Tag.Text = v.Name
    b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
    t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
    local Update
    local UpdateNameTag = function()
        if not pcall(function()
            v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
            local maxh = math.floor(v.Character.Humanoid.MaxHealth)
            local h = math.floor(v.Character.Humanoid.Health)
            t.Tag.Text = v.Name .. "\n" .. ((maxh ~= 0 and tostring(math.floor((h / maxh) * 100))) or "0") .. "%  " .. tostring(h) .. "/" .. tostring(maxh)
        end) then
            Update:Disconnect()
        end
    end
    UpdateNameTag()
    Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
end
 
local UnloadCharacter = function(v)
    local vHolder = Holder:FindFirstChild(v.Name)
    if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
        vHolder:ClearAllChildren()
    end
end
 
local LoadPlayer = function(v)
    local vHolder = Instance.new("Folder", Holder)
    vHolder.Name = v.Name
    v.CharacterAdded:Connect(function()
        pcall(LoadCharacter, v)
    end)
    v.CharacterRemoving:Connect(function()
        pcall(UnloadCharacter, v)
    end)
    v.Changed:Connect(function(prop)
        if prop == "TeamColor" then
            UnloadCharacter(v)
            wait()
            LoadCharacter(v)
        end
    end)
    LoadCharacter(v)
end
 
local UnloadPlayer = function(v)
    UnloadCharacter(v)
    local vHolder = Holder:FindFirstChild(v.Name)
    if vHolder then
        vHolder:Destroy()
    end
end
 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    spawn(function() pcall(LoadPlayer, v) end)
end
 
game:GetService("Players").PlayerAdded:Connect(function(v)
    pcall(LoadPlayer, v)
end)
 
game:GetService("Players").PlayerRemoving:Connect(function(v)
    pcall(UnloadPlayer, v)
end)
 
game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
    end,
 })
 
 

local Button = MainTab:CreateButton({
    Name = "External ESP",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
    end,
 })
