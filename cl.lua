-- change the config table variable values to your liking.
-- Frequencies are the numbers about. 
-- Densities are the gross amounts.

local config = {
    pedDensity = 0.8,
    pedFrequency = 1.0,
    trafficFrequency = 0.5,
    parkingFrequenxy = 0.3,
    vehicleDensity = 0.4
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetPedDensityMultiplierThisFrame(config.pedDensity)
        SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency)
        SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(config.parkingFrequency)
        SetVehicleDensityMultiplierThisFrame(config.vehicleDensity)
    end
end)
