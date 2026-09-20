-- -----------------------------------------------------------
--
-- Click-Pause-Fullscreen.lua
-- Version: 1.0
-- Author: SeriousHoax
-- URL: https://github.com/SeriousHoax/AnythingMPV
--
-- Description:
--
--  Single-click to pause and double-click to fullscreen.
--
-- -----------------------------------------------------------

local mp = require("mp")
local options = require("mp.options")

local o = {
    delay = 100,
}

options.read_options(o, "potplayer-click")

local timer = nil
local waiting_for_second = false
local ignore_next_click = false

local function cancel_timer()
    if timer then
        timer:kill()
        timer = nil
    end
end

local function do_single_click()
    timer = nil
    waiting_for_second = false
    mp.command("cycle pause")
end

local function on_left_click()
    -- Ignore the second physical click of a double-click.
    if ignore_next_click then
        ignore_next_click = false
        return
    end

    -- First click: wait to see if it becomes a double-click.
    cancel_timer()
    waiting_for_second = true

    timer = mp.add_timeout(o.delay / 1000, do_single_click)
end

local function on_double_click()
    -- Cancel the pending single-click action.
    cancel_timer()
    waiting_for_second = false

    -- Depending on event order, the second MBTN_LEFT may arrive
    -- after MBTN_LEFT_DBL, so ignore it.
    ignore_next_click = true

    mp.command("cycle fullscreen")
end

mp.add_forced_key_binding(
    "MBTN_LEFT",
    "potplayer-click-single",
    on_left_click
)

mp.add_forced_key_binding(
    "MBTN_LEFT_DBL",
    "potplayer-click-double",
    on_double_click
)