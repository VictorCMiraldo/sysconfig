# My Scripts

  * `cfg-linesof <file>`
  > Reads the lines of a file ignoring the ones
  > starting with a `#`
  
  * `folder-mirror <folder> <dst>`
  > Mirrors folder to dst using rsync. Additional options
  > are passed directly to rsync.
  
  * `keychain-priv-backup <dst>` 
  > folder-mirror ~/usr/keychain and ~/usr/priv
  > to dst.
  
  * `keychain-priv-safe`
  > Makes a tar.gz file with ~/usr/keychain and ~/usr/priv
  > encrypts it using $KEYCHAIN_ROOT key
  > and moves it to ~/safe
  
  * `logfile-{monthly|unique} <str>`
  > Generates a filename for logging things.
  > monthly will generate the same name for calls
  > within the same month; every call to unique yields
  > a unique file.
  
  * `pkg-check <pkg>`
  > Checks whether or not a package
  > has an installation candidate.
  
  * `pkg-is-installed <pkg>`
  > Checks whether or not a package is installed in this
  > system.
  
  * `sysbckp <dst>`
  > Performs a full backup of our system in dst.
  
  * `sleepy <int> <str>`
  > Runs the command in `str` after sleeping for `int` 
  > seconds.
  
  * `jblfilp2-{disconnect|connect}`
  > For some weird reason, pacmd doesn't let
  > my speakers work in a2dp mode. These scripts fix
  > it.
  
##  CTL
  
  * `ctl\audio <play|pause|next|prev|stop>` 
  > sends XF86Audio keyboard strokes through xdotool
