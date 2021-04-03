# Launching Scripts
A repository containing wrapper scripts to be placed to $PATH.

This allows to execute the programs from anywhere.

In Termux, the path usually is `/data/data/com.termux/files/usr/bin/`. You may need to `chmod +x` the scripts and edit paths to the actual programs.

All scripts first change MAC address to random one and up the interface. Any arguments given to the launching script are passed to the actual program.

Included launchers for:
- OneShot
  - `oneshot`
  - `oneshotb` - runs online bruteforce
  - `oneshotd` - runs online bruteforce, one attempt per 61 seconds (to prevent AP locking)
  - `oneshotf` - Pixie force mode
  - `oneshot_update` - updates your OneShot (through `git pull`)
- PMKID Cracker
  - `pmkid`
- wigle_companion
  - `wigle_companion` - runs in "dump" mode, meaning it only listens for scans
  - `wigle_companionr` - runs in "real" mode, also requests scanning
- general usage
  - `ifup` - only sets interface up with random MAC
  - `ifdown` - shuts the interface down
  - `export_wps` - packs reports of OneShot, stored PINs and wigle_companion DB to a zip in Downloads folder, convenient for backups / exports

Thanks to @jevgenyonegin for original scripts and inspiration
