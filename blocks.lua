
-- Default tree schematics
local dpath = minetest.get_modpath("default") .. "/schematics/"

lucky_block:add_schematics({
	{"appletree", dpath .. "apple_tree_from_sapling.mts", {x = 2, y = 1, z = 2}},
	{"jungletree", dpath .. "jungle_tree_from_sapling.mts", {x = 2, y = 1, z = 2}},
	{"defpinetree", dpath .. "pine_tree_from_sapling.mts", {x = 2, y = 1, z = 2}},
	{"acaciatree", dpath .. "acacia_tree_from_sapling.mts", {x = 4, y = 1, z = 4}},
	{"aspentree", dpath .. "aspen_tree_from_sapling.mts", {x = 2, y = 1, z = 2}},
	{"corals", dpath .. "corals.mts", {x = 2, y = 1, z = 2}},
	{"largecactus", dpath .. "large_cactus.mts", {x = 2, y = 0, z = 0}},
	{"defaultbush", dpath .. "bush.mts", {x = 1, y = 1, z = 1}},
	{"acaciabush", dpath .. "acacia_bush.mts", {x = 1, y = 1, z = 1}},
})

-- Default blocks
lucky_block:add_blocks({
	{"sch", "watertrap", 1, true},
	{"tel"},
	{"dro", {"wool:"}, 10, true},
	{"dro", {"default:apple"}, 10},
	{"sch", "appletree", 0, false},
	{"dro", {"default:snow"}, 10},
	{"nod", "default:chest", 0, {
		{name = "bucket:bucket_water", max = 1},
		{name = "default:wood", max = 3},
		{name = "default:pick_diamond", max = 1},
		{name = "default:coal_lump", max = 3}}},
	{"sch", "sandtrap", 1, true},
	{"sch", "defpinetree", 0, false},
	{"sch", "lavatrap", 1, true},
	{"dro", {"default:mese_crystal_fragment", "default:mese_crystal"}, 10},
	{"exp", 2},
	{"sch", "acaciabush", 0, false},
	{"nod", "default:diamondblock", 0},
	{"nod", "default:steelblock", 0},
	{"nod", "default:dirt", 0},
	{"dro", {"dye:"}, 10, true},
	{"dro", {"default:sword_steel"}, 1},
	{"sch", "jungletree", 0, false},
	{"dro", {"default:pick_steel"}, 1},
	{"dro", {"default:shovel_steel"}, 1},
	{"dro", {"default:coal_lump"}, 3},
	{"sch", "defaultbush", 0, false},
	{"tro", "default:mese", "tnt_blast", true},
	{"sch", "acaciatree", 0, false},
	{"dro", {"default:axe_steel"}, 1},
	{"dro", {"default:sword_bronze"}, 1},
	{"exp", 3},
	{"sch", "platform", 1, true},
	{"nod", "default:wood", 0},
	{"dro", {"default:pick_bronze"}, 1},
	{"sch", "aspentree", 0, false},
	{"dro", {"default:shovel_bronze"}, 1},
	{"nod", "default:gravel", 0},
	{"sch", "largecactus", 0, false},
	{"dro", {"default:axe_bronze"}, 1},
	{"dro", {"default:bookshelf", "default:book", "default:paper"}, 5},
	{"dro", {"default:fence_wood", "default:fence_acacia_wood", "default:fence_aspen_wood",
		"default:fence_junglewood", "default:fence_pine_wood"}, 15},
	{"sch", "obsidiantrap", 1, true},
})

-- default coral blocks
if minetest.registered_nodes["default:coral_brown"] then
	lucky_block:add_blocks({
		{"dro", {"default:coral_brown", "default:coral_orange", "default:coral_skeleton"}, 5},
		{"sch", "corals", 0, true},
	})
end

-- default mese post light or sands
if minetest.registered_nodes["default:mese_post_light"] then
	lucky_block:add_blocks({
		{"dro", {"default:mese_post_light", "default:fence_wood"}, 5},
		{"nod", "default:mese_post_light"},
		{"dro", {"default:silver_sand", "default:sand", "default:desert_sand"}, 25},
	})
end

-- Flowers mod
if minetest.get_modpath("flowers") then
	lucky_block:add_blocks({
		{"nod", "flowers:rose", 0},
		{"dro", {"flowers:mushroom_red", "flowers:mushroom_brown"}, 5},
		{"dro", {"flowers:rose", "flowers:tulip", "flowers:dandelion_yellow",
				"flowers:geranium", "flowers:viola", "flowers:dandelion_white"}, 12},
	})
end

-- Doors mod
if minetest.get_modpath("doors") then
	lucky_block:add_blocks({
		{"dro", {"doors:door_wood", "doors:door_steel", "doors:door_glass",
			"doors:door_obsidian_glass", "doors:trapdoor", "doors:trapdoor_steel"}, 1},
		{"dro", {"doors:gate_acacia_wood_closed", "doors:gate_aspen_wood_closed", "doors:gate_wood_closed",
			"doors:gate_pine_wood_closed", "doors:gate_junglewood_closed"}, 5},
	})
end

-- Screwdriver mod
if minetest.get_modpath("screwdriver") then

if screwdriver and screwdriver.handler then
minetest.register_tool(":screwdriver:screwdriver_magenta", {
	description = "Super Mega Magenta Ultra Screwdriver 2500\n(left-click to rotate face, right-click to rotates axis)",
	inventory_image = "screwdriver.png^[colorize:#ff009970",
	groups = {not_in_creative_inventory = 1},

	on_use = function(itemstack, user, pointed_thing)
		screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 2500)
		return itemstack
	end,

	on_place = function(itemstack, user, pointed_thing)
		screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 2500)
		return itemstack
	end,
})
end

	lucky_block:add_blocks({
		{"dro", {"screwdriver:screwdriver"}, 1},
		{"dro", {"screwdriver:screwdriver_magenta"}, 1},
	})
end

-- Vessels mod
if minetest.get_modpath("vessels") then
	lucky_block:add_blocks({
		{"dro", {"vessels:shelf", "vessels:drinking_glass", "vessels:glass_bottle",
			"vessels:steel_bottle", "vessels:glass_fragments"}, 5},
	})
end

-- Farming mod (default)
if minetest.get_modpath("farming") then
	lucky_block:add_blocks({
		{"dro", {"farming:bread"}, 5},
		{"sch", "instafarm", 0, true},
		{"nod", "default:water_source", 1},
	})

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

-- Boats mod
if minetest.get_modpath("boats") then
	lucky_block:add_blocks({
		{"dro", {"boats:boat"}, 1},
	})
end

-- Beds mod
if minetest.get_modpath("beds") then
	lucky_block:add_blocks({
		{"dro", {"beds:bed", "beds:fancy_bed"}, 1},
	})
end

-- Walls mod
if minetest.get_modpath("walls") then
	lucky_block:add_blocks({
		{"dro", {"walls:cobble"}, 10},
		{"dro", {"walls:mossycobble"}, 10},
		{"dro", {"walls:desertcobble"}, 10},
	})
end

-- Carts mod
if minetest.get_modpath("carts")
or minetest.get_modpath("boost_cart") then
	lucky_block:add_blocks({
		{"dro", {"boats:boat"}, 1},
		{"dro", {"default:rail"}, 10},
		{"dro", {"carts:powerrail"}, 5},
	})
end

-- 3D Armor mod
if minetest.get_modpath("3d_armor") then
lucky_block:add_blocks({
	{"dro", {"3d_armor:boots_wood", "3d_armor:leggings_wood", "3d_armor:chestplate_wood", "3d_armor:helmet_wood"}, 1},
	{"dro", {"3d_armor:boots_steel", "3d_armor:leggings_steel", "3d_armor:chestplate_steel", "3d_armor:helmet_steel"}, 1},
	{"dro", {"3d_armor:boots_gold", "3d_armor:leggings_gold", "3d_armor:chestplate_gold", "3d_armor:helmet_gold"}, 1},
	{"dro", {"3d_armor:boots_cactus", "3d_armor:leggings_cactus", "3d_armor:chestplate_cactus", "3d_armor:helmet_cactus"}, 1},
	{"dro", {"3d_armor:boots_bronze", "3d_armor:leggings_bronze", "3d_armor:chestplate_bronze", "3d_armor:helmet_bronze"}, 1},
	{"lig"},
})
end

-- 3D Armor's Shields mod
if minetest.get_modpath("shields") then
lucky_block:add_blocks({
	{"dro", {"shields:shield_wood"}, 1},
	{"dro", {"shields:shield_steel"}, 1},
	{"dro", {"shields:shield_gold"}, 1},
	{"dro", {"shields:shield_cactus"}, 1},
	{"dro", {"shields:shield_bronze"}, 1},
	{"exp", 2},
})
end

-- Fire mod
if minetest.get_modpath("fire") then
lucky_block:add_blocks({
	{"dro", {"fire:flint_and_steel", "default:flint"}, 1},
	{"nod", "fire:basic_flame", 1},
	{"nod", "fire:permanent_flame", 1},
	{"sch", "firetrap", 1, true},
})
end

-- TNT mod
if minetest.get_modpath("tnt") then
local p = "tnt:tnt_burning"
lucky_block:add_blocks({
	{"dro", {"tnt:gunpowder"}, 5, true},
	{"fal", {p, p, p, p, p}, 1, true, 4},
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

if minetest.get_modpath("3d_armor") then
lucky_block:add_blocks({
	{"dro", {"3d_armor:helmet_mithril"}, 1},
	{"dro", {"3d_armor:chestplate_mithril"}, 1},
	{"dro", {"3d_armor:leggings_mithril"}, 1},
	{"dro", {"3d_armor:boots_mithril"}, 1},
})
end

if minetest.get_modpath("shields") then
lucky_block:add_blocks({
	{"dro", {"shields:shield_mithril"}, 1},
})
end

end -- END moreores

-- Bows mod
if minetest.get_modpath("bows") then
lucky_block:add_blocks({
	{"dro", {"bows:bow_wood"}, 1},
	{"dro", {"bows:bow_steel"}, 1},
	{"dro", {"bows:bow_bronze"}, 1},
	{"dro", {"bows:arrow"}, 5},
	{"dro", {"bows:arrow_steel"}, 5},
	{"dro", {"bows:arrow_mese"}, 5},
	{"dro", {"bows:arrow_diamond"}, 5},
})
end

-- Bags mod
if minetest.get_modpath("bags") then
lucky_block:add_blocks({
	{"dro", {"bags:small", "bags:medium", "bags:large", "bags:trolley"}, 1},
})
end

-- Bonemeal mod
if minetest.get_modpath("bonemeal") then
lucky_block:add_blocks({
	{"dro", {"bonemeal:mulch", "bonemeal:bonemeal", "bonemeal:fertiliser"}, 10},
})
end

-- Special items
minetest.register_node("lucky_block:void_mirror", {
	description = "Void Mirror (Place to see through solid walls during daytime)",
	drawtype = "normal",
	tiles = {"default_obsidian_glass.png^[brighten"},
	use_texture_alpha = true,
	groups = {snappy = 3, not_in_creative_inventory = 1},
	sounds = default.node_sound_glass_defaults(),
})

lucky_block:add_blocks({
	{"dro", {"lucky_block:void_mirror"}, 1},
})
