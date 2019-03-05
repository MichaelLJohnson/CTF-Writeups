To Do List
Darknut82 - 5 March 2019

NOTE: This challenge is offline. Don't try to excecute the included script, it won't work.

So this challenge gives a website with a to-do list on it. The big thing to notice is that the URL can end with a number 1 to 1000. Presumably, the flag is somewhere on a page. 

I used the python module Selenium to finish the challenge. After setting up the driver with the first page, I searched for the start of the flag "MITRECTF" in the <title> html tag. However, after wacting while it cycled through the webpages, I saw "MITRE" which I used to narrow it down. 

The excutionin selenium is pretty easy. I have an iteration variable [listnum] and a sentinel   [found] that is changed if the search term is found. The driver is updated after every iteration within a while loop, and a condition determines if the loop continues. This could've been achieved easily with a while true loop, with a break if the search condition is met.