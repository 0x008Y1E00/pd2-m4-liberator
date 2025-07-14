local function wftd_init_liberator(self)
    table.insert(self.parts.wpn_fps_m4_uupg_o_flipup.forbids, "wpn_fps_upg_liberator_gp_top")
    table.insert(self.parts.wpn_fps_upg_o_spot.forbids, "wpn_fps_upg_liberator_gp_top")
    table.insert(self.parts.wpn_fps_upg_o_northtac.forbids, "wpn_fps_upg_liberator_gp_top")
    
    self.parts.wpn_fps_upg_liberator_o_hs.stats = {
        value = 0,
        concealment = -3
    }
    self.parts.wpn_fps_upg_liberator_s_sld.stats = {
        value = 1,
        recoil = 2,
        concealment = -3
    }
    self.parts.wpn_fps_upg_liberator_fg_lvoa.stats = {
        value = 1
    }
    
    self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_specter_piggyback.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_aimpoint.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_aimpoint_2.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_docter.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_eotech.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_eotech_xps.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_t1micro.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_cmore.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_acog.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_reflex.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_cs.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_cs_piggyback.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_fc1.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_uh.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_bmg.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_tf90.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_poe.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_hamr.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_hamr.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_hamr_reddot.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_atibal.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_atibal.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_atibal_reddot.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_xpsg33_magnifier.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_rx01.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_rx30.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_45rds_v2.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_45steel.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_ass_liberator = deep_clone(self.parts.wpn_fps_upg_o_sig.stance_mod.wpn_fps_ass_m4)
    self.parts.wpn_fps_upg_o_spot.stance_mod.wpn_fps_ass_liberator = {
        translation = Vector3(-0.08, 0, -0.65)
    }
    self.parts.wpn_fps_upg_o_northtac.stance_mod.wpn_fps_ass_liberator = {
        translation = Vector3(-0.05, -12.0, -0.67)
    }
    self.parts.wpn_fps_upg_o_northtac_reddot.stance_mod.wpn_fps_ass_liberator = {
        translation = Vector3(0, -3.0, -5.75)
    } 
    self.parts.wpn_fps_upg_liberator_o_hs.stance_mod = {}
    self.parts.wpn_fps_upg_liberator_o_hs.stance_mod.wpn_fps_ass_liberator = {
        translation = Vector3(0, -1.5, -0.5)
    }
end

Hooks:PostHook(WeaponFactoryTweakData, "init", "psthk_wftd_init_liberator", wftd_init_liberator)
