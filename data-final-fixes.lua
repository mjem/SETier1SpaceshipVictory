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
-- Cheaper and earlier superconductive cable
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

--
-- Cheaper stuff
--

if settings.startup["set1victory-cheaper-stuff"] then
   -- Cheaper satellite launches
   local data_util = require("__space-exploration__.data_util")
   data_util.replace_or_add_ingredient("rocket-part", "rocket-fuel", "rocket-fuel", 1)
   -- just 1 berly plate to make astro science (from 20)
   data.raw.recipe["se-astronomic-science-pack-1"].ingredients = {
	  {name="se-beryllium-plate", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-astronomic-catalogue-1", amount=1},
	  {name="se-astronomic-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
   -- just 1 iridium plate to make material science (from 20)
   data.raw.recipe["se-material-science-pack-1"].ingredients = {
	  {name="se-iridium-plate", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-material-catalogue-1", amount=1},
	  {name="se-material-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
   -- just 1 holmium plate to make energy science (from 20)
   data.raw.recipe["se-energy-science-pack-1"].ingredients = {
	  {name="se-holmium-plate", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-energy-catalogue-1", amount=1},
	  {name="se-energy-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
   -- just 1 vita extract plate to make bio science (from 20)
   data.raw.recipe["se-biological-science-pack-1"].ingredients = {
	  {name="se-vitamelange-extract", amount=1},
	  {name="se-significant-data", amount=1},
	  {name="se-biological-catalogue-1", amount=1},
	  {name="se-biological-insight", amount=1},
	  {type="fluid", name="se-space-coolant-cold", amount=20},
   }
   -- half the cost of heat shielding
   data.raw.recipe["se-heat-shielding"].ingredients = {
	  {name="sulfur", amount=4},
	  {name="stone-tablet", amount=5},
	  {name="cuw", amount=2},  -- copper tungsten
	  {name="zirconia", amount=5},
   }
end

--
-- Earlier deep space zone discovery
--

if settings.startup["set1victory-earlier-deep-zone"] then
   data.raw.technology["se-zone-discovery-deep"].prerequisites = {
	  -- "se-zone-discovery-random",
	  -- "se-zone-discovery-targeted",
	  "se-astronomic-science-pack-1",
	  "se-energy-science-pack-1",
	  "se-superconductive-cable",
   }
   data.raw.technology["se-zone-discovery-deep"].unit = {
	  count = 100,
	  ingredients = {
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"se-astronomic-science-pack-1", 1},
	  },
	  time = 60,
   }
end

--
-- Earlier universal (4-science) simulation
--

if settings.startup["set1victory-earlier-universal-simulation"] then
   data.raw.technology["se-space-simulation-asbm"].prerequisites = {
	  "se-space-simulation-sbm",
	  "se-space-simulation-asb",
	  "se-space-simulation-abm",
	  "se-space-simulation-asm",
   }
   data.raw.technology["se-space-simulation-asbm"].unit = {
	  count = 100,
	  ingredients = {
		 {"automation-science-pack", 1},
		 {"logistic-science-pack", 1},
		 {"chemical-science-pack", 1},
		 {"se-rocket-science-pack", 1},
		 {"space-science-pack", 1},
		 {"production-science-pack", 1},
		 {"utility-science-pack", 1},
		 {"kr-optimization-tech-card", 1},
		 {"se-astronomic-science-pack-1", 1},
		 {"se-biological-science-pack-1", 1},
		 {"se-energy-science-pack-1", 1},
		 {"se-material-science-pack-1", 1},
	  },
	  time = 60,
   }
   data.raw.recipe["se-simulation-asbm"].category = "space-supercomputing-1"
end

--
-- Earlier naquium
--

if settings.startup["set1victory-earlier-cheaper-naquium"] then
   -- Drop any T2 or T3 requirements from processing tech
   data.raw.technology["se-processing-naquium"].prerequisites = {
	  "se-astronomic-science-pack-1",
	  "se-material-science-pack-1",
	  "se-energy-science-pack-1",
   }
   data.raw.technology["se-processing-naquium"].unit = {
	  count = 500,
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
   -- drop vitalic reagent input to naq crystals and 1/2 the others
   data.raw.recipe["se-naquium-crystal"].ingredients = {
	  {name="se-naquium-refined", amount=4},
	  {name="se-naquium-powder", amount=10},
   }
   data.raw.recipe["se-naquium-crystal"].results = {
      {name = "se-naquium-crystal", probability = 0.618, amount_min=1, amount_max=1},
      {name = "se-naquium-powder", amount_min=1, amount_max=6, catalyst_amount = 10},
      {name = "se-naquium-refined", amount_min=1, amount_max=4, catalyst_amount = 8},
    }
   -- drop vitalic reagent input to naq powder
   data.raw.recipe["se-naquium-powder"].ingredients = {
	  {name="se-holmium-cable", amount=1},
	  {name="graphene", amount=2},
	  {name="se-vulcanite-ion-exchange-beads", amount=1},
	  {name="se-naquium-ore-crushed", amount=20},
   }
   -- reduce heavy bearing to heavy girder to process naq plates
   data.raw.recipe["se-naquium-ingot-to-plate"].results = {
      {name = "se-naquium-plate", amount = 10}, -- value 20 ish
      {name = "se-heavy-girder", amount_min=1, amount_max=1, probability=0.95, catalyst_amount = 1}
    }
    data.raw.recipe["se-naquium-ingot-to-plate"].ingredients = {
      {name = "se-heavy-girder", amount = 1, catalyst_amount = 1},
      {name = "se-naquium-ingot", amount = 1}
    }
end
