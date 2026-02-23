local function td_init_liberator_stance(self)   
    local ptd = tweak_data.player
    
    local pivot_shoulder_translation = Vector3(10.5, 22.016, -1.93524)
    local pivot_shoulder_rotation = Rotation(0.106674, -0.0849742, 0.628573)
    local pivot_head_translation = Vector3(0, 10, 0)
    local pivot_head_rotation = Rotation(0, 0, 0)
    
    ptd.stances.liberator = deep_clone(ptd.stances.new_m4)
    
    ptd.stances.liberator.steelsight.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
    ptd.stances.liberator.steelsight.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
    ptd.stances.liberator.steelsight.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, -7, 0)
    ptd.stances.liberator.steelsight.vel_overshot.yaw_neg = 8
    ptd.stances.liberator.steelsight.vel_overshot.yaw_pos = -8
    ptd.stances.liberator.steelsight.vel_overshot.pitch_neg = -17
    ptd.stances.liberator.steelsight.vel_overshot.pitch_pos = 17
end

if BeardLib.Utils:ModLoaded("Restoration") or BeardLib.Utils:ModLoaded("RestorationMod") then
    if tweak_data.player and tweak_data.player.stances then
        td_init_liberator_stance()
    end
end
