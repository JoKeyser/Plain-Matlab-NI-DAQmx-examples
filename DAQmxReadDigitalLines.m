% SPDX-FileCopyrightText: 2010 Nathan Tomlin, 2023 Johannes Keyser
%
% SPDX-License-Identifier: BSD-2-Clause

function data = DAQmxReadDigitalLines(lib, ...
  taskh, numSampsPerChan, timeout, fillMode, numchan, numsample)
% function data = DAQmxReadDigitalLines(lib, ...
%     taskh, numSampsPerChan, timeout, fillMode, numchan, numsample)
% 
% Read digital inputs from previously set up task.
% 
% INPUTS
%  lib - .dll or alias (ex. 'myni')
%  taskh - taskhandle of analog inputs
%  numSampsPerChan = ?
%  timeout - in seconds
%  fillMode - DAQmx_Val_GroupByChannel or DAQmx_Val_GroupByScanNumber
%  numchan - number of digital channels to read
%  numsample - number of samples to read
% 
% C-functions used:
%   int32 DAQmxReadDigitalLines(TaskHandle taskHandle,
%                               int32 numSampsPerChan,
%                               float64 timeout,
%                               bool32 fillMode,
%                               uInt8 readArray[],
%                               uInt32 arraySizeInBytes,
%                               int32 *sampsPerChanRead,
%                               int32 *numBytesPerSamp,
%                               bool32 *reserved);
%   int32 DAQmxStopTask(TaskHandle taskHandle);

% make some pointers
readarray1 = ones(numchan, numsample);
readarray1_ptr = libpointer('uint8Ptr', readarray1);
% readarray1_ptr = libpointer('doublePtr', readarray1);
sampread = 1;
sampread_ptr = libpointer('int32Ptr', sampread);
bytespersamp = 1;
bytespersamp_ptr = libpointer('int32Ptr', bytespersamp);
empty = [];
empty_ptr = libpointer('uint32Ptr', empty);

arraylength = numsample * numchan;  % more like 'buffersize'

[err, readarray1, sampread, bytespersamp, empty] = calllib(lib, ...
    'DAQmxReadDigitalLines', ...
    taskh, numSampsPerChan, timeout, fillMode, ...
    readarray1_ptr, arraylength, sampread_ptr, bytespersamp_ptr, empty_ptr);
DAQmxCheckError(lib, err);

% err = calllib(lib,'DAQmxStopTask',taskh);
% DAQmxCheckError(lib,err);

data = sampread;
