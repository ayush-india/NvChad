local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
ls.add_snippets("all", {
  s("cpp", {
    t({"#define ll long long" }),
    t({"", "#define ld long double" }),
    t({"", "#include <bits/stdc++.h>" }),
    t({"", "#include <algorithm>" }),
    t({"", "#include <vector>" }),
    t({"", "using namespace std;"}),
    t({"", "void solve() {"}),
    t({"", "\tint n;" }),
    t({"", "\tcin >> n;"}), i(1),
    t({"", "}" }),
    t({"", "int main() {"}),
    t({"", "\tios::sync_with_stdio(false);" }),
    t({"", "\tcin.tie(nullptr);"}),
    t({"", "\tint t;"}),
    t({"", "\tcin >> t;"}),
    t({"", "\twhile (t--) {"}),
    t({"", "\t\tsolve();"}), i(2),
    t({"", "\t}"}),
    t({"", "\treturn 0;"}),
    t({"", "}"}),
  })
})
