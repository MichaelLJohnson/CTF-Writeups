Deeper - I think it is actually called "Journey to the Center of the File"
Darknut82 - 27 February 2019

This challenge gives only zip file, named something lame originally, but it is located here
as "WeNeedToGoDeeper". To start, because I am not too good with zip files, I used the file command to find the type of zip. Then using unzip, we get a lamer 'flag' file which is also a zip file. However this is zipped differently. 

After rinsing and repeating a few times I got some ASCII text, but if you look at it, its none other than an encoded base64 file (Thanks Kaitlyn!). And if done more... all you get is more zips. So, if you wanted to do this by hand.... I hate to say this file is zipped 400+ times. 

Anyway, this is best done via BASH SCRIPTING! I just (pretended to learn)learned bash scipting to make DEEPER.sh. Basically, I had a while true loop, which had an condition that would stop the loop if the result of the file command was unrecognized. Then, by checking what that file was zipped with, I created different conditions for each zip / encoding type. After adding a few, It ran and gave me the flag. 