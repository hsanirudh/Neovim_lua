return {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
        renderer = {
            indent_markers= {
                enable = true,
            },
            icons = {
                glyphs = {
                    folder = {
                        arrow_closed = "",
                        arrow_open = "",
                    },
                },
            },
        },
        -- For MacOS 
        filters = {
            custom = {
                ".DS_Store",
            },
            dotfiles = true,
        },
        git = {
            ignore = false,
        },
        sort = {
            sorter = "case_sensitive",
        },
    }
}
