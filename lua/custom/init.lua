local opt = vim.opt
-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 1
opt.ruler = true

opt.timeoutlen = 200

local function toggle_autocomplete()
  local cmp = require('cmp')
  local current_setting = cmp.get_config().completion.autocomplete
  if current_setting and #current_setting > 0 then
    cmp.setup({ completion = { autocomplete = false } })
    print('Autocomplete disabled')
  else
    cmp.setup({ completion = { autocomplete = { cmp.TriggerEvent.TextChanged } } })
    print('Autocomplete enabled')
  end
end

vim.api.nvim_create_user_command('C', toggle_autocomplete, {})

-- Set a keymap like this for example:
-- vim.api.nvim_set_keymap('n', '<Leader>a', ':NvimCmpToggle<CR>', { noremap = true, silent = true })
