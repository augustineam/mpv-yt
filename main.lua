function on_pause_change(name, value)
    if value == true then
        mp.set_property("fullscreen", "no")
    else
        mp.set_property("fullscreen", "yes")
    end
end
mp.observe_property("pause", "bool", on_pause_change)

local http_request = require "http.request"

local headers, stream = assert(http_request.new_from_uri("https://oauth2.googleapis.com/device/code"))
