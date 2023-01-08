local M = {}

-- Debugger installation location
local DEBUGGER_LOCATION = "/usr/local"

function M.setup()
  local dap = require "dap"

  -- Adapter configuration
  dap.adapters.coreclr = {
    type = "executable",
    command = DEBUGGER_LOCATION .. "/netcoredbg",
    args = { "--interpreter=vscode" },
  }

  -- Configuration
  dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to DLL > ', vim.fn.getcwd() .. '/bin/Debug/net6.0/', 'file')
    end,
  },
}
end

return M
