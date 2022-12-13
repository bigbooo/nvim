local status, tt = pcall(require, "toggleterm")
if not status then
    return
end

tt.setup {
  direction = 'float',
  float_opts = {
    width = 200,
    height = 60,
  },
}
