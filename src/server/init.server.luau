local Shared = game:GetService("ReplicatedStorage"):WaitForChild("Shared")

local Hitbox = require(Shared:WaitForChild("Hitbox"))

local hitbox = Hitbox.new({workspace.Part})

-- hitbox.Signal:Connect(function(Part)
--     print(`Hit Part: {Part}`)
-- end)

hitbox.PlayerSignal:Connect(function(Character, Part)
    print(`Hit Character: {Character}` .. ` {Part}`)
end)

hitbox.FrameRate = "Unlimited"

hitbox:Enable(10)
