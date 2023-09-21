if toPosition ~= nil
    if Tile(toPosition):getItemCount() >= 2 then
        self:sendCancelMessage("Sorry, not possible.")
        return false
    end
end