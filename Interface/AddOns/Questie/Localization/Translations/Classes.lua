---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

local classLocales = {
    ["Warrior"] = {
        ["ptBR"] = "Guerreiro",
        ["ruRU"] = "Воин",
        ["deDE"] = "Krieger",
        ["koKR"] = "전사",
        ["esMX"] = "Guerrero",
        ["enUS"] = true,
        ["frFR"] = "Guerrier",
        ["esES"] = "Guerrero",
        ["zhTW"] = "Warrior",
        ["zhCN"] = "战士",
    },
    ["Paladin"] = {
        ["ptBR"] = "Paladino",
        ["ruRU"] = "Паладин",
        ["deDE"] = "Paladin",
        ["koKR"] = "성기사",
        ["esMX"] = "Paladín",
        ["enUS"] = true,
        ["frFR"] = "Paladin",
        ["esES"] = "Paladín",
        ["zhTW"] = "Paladin",
        ["zhCN"] = "圣骑士",
    },
    ["Shaman"] = {
        ["ptBR"] = "Xamã",
        ["ruRU"] = "Шаман",
        ["deDE"] = "Schamane",
        ["koKR"] = "주술사",
        ["esMX"] = "Chamán",
        ["enUS"] = true,
        ["frFR"] = "Chaman",
        ["esES"] = "Chamán",
        ["zhTW"] = "Shaman",
        ["zhCN"] = "萨满祭司",
    },
    ["Rogue"] = {
        ["ptBR"] = "Ladino",
        ["ruRU"] = "Разбойник",
        ["deDE"] = "Schurke",
        ["koKR"] = "도적",
        ["esMX"] = "Pícaro",
        ["enUS"] = true,
        ["frFR"] = "Voleur",
        ["esES"] = "Pícaro",
        ["zhTW"] = "Rogue",
        ["zhCN"] = "潜行者",
    },
    ["Mage"] = {
        ["ptBR"] = "Mago",
        ["ruRU"] = "Маг",
        ["deDE"] = "Magier",
        ["koKR"] = "마법사",
        ["esMX"] = "Mago",
        ["enUS"] = true,
        ["frFR"] = "Mage",
        ["esES"] = "Mago",
        ["zhTW"] = "Mage",
        ["zhCN"] = "法师",
    },
    ["Druid"] = {
        ["ptBR"] = "Druida",
        ["ruRU"] = "Друид",
        ["deDE"] = "Druide",
        ["koKR"] = "드루이드",
        ["esMX"] = "Druida",
        ["enUS"] = true,
        ["frFR"] = "Druide",
        ["esES"] = "Sacerdote",
        ["zhTW"] = "Druid",
        ["zhCN"] = "德鲁伊",
    },
    ["Priest"] = {
        ["ptBR"] = "Sacerdote",
        ["ruRU"] = "Жрец",
        ["deDE"] = "Priester",
        ["koKR"] = "사제",
        ["esMX"] = "Sacerdote",
        ["enUS"] = true,
        ["frFR"] = "Prêtre",
        ["esES"] = "Priest",
        ["zhTW"] = "Priest",
        ["zhCN"] = "牧师",
    },
    ["Hunter"] = {
        ["ptBR"] = "Caçador",
        ["ruRU"] = "Охотник",
        ["deDE"] = "Jäger",
        ["koKR"] = "사냥꾼",
        ["esMX"] = "Cazador",
        ["enUS"] = true,
        ["frFR"] = "Chasseur",
        ["esES"] = "Cazador",
        ["zhTW"] = "Hunter",
        ["zhCN"] = "猎人",
    },
    ["Warlock"] = {
        ["ptBR"] = "Bruxo",
        ["ruRU"] = "Чернокнижник",
        ["deDE"] = "Hexenmeister",
        ["koKR"] = "흑마법사",
        ["esMX"] = "Brujo",
        ["enUS"] = true,
        ["frFR"] = "Démoniste",
        ["esES"] = "Brujo",
        ["zhTW"] = "Warlock",
        ["zhCN"] = "术士",
    },
}

for k, v in pairs(classLocales) do
    l10n.translations[k] = v
end