/*
    CLASS           CLASSMASK
    -------------------------
    Warrior     1
    Paladin     2
    Hunter      4
    Rogue       8
    Priest      16
    DK      32
    Shaman      64
    Mage        128
    Warlock     256
    Druid       1024
*/

DELETE FROM `playercreateinfo_spell_custom` WHERE `Note` IN('Polearms', 'One-Handed Swords', 'Daggers', 'Two-Handed Axes', 'One-Handed Axes', 'Two-Handed Swords', 'Two-Handed Maces', 'One-Handed Maces', 'Thrown', 'Throw', 'Bows', 'Guns', 'Polearms', 'Fist Weapons', 'Crossbows', 'Mail Armor', 'Plate Armor', 'Staves', 'Dual-Wield');

INSERT INTO `playercreateinfo_spell_custom` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
(0, 399, 201, 'One-Handed Swords'),
(0, 477, 1180, 'Daggers'),
(0, 71, 197, 'Two-Handed Axes'),
(0, 1123, 199, 'Two-Handed Maces'),
(0, 7, 202, 'Two-Handed Swords'),
(0, 1147, 198, 'One-Handed Maces'),
(0, 79, 196, 'One-Handed Axes'),
(0, 1031, 200, 'Polearms'),
(0, 13, 2567, 'Thrown'),
(0, 13, 2764, 'Throw'),
(0, 13, 264, 'Bows'),
(0, 13, 266, 'Guns'),
(0, 13, 5011, 'Crossbows'),
(0, 77, 15590, 'Fist Weapons'),
(0, 1493, 227, 'Staves'),
(0, 5, 674, 'Dual-Wield'),
(0, 68, 8737, 'Mail Armor'),
(0, 3, 750, 'Plate Armor');






DELETE FROM `playercreateinfo_spell` WHERE `Note` IN('Polearms', 'One-Handed Swords', 'Daggers', 'Two-Handed Axes', 'One-Handed Axes', 'Two-Handed Swords', 'Two-Handed Maces', 'One-Handed Maces', 'Thrown', 'Throw', 'Bows', 'Guns', 'Polearms', 'Fist Weapons', 'Crossbows', 'Mail Armor', 'Plate Armor', 'Staves', 'Dual-Wield');

INSERT INTO `playercreateinfo_spell` (`racemask`, `classmask`, `Spell`, `Note`) VALUES
(0, 399, 201, 'One-Handed Swords'),
(0, 477, 1180, 'Daggers'),
(0, 71, 197, 'Two-Handed Axes'),
(0, 1123, 199, 'Two-Handed Maces'),
(0, 7, 202, 'Two-Handed Swords'),
(0, 1147, 198, 'One-Handed Maces'),
(0, 79, 196, 'One-Handed Axes'),
(0, 1031, 200, 'Polearms'),
(0, 13, 2567, 'Thrown'),
(0, 13, 2764, 'Throw'),
(0, 13, 264, 'Bows'),
(0, 13, 266, 'Guns'),
(0, 13, 5011, 'Crossbows'),
(0, 77, 15590, 'Fist Weapons'),
(0, 1493, 227, 'Staves'),
(0, 5, 674, 'Dual-Wield'),
(0, 68, 8737, 'Mail Armor'),
(0, 3, 750, 'Plate Armor');