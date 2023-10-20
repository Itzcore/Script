function IncreasePlayerHealth()
    local playerPed = GetPlayerPed(-1)
    local currentHealth = GetEntityHealth(playerPed)
    local newHealth = currentHealth + 40
    SetEntityHealth(playerPed, newHealth)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsDisabledControlJustPressed(0, 38) then
            IncreasePlayerHealth()
        end
    end
end)
