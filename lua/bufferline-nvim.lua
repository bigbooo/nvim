local status, bufferline = pcall(require, "bufferline")
if not status then
    return
end

bufferline.setup({
  options = {
    separator_style = 'thin',
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true,
    -- 左侧让出 nvim-tree 的位置
    offsets = {{
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        text_align = "left"
    }}
  },
})
