this.insects_skill <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.insects";
		this.m.Name = "Swarm of Insects";
		this.m.Description = "";
		this.m.Icon = "skills/active_69.png";
		this.m.IconDisabled = "skills/active_32_sw.png";
		this.m.Overlay = "active_69";
		this.m.SoundOnUse = [
			"sounds/enemies/swarm_of_insects_01.wav",
			"sounds/enemies/swarm_of_insects_02.wav",
			"sounds/enemies/swarm_of_insects_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/status/insect_swarm_effect_01.wav",
			"sounds/status/insect_swarm_effect_02.wav",
			"sounds/status/insect_swarm_effect_03.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.UtilityTargeted;
		this.m.Delay = 0;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsRanged = false;
		this.m.IsIgnoredAsAOO = true;
		this.m.IsShowingProjectile = false;
		this.m.IsUsingHitchance = false;
		this.m.IsDoingForwardMove = false;
		this.m.ActionPointCost = 6;
		this.m.FatigueCost = 15;
		this.m.MinRange = 1;
		this.m.MaxRange = 7;
		this.m.MaxLevelDifference = 4;
	}

	function onUse( _user, _targetTile )
	{
		local target = _targetTile.getEntity();
		local effect = target.getSkills().getSkillByID("effects.insect_swarm");

		if (effect != null)
		{
			effect.resetTime();
		}
		else
		{
			target.getSkills().add(this.new("scripts/skills/effects/insect_swarm_effect"));
		}

		return true;
	}

});

