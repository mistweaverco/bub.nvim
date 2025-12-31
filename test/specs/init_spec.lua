local mod_id = "bub"
local mod = require(mod_id)

local expected_exports_with_types = {
  utils = "table",
  enums = "table",
}

describe(mod_id, function()
  before_each(function() end)
  it("should export the expected types", function()
    for key, expected_type in pairs(expected_exports_with_types) do
      assert.are_equals(
        type(mod[key]),
        expected_type,
        "Expected type of " .. mod_id .. "." .. key .. " to be " .. expected_type
      )
    end
  end)
end)
