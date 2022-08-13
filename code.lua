---------------------------------------------------------
-- /EAT
---------------------------------------------------------
RegisterCommand("eat",function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        vRP.varyThirst(user_id, -100)
        vRP.varyHunger(user_id, -100)
    end
end)