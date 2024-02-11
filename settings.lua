data:extend({
	  {
	   -- make the earliy research satellite launches cheaper
        type = "bool-setting",
        name = "set1victory-cheaper-satellite-launches",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- to enable pylons, electric trains (mod), ion and plasma capsules earlier
        type = "bool-setting",
        name = "set1victory-earlier-lithium-sulfur-battery",
        setting_type = "startup",
        default_value = true,
		order = 1
	},
	{
	   -- reduce numbers of offworld plates needed so we spend less time building up production
        type = "bool-setting",
        name = "set1victory-potent-offworld-plates",
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
	-- {
	   -- allow for spaceship victory without k2 victory
        -- type = "bool-setting",
        -- name = "set1victory-non-k2-spaceship-victory"
        -- setting_type = "startup",
        -- default_value = true,
		-- order = 1
	-- },
})
