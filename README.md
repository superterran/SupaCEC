# SupaCEC
Because my RetroPie doesn't switch inputs when I turn on my controller

## What is it?

This is a simple bash script, along with an init.d control script and an installer 
in the form of a RetroPie-Setup script, that will allows for the system to automatically
switch inputs when it detects a input device added to the system. When detected,
it will trigger the active source to pause and will steal the active source for itself.
The script is very simple, and should be considered a stub for a more robust solution.

## This sucks, you should have done it this way...

PR's are accepted!
