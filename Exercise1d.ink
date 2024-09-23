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

It is { advance_time()  }


+ [Stroll down the beach] -> beach2
* {time == 2} [Look at the moon] -> moon
-> DONE

+ [Wait] -> seashore
-> DONE

== beach2 ==
This is further down the beach. There is a peninsula in the distance.

It is { advance_time() }
* {time == 1 } [Pick up some seashells] -> shells
+ [Move back up the beach] -> seashore
+ [Go to peninsula] -> peninsula

== peninsula ==
The view is spectacular from here. It is {advance_time()}
+ [Admire the view] -> view
+ [Return] -> beach2

== view ==
{&The sunrise reflects beautifully on the tranquil sea|The sea is vast and blue|The moon casts its silver glow on the gentle waves}
+[Return] -> peninsula

== shells ==
You pick up the shells
-> beach2

== moon ==
The moon shines on the gentle ocean waves.
-> seashore


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
    
    
    
