% SPDX-FileCopyrightText: 2005 Jens Roesner, 2023 Johannes Keyser
%
% SPDX-License-Identifier: GPL-3.0-or-later

function AOtaskhandle=NIsetAO(tasknum,outputchan,voltage)
% function messmatrix=NIsetAO(tasknum,outputchan,voltage)
% tasknum=0 for a new task or task-handle for existing chan
% only single-channel DC out
% provides access of NI's NI-DAQmx driver from Matlab
% Analog Output with (especially) M-Series cards

if ~libisloaded('myni')
    disp('Matlab: Load nicaiu.dll')
    funclist = loadlibrary('nicaiu.dll', 'nidaqmx.h', 'alias', 'myni');
    %funclist = libfunctions('myni','-full')
    %libfunctionsview('myni')
end
disp('Matlab: dll loaded')
disp('')

disp('NI: Define constants')
DAQmx_Val_Volts = 10348; % measure volts
DAQmx_Val_Rising = 10280; % Rising
DAQmx_Val_FiniteSamps = 10178; % Finite Samples

if tasknum == 0
    disp('NI: Create AO Task')
    if outputchan == 0
        taskhAO0 = uint32(1);
        [a, b, AOtaskhandle] = calllib('myni', 'DAQmxCreateTask', 'AO_0', taskhAO0)
    else
        taskhAO1 = uint32(1);
        [a, b, AOtaskhandle] = calllib('myni', 'DAQmxCreateTask', 'AO_1', taskhAO1)
    end

    disp('NI: Create AO Channel')
    taskchans = ['Dev1/ao' num2str(outputchan)];
    [a, b, c, d] = calllib('myni', 'DAQmxCreateAOVoltageChan', uint32(AOtaskhandle), taskchans, '', -10, 10, DAQmx_Val_Volts, '')
else
    AOtaskhandle = tasknum
end

disp('NI: Set&Start task')
[a, b] = calllib('myni', 'DAQmxWriteAnalogScalarF64', AOtaskhandle, 1, 0, voltage, [])
