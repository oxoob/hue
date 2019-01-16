hued
====

Description:
A daemon to control Philips hue lights throughout the day. Adapts to the suncycle and weather (cloudy-ness).

Initial Goal:
The aim with this daemon is to control a set of hue lights throughout the day, based on some base values, as set in the config. Using the configured periods, the suncycle and cloudiness the daemon should adjust the lights accordingly. If the lights are changed manually, the daemon should respect that. 

Status:
Obviously a work in progress.
- The core of the daemon is here, processing of the adjustments etc. is working.
- It can send mail or push notifications, this is more for debugging at the moment.
- It logs to the logfile for reviewing and troubleshooting the adjustments and resulting values.
- /var/log/hue is expected to exist, and writable for the user that runs the daemon, used for logging and state file
- A configured hue hub is expected, check the meethue.com developer section for setting up the 'newdeveloper' account
- colored alerts - blink a light with a certain color on incoming mail, tweet, whatever  
- can monitor external paths to perform certain actions (see config and daemon)

Development:
- on an ubuntu 12/14/16/18.04 LTS box
- perl 5.14.2 - 5.26.126.1, uses some none-core modules.

/Oxoob
