this.named_undead_heater_shield <- this.inherit("scripts/items/shields/named/named_shield", {
	m = {},
	function create()
	{
		this.named_shield.create();
		this.m.Variant = this.Math.rand(1, 3);
		this.updateVariant();
		this.m.ID = "shield.named_undead_heater_shield";
		this.m.NameList = this.Const.Strings.ShieldNames;
		this.m.Description = "A triangular wooden shield covered with leather and canvas, old but very well balanced.";
		this.m.AddGenericSkill = true;
		this.m.ShowOnCharacter = true;
		this.m.Value = 600;
		this.m.MeleeDefense = 20;
		this.m.RangedDefense = 15;
		this.m.StaminaModifier = -14;
		this.m.Condition = 32;
		this.m.ConditionMax = 32;
		this.randomizeValues();
	}

	function updateVariant()
	{
		this.m.Sprite = "shield_undead_01_named_0" + this.m.Variant;
		this.m.SpriteDamaged = "shield_undead_01_named_0" + this.m.Variant + "_damaged";
		this.m.ShieldDecal = "shield_undead_01_named_0" + this.m.Variant + "_destroyed";
		this.m.IconLarge = "shields/inventory_undead_shield_01_named_0" + this.m.Variant + ".png";
		this.m.Icon = "shields/icon_undead_shield_01_named_0" + this.m.Variant + ".png";
	}

	function onEquip()
	{
		this.named_shield.onEquip();
		this.addSkill(this.new("scripts/skills/actives/shieldwall"));
		this.addSkill(this.new("scripts/skills/actives/knock_back"));
	}

});

