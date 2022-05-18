local api = vim.api
local lsp = vim.lsp

local M = {}

function M.show_line_diagnostics()
  local opts = {
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    border = 'rounded',
    source = 'always',  -- show source in diagnostic popup window
    prefix = ' '
  }
  vim.diagnostic.open_float(nil, opts)
end

local custom_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    api.nvim_buf_set_keymap(bufnr, ...)
  end
  -- Mappings.
  local opts = { noremap = true, silent = true }
  buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "<2-LeftMouse>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "<C-]>", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap("n", '<down>', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
  buf_set_keymap("n", "<up>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
  buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
  buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  buf_set_keymap("n", "[a", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
  buf_set_keymap("n", "]a", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
  buf_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setqflist({open = true})<CR>", opts)
  --buf_set_keymap("n", "<up>", '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
  --vim.cmd([[
    --autocmd CursorHold <buffer> lua require('config.lsp').show_line_diagnostics()
  --]])

  -- Set some key bindings conditional on server capabilities
  if client.server_capabilities.document_formatting then
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting_sync()<CR>", opts)
  end
  if client.server_capabilities.document_range_formatting then
    buf_set_keymap("x", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR><ESC>", opts)
  end

  if client.server_capabilities.document_highlight then
    vim.cmd([[
      hi link LspReferenceRead Visual
      hi link LspReferenceText Visual
      hi link LspReferenceWrite Visual
      highlight DiagnosticVirtualTextError guifg=Gray
      highlight DiagnosticError guifg=Gray
      highlight DiagnosticSignError guifg=Gray
      highlight DiagnosticFloatingError guifg=Gray
      highlight DiagnosticUnderlineError guifg=Gray
    ]])
  end
 
  if vim.g.logging_level == 'debug' then
    local msg = string.format("Language server %s started!", client.name)
    vim.notify(msg, 'info', {title = 'nvim-config'})
  end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = false

local nvim_lsp = require("lspconfig")

-- Change border of documentation hover window, See https://github.com/neovim/neovim/pull/13998.
lsp.handlers["textDocument/hover"] = lsp.with(
    lsp.handlers.hover,
    {
        border = "single",
    }
)

lsp.handlers["textDocument/signatureHelp"] = lsp.with(
    lsp.handlers.signature_help,
    {
        border = "single",
    }
)

vim.cmd([[
  augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=100}
  augroup END
]])
 
nvim_lsp.pylsp.setup({
  on_attach = custom_attach,
  settings = {
    pylsp = {
      plugins = {
        pylint = { enabled = true, executable = "pylint" },
        pyflakes = { enabled = false },
        pycodestyle = { enabled = false },
        jedi_completion = { fuzzy = true },
        pyls_isort = { enabled = true },
        pylsp_mypy = { enabled = true },
      },
    },
  },
  flags = {
    debounce_text_changes = 500,
  },
  capabilities = capabilities,
})

-- nvim_lsp.pyright.setup{
--   on_attach = custom_attach,
--   capabilities = capabilities
-- }

nvim_lsp.clangd.setup({
    on_attach = custom_attach,
    capabilities = capabilities,
    single_file_support = true,
    cmd = { "clangd"},
    root_dir = nvim_lsp.util.root_pattern(".root", "compile_commands.json", "compile_flags.txt", ".git") or dirname,
    filetypes = { "c", "cpp", "cc" },
    index = {
        threads = 16,
    },
    flags = {
        debounce_text_changes = 1000,
  },
})

-- set up vim-language-server
nvim_lsp.vimls.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.bashls.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.sqls.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.jsonls.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.jsonls.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.gopls.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.zk.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

-- set up vim-language-server
nvim_lsp.lemminx.setup({
    on_attach = custom_attach,
    flags = {
        debounce_text_changes = 500,
    },
    capabilities = capabilities,
})

local sumneko_binary_path = vim.fn.exepath("lua-language-server")
if vim.g.is_mac or vim.g.is_linux and sumneko_binary_path ~= "" then
  local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ":h:h:h")

  local runtime_path = vim.split(package.path, ";")
  table.insert(runtime_path, "lua/?.lua")
  table.insert(runtime_path, "lua/?/init.lua")

  nvim_lsp.sumneko_lua.setup({
    on_attach = custom_attach,
    cmd = { sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua" },
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = "LuaJIT",
          -- Setup your lua path
          path = runtime_path,
        },
        diagnostics = {
          -- Get the language server to recognize the `vim` global
          globals = { "vim" },
        },
        workspace = {
          -- Make the server aware of Neovim runtime files
          library = api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
          enable = false,
        },
      },
    },
    capabilities = capabilities,
  })
end

-- Change diagnostic signs.
vim.fn.sign_define("DiagnosticSignError", { text = "✗", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "⚡", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInformation", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

-- global config for diagnostic
vim.diagnostic.config({
  underline = false,
  virtual_text = true,
  signs = true,
  severity_sort = true,
  update_in_insert = false,
  --border = "rounded",
})
local diagnostics = vim.diagnostic.get(bufnr, { severity = {min=vim.diagnostic.severity.ERROR}})
return M
