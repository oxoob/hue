hued
====

Description:
A daemon to control Philips hue lights throughout the day. Adapts to the suncycle and weather (cloudy-ness).

Initial Goal:
The aim with this daemon is to control a set of hue lights throughout the day, based on some base values, as set in the config. Using the configured periods, the suncycle and cloudiness the daemon should adjust the lights accordingly. If the lights are changed manually, the daemon should respect that. 

Status:
Obviously a work in progress:
- The core of the daemon is here, processing of the adjustments etc. is working.
- Smoothing is of light between schedules is practically done.
- It gets cloudiness from openweathermap.org, you could potentially use your own light sensor for much better accuracy (I don't have one).
- It can send mail or push notifications, this is more for debugging at the moment.
- It logs to the logfile for reviewing and troubleshooting the adjustments and resulting values.
- I've decided to store data in a (MySQL) database, to potentially have the ability to graph the lights throughout the day and see the effects of various tweaks.

- /var/log/hue is expected to exist, and writable for the user that runs the daemon, used for logging and state file
- A configured hue hub is expected, check the meethue.com developer section for setting up the 'newdeveloper' account

Future:
- colored alerts (input via fifo/socket/api or something like it) - blink a light with a certain color on incoming mail, tweet, whatever  
- phone app to initally a) review current situation (graphs), b) force the daemon to take control c) ...
- installation script (including creation of a hued user)
- stop/start scripts (init.d or whatever)

Development:
- on an ubuntu 12.04 box
- perl 5.14.2, uses some none-core modules.

/Oxoob
