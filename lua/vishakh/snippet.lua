local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

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

    s("rus", fmt(
        [[
        {}const [{}, set{}] = useState({})
    ]], {
            f(function()
                --check if the file has a usestate import
                if not vim.api.nvim_buf_get_lines(0, 0, 1, true)[1]:find("useState") then
                    vim.api.nvim_buf_set_lines(0, 0, 0, true, { "import React, { useState } from 'react'" })
                    return {}
                end
            end, {}),
            i(1), i(2), i(3)
        })
    ),

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

ls.add_snippets("cpp", {
    s("fr", fmt(
        [[
    for({}; {}; {}){{
        {}
    }}
    ]], {
            i(1), i(2), i(3), i(4)
        })),
    s("compmt", fmt(
        [[
    #include <bits/stdc++.h>
    using namespace std;

    int main(){{
        int t;
        cin >> t;

        while(t--){{
            {}
        }}
    }}
        ]], { i(1)
        })),
    s("comp", fmt(
        [[
    #include <bits/stdc++.h>
    using namespace std;

    int main(){{
        {}
    }}
        ]], { i(1)
        })),



})
