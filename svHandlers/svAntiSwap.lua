local blockedItems = Config.BlockedItems

-- If you want to hook this into a inventory module and not use a config then use local blockedItems

-- local blockedItems = {
--     ["water"] = true,
-- }

exports.ox_inventory:registerHook('swapItems', function(data)
    local src = data.source
    local action = data.action
    local itemName = (data.fromSlot and data.fromSlot.name) or (data.toSlot and data.toSlot.name)

    if not itemName then
        return
    end

    if (action == "take" or action == "give") and blockedItems[itemName] then
        return false
    end

    if action == "move" and data.toType == "drop" and blockedItems[itemName] then
        return false
    end

    if action == "move" and data.toType == "glovebox" and blockedItems[itemName] then
        return false
    end
end, {
    print = false
})
