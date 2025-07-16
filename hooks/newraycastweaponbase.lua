local old_weapon_tweak_data = NewRaycastWeaponBase.weapon_tweak_data

function NewRaycastWeaponBase:weapon_tweak_data(...)
    local wpn_twk_data = old_weapon_tweak_data(self, ...)

    if self._name_id then
        if self._name_id == "contraband" then
            wpn_twk_data.use_stance = "contraband"
        elseif self._name_id == "liberator" then
            wpn_twk_data.use_stance = "liberator"
        end
    end

    return wpn_twk_data
end
