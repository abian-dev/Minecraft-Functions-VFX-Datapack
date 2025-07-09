# note: call this function on every tick
# example call: function packname:generic/functions/frame_step/play {"frameRate":"1","maxFrames":"10","filepath":"filepath","end":"function"}
## Play Frames
# initialize
scoreboard players add @s generic.z 1
$execute if score @s generic.z matches 1 run function packname:generic/functions/frame_step/init {"maxFrames":"$(maxFrames)"}

# run
$execute if score @s generic.frame.index <= @s generic.constant run function packname:generic/functions/frame_step/run {"frameRate":"$(frameRate)","filepath":"$(filepath)"}
$execute if score @s generic.frame.index > @s generic.constant run function packname:generic/functions/frame_step/end {"end":"$(end)"}