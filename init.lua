local subdir = "robin"
local config_files = {
  "settings",
  "lazy",
  "keymaps",
  "utils",
}

for _ , file  in ipairs(config_files ) do
  require(subdir .. "." .. file)
end


























