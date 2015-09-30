
-- Generate schematics

local a = "air"
local l = "default:lava_source"
local s = "default:sand"
local d = "default:dirt"
local w = "farming:soil_wet"
local v = "default:water_source"
local c = "farming:cotton_8"
local h = "farming:wheat_8"
local o = "default:obsidian_glass"

local insta_farm = {
	size = {x = 5, y = 3, z = 3},
	data = {
		-- left slice, middle slice, right slice (bottom to top)
		{name=d, param1=255}, {name=d, param1=255}, {name=d, param1=255}, {name=d, param1=255}, {name=d, param1=255},
		{name=w, param1=255}, {name=w, param1=255}, {name=w, param1=255}, {name=w, param1=255}, {name=w, param1=255},
		{name=c, param1=255}, {name=c, param1=255}, {name=c, param1=255}, {name=c, param1=255}, {name=c, param1=255},

		{name=w, param1=255}, {name=d, param1=255}, {name=d, param1=255}, {name=d, param1=255}, {name=w, param1=255},
		{name=w, param1=255}, {name=v, param1=255}, {name=v, param1=255}, {name=v, param1=255}, {name=w, param1=255},
		{name=c, param1=255}, {name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255}, {name=h, param1=255},

		{name=d, param1=255}, {name=d, param1=255}, {name=d, param1=255}, {name=d, param1=255}, {name=s, param1=255},
		{name=w, param1=255}, {name=w, param1=255}, {name=w, param1=255}, {name=w, param1=255}, {name=w, param1=255},
		{name=h, param1=255}, {name=h, param1=255}, {name=h, param1=255}, {name=h, param1=255}, {name=h, param1=255},

	},
}

local lava_trap = {
	size = {x = 3, y = 6, z = 3},
	data = {
		-- left slice, middle slice, right slice (bottom to top)
		{name=l, param1=255}, {name=l, param1=255}, {name=l, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},

		{name=l, param1=255}, {name=l, param1=255}, {name=l, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},

		{name=l, param1=255}, {name=l, param1=255}, {name=l, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},
		{name=a, param1=255}, {name=a, param1=255}, {name=a, param1=255},

	},
}

local sand_trap = {
	size = {x = 3, y = 3, z = 3},
	data = {
		-- left slice, middle slice, right slice (bottom to top)
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},

		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},

		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},
		{name=s, param1=255}, {name=s, param1=255}, {name=s, param1=255},

	},
}

local water_trap = {
	size = {x = 3, y = 3, z = 3},
	data = {
		-- left slice, middle slice, right slice (bottom to top)
		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},
		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},
		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},

		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},
		{name=o, param1=255}, {name=v, param1=255}, {name=o, param1=255},
		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},

		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},
		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},
		{name=o, param1=255}, {name=o, param1=255}, {name=o, param1=255},

	},
}

-- Default blocks
lucky_block:add_blocks({
	{"sch", water_trap, 1, {x = 1, y = 0, z = 1}, true},
	{"tel"},
	{"dro", {"wool:"}, 10, true},
	{"dro", {"default:apple"}, 10},
	{"dro", {"default:snow"}, 10},
	{"nod", "default:chest", 0, {
		{name = "bucket:bucket_water", max = 1},
		{name = "default:wood", max = 3},
		{name = "default:pick_diamond", max = 1},
		{name = "default:coal_lump", max = 3}}},
	{"sch", sand_trap, 1, {x = 1, y = 0, z = 1}, true},
	{"nod", "flowers:rose", 0},
	{"sch", lava_trap, 1, {x = 1, y = 5, z = 1}, true},
	{"dro", {"default:mese_crystal_fragment", "default:mese_crystal"}, 10},
	{"exp"},
	{"nod", "default:diamondblock", 0},
	{"nod", "default:steelblock", 0},
	{"nod", "default:dirt", 0},
	{"dro", {"dye:"}, 10, true},
	{"dro", {"default:sword_steel"}, 1},
	{"dro", {"default:pick_steel"}, 1},
	{"dro", {"default:shovel_steel"}, 1},
	{"dro", {"default:coal_lump"}, 3},
	{"dro", {"default:axe_steel"}, 1},
	{"dro", {"default:sword_bronze"}, 1},
	{"exp"},
	{"nod", "default:wood", 0},
	{"dro", {"default:pick_bronze"}, 1},
	{"dro", {"default:shovel_bronze"}, 1},
	{"nod", "default:gravel", 0},
	{"dro", {"default:axe_bronze"}, 1},
})

-- Farming mod
if minetest.get_modpath("farming") then
	lucky_block:add_blocks({
		{"dro", {"farming:bread"}, 5},
		{"sch", insta_farm, 0, {x = 2, y = 2, z = 1}, true},
	})

if farming.mod and farming.mod == "redo" then
	lucky_block:add_blocks({
		{"dro", {"farming:corn"}, 5},
		{"dro", {"farming:coffee_cup_hot"}, 1},
		{"dro", {"farming:bread"}, 5},
		{"nod", "farming:jackolantern", 0},
		{"dro", {"farming:bottle_ethanol"}, 1},
		{"nod", "farming:melon", 0},
		{"dro", {"farming:donut", "farming:donut_chocolate", "farming:donut_apple"}, 5},
	})
end
end

-- Mobs mod
if minetest.get_modpath("mobs") then
	lucky_block:add_blocks({
		{"spw", "mobs:sheep", 5},
		{"spw", "mobs:dungeon_master", 1},
		{"spw", "mobs:sand_monster", 3},
		{"spw", "mobs:stone_monster", 3},
		{"dro", {"mobs:meat_raw"}, 5},
		{"spw", "mobs:rat", 5},
		{"spw", "mobs:dirt_monster", 3},
		{"spw", "mobs:tree_monster", 3},
		{"spw", "mobs:oerkki", 3},
		{"dro", {"mobs:rat_cooked"}, 5},
		{"exp"},
	})
if mobs.mod and mobs.mod == "redo" then
	lucky_block:add_blocks({
		{"spw", "mobs:bunny", 3},
		{"spw", "mobs:spider", 5},
		{"nod", "mobs:honey_block", 0},
		{"spw", "mobs:pumba", 5},
		{"spw", "mobs:mese_monster", 2},
		{"nod", "mobs:cheeseblock", 0},
		{"spw", "mobs:chicken", 5},
		{"dro", {"mobs:egg"}, 5},
		{"spw", "mobs:lava_flan", 3},
		{"spw", "mobs:cow", 5},
		{"dro", {"mobs:bucket_milk"}, 10},
		{"spw", "mobs:kitten", 2},
		{"tro", "default:nyancat", "mobs_kitten", true},
		{"nod", "default:chest", 0, {
			{name = "mobs:lava_orb", max = 1}}},
	})
end
end

-- Home Decor mod
if minetest.get_modpath("homedecor") then
	lucky_block:add_blocks({
		{"nod", "homedecor:toilet", 0},
		{"nod", "homedecor:table", 0},
		{"nod", "homedecor:chair", 0},
		{"nod", "homedecor:table_lamp_off", 0},
	})
end

-- Teleport Potion mod
if minetest.get_modpath("teleport_potion") then
	lucky_block:add_blocks({
		{"dro", {"teleport_potion:potion"}, 1},
	})
end

-- Protector mod
if minetest.get_modpath("protector") then
	lucky_block:add_blocks({
		{"dro", {"protector:protect"}, 3},
	})
if protector.mod and protector.mod == "redo" then
	lucky_block:add_blocks({
		{"dro", {"protector:protect2"}, 3},
		{"dro", {"protector:door_wood"}, 1},
		{"dro", {"protector:door_steel"}, 1},
		{"dro", {"protector:chest"}, 1},
	})
end
end

-- Ethereal mod
if minetest.get_modpath("ethereal") then
local epath = minetest.get_modpath("ethereal") .. "/schematics/"
lucky_block:add_blocks({
	{"nod", "ethereal:crystal_spike", 1},
	{"sch", epath .. "pinetree.mts", 0, {x = 3, y = 0, z = 3}},
	{"dro", {"ethereal:orange"}, 10},
	{"sch", ethereal.appletree, 0, {x = 1, y = 0, z = 1}},
	{"dro", {"ethereal:strawberry"}, 10},
	{"sch", ethereal.bananatree, 0, {x = 3, y = 0, z = 3}},
	{"sch", ethereal.orangetree, 0, {x = 1, y = 0, z = 1}},
	{"dro", {"ethereal:banana"}, 10},
	{"sch", epath .. "acaciatree.mts", 0, {x = 5, y = 0, z = 5}},
	{"dro", {"ethereal:golden_apple"}, 3},
	{"sch", epath .. "palmtree.mts", 0, {x = 4, y = 0, z = 4}},
	{"dro", {"ethereal:tree_sapling", "ethereal:orange_tree_sapling", "ethereal:banana_tree_sapling"}, 10},
	{"dro", {"ethereal:green_dirt", "ethereal:prairie_dirt", "ethereal:grove_dirt", "ethereal:cold_dirt"}, 10},
	{"dro", {"ethereal:axe_crystal"}, 1},
	{"dro", {"ethereal:sword_crystal"}, 1},
	{"dro", {"ethereal:pick_crystal"}, 1},
	{"dro", {"ethereal:fish_raw"}, 1},
	{"dro", {"ethereal:shovel_crystal"}, 1},
	{"dro", {"ethereal:fishing_rod_baited"}, 1},
	{"exp"},
})
end

-- 3D Armor mod
if minetest.get_modpath("3d_armor") then
lucky_block:add_blocks({
	{"dro", {"3d_armor:boots_wood", "3d_armor:leggings_wood", "3d_armor:chestplate_wood", "3d_armor:helmet_wood", "shields:shield_wood"}, 3},
	{"dro", {"3d_armor:boots_steel", "3d_armor:leggings_steel", "3d_armor:chestplate_steel", "3d_armor:helmet_steel", "shields:shield_steel"}, 3},
	{"dro", {"3d_armor:boots_gold", "3d_armor:leggings_gold", "3d_armor:chestplate_gold", "3d_armor:helmet_gold", "shields:shield_gold"}, 3},
	{"dro", {"3d_armor:boots_cactus", "3d_armor:leggings_cactus", "3d_armor:chestplate_cactus", "3d_armor:helmet_cactus", "shields:shield_cactus"}, 3},
	{"dro", {"3d_armor:boots_bronze", "3d_armor:leggings_bronze", "3d_armor:chestplate_bronze", "3d_armor:helmet_bronze", "shields:shield_bronze"}, 3},
	{"lig"},
})
end

-- Fire mod
if minetest.get_modpath("fire") then
lucky_block:add_blocks({
	{"nod", "fire:basic_flame", 1},
})
end

-- Pie mod
if minetest.get_modpath("pie") then
lucky_block:add_blocks({
	{"nod", "pie:pie_0", 0},
	{"nod", "pie:choc_0", 0},
	{"nod", "pie:coff_0", 0},
	{"nod", "pie:rvel_0", 0},
	{"nod", "pie:scsk_0", 0},
	{"nod", "pie:meat_0", 0},
	{"lig"},
})
end

-- Bakedclay mod
if minetest.get_modpath("bakedclay") then
local p = "bakedclay:"
lucky_block:add_blocks({
	{"dro", {"bakedclay:"}, 10, true},
	{"fal", {p.."black", p.."blue", p.."brown", p.."cyan", p.."dark_green", p.."dark_grey", p.."green", p.."grey", p.."magenta", p.."orange", p.."pink", p.."red", p.."violet", p.."white", p.."yellow"}, 0},
})
end

-- Coloured Blocks mod
if minetest.get_modpath("cblocks") then
lucky_block:add_blocks({
	{"dro", {"cblocks:wood_"}, 10, true},
	{"dro", {"carpet:stonebrick_"}, 10, true},
	{"dro", {"carpet:glass_"}, 10, true},
})
end

-- More Ore's mod
if minetest.get_modpath("moreores") then
lucky_block:add_blocks({
	{"nod", "moreores:tin_block", 0},
	{"nod", "moreores:silver_block", 0},
	{"fal", {"default:sand", "default:sand", "default:sand", "default:sand", "default:sand", "default:sand", "moreores:mithril_block"}, 0},
	{"dro", {"moreores:pick_silver"}, 1},
	{"dro", {"moreores:pick_mithril"}, 1},
	{"tro", "moreores:silver_block"},
	{"dro", {"moreores:shovel_silver"}, 1},
	{"dro", {"moreores:shovel_mithril"}, 1},
	{"dro", {"moreores:axe_silver"}, 1},
	{"dro", {"moreores:axe_mithril"}, 1},
	{"tro", "moreores:mithril_block"},
	{"dro", {"moreores:hoe_silver"}, 1},
	{"dro", {"moreores:hoe_mithril"}, 1},
	{"lig"},
})
end

-- Xanadu Server specific
if minetest.get_modpath("xanadu") then
lucky_block:add_blocks({
	{"dro", {"xanadu:cupcake"}, 8},
	{"spw", "mobs:creeper", 1},
	{"spw", "mobs:npc", 1, true, true},
	{"nod", "default:chest", 0, {
		{name = "xanadu:axe_super", max = 1},
		{name = "xanadu:pizza", max = 2}}},
	{"dro", {"paintings:"}, 10, true},
	{"spw", "mobs:greensmall", 4},
	{"dro", {"carpet:"}, 10, true},
	{"dro", {"carpet:wallpaper_"}, 10, true},
	{"nod", "default:chest", 0, {
		{name = "mobs:mese_monster_wing", max = 1}}}
})
end