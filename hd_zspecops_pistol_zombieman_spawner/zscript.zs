version "4.8"

class ZombieHideousTrooperReplacement: RandomSpawner replaces ZombieHideousTrooper
{
    default
    {
        dropitem "ZombieAutoStormtrooper",256,100;
        dropitem "ZombieSemiStormtrooper",256,20;
        dropitem "ZombieSMGStormtrooper",256,10;
        dropitem "UndeadHomeboy",256,14;
        dropitem "EnemyHERP",256,1;
    }
}

class UndeadHomeboyDummyActor: Actor
{
    states
    {
        Cache:
            ZSPP A 1;
            stop;
    }
}

class UndeadHomeboySpriteUpdater: Thinker
{
    Actor PistolZombieman;

    override void Tick()
    {
        super.Tick();

        PistolZombieman.Sprite = UndeadHomeboyDummyActor.GetSpriteIndex('ZSPP');
    }
}

class PistolZombiemanHandler: EventHandler 
{
    override void WorldThingSpawned(WorldEvent e) 
    {
        if (!e.Thing || !(e.Thing is 'UndeadHomeboy'))
        {
            return;
        }

        UndeadHomeboySpriteUpdater SpriteUpdater = new("UndeadHomeboySpriteUpdater");
        SpriteUpdater.PistolZombieman = e.Thing;
    }
}
