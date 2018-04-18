-- Fixed stats from some NPCs in Razorfen Kraul
UPDATE creature_template SET HealthMultiplier=8, PowerMultiplier=2, MinLevelHealth=8880, MaxLevelHealth=8880, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=46, MaxMeleeDmg=61, MinRangedDmg=31, MaxRangedDmg=46, MeleeAttackPower=112, RangedAttackPower=10, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4422; -- Agathelos the Raging
UPDATE creature_template SET HealthMultiplier=5, PowerMultiplier=3, MinLevelHealth=4640, MaxLevelHealth=4640, MinLevelMana=2889, MaxLevelMana=2889, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=43, MaxMeleeDmg=57, MinRangedDmg=29, MaxRangedDmg=43, MeleeAttackPower=104, RangedAttackPower=10, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4424; -- Aggem Thorncurse
UPDATE creature_template SET HealthMultiplier=10, PowerMultiplier=3, MinLevelHealth=9280, MaxLevelHealth=9280, MinLevelMana=2889, MaxLevelMana=2889, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=43, MaxMeleeDmg=57, MinRangedDmg=29, MaxRangedDmg=43, MeleeAttackPower=104, RangedAttackPower=10, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4421; -- Charlga Razorflank
UPDATE creature_template SET HealthMultiplier=5, PowerMultiplier=2, MinLevelHealth=4055, MaxLevelHealth=4055, MinLevelMana=1704, MaxLevelMana=1704, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=43, MaxMeleeDmg=57, MinRangedDmg=29, MaxRangedDmg=43, MeleeAttackPower=104, RangedAttackPower=10, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4428; -- Death Speaker Jargba
UPDATE creature_template SET HealthMultiplier=3.5, PowerMultiplier=1, MinLevelHealth=3108, MaxLevelHealth=3108, MinLevelMana=935, MaxLevelMana=935, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=42, MaxMeleeDmg=55, MinRangedDmg=29, MaxRangedDmg=42, MeleeAttackPower=100, RangedAttackPower=9, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4842; -- Earthcaller Halmgar
UPDATE creature_template SET HealthMultiplier=7, MinLevelHealth=7399, MaxLevelHealth=7399, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=45, MaxMeleeDmg=60, MinRangedDmg=31, MaxRangedDmg=46, MeleeAttackPower=108, RangedAttackPower=10, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4420; -- Overlord Ramtusk
UPDATE creature_template SET HealthMultiplier=3, MinLevelHealth=2865, MaxLevelHealth=3018, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=42, MaxMeleeDmg=58, MinRangedDmg=30, MaxRangedDmg=44, MeleeAttackPower=106, RangedAttackPower=9, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4623; -- Quilguard Champion
UPDATE creature_template SET HealthMultiplier=3, MinLevelHealth=2559, MaxLevelHealth=2715, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=39, MaxMeleeDmg=54, MinRangedDmg=28, MaxRangedDmg=41, MeleeAttackPower=100, RangedAttackPower=8, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=6035; -- Razorfen Stalker
UPDATE creature_template SET HealthMultiplier=3, PowerMultiplier=1, MinLevelHealth=2196, MaxLevelHealth=2196, MinLevelMana=756, MaxLevelMana=756, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=37, MaxMeleeDmg=49, MinRangedDmg=25, MaxRangedDmg=37, MeleeAttackPower=90, RangedAttackPower=7, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=6168; -- Roogug
UPDATE creature_template SET HealthMultiplier=3, PowerMultiplier=3, MinLevelHealth=2550, MaxLevelHealth=2550, MinLevelMana=2634, MaxLevelMana=2634, DamageMultiplier=1.7, ArmorMultiplier=1, MinMeleeDmg=40, MaxMeleeDmg=54, MinRangedDmg=28, MaxRangedDmg=41, MeleeAttackPower=98, RangedAttackPower=9, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000 WHERE entry=4427; -- Ward Guardian

-- Stats clean-up of spawned NPCs
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1; 
UPDATE creature_template AS ct, creature_template_classlevelstats AS cs SET ct.Armor=cs.BaseArmor WHERE cs.Class=ct.UnitClass AND cs.Level=ct.MaxLevel and ct.ArmorMultiplier>0;
