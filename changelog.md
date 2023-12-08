<!--
SPDX-FileCopyrightText: 2023 Johannes Keyser

SPDX-License-Identifier: CC0-1.0
-->

# Changelog

## 2023

- Cosmetics: In Jens Roesner's code, use whitespaces around binary operators and after commas. Also remove some unnecessary syntax like parentheses.
- The documentation texts by Jens Roesner's and Nathan Tomlin were edited into the more conventional project description you are reading here.
- SPDX license headers were added to all files, and redundant lines of authorship and versions were deleted.
- Johannes Keyser copied all code files by Jens Roesner and Nathan Tomlin into this project repository.

## 2010 

- Nathan Tomlin based his code on Jens Roesner's code.
  _NOTE: The following description is lightly edited from [Version 1.0.0.0 by Nathan Tomlin on Mathworks File Exchange](https://mathworks.com/matlabcentral/fileexchange/27609-daqmx-examples):_

  > I have mainly used code and examples from Jens Roesner [here](http://www.jr-worldwi.de/work/matlab/index.html).
  > However, I had to make a few slight tweaks to get it to work for me.
  >
  > Using Jens' code, I got an error `-200088` whenever I tried to create a channel.
  > To get it working, I had to change the initial task handles to uint32([]) which then returned a pointer for taskhandle.
  >
  > I also had trouble with creating tasks, then losing the taskhandle, and not being able to create the same task because of a name conflict.
  > The solution is to not name any of the tasks - names don't seem to be useful anyway.
  > So all my functions pass an empty string as a name.
  > 
  > Other changes are just cosmetic: Made functions for common tasks to simplify my main code, and put all task handles in structure so easy to clear.

## 2005

- Jens Roesner wrote his scripts (versions 1.0 as of 20 Feb 2005) and published them on the NI forum and his website.
