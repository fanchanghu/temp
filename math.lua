
local ObjectWorld = {}

local Element = {
  name = "Element",
  
  __eq = function(e1, e2)
    return e1.name == e2.name
  end,

  __index = error,
  __newindex = error
}

local Set = {
  name = "Set",
  
  __in = function(s, e)
    return s[e]
  end,
  
  __index = error,
  __newindex = error
}

local function isLegalName(name)
  return type(name) == "string" and name:match("^%a%w*$")
end

local function saveObject(name, element)
  if ObjectWorld[name] then error("Element exists.", name) end
  ObjectWorld[name] = element
end

function newElement(name)
  if not isLegalName(name) then error("Illegal element name.", name) end
  local e = {}
  e.name = name
  setmetatable(e, Element)
  saveObject(name, e)
  return e
end

function newSetByElements(name, elements)
  local e = newElement(name)
  setmetatable(e, nil)
  e.elements = {}
  setmetatable(e, Set)
  for _, v in ipairs(elements) do
    if not ObjectWorld[v] then error("Element does not exists.", v) end
    e.elements[v] = ObjectWorld[v]
  end
  return e
end

newElement("true")
newElement("false")
newSetByElements("Bool", {"true", "false"})

for k, v in pairs(ObjectWorld) do
  print(k, v, getmetatable(v).name)
end




