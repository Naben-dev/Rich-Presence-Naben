Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(discordid)

	-- Grand --
		SetDiscordRichPresenceAsset('logo')
        SetDiscordRichPresenceAssetText('nomseveur')

	-- Petit --
-- SetDiscordRichPresenceAssetSmall('logog')
-- SetDiscordRichPresenceAssetSmallText('discord.gg/vNYzKWWvJM')

	-- Bouton --

		SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/vNYzKWWvJM")

		players = {}
		for i = 0, 255 do
			if NetworkIsPlayerActive( i ) then
				table.insert( players, i )
			end
		end

	-- Deuxième Bouton --

	--	SetDiscordRichPresenceAction(0, "Se Connecter", "fivem://connect/falcon.capriceserv.com:30177")

	--	players = {}
	--	for i = 0, 255 do
	--		if NetworkIsPlayerActive( i ) then
					table.insert( players, i )
	--		end
	--	end

	-- NB joueurs--

		SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #players .. "/64") -- nombre de slots

		Citizen.Wait(60000)
	end
end)
