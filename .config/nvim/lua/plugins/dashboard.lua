require('dashboard').custom_center = {{
    icon = '',
    desc = 'Recently latest session                 ',
    shortcut = '<C> s l',
    action = 'SessionLoad'
}, {
    icon = '',
    desc = 'Recently opened files                 ',
    shortcut = '<C> f h',
    action = 'DasboardFindHistory'
}, {
    icon = '',
    desc = 'Find file                 ',
    shortcut = 'SPC f f',
    action = 'Telescope find_files find_command=rg,--hidden,--files'
}, {
    icon = '',
    desc = 'File explorer                 ',
    shortcut = 'SPC f b',
    action = 'Telescope file_browser'
}, {
    icon = '',
    desc = 'Find word                 ',
    shortcut = 'SPC f w',
    action = 'Telescope live_grep'
}, {
    icon = '',
    desc = 'Exit                 ',
    shortcut = 'q',
    action = ':q'
}}
