if (get_application_name()=="Quod Libet") then
    set_window_workspace(3)
    maximize()
end

if (get_application_name()=="Steam") then
    set_window_workspace(2)
    minimize()
end

if (get_window_name()=="Information") then
    make_always_on_top()
end

if (get_window_name()=="mpv-wallpaper") then
    pin_window()
    set_window_below()
    set_skip_pager(true)
    set_skip_tasklist(true)
    stick_window()
    undecorate_window()
    set_window_type("WINDOW_TYPE_DESKTOP")
end
