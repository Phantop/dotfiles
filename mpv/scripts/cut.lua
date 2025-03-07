function clip(name, value)
    if value ~= 'no' then
        a = mp.get_property("ab-loop-a")
        b = value
        p = mp.get_property("path")
        w = mp.get_property("working-directory")
        c = 'cd \\"' .. w .. '\\" \\&\\& ffmpeg -i \\"' .. p .. '\\" -c copy -ss ' .. a .. ' -to ' .. b .. ' clip.mkv'
        os.execute("echo -n " .. c .. " | xsel -b")
    end
end

x1 = nil
y1 = nil
function mouse()
    m = mp.get_property_native("mouse-pos")
    x = m.x
    y = m.y
    if x1 then
        dx = x - x1
        dy = y - y1
        c = dx .. ':' .. dy .. ':' .. x1 .. ':' .. y1

        p = mp.get_property("path")
        w = mp.get_property("working-directory")

        f = 'cd \\"' .. w .. '\\" \\&\\& ffmpeg -i \\"' .. p .. '\\" -vf crop=' .. c ..  ' clip.mkv'
        os.execute("echo -n " .. f .. " | xsel -b")
        mp.osd_message("Copied crop values to clipboard")
        x1 = nil
    else
        x1 = x
        y1 = y
        mp.osd_message("Got first coords")
    end
end

mp.observe_property("ab-loop-b", "string", clip)
mp.add_key_binding("n", "mouse", mouse)
