return {
  -- other plugins
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio", -- Add this line
    },
    config = function()
      local dap = require("dap")
      local dap_python = require("dap-python")
      local dapui = require("dapui")
      local nio = require("nio") -- Ensure nvim-nio is loaded

      dap_python.setup("/usr/bin/python3") -- Update this path

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

      dapui.setup()

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
}
