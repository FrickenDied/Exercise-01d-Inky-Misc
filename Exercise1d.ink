/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night

-> seashore

== seashore ==
You are sitting on the beach.

It is { advance_time() }

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is { advance_time() }
* { time == 1} [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore
+ [Stroll further down the beach] -> beach3

== beach3 ==
This is the end of the beach. There is a cave entrance nearby. But unless the sun was at the right angle, you wouldn't be able to see a thing inside.

It is {advance_time()}

+ [Stroll back up the beach] -> beach2
+ {time == 0} [Enter the cave] -> cave_mouth
+ [Wait] -> beach3

== cave_mouth ==
The cave opens up past the entrance and seems to continue onwards.

It is {advance_time()}

+ [Exit the cave] -> beach3
* [Go further down the cave] -> deep_cave

== deep_cave ==
It is {advance_time()}

It is now pitch dark in the cave, you can't see where you are going and can't see where you came from.

+ [Stumble around] -> deep_cave2

== deep_cave2 ==
You keep wandering around aimlessly, running into walls and never seing a trace of light. {You think of the sunrise, how you wish you could feel its warmth right now|You think of the daylight, and how you'd give anything to see again|You think of the sunset, and how beautiful it must look dancing across the ocean waves}

+ [Wait] -> deep_cave2

== shells ==
You pick up the shells
-> beach2
You pick up the shells

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    
        
    ~ return time
    
    
    
