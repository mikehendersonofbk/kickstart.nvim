return {
  'stevearc/resession.nvim',
  config = function()
    require('resession').setup {}

    vim.keymap.set('n', '<leader>ss', function()
      require('resession').save(vim.fn.getcwd(), { dir = 'dirsession', notify = true })
    end, { desc = '[S]ave Session' })
    vim.keymap.set('n', '<leader>sl', function()
      require('resession').load(vim.fn.getcwd(), { dir = 'dirsession', silence_errors = false })
    end, { desc = '[L]oad Session' })
  end,
}
