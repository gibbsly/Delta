#> delta:internal/subtick/end_launch_context
#   Summons the bat and aec used to trigger the player_hurt_entity advancement immediately after an explosion

summon minecraft:area_effect_cloud ~ ~12000 ~ {Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,effects:[{id:"instant_damage",amplifier:0b,duration:1}],Tags:["delta.init.aec"]}
summon minecraft:bat ~ ~12000 ~ {DeathLootTable:"",NoAI:1b,Health:1.0f,Tags:["delta.post_explosion"],PersistenceRequired:1b}
function delta:internal/subtick/get_player_uuid
execute positioned ~ ~12000 ~ as @e[type=area_effect_cloud,tag=delta.init.aec,distance=..0.01] run function delta:internal/subtick/aec_setup