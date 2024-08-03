Set @NpcName = "Services NPC",
    @NpcSubname = "AzerothCore",
    @NpcEntry = 55002,
    @NpcDisplayID = 31833,
    @NpcLevel = 80;

DELETE FROM `creature_template` WHERE `entry` = @NpcEntry;
INSERT INTO `creature_template` (`entry`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`, `RacialLeader`, `movementId`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (@NpcEntry, @NpcName, @NpcSubname, NULL, 0, @NpcLevel, @NpcLevel, 2, 35, 1, 1, 1, 0, 2000, 2000, 2, 0, 2048, 7, 0, 0, 0, 0, '', 0, 1, 0, 0, 50, 50, 1, 1, 0, 0, 'mod_npc_services');

DELETE FROM `creature_template_model` WHERE `CreatureID` = @NpcEntry;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@NpcEntry, 0, @NpcDisplayID, 1, 1, 12340);
