import os
from urllib.request import urlopen

config.load_autoconfig()

# Theme
if not os.path.exists(config.configdir / "theme.py"):
    theme_url = "https://raw.githubusercontent.com/catppuccin/qutebrowser/main/setup.py"
    with urlopen(theme_url) as themehtml:
        with open(config.configdir / "theme.py", "a") as file:
            file.writelines(themehtml.read().decode("utf-8"))

if os.path.exists(config.configdir / "theme.py"):
    import theme
    theme.setup(c, 'macchiato', True)

# Fonts
c.fonts.default_size = '12pt'
c.fonts.default_family = 'JetBrainsMono Nerd Font'
c.fonts.statusbar = "12pt JetBrainsMono Nerd Font"
c.fonts.completion.entry = "12pt JetBrainsMono Nerd Font"
c.fonts.prompts = "12pt JetBrainsMono Nerd Font"
c.fonts.messages.info = "12pt JetBrainsMono Nerd Font"
c.fonts.messages.error = "12pt JetBrainsMono Nerd Font"
c.fonts.messages.warning = "12pt JetBrainsMono Nerd Font"
c.fonts.downloads = "12pt JetBrainsMono Nerd Font"

# Tab
c.tabs.show = "never" # switching
c.tabs.indicator.width = 0
c.statusbar.show = "in-mode"
c.scrolling.bar = "when-searching"
c.tabs.title.format = "{audio}{current_title}"
c.tabs.padding = {'top': 2, 'bottom': 3, 'left': 6, 'right': 6}

# Completion
c.completion.shrink = True
c.completion.open_categories = [
    'searchengines', 'quickmarks', 'bookmarks', 'history', 'filesystem'
]

# Startpage
# c.url.start_pages = 'file://' + os.path.expanduser('~/Developer/repos/Startpage/index.html')

# Search Engines
c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/?q={}',
}

# User CSS
c.content.user_stylesheets = ['~/.config/qutebrowser/themes/fonts.css']

# Webpages Darkmode
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.policy.images = 'never'
c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
config.set('colors.webpage.darkmode.enabled', False, 'file://*')

# Ad blocking
c.content.blocking.enabled = True

# Privacy
config.set("content.webgl", False, "*")
config.set("content.geolocation", False)
config.set("content.cookies.store", True)
config.set("content.canvas_reading", False)
config.set("content.cookies.accept", "all")
config.set("content.private_browsing", True)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
