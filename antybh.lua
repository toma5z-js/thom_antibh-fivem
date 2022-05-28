
-- anti bunnyhop by thom 






Citizen.CreateThread(function ()
	while true do

		local player = PlayerPedId()
		Citizen.Wait(75)
		if IsPedOnFoot(player) and (IsPedRunning(player) or IsPedSprinting(player)) and not IsPedClimbing(player) and IsPedJumping(player) and not IsPedRagdoll(player) and not IsPedSwimming(player) then
		
			local rng = math.random()
			if rng < 0.85 then -- ragdoll chance 70% = 0.7
				Citizen.Wait(400)
				SetPedToRagdoll(player, 6500, 1, 2) 
				ShakeGameplayCam('JOLT_SHAKE', 0.05)
			else	
				Citizen.Wait(2000)
			end
		end
	end
	
end)



-- anti bunnyhop by thom 
