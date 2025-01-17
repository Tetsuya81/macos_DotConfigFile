local M = {}
    -- Neovimを開いた時の設定

function M.setup()
    -- Neovimを開いた時に、画面を垂直に分割し、左側のウィンドウを40文字にリサイズする
    vim.api.nvim_create_autocmd("VimEnter", {
        pattern = '*',
        command = 'vsplit | wincmd h | vertical resize 40'
    })
  end

return M

