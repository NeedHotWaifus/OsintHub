getgenv().Sky = true 
getgenv().SkyAmount = 90


function createNotification(title, message)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = message,
        Duration = 2 
    })
end


function toggleSky()
    getgenv().Sky = not getgenv().Sky
    if getgenv().Sky then
        createNotification("Osint", "anti is enabled.")
    else
        createNotification("Osint", "anti is disabled.")
    end
end


function increaseSkyHeight()
    getgenv().SkyAmount = getgenv().SkyAmount + 10 -- Increase by 10 (you can change this value)
    createNotification("Osint", "Sky Height increased to: " .. getgenv().SkyAmount)
end


local userInputService = game:GetService("UserInputService")

userInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.T then -- Press "T" to toggle
        toggleSky()
    elseif input.KeyCode == Enum.KeyCode.H then -- Press "H" to increase anti
        increaseSkyHeight()
    end
end)


game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().Sky ~= false then
        local vel = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, getgenv().SkyAmount, 0)
        game:GetService("RunService").RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = vel
    end
end)
print("this works t to toggle, h to go higher")
