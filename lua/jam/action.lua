local session = require("jam.session")
local keymap = require("jam.keymap")

local action = {}

function action.start()
    session:start()
    keymap:store()
    keymap:set()
end

function action.backspace()
    session:backspace()
end

function action.complete()
    session:complete()
end

function action.insert_next_item()
    session:insert_item(1)
end

function action.insert_prev_item()
    session:insert_item(-1)
end

function action.goto_next()
    session:goto_next()
end

function action.goto_prev()
    session:goto_prev()
end

function action.goto_head()
    session:goto_head()
end

function action.goto_tail()
    session:goto_tail()
end

function action.extend()
    session:extend()
end

function action.shorten()
    session:shorten()
end

function action.confirm()
    session:confirm()
end

function action.exit()
    session:exit()
    keymap:del()
    keymap:restore()
end

return action
