this.perk_taunt <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "perk.taunt";
		this.m.Name = this.Const.Strings.PerkName.Taunt;
		this.m.Description = this.Const.Strings.PerkDescription.Taunt;
		this.m.Icon = "ui/perks/perk_38.png";
		this.m.Type = this.Const.SkillType.Perk;
		this.m.Order = this.Const.SkillOrder.Perk;
		this.m.IsActive = false;
		this.m.IsStacking = false;
		this.m.IsHidden = false;
	}

	function onAdded()
	{
		if (!this.m.Container.hasSkill("actives.taunt"))
		{
			this.m.Container.add(this.new("scripts/skills/actives/taunt"));
		}
	}

	function onRemoved()
	{
		this.m.Container.removeByID("actives.taunt");
	}

});

