<!--
SPDX-FileCopyrightText: 2023 Johannes Keyser

SPDX-License-Identifier: CC0-1.0
-->

# Plain Matlab NI-DAQmx examples

The idea: This project will provide and extend the examples of using Matlab with a National Instruments (NI) DAQ card _without_ the Data Acquisition Toolbox, with the code by Jens Roesner and Nathan Tomlin.

In addition, the code's (public) history will be logged with this Git repo, and the license terms will be clarified.

## Current status

So far, this project contains a dump of the files and descriptions by Jens Roesner and Nathan Tomlin.
See [Description_Jens_Roesner.md](Description_Jens_Roesner.md) and [Description_Nathan_Tomlin.md](Description_Nathan_Tomlin.md) for their descriptions.

The next step is to remove redundant/outdated code and improve the documentation.

### Who is this for?

For all people wanting to use their M-Series cards (and/or NI-DAQmx drivers) with Matlab.

Further, the examples illustrate some very basic steps on how to use Matlab's powerful function of importing dll files.

## Installation

TODO...

## Alternatives

The code in this project may not be up to your requirements.

- If you're running Windows, you probably should get the (commercially licensed) [Matlab Data Acquisition Toolbox](http://www.mathworks.com/products/daq/) to access many NI cards (and from other manufacturers) seamlessly from within Matlab.
- If you're running Linux or MacOS, you may use another language that is officially supported by NI, like [C or Python](https://github.com/ni).

## Previous work and further resources

This project is based on code by Jens Roesner (2005) and Nathan Tomlin (2010).
For some "historical context": Jens Roesner's code pre-dates the widespread support by Matlab's Data Acquisition Toolbox.

- Jens Roesner's code is available at <https://www.jensroesner.com/work/matlab/index.html>.
- Nathan Tomlin's code is available at <https://mathworks.com/matlabcentral/fileexchange/27609-daqmx-examples>.
- You can also check the [NI forum](http://forums.ni.com/ni/board/message?board.id=250&thread.id=10165).

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
