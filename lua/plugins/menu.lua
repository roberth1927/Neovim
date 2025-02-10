return {
    'nvzone/volt',
    'nvzone/menu',
    config = function()
        require('menu').setup({
            -- Configuración del plugin
            menus = {
                main = {
                    items = {
                        { "File", "Telescope find_files" },
                        { "Grep", "Telescope live_grep" },
                        { "Buffers", "Telescope buffers" },
                        { "Help", "Telescope help_tags" },
                    }
                }
            }
        })
    end
}