vim.keymap.set('t', '<esc><esc>', '<c-\\><c-n>')
vim.opt.shell = 'pwsh -NoLogo -NoExit -File C:/tools/vcvars_powershell.ps1'

TermJobId = 0

vim.api.nvim_create_autocmd('TermOpen', {
  group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
    TermJobId = vim.bo.channel
  end,
})

-- small terminal
vim.keymap.set('n', '<leader>st', function()
  vim.cmd.vnew() -- new split
  vim.cmd.term() -- opens terminal in new split
  vim.cmd.wincmd 'J' -- puts the window at the bottom
  vim.api.nvim_win_set_height(0, 15) -- rows and columns not pixels
end)

local state = {
  floating = {
    buf = -1,
    win = -1,
  },
}

local function create_floating_window(opts)
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- Define window configuration
  local win_config = {
    relative = 'editor',
    width = width,
    height = height,
    col = col,
    row = row,
    style = 'minimal', -- No borders or extra UI elements
    border = 'rounded',
  }

  -- Create the floating window
  local win = vim.api.nvim_open_win(buf, true, win_config)

  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= 'terminal' then
      vim.cmd.term()
      TermJobId = vim.bo.channel
      print('job_id: ', TermJobId)
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

local function find_build_bat()
  if not vim.fn.filereadable 'build.bat' then
    vim.cmd 'cd ../'
    find_build_bat()
  end
end

local build_project = function()
  toggle_terminal()
  find_build_bat()
  vim.fn.chansend(TermJobId, { './build.bat\r\n' })
end

-- Example usage:
-- Create a floating window with default dimensions
vim.api.nvim_create_user_command('Floaterminal', toggle_terminal, {})
vim.keymap.set({ 'n', 't' }, '<space>tt', toggle_terminal)
vim.keymap.set({ 'n', 't' }, '<space>m', build_project)
