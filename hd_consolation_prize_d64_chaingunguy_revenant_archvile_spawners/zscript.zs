class D64ChaingunGuySpawner: RandomSpawner replaces DoomImp
{
	default
	{
		dropitem "HDChainReplacer", 256, 16;
		dropitem "ImpSpawner", 256, 84;
	}
}

class D64HellKnightSpawner: RandomSpawner replaces HellKnight
{
	default
	{
		dropitem "PainBringer", 256, 60;
		dropitem "Boner", 256, 40;
	}
}

class D64FatsoSpawner: RandomSpawner replaces Fatso
{
	default
	{
		dropitem "CombatSlug", 256, 80;
		dropitem "Boner", 256, 20;
	}
}

class D64BaronOfHellSpawner: RandomSpawner replaces BaronOfHell
{
	default
	{
		dropitem "PainLord", 256, 72;
		dropitem "Necromancer", 256, 28;
	}
}

class D64ArachnotronSpawner: RandomSpawner replaces Arachnotron
{
	default
	{
		dropitem "TechnoSpider", 256, 76;
		dropitem "Boner", 256, 10;
		dropitem "Necromancer", 256, 14;
	}
}