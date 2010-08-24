= dellstreak-sync =

* Project: dellstreak-sync
* Author: Tom Medhurst <tom@tommed.co.uk>
* License: GPLv3 (See LICENSE.txt)

== description ==

This project allows me to sync my Ubuntu laptop with my Dell Streak.
I use Google Picasa for my photos, which syncs just fine, but these 
scripts do everything else including:

 * Pull AmazonMP3 purchases from my phone to my laptop
 * Push Ubuntu One purchases from my laptop to my phone
 * Push all my music (incrementally) from my laptop to my phone

== notes ==

It uses rsync (so make sure you have it installed) and assumes your
music is stored in: ~/Music/Collection. If this is not the case, just
edit the scripts and change it manually.
