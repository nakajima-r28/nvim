local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("golang", {
  s("def", {
    t("def "),
    i(1, "function_name"),
    t("("),
    i(2, "parameters"),
    t("):"),
    t({"", "    "}),
    i(0),
  }),
})

