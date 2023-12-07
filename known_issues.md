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
