local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "puppet-lint",
    method = FORMATTING,
    filetypes = { "puppet", "epuppet" },
    generator_opts = {
        command = "puppet-lint",
        args = {
            "--fix",
            "$FILENAME",
        },
        to_temp_file = true,
    },
    factory = h.formatter_factory,
})
