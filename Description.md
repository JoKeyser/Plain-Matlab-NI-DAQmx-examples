# How to use National Instruments M-Series cards with Matlab

_NOTE: This file is based on Jens Roesner's website text at <https://www.jensroesner.com/work/matlab/index.html>._

## 2005 legacy content

### Who is this for?

For all people wanting to use their M-Series cards (and/or NI-DAQmx drivers) with Matlab.

### Update August 1st, 2006

I was just made aware by Steven that [Matlab](http://www.mathworks.com/) now supports M-Series cards via the new [Data Acquisition Toolbox](http://www.mathworks.com/products/daq/).
This is an easy and very refined way of accessing the new capabilities of the M-Series and can even be used to access the older E-series cards through the newer NI-DAQmx.

### Update April 28th, 2010

I have just received the following info:

> I'm not sure why, but your code seemed to work fine for me until I tried any of the create channel commands. 
> They all returned a `-200088` error. 
> I finally figured out a very slight tweak to your code  that worked for me - not sure why the original didn't work.
>
> I had to pass the initial task handle as empty - `uint32([])`.
> This is example code that worked for me:
>
> ```matlab
> taskhDO0 = [];
> [err,b,taskhDO0] = calllib('myni','DAQmxCreateTask','DO0',uint32(taskhDO0))
> [err,b,c,d] = calllib('myni','DAQmxCreateDOChan',taskhDO0,'Dev1/port0/line0','',DAQmx_Val_ChanPerLine)
> ```
>
> I am using Matlab 7.8.0 (R2009a) on XP. 

As I have no way of testing this any more, I have not changed the source code below.
Also, be sure to check the [NI forums](http://forums.ni.com/ni/board/message?board.id=250&thread.id=10165) `:)`.

### Content

Basic introduction into importing NI-DAQmx into Matlab.
Simple AI (analog input), advanced AI (synchronous) and simple AO solutions are displayed with Matlab source code.

### Motivation

There's probably little disagreement that the new M-Series cards are superior to the old E-Series cards.
Matlab did (in February 2005) not support either series directly and the Data Acquisition Toolbox (DAQ) was only compatible with the E-series cards.
This has changed now (August 2006).

By buying the [Matlab Data Acquisition Toolbox](http://www.mathworks.com/products/daq/) you can access both E-Series and M-Series cards (and many cards by other manufacturers) seamlessly from within Matlab.
For a full list of supported hardware, see the Matlab list of [Supported Hardware Devices and Vendors](http://www.mathworks.com/products/supportedio.html?prodCode=DA) in DAQ.
Furthermore, using the Adaptor Kit that is supplied with the Matlab DAQ Toolbox might make it possible to even connect to your otherwise unsupported card.
I'll leave this page online because it still is a feasible way to access functions of the M-Series cards and furthermore illustrates some very basic steps on how to use Matlab's powerful function of importing dll files.

### First step

Start by loading the NI dll: `funclist = loadlibrary('nicaiu.dll', 'nidaqmx.h', 'alias', 'myni')`

(You can choose any alias as long as it is a legal variable name.)

If your version of Matlab is too old to provide the `loadlibrary` function directly, download it here: <http://www.codeproject.com/dll/MatlabGenericDll.asp?df=100&forumid=26247&exp=0&select=972623>.
After importing, you see the list of available functions.
You can also display them by `libfunctionsview('myni')`.
That's basically it.
By using the National Instruments NI-DAQmx C Reference manual and libfunctionsview(\'myni\') you have access to those functions.
One special thing you need to keep in mind is the fact that pointers work differently in Matlab than in C.
This problem can be solved by using the Matlab function `libpointer`.
Sometimes Matlab does not require a pointer when C would.
But I found that it does not hurt to specify a pointer in this case.
Whether Matlab expects a pointer can be seen in the output created by `libfunctionsview('myni')`.

The general syntax for calling DAQmx functions is:

```matlab
[outputarguments] = calllib(alias, NIDAQmx_functionname, inputarguments)
```

### Overview of functions

- [NImess.m](NImess.m): Triggered and untriggered, synchronized or unsynchronized AI.
- [NIsetAO.m](NIsetAO.m): Simple AO
- [NIsetAOwave2.m](NIsetAOwave2.m): Wave Output AO
