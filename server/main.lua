ESX = exports[Config.CoreFolderName]:getSharedObject()
CreateThread(function()
    for k, v in pairs(Config.Books) do
        ESX.RegisterUsableItem(k, function(source)
            TriggerClientEvent("gmm-books:client:OpenBook", source, k)
        end)
    end
end)
