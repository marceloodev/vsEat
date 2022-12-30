# vsEat

> Ao dar /eat sua fome e sede será setada para 100%, claro se voce for STAFF né? Tambem temos o /eat ID que seta fome e sede 100% no ID solicitado.

> Framework: vRPex

> Developed by: Vieira's Store

> Version: Stable 🟢

# Codigos

> Copie o codigo abaixo e coloque em qualquer server.lua do seu servidor.

**VRPEX**
```lua
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
				vRP.varyThirst(nplayer, -100)
				vRP.varyHunger(nplayer, -100)
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
```

# Suporte
Você pode buscar suporte em nosso discord: https://discord.gg/C5tXDsZhVJ. 🆘

# Contato
- Comercial: contato.vsdev@gmail.com 🧾
- Discord: https://discord.gg/C5tXDsZhVJ 🧾
- Website: https://sites.google.com/view/vieiras-store/home 🧾
