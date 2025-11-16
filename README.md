# Jeffrey the Boss

This Minecraft datapack adds a challenging boss fight against "Jeffrey," a powerful baby zombie with multiple phases and custom spells. Upon death, Jeffrey drops his Sharpness X sword.

## The Fight

At his core, Jeffrey is a baby zombie who follows the default AI, but he also has a chance to cast powerful spells. The fight is divided into three distinct phases based on his health, which influences the spells he can cast and their frequency.

### Phase 1:
*(100% - 66% Health)*

In the first phase, Jeffrey is relatively calm and uses his spells sparingly. He will advance on his target to attack with his sword. If the target is far away, Jeffrey can cast a **Fire Shot** for a ranged attack. If you get too close, he can unleash a powerful **Fire Explosion**. He can also use **Blink** to quickly close the distance to his target.

### Phase 2:
*(66% - 33% Health)*

In phase two, Jeffrey changes tactics. He stops using **Blink**, which slows him down significantly, but gains a new spell: **Fire Dance**. This spell creates columns of fire around Jeffrey that will pursue the nearest player. He continues to use his **Fire Explosion** and **Fire Shot** attacks, making this phase a true test of dodging.

### Phase 3:
*(33% - 0% Health)*

In his final phase, Jeffrey is done playing around and becomes highly aggressive. He abandons his ranged attacks and focuses on overwhelming you with rapid **Blink** teleports and devastating **Fire Explosions**. He moves erratically and will try to stay right on top of you, making this a chaotic and dangerous finale.

## Installation

**Minecraft Version:** This datapack is for Minecraft: Java Edition version **1.19.3**.

**How to Install:**
1.  Download the latest .zip of the datapack from this GitHub.
2.  Open Minecraft and select the world you want to install the datapack in.
3.  Click "Edit" and then "Open World Folder".
4.  In the world folder, open the `datapacks` folder.
5.  Place the downloaded datapack .zip file or folder into the `datapacks` folder.
6.  If you are in the world, run the `/reload` command. If you are not, the datapack will be enabled when you load the world.

## How to Summon

You can summon a pre-made Jeffrey with the following command:
```
/function jeffrey:summon_jeffrey
```

Alternatively, you can grant Jeffrey's abilities to any existing entity:
```
/tag <Entity> add Jeffrey
```
This will cause the target entity to randomly cast spells just like Jeffrey.
