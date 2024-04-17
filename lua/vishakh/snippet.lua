local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.expand_or_jumpable(-1) then
        ls.expand_or_jump(-1)
    end
end, { silent = true })

ls.add_snippets("typescriptreact", {
    -- react use state
    s("rus", {
        t('const [ '),
        i(1),
        t('  , set'),
        i(2),
        t(''),
        rep(1),
        t(' ] = useState<'),
        i(3),
        t('>('),
        i(4),
        t(')')
    }),
    -- react use effect
    s("ruf", {
        t('useEffect(() => {'),
        i(1),
        t('}}),['),
        i(2),
        t('])')
    }),

    -- react functional components
    s("rfc", {
        t('const '),
        i(1),
        t(' = ('),
        i(2),
        t(') => {'),
        i(3),
        t('return()})export default '),
        rep(1)
    })
})