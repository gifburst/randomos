This info is OLD.  Sorry.  Some of it may still apply.

http://www.fdisk.com/doslynx/wlynx/

readme.txt    This message.
lynx_w32.zip  A compiled Win32 Lynx.exe, lynx.cfg, cp.exe, mv.exe and
              sendmail.exe along with some config info.
lynx_386.zip  A compiled DJGPP Lynx.exe, lynx.cfg and wattcp.cfg.
              Needs a working cp.exe to download.
source        Info on compiling your own DJGPP or Win32 ports.

The Win32 version will work on Win95 or WinNT using the standard winsock.
Win3.11 will NOT work -- not even with win32s and wolverine installed.
This is a console application meaning that it appears to run in a DOS box
within Windows, but it accesses the Windows network layer and other kernel
functions directly.

The 386 version runs in DOS and requires a 386 or higher and some sort of
packet driver.  Place cwsdpmi.exe on your PATH if you get a no DPMI
message.  Place emu387.dxe there if you get Coprocessor not available.
The only parts that work so far are http://, file:// and gopher://.  Your
mileage may vary.  Don't forget to alter the wattcp.cfg with your TCP
settings.  If you just want to look at lynx (not surf) and you get a
no packet driver error then check out the drivers subdirectory.

If you want to run helper apps then they *may* need to be in your path.  I
haven't tested this much yet.

lynx uses cp.exe to make a copy of a temp file when you download and then
choose a destination.  Don't delete it.  It works best when put in your
PATH.

This version uses BLOCKING lookups and connects.  I wasn't ready to
butcher the code to install non-blocking calls yet.  The Win32 version
should now at least have non-blocking lookups.

This is NOT guarenteed to be a secure client.  Don't just slap it on an NT
server or DOS BBS and open it up to the public without testing it!!!

File access looks like this:

file:///c:/
file:///c:/dos
file:///c:/dos/command.com

Here are some useful environment variables which you should set up
in a lynx.bat file:

HOME         Where to keep the bookmark file and personal config files.
TEMP or TMP  Bookmarks are kept here with no HOME.  Temp files here.
USER         Tells Lynx you are real instead of an anonymous user(?)
LYNX_CFG     Where to find the lynx.cfg.

386 version only:
WATCONF      Where to find the wattcp.cfg file.

Look in SAMPLES for an idea on how to create a good lynx.bat.

43 line mode works fine in the Win32 version as long as you start it that
way.

I am sure there will be questions, opinions, flames...they should ALL be
sent to lynx-dev@sig.net since this is a real port.  If you are not
subscribed to lynx-dev then you can read responces from the web archive at
http://www.flora.org/lynx-dev/.

Happy browsing,
Wayne


