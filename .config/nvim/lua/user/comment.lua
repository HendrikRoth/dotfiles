local options = {
  padding = true,
  sticky = true,
  ignore = nil,
  mappings = {
    basic = true,
    extra = true,
    extended = true,
  },
}

require("Comment").setup(options)
