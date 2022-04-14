ESX = nil

CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Wait(100)
	end
end)

local ShopMenu = false

------------------------------MENU SHOPS

local achat = RageUI.CreateMenu("Superette", "Nos Article(s)", 10 , 80)
achat.Closed = function() ShopMenu = false end

function OpenMenuSuperette()
    if ShopMenu then
        ShopMenu = false
    else
        ShopMenu = true
    RageUI.Visible(achat, true)
        CreateThread(function()
            while ShopMenu do
                Wait(1)
                RageUI.IsVisible(achat, function()

                    RageUI.Separator('~b~↓~s~ Boisson(s) ~b~↓~s~')
                    
                    RageUI.Button("Eau", nil, {RightLabel = "~b~2$"}, true , {
                        onSelected = function()
                            TriggerServerEvent('Dadd1_shop:achetereau')	
                            Wait(1)
                        end
                    })

                    RageUI.Button("Ice-Tea", nil, {RightLabel = "~b~7$"}, true , {
                        onSelected = function()
                            TriggerServerEvent('Dadd1_shop:achetericetea')
                            Wait(1)	
                        end
                    })

                    RageUI.Button("Coca-Cola", nil, {RightLabel = "~b~5$"}, true , {
                        onSelected = function()
                            TriggerServerEvent('Dadd1_shop:achetercocacola')	
                            Wait(1)
                        end
                    })

                    RageUI.Separator('~o~↓~s~ Nourriture(s) ~o~↓~s~')

                    RageUI.Button("Pain", nil, {RightLabel = "~o~3$"}, true , {
                        onSelected = function()
                            TriggerServerEvent('Dadd1_shop:acheterpain')	
                            Wait(1)
                        end
                    })

                    
                    RageUI.Button("Chocolat", nil, {RightLabel = "~o~5$"}, true , {
                        onSelected = function()
                            TriggerServerEvent('Dadd1_shop:acheterchocolat')	
                            Wait(1)
                        end
                    })

                    RageUI.Button("SandWich", nil, {RightLabel = "~o~7$"}, true , {
                        onSelected = function()
                            TriggerServerEvent('Dadd1_shop:achetersandwich')	
                            Wait(1)
                        end
                    })

                end)
            end
        end)
    end 
end 

------------------------------DRAWMARKERS


Citizen.CreateThread(function()
    while true do
        local pCoords2 = GetEntityCoords(PlayerPedId())
        local activerfps = false
        local dst = GetDistanceBetweenCoords(pCoords2, true)
        for _,v in pairs(Config.positionshop) do
            if #(pCoords2 - v.position) < 1.5 then
                activerfps = true
                Visual.Subtitle("Appuyer sur ~g~[E]~s~ pour accéder au magasin !")
            if ShopMenu == false then
                if IsControlJustReleased(0, 38) then
                    OpenMenuSuperette()
                end
            end
            elseif #(pCoords2 - v.position) < 7.0 then
                activerfps = true
                DrawMarker(29, v.position, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 255, 0, 170, 1, 1, 2, 0, nil, nil, 0)
            end
        end
        if activerfps then
            Wait(1)
        else
            Wait(1500)
        end
    end
end)

------------------------------BLIPS

Citizen.CreateThread(function()

for _, info in pairs(Config.blipsSuperette) do
  info.blip = AddBlipForCoord(info.x, info.y, info.z)
  SetBlipSprite(info.blip, info.id)
  SetBlipDisplay(info.blip, 4)
  SetBlipScale(info.blip, 0.7)
  SetBlipColour(info.blip, info.colour)
  SetBlipAsShortRange(info.blip, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(info.title)
  EndTextCommandSetBlipName(info.blip)
    end
end)

------------------------------CREATED BY Dadd1------------------------------