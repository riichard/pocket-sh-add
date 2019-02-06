# Pocket-sh-add

Add URLs to your pocket with a simple shell script, and some curl. No python
installs, no dependencies, and no javascript! 

Integrates fantastically with any UNIX operating system, seemlessly connects to
lynx, mutt, newsbeuter, newsboat!


## Installation

#### Authenticate the user
This will propegate a config file in ~/.pocketshrc with your token. Activate
the link opened in your browser and hit enter.
```
./authenticate.sh
```

#### Add urls
Add any URL with the add.sh script.
```
./add.sh https://github.com/riichard/pocket-sh-add/blob/master/README.md
```
