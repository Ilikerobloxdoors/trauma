local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create Trauma
local entity = Creator.createEntity({
    CustomName = "Trauma",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/trauma/main/TRAUMA.rbxm",

    Speed = 350,
    DelayTime = 3,
    HeightOffset = 5,

    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = true,

    FlickerLights = {
        true,
        10,
    },

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {5.4, 30, 0.2, 1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://6685956411",
            Image2 = "rbxassetid://6685956411",

            Shake = true,

            Sound1 = {
                5375147888,
                {
                    Volume = 1.5,
                },
            },

            Sound2 = {
                5375147888,
                {
                    Volume = 1.5,
                },
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 10, 0),
            },

            Tease = {
                true,
                Min = 2,
                Max = 3,
            },
        },
    },

    CustomDialog = {
        "You died to Trauma..."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Trauma has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Trauma has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Trauma has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Trauma has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Trauma entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Trauma!")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Trauma.")
end

------------------------

-- Run Trauma
Creator.runEntity(entity)
