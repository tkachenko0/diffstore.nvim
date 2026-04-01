vim.api.nvim_create_user_command('DiffStore', function()
  require('diffstore').open()
end, {})
