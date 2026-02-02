local isActive = true
local x, y = guiGetScreenSize()
local a = 0.12
local b = 0.95

local function DesenhoAtivo()
    dxDrawText('ATIVO', x*0.12008, y*0.95008, x, y, tocolor(0,0,0), 1, 'default', 'left', 'top', false, false, false, false, false, 0, 0, 0)
    dxDrawText('ATIVO', x*a, y*b, x, y, tocolor(40,255,40), 1, 'default', 'left', 'top', false, false, false, false, false, 0, 0, 0)
end
local function DesenhoDesativo()
    dxDrawText('DESATIVO', x*0.12008, y*0.95008, x, y, tocolor(0,0,0), 1, 'default', 'left', 'top', false, false, false, false, false, 0, 0, 0)
    dxDrawText('DESATIVO', x*a, y*b, x, y, tocolor(255,40,40), 1, 'default', 'left', 'top', false, false, false, false, false, 0, 0, 0)
end

addEventHandler('onClientResourceStart', getResourceRootElement(), function()
    if isActive then
        addEventHandler('onClientRender', root, DesenhoAtivo)
    end
    outputChatBox("The ‘Litefoot auto’ is active.", 255,11,255)
    outputChatBox('To deactivate and active, use /LTFT or /ltft', 255,11,100)
end)

function playerPressedKey(button, press)
    if (button == 'mouse2' or button == 'capslock') and not press and isActive then 
        local weapon_slot = getPedWeaponSlot(localPlayer)
        setTimer(function()
        setPedWeaponSlot(localPlayer, 0)
        end,5, 1)
        setTimer(function(weapon_slot)
            if getPedWeaponSlot(localPlayer) == weapon_slot then
                setPedWeaponSlot(localPlayer, 0)
            else
                setPedWeaponSlot(localPlayer, weapon_slot)
            end
        end, 30, 2, weapon_slot)
        weapon_slot = 0
    end
end
addEventHandler("onClientKey", root, playerPressedKey)

addCommandHandler('ltft', function()
    if not isActive then
        isActive = true
        outputChatBox('LiteFoot automatico ativado', 40, 255, 40, true)
        addEventHandler('onClientRender', root, DesenhoAtivo)
        removeEventHandler('onClientRender', root, DesenhoDesativo)
    else
        isActive = false
        removeEventHandler('onClientRender', root, DesenhoAtivo)
        addEventHandler('onClientRender', root, DesenhoDesativo)
        outputChatBox('LiteFoot automatico desativado', 255, 40, 40, true)
    end
end, false, false)



addCommandHandler ( "keycommands",
	function ( commandName, theKey, keyState )
		if ( theKey and keyState ) then -- We check if theKey and keyState is valid.
			local commands = getCommandsBoundToKey ( theKey, keyState )
			if ( commands and type ( commands ) == "table" ) then
				for command, state in pairs ( commands ) do
					outputChatBox ( command )
				end
			end
            iprint(commands)
		else
			outputChatBox (	commandName ..": Correct syntax: [ theKey ] [ keyState ]" )
		end
	end
)