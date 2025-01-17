local opt = vim.opt
local keymap = vim.keymap

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'


opt.number = true                 -- 行番号を表示
vim.wo.number = true                  -- 行番号を表示（書き込み時も）
vim.wo.relativenumber = false          -- 相対行番号を無効化
opt.mouse = 'a'                   -- マウス操作を有効化
opt.title = true                  -- タイトルバーを有効化
opt.autoindent = true             -- オートインデントを有効化
opt.smartindent = true            -- スマートインデントを有効化
opt.hlsearch = true               -- 検索時にハイライト
opt.backup = false                -- バックアップファイルを作成しない
opt.showcmd = true                -- コマンドをステータスラインに表示
opt.cmdheight = 2                 -- コマンドラインの高さを2行に設定
opt.laststatus = 2                -- ステータスラインを常に表示
opt.expandtab = true              -- タブをスペースに展開
opt.scrolloff = 10                -- スクロールオフセット
opt.inccommand = 'split'          -- コマンド実行中のプレビューを分割
opt.ignorecase = true             -- 大文字小文字を無視して検索
opt.smarttab = true               -- スマートタブを有効化
opt.breakindent = true            -- 自動折り返しのインデントを維持
opt.shiftwidth = 2                -- シフト幅を2に設定
opt.tabstop = 2                   -- タブストップを2に設定
opt.wrap = true                   -- 行が画面端で折り返す
opt.helplang = 'ja', 'en'         -- ヘルプ言語を日本語優先で設定
opt.updatetime = 300              -- アップデート間隔を設定
opt.showtabline = 2               -- タブラインを常に表示
opt.clipboard = 'unnamedplus'     -- クリップボードとレジスタを共有
-- opt.termguicolors = true          -- Trueカラーを有効化
opt.signcolumn = 'yes'            -- 行数表示の横に余白を追加
opt.hidden = true                 -- 隠しファイルを編集可能にする
opt.swapfile = false              -- スワップファイルを生成しない
-- opt.wrap = true                -- 端までコードが届いた際に折り返す（このオプションではコピーする内容までも改行される）

-- float-transparent
opt.winblend = 5                  -- フロートウィンドウを若干透明に



-- キーバインド
-- 画面分割
keymap.set('n', 'sc', ':split<Return><C-w>w')   --下に分割
keymap.set('n', 'sd', ':vsplit<Return><C-w>w')  --右に分割
-- アクティブウィンドウの移動
keymap.set('n', 'sh', '<C-w>h')       -- left
keymap.set('n', 'sk', '<C-w>k')       -- top 
keymap.set('n', 'sj', '<C-w>j')       -- bottom 
keymap.set('n', 'sl', '<C-w>l')       -- right


-- Emacs風
-- keymap.set('i', '<C-f>', '<Right>')
-- jjでEscする
-- keymap.set('i', 'jj', '<Esc>')
-- 設定ファイルを開く
keymap.set('n', '<F1>', ':edit $MYVIMRC<CR>')


-- Terminal
vim.cmd[[ au TermOpen * startinsert ]]                                                    -- Terminalを開く際に、自動的にterminal modeへ切り替える
keymap.set('n', 'tt', ':tabnew<CR>:terminal<CR>', { noremap = true, silent = true })      -- 'tt'で新しいタブでターミナルモードを起動 
keymap.set('n', 'tx', ':split<CR>:terminal<CR>', { noremap = true, silent = true })       -- 'tx'で画面の下分割でターミナルモードを起動 
keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })                -- <Esc>キーでターミナルモードからノーマルモードへ切り替え 


-- Python3
vim.cmd([[
    let g:python3_host_prog = '/opt/homebrew/bin/python3'
]])

-- NodeJS
-- NeoVimのnode-hostをvoltaで管理している場合の設定
vim.cmd([[
if executable('volta')
	let g:node_host_prog = trim(system("volta which neovim-node-host"))
endif
]])
