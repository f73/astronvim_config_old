-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>x"] = { ":x<cr>", desc = "Save and Close" },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["s"] = { "<cmd>HopChar1<CR>", desc = "Hop to Any Character" },
      -- Move current line / block with Alt-j/k ala vscode.
      ["<A-j>"] = { "<Esc>:move .+1<CR>==" },
      -- Move current line / block with Alt-j/k ala vscode.
      ["<A-k>"] = { "<Esc>:move .-2<CR>==" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<F5>"] = { "<cmd>MundoToggle<cr>", desc = "Undo History" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
    o = {
      ["s"] = { "<cmd>HopChar1<CR>", desc = "Copy, Delete to Any Character" },
    },

    v = {
      ["s"] = { "<cmd>HopChar1<CR>", desc = "Copy, Delete to Any Character" },
      -- Move selected line / block of text in visual mode
      ["<A-j>"] = { ":move '>+1<CR>gv-gv" },
      ["<A-k>"] = { ":move '<-2<CR>gv-gv" },
    },
}
