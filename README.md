# SupaCEC
Because my RetroPie doesn't switch inputs when I turn on my controller

## What is it?

Read more in the [Retropie Forum Thread](https://retropie.org.uk/forum/topic/11084/supacec-a-utility-to-switch-tv-inputs-when-a-controller-is-connected)


This has now took the form of some udev rules that trigger CEC commands whenever another joystick is added. 

## Special Thanks To...

Thanks to  @Sano and @psyke83 on the Retropie forum for 1upping my solution! 

## This sucks, you should have done it this way...

PR's are accepted!

## Well, I don't see you in experimental so how do I install it?

You can unoffiically quasi-add and install my package like this...

```sh
curl https://raw.githubusercontent.com/superterran/SupaCEC/master/RetroPie-Setup/scriptmodules/supplementary/supacec.sh > /home/pi/RetroPie-Setup/scriptmodules/supplementary/supacec.sh
```

Once added, you can install using RetroPie Setup using the GUI or via the CLI with...

```sh
sudo  /home/pi/RetroPie-Setup/retropie_packages.sh supacec
```
And SupaCEC should install and begin to run. It should also show up as an Experimental Package you can manage.

