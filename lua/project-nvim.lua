local status, project = pcall(require, "project_nvim")
if not status then
  return
end

-- nvim-tree 支持
vim.g.nvim_tree_respect_buf_cwd = 1

project.setup({
  detection_methods = { "pattern" },
  patterns = {"tags"},
})

local status, telescope = pcall(require, "telescope")
if not status then
  return
end

pcall(telescope.load_extension, "projects")

