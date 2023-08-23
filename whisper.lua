-- Saves the vim.api context
local api = vim.api

-- Creates a namespace
local ns_id = api.nvim_create_namespace('whisper')
--Gets the current buffer id
local buf_id = api.nvim_get_current_buf()

-- Gets the current line position
local position = api.nvim_win_get_cursor(0)
local line = position[1]

-- Creates the message
local mensagem = "teste"
api.nvim_buf_set_virtual_text(buf_id, ns_id, line, {{mensagem, "ErrorMsg"}}, {})
print(line)
