--[[
    GD50
    Legend of Zelda

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

GAME_OBJECT_DEFS = {
    ['switch'] = {
        type = 'switch',
        texture = 'switches',
        frame = 2,
        width = 16,
        height = 16,
        solid = false,
        defaultState = 'unpressed',
        states = {
            ['unpressed'] = {
                frame = 2
            },
            ['pressed'] = {
                frame = 1
            }
        }
    },
    ['heart'] = {
        type = 'heart',
        texture = 'hearts',
        defaultState = 'normal',
        states = {
            ['normal'] = {
                frame = 5
            }
        },
        --frame = 5,
        width = 8,
        height = 8,
        solid = false,
        consumable = true
        
    },
    ['pot'] = {
        -- TODO
        type = 'tiles',
        texture = 'tiles',
        defaultState = 'normal',
        states = {
            ['normal'] = {
                frame = 15
            }
        },
        --frame = 15,
        width = 8,
        height = 8,
        solid = true,
        consumable = false
    }
}