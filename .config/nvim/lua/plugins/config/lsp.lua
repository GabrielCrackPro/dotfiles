return {

  servers = { eslint = {}, cssls = {} },
  setup = {
    -- Setup eslint for formatting
    eslint = function()
      require("lazyvim.util").lsp.on_attach(function(client)
        if client.name == "eslint" then
          client.server_capabilities.documentFormattingProvider = true
        elseif client.name == "tsserver" then
          client.server_capabilities.documentFormattingProvider = false
        end
      end)
    end,
  },
  inlay_hints = {
    enabled = true,
  },
  diagnostics = {
    underline = false,
    update_in_insert = true,
    virtual_text = {
      spacing = 4,
      source = "if_many",
      prefix = "●",
    },
    severity_sort = true,
  },
}
