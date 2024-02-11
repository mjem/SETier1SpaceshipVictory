--
--- Cheaper satellites
--

if settings.startup["set1victory-cheaper-satellite-launches"] then
   local data_util = require("__space-exploration__.data_util")
   data_util.replace_or_add_ingredient("rocket-part", "rocket-fuel", "rocket-fuel", 1)
end

--
--- Earlier lithium-sulfur batteries
--

if settings.startup["set1victory-earlier-lithium-sulfur-battery"] then
   data.raw.technology["kr-lithium-sulfur-battery"].prerequisites = {
	  "production-science-pack",
	  "kr-lithium-processing",
   }
   data.raw.technology["kr-lithium-sulfur-battery"].unit = {
	  count = 200,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"production-science-pack", 1},
	  },
	  time = 30,
   }
end

--
-- Reduce offworld plate requirements
--

if settings.startup["set1victory-potent-offworld-plates"] then
   data.raw.recipe["se-astronomic-science-pack-1"].ingredients = {
	  {name="se-beryllium-plate", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-astronomic-catalogue-1", amount=1},
	  {name="se-astronomic-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
   data.raw.recipe["se-material-science-pack-1"].ingredients = {
	  {name="se-iridium-plate", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-material-catalogue-1", amount=1},
	  {name="se-material-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
   data.raw.recipe["se-energy-science-pack-1"].ingredients = {
	  {name="se-holmium-plate", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-energy-catalogue-1", amount=1},
	  {name="se-energy-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
end

--
-- Cheaper superconductive cable
--

if settings.startup["set1victory-cheaper-superconductive-cable"] then
   data.raw.technology["se-superconductive-cable"].prerequisites = {
	  "se-space-radiation-laboratory",
	  "se-holmium-solenoid",
   }
   data.raw.technology["se-superconductive-cable"].unit = {
	  count = 200,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"production-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"se-energy-science-pack-1", 1},
		 {"se-material-science-pack-1", 1},
	  },
	  time = 60,
   }
end

--
-- Earlier pylon substation
--

if settings.startup["set1victory-earlier-pylon-substation"] then
   data.raw.technology["se-holmium-solenoid"].prerequisites = {
	  "se-space-particle-collider",
   }
   data.raw.technology["se-holmium-solenoid"].unit = {
	  count = 100,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"se-energy-science-pack-1", 1},
	  },
	  time = 60,
   }
   data.raw.technology["se-pylon-substation"].prerequisites = {
	  "se-holmium-solenoid",
	  "se-pylon",
   }
   data.raw.technology["se-pylon-substation"].unit = {
	  count = 100,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"se-energy-science-pack-1", 1},
	  },
	  time = 60,
   }
end


--
-- Earlier spaceship shields
--

if settings.startup["set1victory-earlier-shields"] then
   data.raw.technology["se-dynamic-emitter"].prerequisites = {
	  "se-material-science-pack-1",
	  "se-energy-science-pack-1",
	  "se-heavy-girder",
   }
   data.raw.technology["se-dynamic-emitter"].unit = {
	  count = 400,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"se-energy-science-pack-1", 1},
	  },
	  time = 60,
   }
   data.raw.recipe["se-dynamic-emitter"].ingredients = {
	  {name="se-holmium-solenoid", amount=4},
	  {name="se-cryonite-rod", amount=4},
	  {name="imersite-crystal", amount=2},
	  {type="fluid", name="se-particle-stream", amount=10},
   }
   data.raw.technology["shield-projector"].prerequisites = {
	  "se-dynamic-emitter",
	  "se-material-science-pack-1",
	  "se-energy-science-pack-1",
   }
   data.raw.technology["shield-projector"].unit = {
	  count = 200,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"production-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"se-energy-science-pack-1", 1},
		 {"se-material-science-pack-1", 1},
	  },
	  time = 60,
   }
   data.raw.recipe["shield-projector"].ingredients = {
	  {name="se-holmium-cable", amount=80},
	  {name="se-dynamic-emitter", amount=8},
	  {name="lithium-sulfur-battery", amount=80},
   }
end

--if mods["Krastorio2"] then
