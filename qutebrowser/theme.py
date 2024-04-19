cc  = c.colors
ccc = cc.completion
cct = cc.tabs

#dracula
guinum = 0x282a36
accent = '#bd93f9'

#adapta
#guinum = 0x222d32
#accent = '#5294e2'

guicol = '#' + hex(guinum).lstrip("0x")
cc.downloads.bar.bg             = guicol
cc.prompts.bg                   = guicol
cc.statusbar.command.bg         = guicol
cc.statusbar.command.private.bg = guicol
cc.statusbar.normal.bg          = guicol
cc.statusbar.private.bg         = guicol
ccc.category.bg                 = guicol
ccc.scrollbar.bg                = guicol
cct.bar.bg                      = guicol
cct.even.bg                     = guicol
cct.odd.bg                      = guicol
cct.pinned.even.bg              = guicol
cct.pinned.odd.bg               = guicol
ccc.even.bg                     = '#' + hex(guinum + 0x050505).lstrip("0x")
ccc.odd.bg                      = '#' + hex(guinum - 0x050505).lstrip("0x")

ccc.item.selected.bg            = accent
ccc.item.selected.border.bottom = accent
ccc.item.selected.border.top    = accent
ccc.match.fg                    = accent
ccc.scrollbar.fg                = accent
cct.pinned.selected.even.bg     = accent
cct.pinned.selected.odd.bg      = accent
cct.selected.even.bg            = accent
cct.selected.odd.bg             = accent
c.hints.border                  = accent
cc.hints.bg                     = accent

cct.pinned.selected.even.fg     = 'black'
cct.pinned.selected.odd.fg      = 'black'
cct.selected.even.fg            = 'black'
cct.selected.odd.fg             = 'black'
cc.messages.warning.bg          = 'red'
cc.messages.warning.border      = 'red'

cc.webpage.darkmode.enabled = True
cc.webpage.preferred_color_scheme = 'dark'
cc.webpage.darkmode.policy.images = 'never'

c.completion.open_categories = ["bookmarks","history"]
c.content.fullscreen.window = True
c.content.prefers_reduced_motion = True
c.content.user_stylesheets = ['adblock.css', 'dracula.css', 'user.css']
c.tabs.show = 'multiple'
