<!--
SPDX-FileCopyrightText: 2005 Jens Roesner, 2023 Johannes Keyser

SPDX-License-Identifier: CC0-1.0
-->

# Plain Matlab NI-DAQmx examples

This project provides examples of using Matlab with a National Instruments (NI) DAQ card _without_ the Data Acquisition Toolbox.

## Current status and roadmap

So far, this project contains the files and descriptions by Jens Roesner and Nathan Tomlin.

The next steps are to improve the documentation, remove/improve any redundant/outdated code, and generalize the code to run on Linux.

### Who is this for?

For anyone who wants to use their NI input/output cards with Matlab (via the NI-DAQmx driver).

Further, the examples illustrate some very basic steps on how to use Matlab's powerful function of importing dll files.

## Installation

FIXME: The current description below only applies to Windows, and may be outdated.

### Advice from Jens Roesner:

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

### Advice from Nathan Tomlin:

I had no header file (`.h`) on my computer, so I had to download NIDAQ from the NI website, I got this version: `nidaq910f0_downloader.exe`.

After installing, the C help files were then in:  
`C:\Program Files\National Instruments\NI-DAQ\docs\cdaqmx.chm`  
and the header file in:  
`C:\Program Files\National Instruments\NI-DAQ\DAQmx ANSI C Dev\include`.

I copied the files `nicaiu.dll` and `nidaqmx.h` files to my working directory, but you can also just add their paths to the code.

## Usage

The general syntax for calling DAQmx functions is:

```matlab
[outputarguments] = calllib(alias, NIDAQmx_functionname, inputarguments)
```

Below is a list of example scripts featuring simple analog input (AI); advanced, synchronous AI; and simple analog output (AO).

### Overview of scripts

The following examples were written by Jens Roesner:

- [NImess.m](NImess.m): Triggered and untriggered, synchronized or unsynchronized AI.
- [NIsetAO.m](NIsetAO.m): Simple AO
- [NIsetAOwave2.m](NIsetAOwave2.m): Wave Output AO
- [NIconstants.m](NIconstants.m): List of constants defined by NI.

These following examples were written by Nathan Tomlin:

- [daqmx_examples.m](daqmx_examples.m): Showcases how to use the functions below.
- [DAQmxCheckError.m](DAQmxCheckError.m): Checks for errors from the NI driver.
- [DAQmxCreateAIVoltageChan.m](DAQmxCreateAIVoltageChan.m): Creates a task and adds analog input channel(s) to the task.
- [DAQmxCreateDIChan.m](DAQmxCreateDIChan.m): FIXME: Claims to create a task and add digital output line(s) to the task (but probably means INPUT lines?)
- [DAQmxCreateDOChan.m](DAQmxCreateDOChan.m): Creates a task and adds digital output line(s) to the task.
- [DAQmxReadAnalogF64.m](DAQmxReadAnalogF64.m): Reads analog inputs from previously set up task.
- [DAQmxReadDigitalLines.m](DAQmxReadDigitalLines.m): Reads digital inputs from previously set up task.
- [DAQmxWriteDigitalLines.m](DAQmxWriteDigitalLines.m): Writes digital outputs from previously set up task.

### Known issues

Some known issues are tracked in file [known_issues.md](known_issues.md).

## Compatibility

There are no guarantees that this code will work with your hardware or software.

Jens Roesner wrote his initial examples in 2005 for NI's M-Series cards.

Nathan Tomlin tested his code on Matlab 7.8.0 (R2009a) on Windows XP with a NI PCI 6220 board.

## Alternatives

The code in this project may not be up to your requirements.

- If you're running Windows, you probably should get the (commercially licensed) [Matlab Data Acquisition Toolbox](http://www.mathworks.com/products/daq/) to access many NI cards (and from other manufacturers) seamlessly from within Matlab.
- If you're running Linux or MacOS, you may use another language that is officially supported by NI, like [C or Python](https://github.com/ni).

## Previous work and further resources

This project is based on code by Jens Roesner (2005) and Nathan Tomlin (2010).
For some "historical context": Jens Roesner's code pre-dates the widespread support by Matlab's Data Acquisition Toolbox.

- Jens Roesner's code is available at <https://www.jensroesner.com/work/matlab/index.html>.
- Nathan Tomlin's code is available at <https://mathworks.com/matlabcentral/fileexchange/27609-daqmx-examples>.
- You can also check [this thread started by Jens Roesner in the NI forum](https://forums.ni.com/t5/Multifunction-DAQ/Use-M-Series-cards-with-DAQmx-in-Matlab/m-p/185232).

## Authors

- Jens Roesner
- Nathan Tomlin
- Johannes Keyser (so far, only editorial work)

## Licensing

Jens Roesner retro-actively licensed his code under GPL-3.0-or-later, via personal communication with Johannes Keyser.

Nathan Tomlin based his code on Jens Roesner's code and licensed it under the BSD-2-Clause license.

Some documentation files are licensed under CC0-1.0.

To clarify the licensing of each file, this repository is [REUSE compliant](https://reuse.software/).
For the legal texts, see folder [LICENSES](LICENSES).
