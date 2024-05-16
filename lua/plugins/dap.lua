return {
  -- other plugins
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      local dap = require("dap")
      local dap_python = require("dap-python")

      dap_python.setup("/usr/bin/python3", {}) -- Update this path

      dap.adapters.python = {
        type = "executable",
        command = "/usr/bin/python3", -- Update this path
        args = { "-m", "debugpy.adapter" },
      }

      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
        },
      }
    end,
  },
}
