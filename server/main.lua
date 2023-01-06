ESX = exports[Config.CoreFolderName]:getSharedObject()
CreateThread(function()
    for k, v in pairs(Config.Books) do
            
        QBCore.Functions.CreateUseableItem(k, function(source, item)
            TriggerClientEvent("gmm-books:client:OpenBook", source, k, item)
        end)
    end
end)
