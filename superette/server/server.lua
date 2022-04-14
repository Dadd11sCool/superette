ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('Daddy_shop:achetereau')
AddEventHandler('Daddy_shop:achetereau', function(v, quantite)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= 2 then
		xPlayer.addInventoryItem('water', 1)
		xPlayer.removeMoney(2)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~b~Eau ~s~! ")
	else
		TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")	
	end	
end)

RegisterNetEvent('Daddy_shop:achetercocacola')
AddEventHandler('Daddy_shop:achetercocacola', function(v, quantite)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= 5 then
		xPlayer.addInventoryItem('cocacola', 1)
		xPlayer.removeMoney(5)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~b~Coca-Cola ~s~! ")
	else
		TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")	
	end	
end)

RegisterNetEvent('Daddy_shop:achetericetea')
AddEventHandler('Daddy_shop:achetericetea', function(v, quantite)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= 7 then
		xPlayer.addInventoryItem('icetea', 1)
		xPlayer.removeMoney(7)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~b~Ice-Tea ~s~! ")
	else
		TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")	
	end	
end)

RegisterNetEvent('Daddy_shop:acheterpain')
AddEventHandler('Daddy_shop:acheterpain', function(v, quantite)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= 3 then
		xPlayer.addInventoryItem('bread', 1)
		xPlayer.removeMoney(3)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~o~Pain ~s~!")
	else
		TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")
	end
end)

RegisterNetEvent('Daddy_shop:acheterchocolat')
AddEventHandler('Daddy_shop:acheterchocolat', function(v, quantite)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= 5 then
		xPlayer.addInventoryItem('chocolate', 1)
		xPlayer.removeMoney(5)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~o~Chocolat ~s~! ")
	else
		TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")	
	end	
end)

RegisterNetEvent('Daddy_shop:achetersandwich')
AddEventHandler('Daddy_shop:achetersandwich', function(v, quantite)
	local xPlayer = ESX.GetPlayerFromId(source)
	local playerMoney = xPlayer.getMoney()

	if playerMoney >= 7 then
		xPlayer.addInventoryItem('sandwich', 1)
		xPlayer.removeMoney(7)
		TriggerClientEvent('esx:showNotification', source, "Vous avez bien reçu votre ~o~SandWich ~s~! ")
	else
		TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez ~r~d\'argent")	
	end	
end)

