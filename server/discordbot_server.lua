AddEventHandler('es:chatMessage', function(source, command_args, user)
	PerformHttpRequest(GetConvar("chat_webhook", "none"), function(err, text, headers) end, 'POST', json.encode({username = user, content = source}), { ['Content-Type'] = 'application/json' })
end)