
VAR time = 0 //  0 Morning, 1 Noon, 2 Night
VAR season = 0 // 0 Spring, 1 Summer, 2 Fall, 3 Winter
VAR fav_season = ""

-> dream1

== seashore ==
You are laying down on the beach.

It is { advance_time() }

+ [Stroll down the beach] -> beach2

== beach2 ==
This is further down the beach.

It is { advance_time() }
* { time == 1} [Pick up the hatchet] -> hatchet
+ [Stroll back up the beach] -> seashore
+ [Stroll further down the beach] -> beach3

== beach3 ==
This is the end of the beach. There is a cave entrance nearby. But unless the sun was at the right angle, you wouldn't be able to see a thing inside.

It is {advance_time()} and {advance_season()}

+ [Stroll back up the beach] -> beach2
+ { time == 0} [Enter the cave] -> cave_mouth
+ [Wait] -> beach3

== cave_mouth ==
You enter the cave and find the entrance boarded up, if only you had a tool that could get through it.

It is {advance_time()}

+ [Exit the cave] -> beach3
* {hatchet} [Go further down the cave] -> deep_cave

== deep_cave ==
You hack away at the boards until they collapse and continue down the cave. It is {advance_time()}

It is now pitch dark in the cave, you can't see where you are going and can't see where you came from.

+ [Stumble around] -> deep_cave2

== deep_cave2 ==
You keep wandering around aimlessly, running into walls and never seeing a trace of light. {You think of the sunrise, how you wish you could feel its warmth right now|You think of the daylight, and how you'd give anything to see again|You think of the sunset, and how beautiful it must look dancing across the ocean waves}

+ [Wait] -> deep_cave2
+ [Go to sleep] -> dream2

== sleep ==
You lay down on the cool stone and slowly drift into the abyss of sleep. As you fall deeper and deeper you begin to dream...

* [Drift into the Dream] -> dream1

== dream1 ==
What was your favorite season again?

* [Spring]
    ~ fav_season = "Spring"
    -> seashore
    
* [Summer]
    ~ fav_season = "Summer"
    -> seashore
    
* [Fall]
    ~ fav_season = "Fall"
    -> seashore
    
* [Winter]
    ~ fav_season = "Winter"
    -> seashore
    
== dream2 ==
You dream of your favorite season.
{fav_season == "Spring": The spring breeze coursing through fields of green bringing the promise of warmer weather is so refreshing}
{fav_season == "Summer": The summer heat beating down on you always made work feel more fulfilling, and breaks more rewarding.}
{fav_season == "Fall": The warm colors of fall created the most beautiful views imaginable.}
{fav_season == "Winter": You loved how the snow looked as it covered the ground in a sea of bright sparkles.}

-> DONE
    
== hatchet ==
You pick up the hatchet
-> beach2

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
    
== function advance_season ==

    ~ season = season + 1
    
    {
        - season > 3:
            ~ season = 0
    }
    
    {
        - season == 0:
            ~ return "Spring"
        
        - season == 1:
            ~ return "Summer"
        
        - season == 2:
            ~ return "Fall"
            
        - season == 3:
            ~ return "Winter"
            
    }
    
    
    
    ~ return season
    
    
    
