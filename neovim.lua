--   .-')                                       .-. .-')                    
--  ( OO ).                                     \  ( OO )                   
-- (_)---\_)   .-----.  .-'),-----.  .-'),-----. ;-----.\  ,--.   ,--.      
-- /    _ |   '  .--./ ( OO'  .-.  '( OO'  .-.  '| .-.  |   \  `.'  /       
-- \  :` `.   |  |('-. /   |  | |  |/   |  | |  || '-' /_).-')     /        
--  '..`''.) /_) |OO  )\_) |  |\|  |\_) |  |\|  || .-. `.(OO  \   /         
-- .-._)   \ ||  |`-'|   \ |  | |  |  \ |  | |  || |  \  ||   /  /\_        
-- \       /(_'  '--'\    `'  '-'  '   `'  '-'  '| '--'  /`-./  /.__)       
--  `-----'    `-----'      `-----'      `-----' `------'   `--'            
--  _ .-') _                                                                
-- ( (  OO) )                                                               
--  \     .'_  .-'),-----.  .-'),-----.                                     
--  ,`'--..._)( OO'  .-.  '( OO'  .-.  '                                    
--  |  |  \  '/   |  | |  |/   |  | |  |                                    
--  |  |   ' |\_) |  |\|  |\_) |  |\|  |                                    
--  |  |   / :  \ |  | |  |  \ |  | |  |                                    
--  |  '--'  /   `'  '-'  '   `'  '-'  '                                    
--  `-------'      `-----'      `-----'                                     

return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#2c1a12",
                bg_dark = "#2c1a12",
                bg_highlight = "#6e442a",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#f9cd71",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#f9cd71",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6e442a",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#e75057",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#dc7e69",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#fa8601",
                -- green: Comments, strings, success states, git additions
                green = "#a8bb0a",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#a76104",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#45b193",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#a873dc",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#eda9ff",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}

--  ______   __       ______                                       
-- /_____/\ /_/\     /_____/\                                      
-- \:::_ \ \\:\ \    \:::_ \ \                                     
--  \:\ \ \ \\:\ \    \:\ \ \ \                                    
--   \:\ \ \ \\:\ \____\:\ \ \ \                                   
--    \:\_\ \ \\:\/___/\\:\/.:| |                                  
--  ___\_____\/_\_____\/ \____/_/  ______    _______   ______      
-- /________/\/_____/\ /_______/\ /_____/\ /_______/\ /_____/\     
-- \__.::.__\/\:::_ \ \\::: _  \ \\:::_ \ \\::: _  \ \\:::_ \ \    
--   /_\::\ \  \:\ \ \ \\::(_)  \/_\:\ \ \ \\::(_)  \/_\:\ \ \ \   
--   \:.\::\ \  \:\ \ \ \\::  _  \ \\:\ \ \ \\::  _  \ \\:\ \ \ \  
--    \: \  \ \  \:\_\ \ \\::(_)  \ \\:\_\ \ \\::(_)  \ \\:\_\ \ \ 
--     \_____\/   \_____\/ \_______\/ \_____\/ \_______\/ \_____\/ 