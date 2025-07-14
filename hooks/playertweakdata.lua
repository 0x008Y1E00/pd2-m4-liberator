local function ptd_init_liberator_stance(self)
    self.stances.liberator = deep_clone(self.stances.new_m4)
    
    local pivot_shoulder_translation = Vector3(10.5, 22.016, -1.93524)
    local pivot_shoulder_rotation = Rotation(0.106674, -0.0849742, 0.628573)
    local pivot_head_translation = Vector3(0, 10, 0)
    local pivot_head_rotation = Rotation(0, 0, 0)
    
    self.stances.liberator.steelsight.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
    self.stances.liberator.steelsight.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
    self.stances.liberator.steelsight.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, -7, 0)
    self.stances.liberator.steelsight.vel_overshot.yaw_neg = 8
    self.stances.liberator.steelsight.vel_overshot.yaw_pos = -8
    self.stances.liberator.steelsight.vel_overshot.pitch_neg = -17
    self.stances.liberator.steelsight.vel_overshot.pitch_pos = 17
end

Hooks:PostHook(PlayerTweakData, "init", "psthk_ptd_init_liberator_stance", ptd_init_liberator_stance)
