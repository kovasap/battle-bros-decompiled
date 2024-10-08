this.web_skill <- this.inherit("scripts/skills/skill", {
	m = {
		Cooldown = 0
	},
	function create()
	{
		this.m.ID = "actives.web";
		this.m.Name = "Weave Web";
		this.m.Description = "";
		this.m.Icon = "skills/active_114.png";
		this.m.IconDisabled = "skills/active_114.png";
		this.m.Overlay = "active_114";
		this.m.SoundOnUse = [
			"sounds/enemies/dlc2/giant_spider_shoot_net_hit_01.wav",
			"sounds/enemies/dlc2/giant_spider_shoot_net_hit_02.wav",
			"sounds/enemies/dlc2/giant_spider_shoot_net_hit_03.wav"
		];
		this.m.SoundOnHitHitpoints = [
			"sounds/combat/break_free_net_01.wav",
			"sounds/combat/break_free_net_02.wav",
			"sounds/combat/break_free_net_03.wav"
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
		this.m.IsDoingForwardMove = true;
		this.m.ActionPointCost = 6;
		this.m.FatigueCost = 25;
		this.m.MinRange = 1;
		this.m.MaxRange = 1;
		this.m.MaxLevelDifference = 1;
	}

	function isUsable()
	{
		return this.skill.isUsable() && this.m.Cooldown == 0;
	}

	function onTurnStart()
	{
		this.m.Cooldown = this.Math.max(0, this.m.Cooldown - 1);
	}

	function onVerifyTarget( _originTile, _targetTile )
	{
		if (!this.skill.onVerifyTarget(_originTile, _targetTile))
		{
			return false;
		}

		if (_targetTile.getEntity().getCurrentProperties().IsRooted)
		{
			return false;
		}

		return true;
	}

	function onUse( _user, _targetTile )
	{
		this.m.Cooldown = 3;
		local targetEntity = _targetTile.getEntity();

		if (!targetEntity.getCurrentProperties().IsImmuneToRoot)
		{
			if (this.m.SoundOnHit.len() != 0)
			{
				this.Sound.play(this.m.SoundOnHit[this.Math.rand(0, this.m.SoundOnHit.len() - 1)], this.Const.Sound.Volume.Skill, targetEntity.getPos());
			}

			targetEntity.getSkills().add(this.new("scripts/skills/effects/web_effect"));
			local breakFree = this.new("scripts/skills/actives/break_free_skill");
			breakFree.setDecal("web_destroyed");
			breakFree.m.Icon = "skills/active_113.png";
			breakFree.m.IconDisabled = "skills/active_113_sw.png";
			breakFree.m.Overlay = "active_113";
			breakFree.m.SoundOnUse = this.m.SoundOnHitHitpoints;
			targetEntity.getSkills().add(breakFree);
			local effect = this.Tactical.spawnSpriteEffect("bust_web2", this.createColor("#ffffff"), _targetTile, 0, 4, 1.0, targetEntity.getSprite("status_rooted").Scale, 100, 100, 0);
			local flip = !targetEntity.isAlliedWithPlayer();
			effect.setHorizontalFlipping(flip);
			this.Time.scheduleEvent(this.TimeUnit.Real, 200, this.onNetSpawn.bindenv(this), targetEntity);
		}
		else
		{
			if (this.m.SoundOnMiss.len() != 0)
			{
				this.Sound.play(this.m.SoundOnMiss[this.Math.rand(0, this.m.SoundOnMiss.len() - 1)], this.Const.Sound.Volume.Skill, targetEntity.getPos());
			}

			return false;
		}
	}

	function onNetSpawn( _targetEntity )
	{
		local rooted = _targetEntity.getSprite("status_rooted");
		rooted.setBrush("bust_web2");
		rooted.Visible = true;
		local rooted_back = _targetEntity.getSprite("status_rooted_back");
		rooted_back.setBrush("bust_web2_back");
		rooted_back.Visible = true;
		_targetEntity.setDirty(true);
	}

});

