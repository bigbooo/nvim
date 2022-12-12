local status, db = pcall(require, "dashboard")
if not status then
  return
end

db.custom_header = {
    "",
    "",
    [[                    .__.                 .__.        .__.]],
	[[___  _____ __  _____|  |__ _____    ____ |  | ____ __|__|]],
	[[\  \/  /  |  \/  ___/  |  \\__  \  /  _ \|  |/ /  |  \  |]],
	[[ >    <|  |  /\___ \|   Y  \/ __ \(  <_> )    <|  |  /  |]],
	[[/__/\_ \____//____  >___|  (____  /\____/|__|_ \____/|__|]],
	[[      \/          \/     \/     \/            \/         ]],
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "  ",
    desc = "Find files                          ",
    action = "Telescope find_files",
  },
}

db.custom_footer = {
    "",
    "",
    "不积跬步，无以至千里。"
}
