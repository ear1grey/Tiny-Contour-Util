# Tiny Contour Util

Herein are a couple of tiny bash scripts that I use on my `Contour HD VHoldR` helmet-camera when plugged-in to OSX machines.

* `move` creates a subfolder of the current user's Pictures folder (based on today's date) and moves all <code>.mov</code> files from the camera's memory card into that folder.  Subsequently, the free space of the (significantly emptier) disk is shown, and the disk is unmounted for disconnection (without fear of that annoying error box that jumps up if you forget to eject the disk).
* `clean` asks for confirmation, and if given permanently removes all video files from the camera's memory card.

## To Use
Pull a copy to the root folder of the disk which goes into the camera, and run the scripts directly from there.
