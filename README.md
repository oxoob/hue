hued
====

Description:
A daemon to control Philips hue lights throughout the day. Adapts to the suncycle and weather (cloudy-ness).

Status:
Obviously a work in progress. The core of the daemon is here, the adjustments etc. are in development.

Initial Goal:
The aim with this daemon is to control a set of hue lights throughout the day, based on some base values, as set in the config. Using the configured periods, the suncycle and cloudiness the daemon should adjust the lights accordingly. If the lights are changed manually, the daemon should respect that. But even within that choice, adjustments for sun and weather should be made possible.

Future:
- installation script (including creation of a hued user)
- stop/start scripts (init.d or whatever)
- colored alerts (input via fifo/socket or something like it) - blink a light with a certain color on incoming mail, tweet, whatever  

Development:
- on an ubuntu 12.04 box
- perl 5.14.2, uses some none-core modules.

Manual:
- /var/log/hue is expected to exist, and writable for the user that runs the daemon, used for logging and state file
- A configured hue hub is expected, check the meethue.com developer section for setting up the 'newdeveloper' account


/Oxoob
