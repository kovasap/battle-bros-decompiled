local gt = this.getroottable();

if (!("Tactical" in gt.Const))
{
	gt.Const.Tactical <- {};
}

if (!("Actor" in gt.Const.Tactical))
{
	gt.Const.Tactical.Actor <- {};
}

gt.Const.Tactical.Actor.Footman <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 70,
	Bravery = 60,
	Stamina = 120,
	MeleeSkill = 70,
	RangedSkill = 50,
	MeleeDefense = 10,
	RangedDefense = 5,
	Initiative = 110,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 15
};
gt.Const.Tactical.Actor.Billman <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 70,
	Bravery = 60,
	Stamina = 120,
	MeleeSkill = 70,
	RangedSkill = 50,
	MeleeDefense = 10,
	RangedDefense = 5,
	Initiative = 80,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 15
};
gt.Const.Tactical.Actor.Greatsword <- {
	XP = 350,
	ActionPoints = 9,
	Hitpoints = 90,
	Bravery = 70,
	Stamina = 130,
	MeleeSkill = 75,
	RangedSkill = 50,
	MeleeDefense = 20,
	RangedDefense = 10,
	Initiative = 115,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};
gt.Const.Tactical.Actor.Sergeant <- {
	XP = 350,
	ActionPoints = 9,
	Hitpoints = 100,
	Bravery = 80,
	Stamina = 130,
	MeleeSkill = 80,
	RangedSkill = 60,
	MeleeDefense = 25,
	RangedDefense = 15,
	Initiative = 110,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};
gt.Const.Tactical.Actor.Arbalester <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 60,
	Bravery = 60,
	Stamina = 100,
	MeleeSkill = 55,
	RangedSkill = 60,
	MeleeDefense = 5,
	RangedDefense = 5,
	Initiative = 110,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 15
};
gt.Const.Tactical.Actor.StandardBearer <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 80,
	Bravery = 90,
	Stamina = 130,
	MeleeSkill = 65,
	RangedSkill = 50,
	MeleeDefense = 10,
	RangedDefense = 10,
	Initiative = 105,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};
gt.Const.Tactical.Actor.Knight <- {
	XP = 450,
	ActionPoints = 9,
	Hitpoints = 135,
	Bravery = 90,
	Stamina = 140,
	MeleeSkill = 90,
	RangedSkill = 60,
	MeleeDefense = 20,
	RangedDefense = 10,
	Initiative = 115,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};
gt.Const.Tactical.Actor.Noble <- {
	XP = 300,
	ActionPoints = 9,
	Hitpoints = 75,
	Bravery = 75,
	Stamina = 125,
	MeleeSkill = 75,
	RangedSkill = 60,
	MeleeDefense = 10,
	RangedDefense = 10,
	Initiative = 120,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};

