local utils                              = require("utils")
local tblUtil                            = utils.table

local dialogs                            = require("dialogs")

local class                              = require("class")

local VALID_MODES                        = { "single", "multi" }

local MainController                     = class()

function MainController:init()
end

function MainController:initialize(document)
    self.document  = document
end

function MainController:global_keydown(element, event)
    if event.parameters.key_identifier == rocket.key_identifier.ESCAPE then
        event:StopPropagation()

        ba.postGameEvent(ba.GameEvents["GS_EVENT_QUIT_GAME"])
    end
end

function MainController:btn_pressed(element, event)
end

return MainController
