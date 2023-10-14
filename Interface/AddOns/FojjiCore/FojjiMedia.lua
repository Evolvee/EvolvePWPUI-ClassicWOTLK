local LSM = LibStub("LibSharedMedia-3.0") 

-- ----- 
-- BACKGROUND 
-- ----- 

-- ----- 
--  BORDER 
-- ---- 

-- -----
--   FONT
-- -----
LSM:Register("font", "Numen", [[Interface\Addons\FojjiCore\font\Numen.ttf]])
LSM:Register("font", "FojjiArcade", [[Interface\Addons\FojjiCore\font\FojjiArcade.ttf]]) 

-- -----
--   SOUND
-- -----
LSM:Register("sound", "fojji Bell", [[Interface\Addons\FojjiCore\sound\Bell.ogg]])
LSM:Register("sound", "fojji Chime", [[Interface\Addons\FojjiCore\sound\Chime.ogg]])
LSM:Register("sound", "fojji Heart", [[Interface\Addons\FojjiCore\sound\Heart.ogg]])
LSM:Register("sound", "fojji IM", [[Interface\Addons\FojjiCore\sound\IM.ogg]])
LSM:Register("sound", "fojji Info", [[Interface\Addons\FojjiCore\sound\Info.ogg]])
LSM:Register("sound", "fojji Kachink", [[Interface\Addons\FojjiCore\sound\Kachink.ogg]])
LSM:Register("sound", "fojji Mario Coin", [[Interface\Addons\FojjiCore\sound\Mario Coin.ogg]])
LSM:Register("sound", "fojji Link", [[Interface\Addons\FojjiCore\sound\Link.ogg]])
LSM:Register("sound", "fojji Text1", [[Interface\Addons\FojjiCore\sound\Text1.ogg]])
LSM:Register("sound", "fojji Text2", [[Interface\Addons\FojjiCore\sound\Text2.ogg]])
LSM:Register("sound", "fojji |cFFFF00001|r", [[Interface\Addons\FojjiCore\sound\1.ogg]])
LSM:Register("sound", "fojji |cFFFF00002|r", [[Interface\Addons\FojjiCore\sound\2.ogg]])
LSM:Register("sound", "fojji |cFFFF00003|r", [[Interface\Addons\FojjiCore\sound\3.ogg]])
LSM:Register("sound", "fojji |cFFFF00004|r", [[Interface\Addons\FojjiCore\sound\4.ogg]])
LSM:Register("sound", "fojji |cFFFF00005|r", [[Interface\Addons\FojjiCore\sound\5.ogg]])
LSM:Register("sound", "fojji |cFFFF00006|r", [[Interface\Addons\FojjiCore\sound\6.ogg]])
LSM:Register("sound", "fojji |cFFFF00007|r", [[Interface\Addons\FojjiCore\sound\7.ogg]])
LSM:Register("sound", "fojji |cFFFF00008|r", [[Interface\Addons\FojjiCore\sound\8.ogg]])
LSM:Register("sound", "fojji |cFFFF00009|r", [[Interface\Addons\FojjiCore\sound\9.ogg]])
LSM:Register("sound", "fojji |cFFFE000010|r", [[Interface\Addons\FojjiCore\sound\10.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:16|t", [[Interface\Addons\FojjiCore\sound\01.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:16|t", [[Interface\Addons\FojjiCore\sound\02.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_3:16|t", [[Interface\Addons\FojjiCore\sound\03.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_4:16|t", [[Interface\Addons\FojjiCore\sound\04.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_5:16|t", [[Interface\Addons\FojjiCore\sound\05.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_6:16|t", [[Interface\Addons\FojjiCore\sound\06.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_7:16|t", [[Interface\Addons\FojjiCore\sound\07.ogg]])
LSM:Register("sound", "fojji |TInterface\\TargetingFrame\\UI-RaidTargetingIcon_8:16|t", [[Interface\Addons\FojjiCore\sound\08.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Add|r", [[Interface\Addons\FojjiCore\sound\Add.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Adds|r", [[Interface\Addons\FojjiCore\sound\Adds.ogg]])
LSM:Register("sound", "fojji |cFFFF0000AMS|r", [[Interface\Addons\FojjiCore\sound\AMS.ogg]])
LSM:Register("sound", "fojji |cFFFF0000AoE|r", [[Interface\Addons\FojjiCore\sound\AoE.ogg]])
LSM:Register("sound", "fojji |cFFFF0000AoE Taunt|r", [[Interface\Addons\FojjiCore\sound\AoE Taunt.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Armor Pen|r", [[Interface\Addons\FojjiCore\sound\Armor Pen.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Assist|r", [[Interface\Addons\FojjiCore\sound\Assist.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Avoid|r", [[Interface\Addons\FojjiCore\sound\Avoid.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Aura Mastery|r", [[Interface\Addons\FojjiCore\sound\Aura Mastery.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Backup|r", [[Interface\Addons\FojjiCore\sound\Backup.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bait|r", [[Interface\Addons\FojjiCore\sound\Bait.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Barkskin|r", [[Interface\Addons\FojjiCore\sound\Barkskin.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Beacon|r", [[Interface\Addons\FojjiCore\sound\Beacon.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Beam|r", [[Interface\Addons\FojjiCore\sound\Beam.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Behind|r", [[Interface\Addons\FojjiCore\sound\Behind.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bell|r", [[Interface\Addons\FojjiCore\sound\Bell.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bite|r", [[Interface\Addons\FojjiCore\sound\Bite.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bitten|r", [[Interface\Addons\FojjiCore\sound\Bitten.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Blizzard|r", [[Interface\Addons\FojjiCore\sound\Blizzard.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Block|r", [[Interface\Addons\FojjiCore\sound\Block.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bloodlust|r", [[Interface\Addons\FojjiCore\sound\Bloodlust.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Blue|r", [[Interface\Addons\FojjiCore\sound\Blue.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Boiling|r", [[Interface\Addons\FojjiCore\sound\Boiling.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bombs|r", [[Interface\Addons\FojjiCore\sound\Bombs.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Boss|r", [[Interface\Addons\FojjiCore\sound\Boss.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Break|r", [[Interface\Addons\FojjiCore\sound\Break.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Breath|r", [[Interface\Addons\FojjiCore\sound\Breath.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Bubble|r", [[Interface\Addons\FojjiCore\sound\Bubble.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Buff|r", [[Interface\Addons\FojjiCore\sound\Buff.ogg]])
LSM:Register("sound", "fojji |cFFFF0000CC|r", [[Interface\Addons\FojjiCore\sound\CC.ogg]])
LSM:Register("sound", "fojji |cFFFF0000CD|r", [[Interface\Addons\FojjiCore\sound\CD.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Carrot|r", [[Interface\Addons\FojjiCore\sound\Carrot.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Center|r", [[Interface\Addons\FojjiCore\sound\Center.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Chain|r", [[Interface\Addons\FojjiCore\sound\Chain.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Charge|r", [[Interface\Addons\FojjiCore\sound\Charge.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Clear|r", [[Interface\Addons\FojjiCore\sound\Clear.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Cloak|r", [[Interface\Addons\FojjiCore\sound\Cloak.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Coil|r", [[Interface\Addons\FojjiCore\sound\Coil.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Collect|r", [[Interface\Addons\FojjiCore\sound\Collect.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Crit|r", [[Interface\Addons\FojjiCore\sound\Crit.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dance|r", [[Interface\Addons\FojjiCore\sound\Dance.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Deathbringer|r", [[Interface\Addons\FojjiCore\sound\Deathbringer.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Debuff|r", [[Interface\Addons\FojjiCore\sound\Debuff.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Decay|r", [[Interface\Addons\FojjiCore\sound\Decay.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Decurse|r", [[Interface\Addons\FojjiCore\sound\Decurse.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Defensive|r", [[Interface\Addons\FojjiCore\sound\Defensive.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Defile|r", [[Interface\Addons\FojjiCore\sound\Defile.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dislodged|r", [[Interface\Addons\FojjiCore\sound\Dislodged.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dispell|r", [[Interface\Addons\FojjiCore\sound\Dispell.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dispersion|r", [[Interface\Addons\FojjiCore\sound\Dispersion.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Divine Hymn|r", [[Interface\Addons\FojjiCore\sound\Divine Hymn.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dodge|r", [[Interface\Addons\FojjiCore\sound\Dodge.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dont Move|r", [[Interface\Addons\FojjiCore\sound\Dont Move.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Dot|r", [[Interface\Addons\FojjiCore\sound\Dot.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Double Ooze|r", [[Interface\Addons\FojjiCore\sound\Double Ooze.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Drop|r", [[Interface\Addons\FojjiCore\sound\Drop.ogg]])
LSM:Register("sound", "fojji |cFFFF0000D Sac|r", [[Interface\Addons\FojjiCore\sound\D Sac.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Earth Shield|r", [[Interface\Addons\FojjiCore\sound\Earth Shield.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Enrage|r", [[Interface\Addons\FojjiCore\sound\Enrage.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Enter|r", [[Interface\Addons\FojjiCore\sound\Enter.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Escort|r", [[Interface\Addons\FojjiCore\sound\Escort.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Exit|r", [[Interface\Addons\FojjiCore\sound\Exit.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Fear|r", [[Interface\Addons\FojjiCore\sound\Fear.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Fire|r", [[Interface\Addons\FojjiCore\sound\Fire.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Fixate|r", [[Interface\Addons\FojjiCore\sound\Fixate.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Flare|r", [[Interface\Addons\FojjiCore\sound\Flare.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Foji|r", [[Interface\Addons\FojjiCore\sound\Foji.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Frenzy|r", [[Interface\Addons\FojjiCore\sound\Frenzy.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Front|r", [[Interface\Addons\FojjiCore\sound\Front.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Frontal|r", [[Interface\Addons\FojjiCore\sound\Frontal.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Gate|r", [[Interface\Addons\FojjiCore\sound\Gate.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Gather|r", [[Interface\Addons\FojjiCore\sound\Gather.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Ghost|r", [[Interface\Addons\FojjiCore\sound\Ghost.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Goo|r", [[Interface\Addons\FojjiCore\sound\Goo.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Greatness|r", [[Interface\Addons\FojjiCore\sound\Greatness.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Green|r", [[Interface\Addons\FojjiCore\sound\Green.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Green Ooze|r", [[Interface\Addons\FojjiCore\sound\Green Ooze.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Harvest Soul|r", [[Interface\Addons\FojjiCore\sound\Harvest Soul.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Haste|r", [[Interface\Addons\FojjiCore\sound\Haste.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Healcd|r", [[Interface\Addons\FojjiCore\sound\Healcd.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Healthstone|r", [[Interface\Addons\FojjiCore\sound\Healthstone.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Hide|r", [[Interface\Addons\FojjiCore\sound\Hide.ogg]])
LSM:Register("sound", "fojji |cFFFF0000High Energy|r", [[Interface\Addons\FojjiCore\sound\High Energy.ogg]])
LSM:Register("sound", "fojji |cFFFF0000High Stacks|r", [[Interface\Addons\FojjiCore\sound\High Stacks.ogg]])
LSM:Register("sound", "fojji |cFFFF0000IBF|r", [[Interface\Addons\FojjiCore\sound\IBF.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Immunity|r", [[Interface\Addons\FojjiCore\sound\Immunity.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Impale|r", [[Interface\Addons\FojjiCore\sound\Impale.ogg]])
LSM:Register("sound", "fojji |cFFFF0000In|r", [[Interface\Addons\FojjiCore\sound\In.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Infection|r", [[Interface\Addons\FojjiCore\sound\Infection.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Infest|r", [[Interface\Addons\FojjiCore\sound\Infest.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Innervate|r", [[Interface\Addons\FojjiCore\sound\Innervate.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Interrupt|r", [[Interface\Addons\FojjiCore\sound\Interrupt.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Intermission|r", [[Interface\Addons\FojjiCore\sound\Intermission.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Invisibility|r", [[Interface\Addons\FojjiCore\sound\Invisibility.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Jump|r", [[Interface\Addons\FojjiCore\sound\Jump.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Kite|r", [[Interface\Addons\FojjiCore\sound\Kite.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Knock|r", [[Interface\Addons\FojjiCore\sound\Knock.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Left|r", [[Interface\Addons\FojjiCore\sound\Left.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Life Tap|r", [[Interface\Addons\FojjiCore\sound\Life Tap.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Linked|r", [[Interface\Addons\FojjiCore\sound\Linked.ogg]])
LSM:Register("sound", "fojji |cFFFF0000LoS|r", [[Interface\Addons\FojjiCore\sound\LoS.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Mana Hymn|r", [[Interface\Addons\FojjiCore\sound\Mana Hymn.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Mana Tide|r", [[Interface\Addons\FojjiCore\sound\Mana Tide.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Mass Dispell|r", [[Interface\Addons\FojjiCore\sound\Mass Dispell.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Mark|r", [[Interface\Addons\FojjiCore\sound\Mark.ogg]])
LSM:Register("sound", "fojji |cFFFF0000MC|r", [[Interface\Addons\FojjiCore\sound\MC.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Melee|r", [[Interface\Addons\FojjiCore\sound\Melee.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Move|r", [[Interface\Addons\FojjiCore\sound\Move.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Next|r", [[Interface\Addons\FojjiCore\sound\Next.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Newb|r", [[Interface\Addons\FojjiCore\sound\Newb.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Numen|r", [[Interface\Addons\FojjiCore\sound\Numen.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Ooze|r", [[Interface\Addons\FojjiCore\sound\Ooze.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Orange|r", [[Interface\Addons\FojjiCore\sound\Orange.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Orb|r", [[Interface\Addons\FojjiCore\sound\Orb.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Out|r", [[Interface\Addons\FojjiCore\sound\Out.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Overlap|r", [[Interface\Addons\FojjiCore\sound\Overlap.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Phase2|r", [[Interface\Addons\FojjiCore\sound\Phase2.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Phase3|r", [[Interface\Addons\FojjiCore\sound\Phase3.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Phylactery|r", [[Interface\Addons\FojjiCore\sound\Phylactery.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Plague|r", [[Interface\Addons\FojjiCore\sound\Plague.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Pots|r", [[Interface\Addons\FojjiCore\sound\Pots.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Pull|r", [[Interface\Addons\FojjiCore\sound\Pull.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Purple|r", [[Interface\Addons\FojjiCore\sound\Purple.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Push|r", [[Interface\Addons\FojjiCore\sound\Push.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Quake|r", [[Interface\Addons\FojjiCore\sound\Quake.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Range|r", [[Interface\Addons\FojjiCore\sound\Range.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Ready|r", [[Interface\Addons\FojjiCore\sound\Ready.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Red|r", [[Interface\Addons\FojjiCore\sound\Red.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Red Ooze|r", [[Interface\Addons\FojjiCore\sound\Red Ooze.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Reflect|r", [[Interface\Addons\FojjiCore\sound\Reflect.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Right|r", [[Interface\Addons\FojjiCore\sound\Right.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Run|r", [[Interface\Addons\FojjiCore\sound\Run.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Rune|r", [[Interface\Addons\FojjiCore\sound\Rune.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Sacred Shield|r", [[Interface\Addons\FojjiCore\sound\Sacred Shield.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Scale|r", [[Interface\Addons\FojjiCore\sound\Scale.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Selfcd|r", [[Interface\Addons\FojjiCore\sound\Selfcd.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Silenced|r", [[Interface\Addons\FojjiCore\sound\Silenced.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Skeleton|r", [[Interface\Addons\FojjiCore\sound\Skeleton.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spikes|r", [[Interface\Addons\FojjiCore\sound\Spikes.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spore|r", [[Interface\Addons\FojjiCore\sound\Spore.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Snap|r", [[Interface\Addons\FojjiCore\sound\Snap.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Sham Rage|r", [[Interface\Addons\FojjiCore\sound\Sham Rage.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Shield|r", [[Interface\Addons\FojjiCore\sound\Shield.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Shield Wall|r", [[Interface\Addons\FojjiCore\sound\Shield Wall.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Soak|r", [[Interface\Addons\FojjiCore\sound\Soak.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Soon|r", [[Interface\Addons\FojjiCore\sound\Soon.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Soul Reaper|r", [[Interface\Addons\FojjiCore\sound\Soul Reaper.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spawn|r", [[Interface\Addons\FojjiCore\sound\Spawn.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spellsteal|r", [[Interface\Addons\FojjiCore\sound\Spellsteal.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spirit|r", [[Interface\Addons\FojjiCore\sound\Spirit.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Split|r", [[Interface\Addons\FojjiCore\sound\Split.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spread|r", [[Interface\Addons\FojjiCore\sound\Spread.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Spray|r", [[Interface\Addons\FojjiCore\sound\Spray.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Stack|r", [[Interface\Addons\FojjiCore\sound\Stack.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Stop|r", [[Interface\Addons\FojjiCore\sound\Stop.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Stopcast|r", [[Interface\Addons\FojjiCore\sound\Stopcast.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Stun|r", [[Interface\Addons\FojjiCore\sound\Stun.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Stun Now|r", [[Interface\Addons\FojjiCore\sound\Stun Now.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Stunned|r", [[Interface\Addons\FojjiCore\sound\Stunned.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Swap Trinket|r", [[Interface\Addons\FojjiCore\sound\Swap Trinket.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Switch|r", [[Interface\Addons\FojjiCore\sound\Switch.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Targeted|r", [[Interface\Addons\FojjiCore\sound\Targeted.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Taunt|r", [[Interface\Addons\FojjiCore\sound\Taunt.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Threat|r", [[Interface\Addons\FojjiCore\sound\Threat.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Too Close|r", [[Interface\Addons\FojjiCore\sound\Too Close.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Totem|r", [[Interface\Addons\FojjiCore\sound\Totem.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Transition|r", [[Interface\Addons\FojjiCore\sound\Transition.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Trap|r", [[Interface\Addons\FojjiCore\sound\Trap.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Tremor|r", [[Interface\Addons\FojjiCore\sound\Tremor.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Tricks|r", [[Interface\Addons\FojjiCore\sound\Tricks.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Turn|r", [[Interface\Addons\FojjiCore\sound\Turn.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Unstable|r", [[Interface\Addons\FojjiCore\sound\Unstable.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Use Pot|r", [[Interface\Addons\FojjiCore\sound\Use Pot.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Valkyr|r", [[Interface\Addons\FojjiCore\sound\Valkyr.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Vile Spirits|r", [[Interface\Addons\FojjiCore\sound\Vile Spirits.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Ward|r", [[Interface\Addons\FojjiCore\sound\Ward.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Watch Threat|r", [[Interface\Addons\FojjiCore\sound\Watch Threat.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Winds|r", [[Interface\Addons\FojjiCore\sound\Winds.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Yellow|r", [[Interface\Addons\FojjiCore\sound\Yellow.ogg]])
LSM:Register("sound", "fojji |cFFFF0000Zone|r", [[Interface\Addons\FojjiCore\sound\Zone.ogg]])

-- -----
--   STATUSBAR
-- -----
LSM:Register("statusbar", "fojjiKUI", [[Interface\Addons\FojjiCore\statusbar\fojjiKUI.tga]])
LSM:Register("statusbar", "fojjiMelli", [[Interface\Addons\FojjiCore\statusbar\Melli.tga]])