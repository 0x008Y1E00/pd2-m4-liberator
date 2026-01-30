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
    
    self.liberator.categories = clone(self.contraband.categories)
    self.liberator.use_stance = "liberator"     
    self.liberator.CLIP_AMMO_MAX = 30
    self.liberator.NR_CLIPS_MAX = 5
    self.liberator.AMMO_MAX = 150
    self.liberator.fire_mode_data.fire_rate = 0.08
    self.liberator.auto.fire_rate = 0.08

    self.liberator.spread = {
        standing = self.new_m4.spread.standing,
        crouching = self.new_m4.spread.crouching,
        steelsight = self.new_m4.spread.steelsight,
        moving_standing = self.new_m4.spread.moving_standing,
        moving_crouching = self.new_m4.spread.moving_crouching,
        moving_steelsight = self.new_m4.spread.moving_steelsight
    }
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
    
    self.liberator.stats = clone(self.new_m4.stats) or {}
    
    if BeardLib.Utils:ModLoaded("Restoration") or BeardLib.Utils:ModLoaded("RestorationMod") then
        self.liberator.recategorize = clone(self.contraband.categories)
        self.liberator.damage_type = self.new_m4.damage_type
        self.liberator.nato = true
        self.liberator.supported = true
        self.liberator.external_support = true
        self.liberator.lock_slide = true
        self.liberator.BURST_FIRE = false
        self.liberator.ADAPTIVE_BURST_SIZE = false
        self.liberator.ads_speed = 0.3      
        
        self.liberator.stats.damage = 24  
        self.liberator.stats.spread = 81  
        self.liberator.stats.recoil = 81  
        self.liberator.stats.spread_moving = 6  
        self.liberator.stats.zoom = 1  
        self.liberator.stats.concealment = 20  
        self.liberator.stats.suppression = 9  
        self.liberator.stats.alert_size = 2  
        self.liberator.stats.extra_ammo = 101  
        self.liberator.stats.total_ammo_mod = 400  
        self.liberator.stats.value = 1  
        self.liberator.stats.reload = 20
        
        self.liberator.stats_modifiers = nil
        self.liberator.kick = self.stat_info.kick_tables.moderate_kick
        self.liberator.kick_pattern = {
            {0, self.stat_info.kick_tables.right_kick},
            {5, self.stat_info.kick_tables.vertical_kick},
            {8, self.stat_info.kick_tables.moderate_right_kick},
            {15, self.stat_info.kick_tables.moderate_kick}
        }
        self.liberator.panic_suppression_chance = 0.05
        self.liberator.tactical_reload = self.new_m4.tactical_reload
        self.liberator.reload_speed_multiplier = 1      
        self.liberator.timers = deep_clone(self.contraband.timers)
        self.liberator.lock_slide = true
        self.liberator.sounds.magazine_empty = self.new_m4.sounds.magazine_empty
        self.liberator.use_underbarrel_anim = "contraband"
    else
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
end

Hooks:PostHook(WeaponTweakData, "init", "psthk_wtd_init_liberator", wtd_init_liberator)
