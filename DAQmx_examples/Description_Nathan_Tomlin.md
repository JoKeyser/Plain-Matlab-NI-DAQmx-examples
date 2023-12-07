# DAQmx examples

_NOTE: This text is copied from <https://mathworks.com/matlabcentral/fileexchange/27609-daqmx-examples>._

Version 1.0.0.0 by Nathan Tomlin 

Examples of using matlab to talk to a National Instruments (NI) DAQ card _without_ the 'data acquisition toolbox'

I have mainly used code and examples from Jens Roesner here:
<http://www.jr-worldwi.de/work/matlab/index.html>
However, I had to make a few slight tweaks to get it to work for me.
I have only tested this on Matlab 7.8.0 (R2009a) on WinXP with a NI PCI 6220 board, so no guarantees.

Using Jens' code, I got an error `-200088` whenever I tried to create a channel.
To get it working, I had to change the initial task handles to uint32([]) which then returned a pointer for taskhandle.

I also had trouble with creating tasks, then losing the taskhandle, and not being able to create the same task because of a name conflict.
The solution is to not name any of the tasks - names don't seem to be useful anyway.
So all my functions pass an empty string as a name.

Other changes are just cosmetic - made functions for common tasks to simplify my main code put all task handles in structure so easy to clear

## Cite As

Nathan Tomlin (2023).
DAQmx examples (<https://www.mathworks.com/matlabcentral/fileexchange/27609-daqmx-examples>), MATLAB Central File Exchange.
Retrieved December 7, 2023.
