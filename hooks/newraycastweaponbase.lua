local function nrwb_wtd_liberator(self)
    local wpn_twk_data = Hooks:GetReturn()

    if self._name_id then
        if self._name_id == "contraband" then
            wpn_twk_data.use_stance = "contraband"
        elseif self._name_id == "liberator" then
            wpn_twk_data.use_stance = "liberator"
        elseif self._name_id == "contraband_m203" then
            wpn_twk_data.use_stance = "liberator"
        end
    end

    return wpn_twk_data
end

Hooks:PostHook(NewRaycastWeaponBase, "weapon_tweak_data", "psthk_nrwb_wtd_liberator", nrwb_wtd_liberator)
