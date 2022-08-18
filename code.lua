---------------------------------------------------------
-- /EAT
---------------------------------------------------------
local logeat = "SUA WEBHOOK AQUI" -- Configure a log aqui! (Caso a log não funcione na sua base chamar EuNoah#8056)

RegisterCommand('eat',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        if args[1] then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
				vRP.varyThirst(user_id, -100)
				vRP.varyHunger(user_id, -100)
				TriggerClientEvent("Notify",source,"sucesso","Você setou a fome e sede do ID: "..args[1].." para 100%!")
				SendWebhookMessage(logeat,"```prolog\n[ID]: "..user_id.."\n[INFO]: Utilizou o comando /eat no ID: "..args[1].." " ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
            end
        else
			vRP.varyThirst(user_id, -100)
			vRP.varyHunger(user_id, -100)
			TriggerClientEvent("Notify",source,"sucesso","Você setou sua fome e sede para 100%!")
			SendWebhookMessage(logeat,"```prolog\n[ID]: "..user_id.."\n[INFO]: Utilizou o comando /eat em si mesmo." ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
        end
    end
end)