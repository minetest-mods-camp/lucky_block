
-- Generate schematics

local air = {name = "air"}
local san = {name = "default:sand"}
local sst = {name = "default:sandstone"}
local ssb = {name = "default:sandstonebrick"}
local luc = {name = "lucky_block:lucky_block"}
local lav = {name = "default:lava_source"}
local dir = {name = "default:dirt"}
local sow = {name = "farming:soil_wet"}
local wat = {name = "default:water_source"}
local whe = {name = "farming:wheat_8"}
local cot = {name = "farming:cotton_8"}
local obg = {name = "default:obsidian_glass"}
local fir = {name = "fire:basic_flame"}
local obs = {name = "default:obsidian"}

local platform = {
	size = {x = 5, y = 3, z = 5},
	data = {
		sst, sst, sst, sst, sst,
		ssb, ssb, ssb, ssb, ssb,
		ssb, ssb, ssb, ssb, ssb,

		sst, sst, sst, sst, sst,
		ssb, luc, air, luc, ssb,
		ssb, air, air, air, ssb,

		sst, sst, sst, sst, sst,
		ssb, air, air, air, ssb,
		ssb, air, air, air, ssb,

		sst, sst, sst, sst, sst,
		ssb, luc, air, luc, ssb,
		ssb, air, air, air, ssb,

		sst, sst, sst, sst, sst,
		ssb, ssb, ssb, ssb, ssb,
		ssb, ssb, ssb, ssb, ssb
	}
}

local insta_farm = {
	size = {x = 5, y = 3, z = 3},
	data = {
		dir, dir, dir, dir, dir,
		sow, sow, sow, sow, sow,
		cot, cot, cot, cot, cot,

		sow, dir, dir, dir, sow,
		sow, wat, wat, wat, sow,
		cot, air, air, air, whe,

		dir, dir, dir, dir, san,
		sow, sow, sow, sow, sow,
		whe, whe, whe, whe, whe
	}
}

local lava_trap = {
	size = {x = 3, y = 6, z = 3},
	data = {
		lav, lav, lav,
		air, air, air,
		air, air, air,
		air, air, air,
		air, air, air,
		air, air, air,

		lav, lav, lav,
		air, air, air,
		air, air, air,
		air, air, air,
		air, air, air,
		air, air, air,

		lav, lav, lav,
		air, air, air,
		air, air, air,
		air, air, air,
		air, air, air,
		air, air, air
	}
}

local sand_trap = {
	size = {x = 3, y = 3, z = 3},
	data = {
		san, san, san,
		san, san, san,
		san, san, san,

		san, san, san,
		san, san, san,
		san, san, san,

		san, san, san,
		san, san, san,
		san, san, san
	}
}

local water_trap = {
	size = {x = 3, y = 3, z = 3},
	data = {
		obg, obg, obg,
		obg, obg, obg,
		obg, obg, obg,

		obg, obg, obg,
		obg, wat, obg,
		obg, obg, obg,

		obg, obg, obg,
		obg, obg, obg,
		obg, obg, obg
	}
}

local fire_trap = {
	size = {x = 3, y = 3, z = 3},
	data = {
		fir, fir, fir,
		fir, fir, fir,
		fir, fir, fir,

		fir, fir, fir,
		fir, fir, fir,
		fir, fir, fir,

		fir, fir, fir,
		fir, fir, fir,
		fir, fir, fir
	}
}

local obsidian_trap = {
	size = {x = 3, y = 3, z = 3},
	data = {
		obs, obs, obs,
		obs, obs, obs,
		obs, obs, obs,

		obs, air, obs,
		obs, air, obs,
		obs, lav, obs,

		obs, obs, obs,
		obs, obs, obs,
		obs, obs, obs
	}
}

local stb = {name = "default:steelblock", param1 = 255}
local sbr = {name = "default:stonebrick", param1 = 255}
local fwd = {name = "default:fence_wood", param1 = 255}
local slb = {name = "stairs:slab_stonebrick", param1 = 255}
local wbl = {name = "lucky_block:well_block", param1 = 255}
local gla = {name = "default:glass", param1 = 255}

local wishing_well = {
	size = {x = 3, y = 5, z = 3},
	data = {
		stb,sbr,stb,
		sbr,sbr,sbr,
		fwd,air,fwd,
		fwd,air,fwd,
		slb,slb,slb,

		sbr,wbl,sbr,
		sbr,wat,sbr,
		air,air,air,
		air,air,air,
		slb,gla,slb,

		stb,sbr,stb,
		sbr,sbr,sbr,
		fwd,air,fwd,
		fwd,air,fwd,
		slb,slb,slb
	}
}

-- add schematics to list

lucky_block:add_schematics({
	{"watertrap", water_trap, {x = 1, y = 0, z = 1}},
	{"sandtrap", sand_trap, {x = 1, y = 0, z = 1}},
	{"lavatrap", lava_trap, {x = 1, y = 5, z = 1}},
	{"platform", platform, {x = 2, y = 1, z = 2}},
	{"instafarm", insta_farm, {x = 2, y = 2, z = 1}},
	{"firetrap", fire_trap, {x = 1, y = 0, z = 1}},
	{"obsidiantrap", obsidian_trap, {x = 1, y = 0, z = 1}},
	{"wishingwell", wishing_well, {x = 1, y = 1, z = 1}}
})

-- wishing well

minetest.register_node("lucky_block:well_block", {
	description = "Well Block",
	tiles = {"default_glass.png"},
	light_source = 5,
	groups = {not_in_creative_inventory = 1, unbreakable = 1},
	on_blast = function() end,
	drop = {}
})


-- Global list containing well blocks that can be dropped
lucky_block.wellblocks = {
	{"default:ice", 5},
	{"default:bronzeblock", 2},
	{"default:lava_source", 7},
	{"default:coalblock", 4},
	{"default:sand", 7},
	{"default:goldblock", 2},
	{"default:cactus", 5},
	{"default:cobble", 5},
	{"default:brick", 5},
	{"fire:permanent_flame", 7},
	{"default:desert_sand", 7},
	{"default:grass_5", 7},
	{"default:obsidian", 4},
	{"default:diamondblock", 2},
	{"default:dirt", 7},
	{"default:clay", 5},
	{"default:copperblock", 2},
	{"default:mese", 2},
	{"default:silver_sand", 7},
	{"default:snowblock", 7},
	{"default:mossycobble", 5},
	{"default:lava_source", 5},
	{"default:blueberry_bush_leaves_with_berries", 4},
	{"default:coral_skeleton", 4},
	{"default:coral_orange", 4},
	{"default:coral_brown", 4},
	{"default:gravel", 5},
	{"default:permafrost_with_moss", 4},
	{"default:stone_with_diamond", 4},
	{"default:stone_with_gold", 4},
	{"default:stone_with_copper", 4},
	{"default:lava_source", 4},
	{"default:stone_with_mese", 4},
	{"default:stone_with_coal", 4},
	{"default:stone_with_tin", 4},
	{"default:stone_with_iron", 4},
	{"fire:permanent_flame", 7}
}

local add_wblock = function(name, number)
	local total = #lucky_block.wellblocks
	lucky_block.wellblocks[total + 1] = {name, number}
end

-- Add additional well blocks
if minetest.get_modpath("tnt") then
	add_wblock("tnt:tnt_burning", 8)
	add_wblock("tnt:tnt_burning", 4)
	add_wblock("tnt:tnt_burning", 8)
end

if minetest.get_modpath("ethereal") then
	add_wblock("ethereal:crystal_block", 2)
end

if minetest.get_modpath("bones") then
	add_wblock("bones:bones", 4)
end

minetest.register_abm({
	label = "Lucky Block Wishing Well Block",
	nodenames = {"lucky_block:well_block"},
	interval = 2,
	chance = 1,
	catch_up = false,

	action = function(pos, node, active_object_count, active_object_count_wider)

		for _,object in pairs(minetest.get_objects_inside_radius(pos, 1.2)) do

			if object and object:is_player() then

				minetest.swap_node(pos, {name = "default:glass"})

				minetest.sound_play("default_tool_breaks", {
					pos = pos, gain = 1.0, max_hear_distance = 5}, true)

				local b_no = math.random(#lucky_block.wellblocks)
				local item = lucky_block.wellblocks[b_no][1]

				for n = 1, lucky_block.wellblocks[b_no][2] do

					local nod = table.copy(minetest.registered_nodes[item])

					if nod then

						local obj = minetest.add_entity({
							x = pos.x + math.random(-7, 7),
							y = pos.y + 7,
							z = pos.z + math.random(-7, 7)
						}, "__builtin:falling_node")

						if obj then

							local ent = obj:get_luaentity()

							if ent then
								nod.param2 = 1 -- set default rotation
								ent:set_node(nod)
							end
						end
					end
				end

				break
			end
		end
	end
})
