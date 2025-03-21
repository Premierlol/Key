game.Players.localPlayer.PlayerGui.InGameUI.Scoreboard.Txt.Text = ("NOOB")


wait(1)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:FindFirstChild("PlayerGui")

local button = Instance.new("ImageButton")
button.Size = UDim2.new(0, 50, 0, 50)
button.Position = UDim2.new(0.5, -600, 0.4, -100)
button.Image = "http://www.roblox.com/asset/?id=139234056921834"
button.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 10)
uiCorner.Parent = button

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 1
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.LineJoinMode = Enum.LineJoinMode.Round
uiStroke.Color = Color3.fromRGB(255, 0, 0)
uiStroke.Transparency = 0
uiStroke.Parent = button

local function onButtonClick()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.LeftControl, false, game)
end

button.MouseButton1Click:Connect(onButtonClick)


wait(3)
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Blue Lock: Rivals (Premium) ",
    SubTitle = "xVbm Hub",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Transparency = false,
    Theme = "Rose",
    MinimizeKey = Enum.KeyCode.LeftControl
})


local Tabs = {
	h = Window:AddTab({ Title = "Home", Icon = "activity" }),
    Main = Window:AddTab({ Title = "Legit", Icon = "align-justify" }),
	t = Window:AddTab({ Title = "Team", Icon = "user-plus" }),
	s = Window:AddTab({ Title = "Spin", Icon = "gauge" }),
	l = Window:AddTab({ Title = "Lag", Icon = "shield-off" }),
}

local Options = Fluent.Options




  Tabs.h:AddParagraph({
        Title = "🔻 STATUS",
        Content = ""
    })

	







local section = Tabs.Main:AddSection("[🌿] Farm Ball")


 local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "🥅  Auto Goal", Default = false })

    Toggle:OnChanged(function(v)
        _G.AutoGoal = v

while _G.AutoGoal do
    wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-243.287231, 11.1665344, -50.8097, -0.0131622693, 1.93693168e-08, 0.999913394, -1.06111375e-09, 1, -1.9384963e-08, -0.999913394, -1.31617195e-09, -0.0131622693)
end
    end)

	local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "⚽  Auto Tp to ball", Default = false })

    Toggle:OnChanged(function(v)
        _G.Tpball = v


while _G.Tpball do
    local ball = workspace:FindFirstChild("Football")
    
    if ball and not ball:FindFirstChild("Creator") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ball.Position)
    end
    wait(0.1)
        end
    end)
    
    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "🌟  Auto Dribbling ( 50 % )", Default = false })

    Toggle:OnChanged(function(v)
        _G.Dribbling = v


while _G.Dribbling do
    wait(0.1)
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Dribble"):FireServer()
    wait(3.00)
    wait(0.1)
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Dribble"):FireServer()
    
end
    end)
    
    
    
    
    
    
    


   

	local section = Tabs.Main:AddSection("[👀] ESP All")

	local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "🧶  ESP ball", Default = false })

    Toggle:OnChanged(function(v)
        print(v)
    end)

	local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "👤  ESP Player", Default = false })

    Toggle:OnChanged(function(v)
        print(v)
    end)
    
    local section = Tabs.Main:AddSection("[🚀] Kaiser Style")
    
    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind Kaiser Impact",
        Mode = "Toggle",
        Default = "v",


        Callback = function(Value)
            Options.Kaiser:SetValue(Value)
        end,

        
        ChangedCallback = function(New)
            Options.Kaiser:SetNew(false)
        end
    })

    
    
    
    local Toggle = Tabs.Main:AddToggle("Kaiser", {Title = "💥 kaiser Impact", Default = false })

    Toggle:OnChanged(function(v)
        _G.Kaiserimpack = v



    while _G.Kaiserimpack do
    
    local args = {
        [1] = 221,
        [4] = Vector3.new(-0.02928086556494236, -0.12856759130954742, 0.9912683367729187)
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Shoot"):FireServer(unpack(args))
    wait(0.1)
    end
    end)
    Options.MyToggle:SetValue(false)





local section = Tabs.Main:AddSection("[🧤] Goal Keeper (Testsing)")
   
   
    local Toggle = Tabs.Main:AddToggle("GoalK", {Title = "Auto Goal Keeper (Auto Save)", Default = false })

    Toggle:OnChanged(function(v)
        _G.Tpball = v


while _G.Tpball do
    local ball = workspace:FindFirstChild("Football")
    
    if ball and not ball:FindFirstChild("Creator") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(ball.Position)
    end

    wait(0.1)
end

    end)

    Options.MyToggle:SetValue(false)
    
    local Keybind = Tabs.Main:AddKeybind("Keybind", {
        Title = "KeyBind Goal Keeper",
        Mode = "Toggle",
        Default = "F",


        Callback = function(Value)
            Options.GoalK:SetValue(Value)
        end,

        
        ChangedCallback = function(New)
            Options.GoalK:SetNew(false)
        end
    })









    

    
    
    
    local section = Tabs.Main:AddSection("[🌐] Legits Server")
    
    Tabs.Main:AddButton({
        Title = "Get Vip 💎",
        Description = "Very Good Vip FREE!",
        Callback = function()
            Window:Dialog({
                Title = "Get Vip FREE?",
                Content = "This is a Woking Vip FREE",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function(v)
                            game.Players.localPlayer.HasVIP.Value = true
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function(v)
                            print(v)
                        end
                    }
                }
            })
        end
    })
   
   
   
   
   
   
   
   
   
   
   
   local section = Tabs.Main:AddSection("[∞] infiniti Stamina")
   
   Tabs.Main:AddButton({
        Title = "infiniti Stamina Status",
        Description = "",
        Callback = function()
            Window:Dialog({
                Title = "infiniti Stamina ?",
                Content = "This is a infiniti Stamina Working",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            local args = {
                                [1] = 0/0
                            }
                            
                            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("StaminaService"):WaitForChild("RE"):WaitForChild("DecreaseStamina"):FireServer(unpack(args))
                
                    end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Naaaa")
                        end
                    }
                }
            })
        end
    })
   
   
    
    
    
    
    
    
    
    
    
    
    
    local section = Tabs.t:AddSection("[🛡️] Home TEAM")
    

    Tabs.t:AddParagraph({
        Title = "HOME TEAM",
        Content = "This one belongs to Team Home"
    })
    
    
    local Toggle = Tabs.t:AddToggle("MyToggle", {Title = "⚔️  HOME CF", Default = false })

    Toggle:OnChanged(function(v)
        _G.CFH = v
        while _G.CFH do
        
        local args = {
			    
            [1] = "Home",
            [2] = "CF"
        }
            wait(0.1)
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TeamService"):WaitForChild("RE"):WaitForChild("Select"):FireServer(unpack(args))
    wait(559)
    end
    end)
    
    local Toggle = Tabs.t:AddToggle("MyToggle", {Title = "⚔️  HOME LW", Default = false })

    Toggle:OnChanged(function(v)
        _G.LWH = v

  while _G.LWH do
    local args = {
    [1] = "Home",
    [2] = "LW"
}
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TeamService"):WaitForChild("RE"):WaitForChild("Select"):FireServer(unpack(args))
  wait(559)
end  
    end)
    
    local Toggle = Tabs.t:AddToggle("MyToggle", {Title = "⚔️  HOME RW", Default = false })

    Toggle:OnChanged(function(v)
        _G.LWH = v

  while _G.LWH do
    local args = {
    [1] = "Home",
    [2] = "RW"
}
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TeamService"):WaitForChild("RE"):WaitForChild("Select"):FireServer(unpack(args))
  wait(559)
end  
    end)
    
    local Toggle = Tabs.t:AddToggle("MyToggle", {Title = "⚔️  HOME CM", Default = false })

    Toggle:OnChanged(function(v)
        _G.LWH = v

  while _G.LWH do
    local args = {
    [1] = "Home",
    [2] = "CM"
}
wait(0.1)
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TeamService"):WaitForChild("RE"):WaitForChild("Select"):FireServer(unpack(args))
  wait(559)
end  
    end)
    
    local Toggle = Tabs.t:AddToggle("MyToggle", {Title = "⚔️  HOME GK", Default = false })

    Toggle:OnChanged(function(v)
        _G.LWH = v

  while _G.LWH do
    local args = {
    [1] = "Home",
    [2] = "GK"
    }
    wait(0.1)
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TeamService"):WaitForChild("RE"):WaitForChild("Select"):FireServer(unpack(args))
      wait(559)
end  
    end)
    
    
    
    
    
    local section = Tabs.l:AddSection("[💣️] Home TEAM")
    
    local Toggle = Tabs.l:AddToggle("MyToggle", {Title = "🤯 Random Ball", Default = false })

    Toggle:OnChanged(function(v)
        _G.Kaiserimpack = v



    while _G.Kaiserimpack do
    
    local args = {
        [1] = 200000000000000000000000000000000,
        [4] = Vector3.new(-0.02928086556494236, -0.12856759130954742, 0.9912683367729187)
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("BallService"):WaitForChild("RE"):WaitForChild("Shoot"):FireServer(unpack(args))
    wait(0.1)
    end
    end)
    
    
    

    
    



    

    












































Window:SelectTab(1)

Fluent:Notify({
    Title = "Yes!",
    Content = "",
    Duration = 8
})



