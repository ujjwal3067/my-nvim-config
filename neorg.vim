lua << EOF
    require('neorg').setup {
        -- Tell Neorg what modules to load
        load = {
            ["core.defaults"] = {}, -- Load all the default modules
            ["core.norg.concealer"] = {}, -- Allows for use of icons
            ["core.norg.ujjwal"] = { -- Manage your directories with Neorg
                config = {
                    workspaces = {
                        my_workspace = "~/Documents/NeOrg"
                    }
                }
            },
            ["core.norg.completion"] = {
                config = {
                    engine = "nvim-compe" | "nvim-cmp" -- We current support nvim-compe and nvim-cmp only
                    }
            }
        },
    }
EOF

