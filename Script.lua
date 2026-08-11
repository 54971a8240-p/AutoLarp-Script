local Players = game:GetService("Players")
local player = Players.LocalPlayer

if not game:IsLoaded() then game.Loaded:Wait() end
task.wait(5)

print("[AUTO LARP] Spamming LARP Button! | Press Q to Pause/Resume")

local running = true

-- AUTO LARP Toggle
task.spawn(function()
    local qWasDown = false
    while true do
        local qDown = iskeypressed(0x51)
        if qDown and not qWasDown then
            running = not running
            print("[AUTO LARP] " .. (running and "RESUMED" or "PAUSED"))
        end
        qWasDown = qDown
        task.wait(0.1)
    end
end)

-- Key Function Loop
while true do
    if running then
        keypress(0x45)   -- press E
        task.wait(0.05)
        keyrelease(0x45) -- release E
    end
    task.wait(0.05)
end
