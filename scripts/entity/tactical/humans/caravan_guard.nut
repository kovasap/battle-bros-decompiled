this.caravan_guard <- this.inherit("scripts/entity/tactical/human", {
	m = {},
	function create()
	{
		this.m.Type = this.Const.EntityType.CaravanGuard;
		this.m.BloodType = this.Const.BloodType.Red;
		this.m.XP = this.Const.Tactical.Actor.CaravanGuard.XP;
		this.human.create();
		this.m.Faces = this.Const.Faces.AllMale;
		this.m.Hairs = this.Const.Hair.CommonMale;
		this.m.HairColors = this.Const.HairColors.Young;
		this.m.Beards = this.Const.Beards.All;
		this.m.AIAgent = this.new("scripts/ai/tactical/agents/caravan_melee_agent");
		this.m.AIAgent.setActor(this);
	}

	function onInit()
	{
		this.human.onInit();
		local b = this.m.BaseProperties;
		b.setValues(this.Const.Tactical.Actor.CaravanGuard);
		b.IsSpecializedInSwords = true;
		b.IsSpecializedInAxes = true;
		b.IsSpecializedInMaces = true;
		b.IsSpecializedInFlails = true;
		b.IsSpecializedInPolearms = true;
		b.IsSpecializedInThrowing = true;
		b.IsSpecializedInHammers = true;
		b.IsSpecializedInSpears = true;
		b.IsSpecializedInCleavers = true;
		b.IsSpecializedInSpears = true;
		this.m.ActionPoints = b.ActionPoints;
		this.m.Hitpoints = b.Hitpoints;
		this.m.CurrentProperties = clone b;
		this.setAppearance();
		this.getSprite("socket").setBrush("bust_base_caravan");
		this.getSprite("dirt").Visible = true;
		this.m.Skills.add(this.new("scripts/skills/perks/perk_shield_expert"));
		this.m.Skills.add(this.new("scripts/skills/actives/recover_skill"));
	}

	function assignRandomEquipment()
	{
		local r = this.Math.rand(1, 5);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/hand_axe"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/boar_spear"));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/falchion"));
		}
		else if (r == 4)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/shortsword"));
		}
		else if (r == 5)
		{
			this.m.Items.equip(this.new("scripts/items/weapons/arming_sword"));
		}

		this.m.Items.equip(this.new("scripts/items/shields/wooden_shield"));

		if (this.Math.rand(1, 100) <= 35)
		{
			r = this.Math.rand(1, 2);

			if (r == 1)
			{
				this.m.Items.addToBag(this.new("scripts/items/weapons/throwing_axe"));
			}
			else if (r == 2)
			{
				this.m.Items.addToBag(this.new("scripts/items/weapons/javelin"));
			}
		}

		r = this.Math.rand(1, 4);

		if (r == 1)
		{
			this.m.Items.equip(this.new("scripts/items/armor/leather_tunic"));
		}
		else if (r == 2)
		{
			this.m.Items.equip(this.new("scripts/items/armor/padded_leather"));
		}
		else if (r == 3)
		{
			this.m.Items.equip(this.new("scripts/items/armor/padded_surcoat"));
		}
		else if (r == 4)
		{
			this.m.Items.equip(this.new("scripts/items/armor/leather_lamellar"));
		}

		if (this.Math.rand(1, 100) <= 75)
		{
			local r = this.Math.rand(1, 5);

			if (r == 1)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/hood"));
			}
			else if (r == 2)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/aketon_cap"));
			}
			else if (r == 3)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/full_aketon_cap"));
			}
			else if (r == 4)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/nasal_helmet"));
			}
			else if (r == 5)
			{
				this.m.Items.equip(this.new("scripts/items/helmets/padded_nasal_helmet"));
			}
		}
	}

});

