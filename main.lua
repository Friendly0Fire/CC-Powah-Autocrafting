-- Uncomment those lines if you want to keep
-- the program as seperate files.
--dofile("slotChecking.lua")
--dofile("crafting.lua")
--dofile("nextCrafting.lua")

function writeMessage(message)
    term.clear()
    term.setCursorPos(1, 1)
    print("+-----------------------------+")
    print("|Welcome to Powah Autocrafting|")
    print("+-----------------------------+")
    print()
    print(message)
end

writeMessage("Startup finished")
while true do
    doCrafting()
    -- Wait for the Redstone Signal to update
    sleep(0.6)
    -- Spin in a loop till crafting is done
    while redstone.getInput("top") do
        sleep(0.6)
    end
end
