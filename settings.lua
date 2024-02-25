data:extend({
	{
	   -- to enable pylons, electric trains (mod), ion and plasma capsules earlier
        type = "bool-setting",
        name = "set1victory-earlier-lithium-sulfur-battery",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- for ion and plasma cannisters
        type = "bool-setting",
        name = "set1victory-cheaper-superconductive-cable",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- for earlier nicer power delivery and spaceships
        type = "bool-setting",
        name = "set1victory-earlier-pylon-substation",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- for earlier spaceship shield generators, handy for interstellar spaceships
        type = "bool-setting",
        name = "set1victory-earlier-shields",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- so we don't spend so long ramping up production
	   -- - half the cost of heat shielding
	   -- - double immersite crystal production
        type = "bool-setting",
        name = "set1victory-cheaper-stuff",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- enable deep space zone discovery with only tier 1 astro science
	   -- (instead of tier 3)
        type = "bool-setting",
        name = "set1victory-earlier-deep-zone",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- enable the 4-science recipie for generating significant data at T1
	   -- (instead of tier 2)
        type = "bool-setting",
        name = "set1victory-earlier-universal-simulation",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- much earlier and somewhat simpler naquium processing
        type = "bool-setting",
        name = "set1victory-earlier-cheaper-naquium",
        setting_type = "startup",
        default_value = true,
		order = 1
	}
	-- {
	   -- allow for spaceship victory without k2 victory
        -- type = "bool-setting",
        -- name = "set1victory-non-k2-spaceship-victory"
        -- setting_type = "startup",
        -- default_value = true,
		-- order = 1
	-- },
})
