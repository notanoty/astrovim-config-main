return {
  {
  "kylechui/nvim-surround",
    version = "*",
    config = function()
        require("nvim-surround").setup{
        surrounds = {
            -- Custom surround using 'b'
            ["l"] = {
                add = function()
                    return { { "\\begin{name}" }, { "\\end{name}" } }
                end,
            },
            ["L"] = {
            add = function()
                local env_name = vim.fn.input("Environment name: ")
                return { { "\\begin{" .. env_name .. "}" }, { "\\end{" .. env_name .. "}" } }
            end,
            },

        },

    }
    end,

    -- asdsadsad

    -- require("nvim-surround").setup({
        -- surrounds = {
            -- Custom surround using 'b'
            -- ["b"] = {
            --     add = function()
            --         return { { "\\begin{}" }, { "\\end{}" } }
            --     end,
            -- },
        -- }
    -- }),
    event = "VeryLazy",
    opts = {},
 },
}
