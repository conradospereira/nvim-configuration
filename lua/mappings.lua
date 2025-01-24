local map = vim.keymap.set

map('n', '<space>e', '<cmd>NvimTreeToggle<cr>')
map('n', '<space>q', '<cmd>quit<cr>')
map('n', '<F3>', '<cmd>quitall<cr>')
map('n', '<space>w', '<cmd>update<cr>')
map('n', 'ss', '<cmd>split<cr>')
map('n', 'sv', '<cmd>vsplit<cr>')
map('n', '<space>ff', '<cmd>Telescope find_files<cr>')
map('n', '<space>fa', '<cmd>Telescope find_files search_dirs={"~/Documents"}<cr>')
map('n', '<space>fp', function()
  require('telescope.builtin').find_files({
    find_command = { 'fd', '--type', 'd' },
  })
end, { desc = "Search folder in project" })
map('n', '<space>fm', function()
  require('telescope.builtin').find_files({
    find_command = { 'fd', '--type', 'd' },
    search_dirs = { "~/Documents" },
  })
end, { desc = "Search folder in Documents directory" })
map('n', '<S-A-Down>', 'yyp', { desc = "Duplicate line down"})
map('n', '<S-A-Up>', 'yyP', { desc = "Duplicate line up"})
map('n', '<space>p', '<cmd>Mason<cr>')
map('n', '<space>u', '<cmd>MasonUpdate<cr>')
map('n', '<space>d', '<cmd>MasonUninstallAll<cr>')
map('v', '<space>c', ":s/^/-- /<CR>gv", { noremap = true, silent = true })
map('v', '<space>u', ":s/^-- //<CR>gv", { noremap = true, silent = true })
map('n', '<F4>', "gg=VG", { noremap = true, silent = true })

