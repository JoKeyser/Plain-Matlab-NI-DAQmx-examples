% SPDX-FileCopyrightText: 2010 Nathan Tomlin, 2023 Johannes Keyser
%
% SPDX-License-Identifier: BSD-2-Clause

function sampsPerChanWritten = DAQmxWriteDigitalLines(lib, ...
    taskh, numSampsPerChan, timeout, dataLayout, DOvalue)
% function sampsPerChanWritten = DAQmxWriteDigitalLines(lib, ...
%     taskh, numSampsPerChan, timeout, dataLayout, DOvalue)
% 
% Write digital outputs from previously set up task.
% 
% INPUTS
%  lib - .dll or alias (ex. 'myni')
%  taskh - taskhandle of analog inputs
%  numSampsPerChan = ?
%  timeout - in seconds
%  dataLayout - DAQmx_Val_GroupByChannel or DAQmx_Val_GroupByScanNumber
%  DOvalue - value to write (0 or 1)
%    1 channel example: 0
%    2 channel example: [0,0]
% 
% C-functions used:
%   int32 DAQmxWriteDigitalLines(TaskHandle taskHandle,
%                                int32 numSampsPerChan,
%                                bool32 autoStart,
%                                float64 timeout,
%                                bool32 dataLayout,
%                                uInt8 writeArray[],
%                                int32 *sampsPerChanWritten,
%                                bool32 *reserved);
%   int32 DAQmxStopTask(TaskHandle taskHandle);

autoStart = 1;

[err, sampsperchanwritten, empty] = calllib(lib, 'DAQmxWriteDigitalLines', ...
    taskh, numSampsPerChan, autoStart, timeout, dataLayout, DOvalue, 0, []);
DAQmxCheckError(lib, err);

% err = calllib(lib,'DAQmxStopTask',taskh);
% DAQmxCheckError(lib,err);
