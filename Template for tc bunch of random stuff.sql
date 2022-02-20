-- Lock tables item_template write;


-- $max = SELECT MAX( entry ) FROM item_template;

-- unlock tables;

SELECT*FROM npc_vendor where entry = XXX order by slot DESC;



select * From npc_vendor where entry = XXX


update item_template set maxcount = 0 where entry in (select item from npc_vendor where entry = XXX)

UPDATE item_template set BuyPrice = 0 where entry in (select item from npc_vendor where entry = XXX );
UPDATE item_template set SellPrice = 0 where entry in (select item from npc_vendor where entry = XXX );


SELECT*FROM item_template where entry in ()

select * From item_template where entry in (select item from npc_vendor where entry = XXX )

--Takes the item id and checks if items being use other vendors.
select * From npc_vendor where item in (select item from npc_vendor where entry in ())


select * From item_template where entry in (select item from item_loot_template where entry in (xxx))


select * From item_template where entry in (select item from npc_vendor where entry = XXX )


replace in to npc_vendor

SELECT * FROM vq_world.creature_template WHERE entry <= '30' LIMIT 0,1000



--To merge all updates into one file open CMD type "cd C:\user\TrinityCore\sql\updates\world" then type "copy /b *.sql updates.sql" all the updates are now merged into a new file called "Updates.sql
set
@entry = (SELECT max(entry)+1 FROM item_template);

(SELECT max(entry)+1 FROM item_template)


Make Quick npc

SET
@creatureentry = (SELECT max(entry)+1 FROM creature_template),
@name = "XXX",
@subname = "XXX",
@modelid = 19294;
INSERT INTO creature_template (entry, modelid1, name, subname, IconName, minlevel, maxlevel, faction, npcflag, HealthModifier)
VALUES (@creatureentry, @modelid, @name, @subname, 'Speak', 80, 80, 35, 4227, 100);





SET
@creatureentry = (SELECT max(entry)+1 FROM creature_template),
@name = "XXX",
@subname = "XXX",
@modelid = 19294,
@faction = 35,
@npcflag = 4227;
INSERT INTO creature_template (entry, modelid1, name, subname, IconName, minlevel, maxlevel, faction, npcflag, HealthModifier)
VALUES (@creatureentry, @modelid, @name, @subname, 'Speak', 80, 80, @faction, @npcflag, 100);


SET
@Entry = "XXX",
@item = "XXX",
@BuyPrice = "XXX",
@BuyCount = "XXX";
INSERT INTO `WORLD`.`npc_vendor`(`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `Cond`, `BuyPrice`, `BuyCount`, `VerifiedBuild`)
VALUES (@Entry, 0, @item, 0, 0, 0, 0, @BuyPrice, @BuyCount, 0);


SET
@MenuID = "XXX",
@OptionID = (SELECT max(optionid)+1 FROM gossip_menu_option WHERE MenuID = @MenuID),
@OptionIcon = "XXX",
@OptionText = "XXX",
@OptionType = "XXX",
@OptionNpcFlag = "XXX",
@ActionMenuID = "XXX";
INSERT INTO `WORLD`.`gossip_menu_option`(`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`)
VALUES (@MenuID, @OptionID, @OptionIcon, @OptionText, 0, @OptionType, @OptionNpcFlag, @ActionMenuID, 0, 0, 0, NULL, 0, 0);

SET
@Entry = "900028",
@item = "",
@BuyPrice = "10000",
@BuyCount = "1";
INSERT INTO `WORLD`.`npc_vendor`(`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `Cond`, `BuyPrice`, `BuyCount`, `VerifiedBuild`)
VALUES (@Entry, 0, @item, 0, 0, 0, 0, @BuyPrice, @BuyCount, 0);




/* Create a dummy Creature_template:
This will creatre a dummy npc, that can be used for various things. Is Smart_AI by default. */

set
@creatureEntry = (select max(creature_template.entry) from creature_template);

set
@creatureName = '',
@creatureScale = '1';

set
@npcFlags = 0;



INSERT INTO `world`.`creature_template` (`entry`, `modelid1`, `name`, `subname`, `minlevel`, `maxlevel`, `exp`, `faction`, `scale`, `BaseAttackTime`, `unit_class`, `type`, `AIName`, `flags_extra`, npcflag) VALUES
(@creatureEntry+1, '40721', @creatureName, 'Dummy', '100', '100', '2', '14', @creatureScale, '2000', '1', '10', 'SmartAI', '128', @npcFlags);


select entry, name from creature_template where entry=(select max(creature_template.entry));


-- My special pets for server"myserver"
-- Just Added NPCFLAG 4224 witch will make them as a vendor
UPDATE world . creature_template SET npcflag = 4227 WHERE entry = 36911;
UPDATE world . creature_template SET npcflag = 4227 WHERE entry = 40703;
UPDATE world . creature_template SET npcflag = 4227 WHERE entry = 36979;
UPDATE world . creature_template SET npcflag = 4227 WHERE entry = 29089;
UPDATE world . creature_template SET npcflag = 4227 WHERE entry = 34587;

---Insert teleport
INSERT INTO `world`.`gameobject_template`(`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES (1, 10, 8244, 'Teleport', '', '', '', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 12340);
-- trainer cost 0
UPDATE `npc_trainer` SET `spellcost` = 0;

-- Remove Quest Stuff --- Instant complete.
UPDATE `world`.`quests` SET `ReqItemId1` = '0' , `ReqItemId2` = '0' , `ReqItemId3` = '0' , `ReqItemId4` = '0' , `ReqItemId5` = '0' , `ReqItemId6` = '0' , `ReqItemCount1` = '0' , `ReqItemCount2` = '0' , `ReqItemCount3` = '0' , `ReqItemCount4` = '0' , `ReqItemCount5` = '0' , `ReqItemCount6` = '0' , `ReqKillMobOrGOId1` = '0' , `ReqKillMobOrGOId2` = '0' , `ReqKillMobOrGOId3` = '0' , `ReqKillMobOrGOId4` = '0' , `ReqKillMobOrGOCount1` = '0' , `ReqKillMobOrGOCount2` = '0' , `ReqKillMobOrGOCount3` = '0' , `ReqKillMobOrGOCount4` = '0';


UPDATE `WORLD`.`item_template` SET `flagsCustom` = 8 WHERE `entry` = 27007

-- Make all item unbound
UPDATE `world`.`items` SET `bonding` = '0';

UPDATE `world`.`item_template` SET `bonding` = '0';
UPDATE `item_template` SET `maxcount` = '0';
UPDATE `item_template` SET `Flags` = '0';

-- Remove Class restriction
UPDATE `world`.`item_template` SET `allowableclass` = '-1';


UPDATE `world`.`item_template` SET `RequiredReputationFaction`=0;
UPDATE `world`.`item_template` SET `maxcount`=0;

-- Remove Main Hand shit
UPDATE `world`.`item_template` SET `inventorytype` = '13' WHERE `inventorytype` = '22';
UPDATE `world`.`item_template` SET `inventorytype` = '13' WHERE `inventorytype` = '21';

-- Factions
-- Friendly - 35
-- Dummy - 7 -- as training dummys "or mby just the heroic boss one"



---Stack item such as 1000 food
UPDATE item_template SET stackable = 1000 WHERE stackable = 20;
-- This is a shining beacon for tradeskillers. This sets all stackable items to 1000. Used with the above code, and you'll be hard pressed to use up all of your bag space. Set stackable > 0 to make unstackable items stackable.
UPDATE `item_template` SET `stackable` = 1000 WHERE `stackable` > 1;

-- This will increase the drop rate from mobs. Just changing the settings in worldserver.conf isn't much of an improvement. Change that -20- to 75 or 100 for loot explosion.
UPDATE creature_loot_template SET ChanceorQuestChance = ChanceorQuestChance * 20;

-- sets all bags to 36slots
UPDATE `item_template` SET `ContainerSlots` = 36 WHERE `ContainerSlots` > 0;

These two queries will allow all players to wear gear 20 levels above their own.
UPDATE `item_template` SET `RequiredLevel` = 1 WHERE `RequiredLevel` BETWEEN 1 AND 20;
UPDATE `item_template` SET `RequiredLevel` = `RequiredLevel` - 20 WHERE `RequiredLevel` > 20;
-- All lego items wow
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30312);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30311);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30317);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30316);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30313);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30314);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30318);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 30319);
UPDATE `item_template` SET `duration` = 0 WHERE (`entry` = 22736);

UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30312);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30311);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30317);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30316);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30313);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30314);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30318);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 30319);
UPDATE `item_template` SET `Map` = 0 WHERE (`entry` = 22736);




UPDATE item_template SET flagsCustom = 8 WHERE  Name LIKE "%shirt%";
update item_template set flagsCu = flagsCu | 8 where entry in (select item from npc_vendor where entry = SHIRTVENDORID);
-- -- -- -- -- ---Remove cost trainer
UPDATE `npc_trainer` SET `spellcost` = 0
UPDATE `npc_trainer` SET `spellcost` = 0
UPDATE `npc_trainer` SET `spellcost` = 0
-- -- -- -- -- ---Remove cost vendors
UPDATE `item_template` SET `buycost` = 0
UPDATE `item_template` SET `buycost` = 0
UPDATE `item_template` SET `buycost` = 0

-- Set price on item
UPDATE npc_vendor SET BuyPrice = 1000000 WHERE entry = 80500;

UPDATE item_template SET description = Void Crafted WHERE entry BETWEEN 90000 AND 90059;
UPDATE `WORLD`.`item_template` SET `description` = 'Void Crafted' WHERE `entry` BETWEEN 90000 AND 90059;
-- Make Portal
SET @entry := xxx; -- New game object id for the portal object
SET @text := 'xxx'; -- Tooltip to show when hovering over portal
SET @display := 1327; -- Display id to use for the portal

-- Coordinates to port to:
SET @map := xxx; -- Map id
SET @x := xxx;
SET @y := xxx;.,
SET @z := xxx;
SET @o := xxx; -- Orientation in radians, 0 is north

INSERT INTO `gameobject_template` VALUES (@entry,10,@display,@text,'','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','',1);
INSERT INTO `smart_scripts` VALUES (@entry,1,0,0,64,0,100,0,0,0,0,0,62,@map,0,0,0,0,0,0,0,0,0,@x,@y,@z,@o,CONCAT(@text, ' - On click - Teleport'));

SET
@Entry = 170000,
@Name = "Teleporter",
@Model = 999;

INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(@Entry, @Model, 0, @Name, "", NULL, 50000, 80, 80, 2, 35, 35, 1, 1, 0, 500, 500, 0, 350, 1, 2000, 0, 1, 0, 0, 0, 0, 7, 138936390, 0, 0, 0, 'SmartAI', 0, 3, 1, 1, 1, 1, 0, 0, 1, 0, 0, '', 0);

---- Simple npc
SET @Entry :=50003;
SET @ModelID :=27436;
SET @Name :='Name Here';
SET @Subname :='Subname Here';
SET @NPCFLAG :=2; -- 1 is gossip / scripted npc's, 4224 is vendor
DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(@Entry, 0, 0, 0, 0, 0, @ModelID, 0, 0, 0, @Name, @Subname, '', 0, 80, 80, 2, 35, 35, @NPCFLAG, 1, 1.14286, 1, 3, 10, 10, 0, 0, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 1);

--- Insert name to vendor.
SET @Entry :=900020;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE name like "%scroll of%"

SET @Entry :=900020;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE spellcategory_1 like "%1500%"

SET @Entry :=XXXXX;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`Cond`BuyPrice`)
SELECT @Entry, 0, entry, 0, 0, 0, 0, 1 FROM item_template WHERE spellcategory_1 like "%NAME%"

SET @Entry :=80501;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template.entry  BETWEEN 90000 AND 90060;

SET @Entry :=80500;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `Cond`, `BuyPrice`)
SELECT @Entry, 0, entry, 0, 0, 0, 0, 1 FROM item_template WHERE entry BETWEEN 90000 AND 90060;

SET @Entry :=80500;
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, Cond, BuyPrice)
SELECT @Entry, 0, item_template.entry, 0, 0, 0, 0, 1 FROM item_template WHERE item_template.entry BETWEEN 90000 and 90060;

SET @Entry := 80500;
SET @Start := 90000;
SET @End   := 90060;
while (@Start < @End) DO
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, Cond, BuyPrice) VALUES (@Entry, 0, @Start, 0, 1, 0, 0)
SET @Start = @Start + 1;

SET @entry :=0;
SET @item :=0;
SET @ExtendedCost :=0;
set @Cond :=0;
INSERT INTO `npc_vendor` VALUES (@entry, 0, @item, 0, 0, @ExtendedCost, @Cond, 1, 1, 0);

UPDATE item_template SET description = Void Crafted Where entry BETWEEN 90000 and 90059;
--move random
UPDATE creature SET spawndist = 40, MovementType = 1 WHERE id = 2110;

UPDATE creature SET spawndist = 40, MovementType = 1 WHERE guid = 2110;



UPDATE creature_template SET minlevel = 19, maxlevel = 19;
UPDATE creature_template SET exp = 0; WHERE entry = 34037;


SET @Entry :=80501;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE entry BETWEEN 90000 AND 90060;


UPDATE `WORLD`.`npc_vendor` SET `BuyPrice` = 100000 WHERE `entry` = 80500 AND `item` = 90046 AND `ExtendedCost` = 0 AND `BuyCount` = 0


UPDATE npc_vendor SET BuyPrice = 1000 WHERE entry = 80500;

-- spell

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`)
VALUES (NPCENTRY, 0, 0, 0, 60, 0, 100, 0, 10000, 10000, 10000, 10000, 11, 21562, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cast spell every 10 seconds');



SET @Entry :=XXXX;
INSERT INTO `WORLD`.`custom_shared_loot`(`CreatureEntry`, `ItemEntry`, `MinCount`, `MaxCount`, `Chance`) VALUES (@Entry, 6354, 2, 5, 100);
INSERT INTO `WORLD`.`custom_shared_loot`(`CreatureEntry`, `ItemEntry`, `MinCount`, `MaxCount`, `Chance`) VALUES (@Entry, 80050, 1, 2, 5);
INSERT INTO `WORLD`.`custom_shared_loot`(`CreatureEntry`, `ItemEntry`, `MinCount`, `MaxCount`, `Chance`) VALUES (@Entry, 168614, 2, 4, 100);
SET @Entry :=;
INSERT INTO `WORLD`.`creature_loot_template`(`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (@Entry, 6354, 0, 0.5, 0, 1, 0, 1, 2, NULL);


SET @Entry :=XXXX;
UPDATE `WORLD`.`creature_loot_template` SET `Chance` = 5 WHERE `Entry` = @Entry AND `Item` = 6354



SET @Entry :=XXXX;
DELETE FROM `creature_loot_template` WHERE (`Entry` = @Entry);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@Entry, ItemID, 0, Chance, 0, 1, 0, MinCount, MaxCount, 'Comment Here'),
(@Entry, 168614, 0, 100, 0, 1, 0, 1, 2, 'Comment Here');



SET @Entry :=XXXX;
SET @QuestSortID :=XXXX;
DELETE FROM `quest_template` WHERE (`ID` = @Entry);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES
(@Entry, 2, 80, 1, @QuestSortID, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4096, 0, 80050, 10, 6354, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Highlord Kruul', '??', '??', '', '', 18338, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', 0);







-- Pets
SET @Entry :=XXXX;
DELETE FROM `creature_loot_template` WHERE (`Entry` = @Entry);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(@Entry, 8501, 0, 1, 0, 1, 0, 1, 1, 'Pet'),
(@Entry, 29363, 0, 1, 0, 1, 0, 1, 1, 'Pet'),
(@Entry, 8496, 0, 1, 0, 1, 0, 1, 1, 'Pet'),
(@Entry, 8492, 0, 1, 0, 1, 0, 1, 1, 'Pet'),
(@Entry, 8495, 0, 1, 0, 1, 0, 1, 1, 'Pet'),
(@Entry, 10394, 0, 1, 0, 1, 0, 1, 1, 'Pet'),
(@Entry, 8500, 0, 1, 0, 1, 0, 1, 1, 'Pet');



update creature_template set minlevel = X, maxlevel =X where entry in (select id from creature where zoneid  in (x, x, x,x ,x)); --Update whole zone
update creature_template set lootid where entry in (select id from creature where zoneid  in (4272);
SELECT *
FROM creature_template
where entry in (select id from creature where zoneid  in (XXXX));

SELECT *
FROM creature_template
where entry in (select id from creature where zoneid  in (1581));


SELECT * FROM creature_template
where entry in (select id from creature where map  in (36));

-- Update rows in table 'TableName'
UPDATE creature_template
SET
    [Colum1] = minlevel,
    [Colum2] = maxlevel
    -- add more columns and values here
WHERE ENTRY BETWEEN
GO



/*Update respawn timer*/
SET
@ENTRY = 160000, /*NPC ENTRY*/
@SPAWNTIME = 10; /*SPAWNTIME*/
UPDATE creature SET spawntimesecs = @SPAWNTIME WHERE id IN (SELECT DISTINCT id FROM creature_template WHERE entry = @ENTRY);

-- Remove mail instant 80
DELETE FROM `achievement_reward` WHERE `entry` = "13";


Increase % to gear
UPDATE `Item_template` SET stat_value1 = (stat_value1 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value2 = (stat_value2 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value3 = (stat_value3 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value4 = (stat_value4 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value5 = (stat_value5 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value6 = (stat_value6 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value7 = (stat_value7 * 1.15) WHERE `Name` LIKE '%Wrathful%';
UPDATE `Item_template` SET stat_value8 = (stat_value8 * 1.15) WHERE `Name` LIKE '%Wrathful%';

/*
Delete Duplicates
*/


SELECT @entry := entry, name, @display := displayId FROM gameobject_template WHERE displayId = (SELECT displayId FROM gameobject_template GROUP BY displayId ORDER BY COUNT(*) DESC LIMIT 1);
UPDATE gameobject JOIN gameobject_template ON gameobject.id = gameobject_template.entry SET gameobject.id = @entry WHERE gameobject_template.entry != @entry AND gameobject_template.displayId = @display;
DELETE FROM gameobject_template WHERE displayId = @display AND entry != @entry;

--Walk random
UPDATE creature SET spawndist = XXX, MovementType = 1 WHERE id = XXXx;

UPDATE creature SET spawndist = XXX, MovementType = 1 WHERE guid = XXX;

UPDATE creature SET wander_distance = 10, MovementType = 1 WHERE id = 1900016;

UPDATE creature SET wander_distance = 10, MovementType = 1 WHERE guid = 1177;



--Starting zone for all
UPDATE playercreateinfo
SET map='1', zone='331', position_x='2781.349365', position_y='-432.711884', position_z='117.104965', orientation='2.80'

Change faction ID
UPDATE `world`.`creature_template` SET `faction`='35' WHERE  `entry`=ID;

SQL
Simple SQL Query for stat increase on items
Pretty trash
SET

UPDATE item_template SET
stat_value1= stat_value1 + (stat_value1 * 10 / 100),
stat_value2= stat_value2 + (stat_value2 * 10 / 100),
stat_value3= stat_value3 + (stat_value3 * 10 / 100),
stat_value4= stat_value4 + (stat_value4 * 10 / 100),
stat_value5= stat_value5 + (stat_value5 * 10 / 100),
stat_value6= stat_value6 + (stat_value6 * 10 / 100),
stat_value7= stat_value7 + (stat_value7 * 10 / 100),
stat_value8= stat_value8 + (stat_value8 * 10 / 100),
stat_value9= stat_value9 + (stat_value9 * 10 / 100),
stat_value10= stat_value10 + (stat_value10 * 10 / 100)
WHERE entry = XXX;


UPDATE my_products SET price = (price * 1.15) WHERE refresh_time like "%2013%"
‘UPDATE employees SET salary= salary + (salary * 10 / 100) WHERE salary between 12000 and 20000’;
‘UPDATE employees SET salary= salary + (salary * 10 / 100) WHERE salary > 12000’;
Make npc fast

SET
@creatureentry = (SELECT max(entry)+1 FROM creature_template),
@name = "Gloves Vendor ilvl 200",
@subname = "Plate",
@InventoryType = 10,
@modelid = 19294,
@subclass = 4,
@itemlevel = 200,
@faction = 35;
INSERT INTO creature_template (entry, modelid1, name, subname, IconName, minlevel, maxlevel, faction, npcflag, HealthModifier)
VALUES (@creatureentry, @modelid, @name, @subname, 'Buy', 80, 80, 35, 128, 100);
INSERT INTO npc_vendor (entry, item)
SELECT @creatureentry, entry FROM item_template WHERE  ItemLevel = @itemlevel AND InventoryType = @InventoryType AND subclass = @subclass;

SET
@creatureentry = (SELECT max(entry)+1 FROM creature_template),
@name = "XXX",
@subname = "XXX",
@modelid = 19294,
@faction = 35,
@npcflag = 4227;
INSERT INTO creature_template (entry, modelid1, name, subname, IconName, minlevel, maxlevel, faction, npcflag, HealthModifier)
VALUES (@creatureentry, @modelid, @name, @subname, 'buy', 80, 80, 35, 4227, 100);





UPDATE item_template SET stat_value1='*2' WHERE stat_type1='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value2='*2' WHERE stat_type2='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value3='*2' WHERE stat_type3='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value4='*2' WHERE stat_type4='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value5='*2' WHERE stat_type5='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value6='*2' WHERE stat_type6='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value7='*2' WHERE stat_type7='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value8='*2' WHERE stat_type8='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value9='*2' WHERE stat_type9='7' AND entry BETWEEN 1 AND 999999;
UPDATE item_template SET stat_value10='*2' WHERE stat_type10='7' AND entry BETWEEN 1 AND 999999;



Set the same starting area for all races/classes.

SET @map :=1234;  -- Replace with the Map ID.
SET @zone :=1234; -- Replace with the Zone ID.
SET @position_x :=1234; -- Replace with Position_x.
SET @position_y :=1234;  -- Replace with the Position_y.
SET @position_z :=1234; -- Replace with the Position_z.
SET @orientation :=1234; -- Replace with Orientation.
UPDATE `playercreateinfo` SET map=@map AND zone=@zone AND position_x=@position_x AND position_y=@position_y AND position_z=@position_z AND orientation=@orientation WHERE race>=1 AND race<=11;



Set iLvL

UPDATE item_template SET `itemlevel`=ItemlevelHERE;


-------------Finish Quest instant
UPDATE quest_template SET Method = 0 WHERE entry = xxxxxx;


----------------------Teleport
update `characters` where `posistiondoeaofhuieahiufhe` = the code;


-----------------Remove rep from item

UPDATE `world`.`item_template` SET `RequiredReputationFaction`=0, `RequiredReputationRank`=0;

-----------------Remove rep and class
UPDATE item_template SET RequiredReputationFaction=0, RequiredReputationRank=0, AllowableClass=-1;

UPDATE item_template SET RequiredReputationFaction=0, RequiredReputationRank=0, AllowableClass=-1;

UPDATE item_template SET RequiredReputationFaction=0, RequiredReputationRank=0 WHERE RequiredReputationFaction > 0 AND RequiredReputationRank > 0;
UPDATE item_template SET AllowableClass=-1 WHERE AllowableClass <> -1;


--------------------------------------
----
Portalbale hole bags
INSERT INTO `playercreateinfo_item` VALUES ('0','0','23162','4');



-------Makes so its hord Or alliance only.

SET
@MENU_ID := 60000,
@ID := 2,
@FACTION := 67; -- 0 for no req. 469 - Alliance, 67 - Horde.

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `Comment`) VALUES
(15, @MENU_ID, @ID, 6, @FACTION, 0, 0, "Custom Teleporter Faction requirement");

SQL info:
●Cast a spell when player entering a certain area.
●Query easily editable for inexperienced users.

SET @SPELL_ID := ''; -- Type your Spell ID
SET @AREA_ID := ''; -- Type your Area ID
SET @STAY_AURA := '0'; -- If you want to spell stay when player leaves from area, type the o id of the spell as negative value, example: -69874, If 0 the spell will be removed when player leaves from area.
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES(@SPELL_ID,@AREA_ID,'0','0',@STAY_AURA,'0','2','1','0','0');

-- Add aura to NPC if aura not present
SET @ENTRY := XXXXX;
SET @SPELL := XXXXX;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,@SPELL,0,2000,2000,11,@SPELL,0,0,0,0,0,1,0,0,0,0,0,0,0, 'NPC - Aura SPELL not present - Add Aura SPELL');



set
@Text := '|cffffff00[|c00077766NAMEHERE|cffffff00]: |cFFF222FF%s|r';

UPDATE trinity_string SET content_default=@Text WHERE entry=11000 LIMIT 1;




SET @ENTRY := 961001;
SET @SOURCETYPE := 0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=@SOURCETYPE;
UPDATE creature_template SET AIName="SmartAI" WHERE entry=@ENTRY LIMIT 1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,@SOURCETYPE,1,0,0,0,100,0,5000,5000,5000,5000,11,50705,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Casting Arcane Bolt(13748) every 5 seconds."),
(@ENTRY,@SOURCETYPE,14,0,6,0,100,1,0,0,0,0,78,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset script on death."),
(@ENTRY,@SOURCETYPE,15,0,1,0,100,1,5000,5000,5000,5000,78,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Reset script when out of combat.");


-- Make a portal to a place
SET @entry := xxx; -- New game object id for the portal object
SET @text := 'xxx'; -- Tooltip to show when hovering over portal
SET @display := 1327; -- Display id to use for the portal

-- Coordinates to port to:
SET @map := xxx; -- Map id
SET @x := xxx;
SET @y := xxx;
SET @z := xxx;
SET @o := xxx; -- Orientation in radians, 0 is north

INSERT INTO `gameobject_template` VALUES (@entry,10,@display,@text,'','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','',1);
INSERT INTO `smart_scripts` VALUES (@entry,1,0,0,64,0,100,0,0,0,0,0,62,@map,0,0,0,0,0,0,0,0,0,@x,@y,@z,@o,CONCAT(@text, ' - On click - Teleport'));

example

SET @entry := 500001; -- New game object id for the portal object
SET @text := 'Portal to Shatterspear Village'; -- Tooltip to show when hovering over portal
SET @display := 1327; -- Display id to use for the portal

-- Coordinates to port to:
SET @map := 1; -- Map id
SET @x := 7367.77;
SET @y := -1560.74;
SET @z := 163.45;
SET @o := 2.55; -- Orientation in radians, 0 is north

INSERT INTO `gameobject_template` VALUES (@entry,10,@display,@text,'','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','',1);
INSERT INTO `smart_scripts` VALUES (@entry,1,0,0,64,0,100,0,0,0,0,0,62,@map,0,0,0,0,0,0,0,0,0,@x,@y,@z,@o,CONCAT(@text, ' - On click - Teleport'));




////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////




SET @NPC_ENTRY_ID := 80000;SET @NPC_NAME := "Overworld to Underworld Vaults";
SET @TELE_TO_MAP := 289;
SET @TELE_TO_X := 186.154663;
SET @TELE_TO_Y := 126.231956;
SET @TELE_TO_Z := 139.876190;
SET @TELE_TO_O := 3.164552;
SET @PORTAL_SIZE := 4;


INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `faction_A`, `faction_H`, `speed_walk`, `speed_run`, `unit_class`, `unit_flags`, `AIName`) VALUES (@NPC_ENTRY_ID, 26496, 26496, 26496, 26496, @NPC_NAME, 1, 1, 0.000001, 0.000001, 1, 33554432 , 'SmartAI');
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `target_param1`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES (@NPC_ENTRY_ID, 10, 1, @PORTAL_SIZE, @PORTAL_SIZE, @PORTAL_SIZE, 62, @TELE_TO_MAP, @TELE_TO_X, @TELE_TO_Y, @TELE_TO_Z, @TELE_TO_O, @NPC_NAME);

UPDATE creature_template SET mingold = 0;
UPDATE creature_template SET maxgold = 0;
UPDATE quest_template SET RewardOrRequiredMoney =0;
UPDATE item_template SET sellprice = 0;

-- change autobroadcast color.sql

SET
@ABC = '[Your AutoBoardCast you also can add colors !]'
UPDATE trinity_string SET content_default =@ABC WHERE entry = 11000;



Remove spell cost etc

UPDATE `npc_trainer` SET `spellcost` = 0

UPDATE `item_template` SET `buycost` = 0

UPDATE npc_trainer SET `spellcost` = `spellcost` * 0;


DIsable a spell in a certain zone

SET @entry :=1234;  -- Replace with the Spell ID.
SET @params_1 :=5555; -- Replace with the Zone ID.
SET @comment :=Spell Disable; -- Replace with any comment.
INSERT INTO `disables` VALUES (3, @entry, 49, 0, @params_1, @comment);






Simple npc?

SET @Entry :=50003;
SET @ModelID :=27436;
SET @Name :='Name Here';
SET @Subname :='Subname Here';
SET @NPCFLAG :=2; -- 1 is gossip / scripted npc's, 4224 is vendor
DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(@Entry, 0, 0, 0, 0, 0, @ModelID, 0, 0, 0, @Name, @Subname, '', 0, 80, 80, 2, 35, 35, @NPCFLAG, 1, 1.14286, 1, 3, 10, 10, 0, 0, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 1);



Insert all weapons with a specific item level into the npc_vendor table:

SET @Entry :=60047;
SET @iLvL :='232';
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE ItemLevel=@iLvL and (class='2' and name!='Furious Gladiator');


and the last one I have right now is meant to be created for a multivendor, it adds all the main pieces into different entrys:

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT 60046, 0, entry, 0, 0, 0 FROM item_template WHERE ItemLevel='219' AND InventoryType='1';

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT 60047, 0, entry, 0, 0, 0 FROM item_template WHERE ItemLevel='219' AND InventoryType='3';

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT 60048, 0, entry, 0, 0, 0 FROM item_template WHERE ItemLevel='219' AND InventoryType='5';

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT 60049, 0, entry, 0, 0, 0 FROM item_template WHERE ItemLevel='219' AND InventoryType='7';

INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT 60050, 0, entry, 0, 0, 0 FROM item_template WHERE ItemLevel='219' AND InventoryType='10';









TOme of flying

DELETE FROM `item_template` where `entry` = 987654;
INSERT INTO `item_template` (`entry`, `class`, `subclass`, `name`, `displayid`, `Quality`, `Flags`, `FlagsExtra`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `flagsCustom`, `VerifiedBuild`) VALUES
(987654, 9, 0, 'Tome of World Flying', 61330, 7, 134217792, 0, 1, 2500000, 500000, 0, -1, -1, 80, 45, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 483, 0, -1, 0, -1, 0, -1, 31700, 6, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Learn to fly everywhere', 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 1);



add flying

-- Player Start with Riding Skills (Least Rev)
INSERT INTO `playercreateinfo_spell` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
(0, 0, 33389, 'Apprentice Riding'),
(0, 0, 33392, 'Journeyman Riding'),
(0, 0, 34092, 'Expert Riding'),
(0, 0, 34093, 'Artisan Riding'),
(0, 0, 54198, 'Cold Weather Flying');

-- Player Start with Riding Skills (Old Rev)
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES
(0, 0, 33389, 'Apprentice Riding'),
(0, 0, 33392, 'Journeyman Riding'),
(0, 0, 34092, 'Expert Riding'),
(0, 0, 34093, 'Artisan Riding'),
(0, 0, 54198, 'Cold Weather Flying');





Remove Quest Stuff --- Instant complete.

UPDATE `world`.`quests` SET `ReqItemId1` = '0' , `ReqItemId2` = '0' , `ReqItemId3` = '0' , `ReqItemId4` = '0' , `ReqItemId5` = '0' , `ReqItemId6` = '0' , `ReqItemCount1` = '0' , `ReqItemCount2` = '0' , `ReqItemCount3` = '0' , `ReqItemCount4` = '0' , `ReqItemCount5` = '0' , `ReqItemCount6` = '0' , `ReqKillMobOrGOId1` = '0' , `ReqKillMobOrGOId2` = '0' , `ReqKillMobOrGOId3` = '0' , `ReqKillMobOrGOId4` = '0' , `ReqKillMobOrGOCount1` = '0' , `ReqKillMobOrGOCount2` = '0' , `ReqKillMobOrGOCount3` = '0' , `ReqKillMobOrGOCount4` = '0';




Make all item unbound


UPDATE `world`.`items` SET `bonding` = '0';



Remove Main Hand shit

UPDATE `world`.`item_template` SET `inventorytype` = '13' WHERE `inventorytype` = '21';
UPDATE `world`.`item_template` SET `inventorytype` = '13' WHERE `inventorytype` = '21';


Remove Class restriction

UPDATE `world`.`item_template` SET `allowableclass` = '-1';


UPDATE `world`.`item_template` SET `RequiredReputationFaction`=0;
UPDATE `world`.`item_template` SET `maxcount`=0;

Factions

Friendly - 35
Dummy - 7 -- as training dummys "or mby just the heroic boss one"

---Stack item such as 1000 food
UPDATE item_template SET stackable = 1000 WHERE stackable = 20;
UPDATE item_template SET BuyPrice = 0 WHERE  Name LIKE "%glyph of %";



---Remove cost trainer
UPDATE `npc_trainer` SET `spellcost` = 0
---Remove cost vendors
UPDATE `item_template` SET `buycost` = 0

-- Make Portal
SET @entry := xxx; -- New game object id for the portal object
SET @text := 'xxx'; -- Tooltip to show when hovering over portal
SET @display := 1327; -- Display id to use for the portal

-- Coordinates to port to:
SET @map := xxx; -- Map id
SET @x := xxx;
SET @y := xxx;
SET @z := xxx;
SET @o := xxx; -- Orientation in radians, 0 is north

INSERT INTO `gameobject_template` VALUES (@entry,10,@display,@text,'','','',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'SmartGameObjectAI','',1);
INSERT INTO `smart_scripts` VALUES (@entry,1,0,0,64,0,100,0,0,0,0,0,62,@map,0,0,0,0,0,0,0,0,0,@x,@y,@z,@o,CONCAT(@text, ' - On click - Teleport'));

---- Simple npc
SET @Entry :=50003;
SET @ModelID :=27436;
SET @Name :='Name Here';
SET @Subname :='Subname Here';
SET @NPCFLAG :=2; -- 1 is gossip / scripted npc's, 4224 is vendor
DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
(@Entry, 0, 0, 0, 0, 0, @ModelID, 0, 0, 0, @Name, @Subname, '', 0, 80, 80, 2, 35, 35, @NPCFLAG, 1, 1.14286, 1, 3, 10, 10, 0, 0, 1, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10000, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '', 1);



- Insert name to vendor.

SET @Entry :=900020;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE name like "%scroll of%"

SET @Entry :=900020;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`)
SELECT @Entry, 0, entry, 0, 0, 0 FROM item_template WHERE spellcategory_1 like "%1500%"

SET @Entry :=XXXXX;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`Cond`BuyPrice`)
SELECT @Entry, 0, entry, 0, 0, 0, 0, 1 FROM item_template WHERE spellcategory_1 like "%Wrathful%"


SET @entry :=0;
SET @item :=0;
SET @ExtendedCost :=0;
set @Cond :=0;
INSERT INTO `npc_vendor` VALUES (@entry, 0, @item, 0, 0, @ExtendedCost, @Cond, 1, 1, 0);


--move random
UPDATE creature SET spawndist = 40, MovementType = 1 WHERE id = 2110;

UPDATE creature SET spawndist = 40, MovementType = 1 WHERE guid = 2110;

UPDATE creature SET wander_distance = 10, MovementType = 1 WHERE id = 1900016;

UPDATE creature SET wander_distance = 10, MovementType = 1 WHERE guid = 1177;


UPDATE creature_template SET minlevel = 19, maxlevel = 19;
UPDATE creature_template SET exp = 0; WHERE entry = 34037;

UPDATE creature_template
SET lootid="12345"
WHERE entry="12345";
SET
@entry=12345,
@ItemEntry=54321,
@DropChance=100,
@MinCount=1,
@MaxCount=1;
/* Do NOT edit bellow this ! unless you know what ur doing ofc */
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, lootmode, groupid, mincountOrRef, maxcount)
VALUES (@entry, @ItemEntry, @DropChance, 1, 0, @MinCount, @MaxCount);