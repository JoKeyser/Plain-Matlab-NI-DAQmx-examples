<!--
SPDX-FileCopyrightText: 2005 Jens Roesner, 2023 Johannes Keyser

SPDX-License-Identifier: GPL-3.0-or-later
-->

# How to use National Instruments M-Series cards with Matlab

_NOTE: This file is based on Jens Roesner's website text at <https://www.jensroesner.com/work/matlab/index.html>._

### Content

Basic introduction into importing NI-DAQmx into Matlab.
Simple AI (analog input), advanced AI (synchronous) and simple AO solutions are displayed with Matlab source code.

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
