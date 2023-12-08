<!--
SPDX-FileCopyrightText: 2005 Jens Roesner, 2010 Nathan Tomlin, 2023 Johannes Keyser

SPDX-License-Identifier: CC0-1.0
-->

# Known issues

## Error when creating channels

On 28 April 2010, Jens Roesner received the following information:

> I'm not sure why, but your code seemed to work fine for me until I tried any of the create channel commands.
> They all returned a `-200088` error.
> I finally figured out a very slight tweak to your code that worked for me - not sure why the original didn't work.
>
> I had to pass the initial task handle as empty - `uint32([])`.
> This is example code that worked for me:
>
> ```matlab
> taskhDO0 = [];
> [err,b,taskhDO0] = calllib('myni', 'DAQmxCreateTask', 'DO0', uint32(taskhDO0))
> [err,b,c,d] = calllib('myni', 'DAQmxCreateDOChan', taskhDO0, 'Dev1/port0/line0', '', DAQmx_Val_ChanPerLine)
> ```
>
> I am using Matlab 7.8.0 (R2009a) on XP.

## Issues reported by Nathan Tomlin

This description is included with Nathan Tomlin's code, last updated 14 May 2010:

> Using Jens' code, I got an error `-200088` whenever I tried to create a channel.
> To get it working, I had to change the initial task handles to `uint32([])` which then returned a pointer for taskhandle.
>
> I also had trouble with creating tasks, then losing the taskhandle, and not being able to create the same task because of a name conflict.
> The solution is to not name any of the tasks - names don't seem to be useful anyway.
> So all my functions pass an empty string as a name.