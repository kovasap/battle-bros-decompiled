this.lindwurm_racial <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "racial.lindwurm";
		this.m.Name = "Acid Blood";
		this.m.Description = "TODO";
		this.m.Icon = "";
		this.m.SoundOnUse = [
			"sounds/combat/poison_applied_01.wav",
			"sounds/combat/poison_applied_02.wav"
		];
		this.m.Type = this.Const.SkillType.Racial | this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Last;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = true;
	}

	function onDamageReceived( _attacker, _damageHitpoints, _damageArmor )
	{
		if (_damageHitpoints <= 10)
		{
			return;
		}

		if (_attacker == null || !_attacker.isAlive())
		{
			return;
		}

		if (_attacker.getTile().getDistanceTo(this.getContainer().getActor().getTile()) > 1)
		{
			return;
		}

		if (_attacker.getFlags().has("lindwurm"))
		{
			return;
		}

		if ((_attacker.getFlags().has("body_immune_to_acid") || _attacker.getArmor(this.Const.BodyPart.Body) <= 0) && (_attacker.getFlags().has("head_immune_to_acid") || _attacker.getArmor(this.Const.BodyPart.Head) <= 0))
		{
			return;
		}

		local poison = _attacker.getSkills().getSkillByID("effects.lindwurm_acid");

		if (poison == null)
		{
			_attacker.getSkills().add(this.new("scripts/skills/effects/lindwurm_acid_effect"));
		}
		else
		{
			poison.resetTime();
		}

		this.spawnIcon("status_effect_78", _attacker.getTile());
	}

});

