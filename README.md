# Launching Scripts
### A repository with my shortcuts for programs I use and their arguments.

They are to be placed to $PATH, which allows to execute the programs from anywhere.
In Termux, the path usually is `/data/data/com.termux/files/usr/bin/`. You may need to `chmod +x` the scripts and edit paths to the actual programs.

Most of the scripts first change MAC address to random one and up the interface. Any arguments given to the launching script are passed to the actual program.

### Including launchers for:
- [OneShot](https://github.com/drygdryg/OneShot)
  - `oneshot`
  - `oneshotb` - runs online bruteforce
  - `oneshotd` - runs online bruteforce, one attempt per 61 seconds (to prevent AP locking)
  - `oneshotf` - Pixie force mode
  - `oneshot_webui` - runs OneShot with [web graphical interface](https://github.com/eda-abec/OneShot-WebUI)
  - `oneshot_update` - updates local OneShot installation (through `git pull`)
- [PMKID Cracker](https://github.com/eda-abec/wpa_pmkid_crack)
  - `pmkid`
- [wigle_companion](https://github.com/drygdryg/wigle_companion)
  - `wigle_companion` - runs in "dump" mode, meaning it only listens for scans
  - `wigle_companionr` - runs in "real" mode, also requests scanning
- general usage
  - `ifup` - only sets interface up with random MAC
  - `ifdown` - shuts the interface down
  - `export_wps` - packs reports of OneShot, stored PINs and wigle_companion DB to a zip in Downloads folder, convenient for backups / exports
  - `vibrate` - general purpose script to send a bell to terminal, which makes a vibration in Termux. Unlike in Termux API, the vibration is immediate
  - `myip` - prints current local and public IP address (by web API)

Thanks to [@jevgenyonegin](https://github.com/jevgenyonegin) for [original scripts](https://github.com/drygdryg/OneShot/issues/24#issuecomment-683338978) and inspiration
