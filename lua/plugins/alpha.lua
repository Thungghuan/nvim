local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.footer.val = require'alpha.fortune'()
alpha.setup(dashboard.config)

