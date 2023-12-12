% SPDX-FileCopyrightText: 2010 Nathan Tomlin, 2023 Johannes Keyser
%
% SPDX-License-Identifier: BSD-2-Clause

lib = 'myni';    % library alias

if ~libisloaded(lib)
    disp('Matlab: Load nicaiu.dll')
    funclist = loadlibrary('nicaiu.dll', 'nidaqmx.h', 'alias', lib);
    % if you do NOT have nicaiu.dll and nidaqmx.h
    % in your Matlab path,add full pathnames or copy the files.
    % libfunctions(lib, '-full')  % use this to show the... 
    % libfunctionsview(lib)     % included function
end

disp('Matlab: dll loaded')
disp('')


% %% load all DAQmx constants
NIconstants();


%% initialization stuff

% [err]=calllib('myni','DAQmxResetDevice','Dev1');
% DAQmxCheckError('myni',err);

% [err,ver] = calllib(lib,'DAQmxGetSysNIDAQMajorVersion',uint32(1));
% DAQmxCheckError(lib,err);


%% Create 2 DO tasks, each with 1 channel per task, and write values 

lineGrouping = DAQmx_Val_ChanPerLine; % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines; % One Channel For All Lines

taskh.DO_00 = DAQmxCreateDOChan(lib,'Dev1/port0/line0',lineGrouping);
taskh.DO_01 = DAQmxCreateDOChan(lib,'Dev1/port0/line1',lineGrouping);


% write values to DO lines
numSampsPerChan = 1;
timeout = 1;
dataLayout =  DAQmx_Val_GroupByChannel;  % Group by Channel
% dataLayout = DAQmx_Val_GroupByScanNumber;  % Group by Scan Number

valueDO = 1;
DAQmxWriteDigitalLines(lib, taskh.DO_00, ...
    numSampsPerChan, timeout, dataLayout, valueDO);

valueDO = 0;
DAQmxWriteDigitalLines(lib, taskh.DO_01, ...
    numSampsPerChan, timeout, dataLayout, valueDO);


%% Create 2 DO channels, all in one task, and write values

lineGrouping = DAQmx_Val_ChanPerLine;  % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines;  % One Channel For All Lines
DOlines = {'Dev1/port0/line0', 'Dev1/port0/line1'};

taskh.DOs = DAQmxCreateDOChan(lib, DOlines, lineGrouping);

valueDOs = [1,0];
DAQmxWriteDigitalLines(lib, taskh.DOs, ...
    numSampsPerChan, timeout, dataLayout, valueDOs);


%% create 2 DI channels, each in separate task, and read values

lineGrouping = DAQmx_Val_ChanPerLine;  % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines;  % One Channel For All Lines

taskh.DI_10 = DAQmxCreateDIChan(lib, 'Dev1/port1/line0', lineGrouping);
taskh.DI_11 = DAQmxCreateDIChan(lib, 'Dev1/port1/line1', lineGrouping);


% read channels
numSampsPerChan = 1;
timeout = 1;
fillMode = DAQmx_Val_GroupByChannel;  % Group by Channel
% fillMode = DAQmx_Val_GroupByScanNumber;  % Group by Scan Number
numchanDI = 1; % DI lines
numsample = 1;

DI_10 = DAQmxReadDigitalLines(lib,taskh.DI_10, numSampsPerChan, timeout, fillMode, numchanDI, numsample)
DI_11 = DAQmxReadDigitalLines(lib,taskh.DI_11, numSampsPerChan, timeout, fillMode, numchanDI, numsample)


%% create 2 DI channels, all in one task, and read values

DIlines = {'Dev1/port1/line0', 'Dev1/port1/line1'};
lineGrouping = DAQmx_Val_ChanPerLine;  % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines;  % One Channel For All Lines

taskh.DIs = DAQmxCreateDIChan(lib,DIlines,lineGrouping);

% read DI channels together
numSampsPerChan = 1;
timeout = 1;
fillMode = DAQmx_Val_GroupByChannel;  % Group by Channel
% fillMode = DAQmx_Val_GroupByScanNumber;  % Group by Scan Number
numchanDI = numel(DIlines);  % DI lines
numsample = 1;

DIs = DAQmxReadDigitalLines(lib, taskh.DIs, numSampsPerChan, timeout, ...
    fillMode, numchanDI, numsample)


%% create 1 AI channel, configure sample clock

Vmin = 0;
Vmax = 10;
taskh.AI_10 = DAQmxCreateAIVoltageChan(lib, 'Dev1/ai0', Vmin, Vmax);

% configure AI sampling rate/clock
% C function:
% int32 DAQmxCfgSampClkTiming(TaskHandle taskHandle,
%                             const char source[],
%                             float64 rate,
%                             int32 activeEdge,
%                             int32 sampleMode,
%                             uInt64 sampsPerChanToAcquire);
source = '';  % empty means to use onboard clock
rate = 10000;  % sampling rate in Hz
activeEdge = DAQmx_Val_Rising;  % Rising
% activeEdge = DAQmx_Val_Falling;  % Falling
sampleMode = DAQmx_Val_FiniteSamps;  % Finite Samples
% sampleMode = DAQmx_Val_ContSamps;  % Continuous Samples
% sampleMode = DAQmx_Val_HWTimedSinglePoint;  % Hardware Timed Single Point
sampsPerChanToAcquire = 2;

[err, b] = calllib(lib, 'DAQmxCfgSampClkTiming', taskh.AI_10, ...
    source, rate, activeEdge, sampleMode, sampsPerChanToAcquire);
DAQmxCheckError(lib,err);

[err, b] = calllib(lib, 'DAQmxTaskControl', taskh.AI_10, DAQmx_Val_Task_Verify);
DAQmxCheckError(lib, err);


% read 1 AI channel
timeout = 1;
% fillMode = DAQmx_Val_GroupByChannel;  % Group by Channel
fillMode = DAQmx_Val_GroupByScanNumber;  % Group by Scan Number
numchanAI = 1;
numsample = 1;
AI_10 = DAQmxReadAnalogF64(lib, taskh.AI_10, DAQmx_Val_Auto, timeout, ...
    fillMode, numchanAI, numsample)


%% creat 2 AI channels, configure sample clock, and read values

AIphysicalChannels = {'Dev1/ai0', 'Dev1/ai1', 'Dev1/ai2', 'Dev1/ai3'};
Vmins = [ 0,  0,  0,  0];
Vmaxs = [10, 10, 10, 10];
taskh.AIs = DAQmxCreateAIVoltageChan(lib,AIphysicalChannels,Vmins,Vmaxs);


% Configure AI sampling rate/clock.
% C function:
% int32 DAQmxCfgSampClkTiming(TaskHandle taskHandle
%                             const char source[],
%                             float64 rate,
%                             int32 activeEdge,
%                             int32 sampleMode,
%                             uInt64 sampsPerChanToAcquire);
source = '';  % empty means to use onboard clock
rate = 10000;  % sampling rate in Hz
activeEdge = DAQmx_Val_Rising;  % Rising
% activeEdge = DAQmx_Val_Falling;  % Falling
sampleMode = DAQmx_Val_FiniteSamps;  % Finite Samples
% sampleMode = DAQmx_Val_ContSamps;  % Continuous Samples
% sampleMode = DAQmx_Val_HWTimedSinglePoint;  % Hardware Timed Single Point
sampsPerChanToAcquire = 2;

[err, b] = calllib(lib, 'DAQmxCfgSampClkTiming', taskh.AIs, ...
    source, rate, activeEdge, sampleMode, sampsPerChanToAcquire);
DAQmxCheckError(lib, err);

[err, b] = calllib(lib, 'DAQmxTaskControl', taskh.AIs, DAQmx_Val_Task_Verify);
DAQmxCheckError(lib, err);


% read AI channels
timeout = 1;
% fillMode = DAQmx_Val_GroupByChannel;  % Group by Channel
fillMode = DAQmx_Val_GroupByScanNumber;  % Group by Scan Number
numchanAI = numel(AIphysicalChannels);  % AI 0, 1, 2, 3
numsample = 1;

AIs = DAQmxReadAnalogF64(lib, taskh.AIs, DAQmx_Val_Auto, timeout, ...
    fillMode, numchanAI, numsample)


%% clear all tasks

% loop to clear all taskhandles
tasknames = fieldnames(taskh);
numtasks = numel(tasknames);
for m = 1:numtasks
    [err] = calllib(lib, 'DAQmxClearTask', taskh.(tasknames{m}));
    DAQmxCheckError(lib, err);
end


%% unload library
if libisloaded(lib)  % checks if library is loaded
    unloadlibrary(lib)
end
