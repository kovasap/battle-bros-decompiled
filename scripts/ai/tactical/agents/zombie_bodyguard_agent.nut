this.zombie_bodyguard_agent <- this.inherit("scripts/ai/tactical/agent", {
	m = {},
	function create()
	{
		this.agent.create();
		this.m.ID = this.Const.AI.Agent.ID.ZombieBodyguard;
		this.m.Properties.TargetPriorityHitchanceMult = 0.25;
		this.m.Properties.TargetPriorityHitpointsMult = 0.25;
		this.m.Properties.TargetPriorityDamageMult = 0.25;
		this.m.Properties.TargetPriorityRandomMult = 0.25;
		this.m.Properties.TargetPriorityFleeingMult = 1.0;
		this.m.Properties.TargetPriorityHittingAlliesMult = 0.5;
		this.m.Properties.TargetPriorityCounterSkillsMult = 1.0;
		this.m.Properties.OverallDefensivenessMult = 0.0;
		this.m.Properties.OverallFormationMult = 0.5;
		this.m.Properties.OverallMagnetismMult = 0.5;
		this.m.Properties.EngageTargetMultipleOpponentsMult = 1.0;
		this.m.Properties.EngageOnGoodTerrainBonusMult = 0.0;
		this.m.Properties.EngageOnBadTerrainPenaltyMult = 0.0;
		this.m.Properties.EngageAgainstSpearwallMult = 0.0;
		this.m.Properties.EngageAgainstSpearwallWithShieldwallMult = 0.0;
		this.m.Properties.EngageTargetArmedWithRangedWeaponMult = 0.0;
		this.m.Properties.EngageTargetAlreadyBeingEngagedMult = 1.0;
		this.m.Properties.EngageLockDownTargetMult = 1.0;
		this.m.Properties.PreferCarefulEngage = false;
		this.m.Properties.IgnoreTargetValueOnEngage = true;
	}

	function onAddBehaviors()
	{
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_engage_melee"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_break_free"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_protect"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_defend_knock_back"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_attack_default"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_attack_swing"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_attack_split"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_attack_thresh"));
		this.addBehavior(this.new("scripts/ai/tactical/behaviors/ai_pickup_weapon"));
	}

	function onUpdate()
	{
		this.setEngageRangeBasedOnWeapon();
		local item = this.m.Actor.getItems().getItemAtSlot(this.Const.ItemSlot.Mainhand);

		if (item != null && item.isItemType(this.Const.Items.ItemType.Weapon) && item.isAoE())
		{
			this.m.Properties.EngageTargetMultipleOpponentsMult = 0.75;
		}
		else
		{
			this.m.Properties.EngageTargetMultipleOpponentsMult = 1.0;
		}
	}

});

