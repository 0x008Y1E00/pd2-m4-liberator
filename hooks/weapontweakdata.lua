local function wtd_init_liberator(self)
    self.liberator_crew = deep_clone(self.m4_crew)
    
    -- #############################
    -- ### Init M203 animations  ###
    -- #############################
    
    self.contraband_m203.weapon_hold = "contraband"
	self.contraband_m203.animations.equip_id = "equip_contraband_m203"
    self.contraband_m203.animations.reload_name_id = "contraband"
    
    -- ######################
    -- ### Init Liberator ###
    -- ######################
    
    self.liberator.use_stance = "liberator"
    
    self.liberator.CLIP_AMMO_MAX = 30
    self.liberator.NR_CLIPS_MAX = 5
    self.liberator.AMMO_MAX = self.liberator.CLIP_AMMO_MAX * self.liberator.NR_CLIPS_MAX
    
    self.liberator.fire_mode_data.fire_rate = 0.085714
    self.liberator.auto.fire_rate = 0.085714
    
    self.liberator.spread.standing = 3
    
    self.liberator.spread.crouching = self.liberator.spread.standing * 0.4
    self.liberator.spread.steelsight = self.liberator.spread.standing * 0.4
    self.liberator.spread.moving_standing = self.liberator.spread.standing
    self.liberator.spread.moving_crouching = self.liberator.spread.standing
    self.liberator.spread.moving_steelsight = self.liberator.spread.steelsight
    self.liberator.kick = {
        standing = {
            0.6,
            0.8,
            -1,
            1
        }
    }
    self.liberator.kick.crouching = self.liberator.kick.standing
    self.liberator.kick.steelsight = self.liberator.kick.standing
    self.liberator.crosshair = {
        standing = {},
        crouching = {},
        steelsight = {}
    }
    self.liberator.crosshair.standing.offset = 0.16
    self.liberator.crosshair.standing.moving_offset = 0.7
    self.liberator.crosshair.standing.kick_offset = 0.5
    self.liberator.crosshair.crouching.offset = 0.07
    self.liberator.crosshair.crouching.moving_offset = 0.7
    self.liberator.crosshair.crouching.kick_offset = 0.3
    self.liberator.crosshair.steelsight.hidden = true
    self.liberator.crosshair.steelsight.offset = 0
    self.liberator.crosshair.steelsight.moving_offset = 0
    self.liberator.crosshair.steelsight.kick_offset = 0.1
    
	self.liberator.stats = clone(self.new_m4.stats)
    self.liberator.stats.zoom = 1
    self.liberator.stats.total_ammo_mod = 21
    self.liberator.stats.damage = 62
    self.liberator.stats.alert_size = 7
    self.liberator.stats.spread = 12
    self.liberator.stats.spread_moving = 10
    self.liberator.stats.recoil = 16
    self.liberator.stats.value = 1
    self.liberator.stats.extra_ammo = 51
    self.liberator.stats.reload = 11
    self.liberator.stats.suppression = 10
    self.liberator.stats.concealment = 15
end

Hooks:PostHook(WeaponTweakData, "init", "psthk_wtd_init_liberator", wtd_init_liberator)
