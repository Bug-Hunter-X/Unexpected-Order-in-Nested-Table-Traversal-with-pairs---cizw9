local function foo(t)
  local sortedKeys = {} 
  for k in pairs(t) do
    table.insert(sortedKeys, k)
  end
  table.sort(sortedKeys)

  for _, k in ipairs(sortedKeys) do
    local v = t[k]
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t) 