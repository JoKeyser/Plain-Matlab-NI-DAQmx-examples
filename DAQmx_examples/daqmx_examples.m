% Below are examples of using matlab to talk to a National Instruments (NI)
% DAQ card _without_ the 'data acquisition toolbox'
% 
% I have mainly used code and examples from Jens Roesner here:
% 	http://www.jr-worldwi.de/work/matlab/index.html
% However, I had to make a few slight tweaks to get it to work for me.
% I have only tested this on Matlab 7.8.0 (R2009a) on WinXP with a 
% NI PCI 6220 board, so no guarantees.
% 
% Using Jens' code, I got an error -200088 whenever I tried to create a channel
% To get it working, I had to change the initial task handles to uint32([])
% which then returned a pointer for taskhandle
% 
% I also had trouble with creating tasks, then losing the taskhandle, and 
% not being able to create the same task because of a name conflict.
% The solution is to not name any of the tasks - names don't seem to be useful
% anyway. So all my functions pass an empty string as a name.
% 
% Other changes are just cosmetic - 
%	made functions for common tasks to simplify my main code
%	put all task handles in structure so easy to clear
% 
% some other misc stuff:
%	I had no header file (.h) on my computer, so I had to download NIDAQ
%	from the NI website, I got this version: nidaq910f0_downloader.exe
%	After installing, the C help files were then in:
%		'C:\Program Files\National Instruments\NI-DAQ\docs\cdaqmx.chm'
%	and the header file in:
%		'C:\Program Files\National Instruments\NI-DAQ\DAQmx ANSI C Dev\include'
% 
%	I copied the files 'nicaiu.dll' and 'nidaqmx.h' files to my working
%	direction, but you can also just add their paths to the code below
% 
% 
% written by Nathan Tomlin (nathan.a.tomlin@gmail.com)
% v0 - 1004

lib = 'myni';	% library alias
if ~libisloaded(lib)
    disp('Matlab: Load nicaiu.dll')
    funclist = loadlibrary('nicaiu.dll','nidaqmx.h','alias',lib);
    %if you do NOT have nicaiu.dll and nidaqmx.h
    %in your Matlab path,add full pathnames or copy the files.
    %libfunctions(lib,'-full') % use this to show the... 
    %libfunctionsview(lib)     % included function
end
disp('Matlab: dll loaded')
disp('')


% %% load all DAQmx constants
NIconstants;



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
dataLayout =  DAQmx_Val_GroupByChannel; % Group by Channel
% dataLayout = DAQmx_Val_GroupByScanNumber; % Group by Scan Number

valueDO = 1;
DAQmxWriteDigitalLines(lib,taskh.DO_00,...
	numSampsPerChan,timeout,dataLayout,valueDO);

valueDO = 0;
DAQmxWriteDigitalLines(lib,taskh.DO_01,...
	numSampsPerChan,timeout,dataLayout,valueDO);




%% Create 2 DO channels, all in one task, and write values

lineGrouping = DAQmx_Val_ChanPerLine; % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines; % One Channel For All Lines
DOlines = {'Dev1/port0/line0','Dev1/port0/line1'};

taskh.DOs = DAQmxCreateDOChan(lib,DOlines,lineGrouping);

valueDOs = [1,0];
DAQmxWriteDigitalLines(lib,taskh.DOs,...
	numSampsPerChan,timeout,dataLayout,valueDOs);




%% create 2 DI channels, each in separate task, and read values

lineGrouping = DAQmx_Val_ChanPerLine; % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines; % One Channel For All Lines

taskh.DI_10 = DAQmxCreateDIChan(lib,'Dev1/port1/line0',lineGrouping);
taskh.DI_11 = DAQmxCreateDIChan(lib,'Dev1/port1/line1',lineGrouping);


% read channels
numSampsPerChan = 1;
timeout = 1;
fillMode =  DAQmx_Val_GroupByChannel; % Group by Channel
% fillMode = DAQmx_Val_GroupByScanNumber; % Group by Scan Number
numchanDI = 1; % DI lines
numsample = 1;

DI_10 = DAQmxReadDigitalLines(lib,taskh.DI_10,numSampsPerChan,timeout,fillMode,numchanDI,numsample)
DI_11 = DAQmxReadDigitalLines(lib,taskh.DI_11,numSampsPerChan,timeout,fillMode,numchanDI,numsample)




%% create 2 DI channels, all in one task, and read values

DIlines = {'Dev1/port1/line0','Dev1/port1/line1'};
lineGrouping = DAQmx_Val_ChanPerLine; % One Channel For Each Line
% lineGrouping = DAQmx_Val_ChanForAllLines; % One Channel For All Lines

taskh.DIs = DAQmxCreateDIChan(lib,DIlines,lineGrouping);



% read DI channels together
numSampsPerChan = 1;
timeout = 1;
fillMode =  DAQmx_Val_GroupByChannel; % Group by Channel
% fillMode = DAQmx_Val_GroupByScanNumber; % Group by Scan Number
numchanDI = numel(DIlines); % DI lines
numsample = 1;

DIs = DAQmxReadDigitalLines(lib,taskh.DIs,numSampsPerChan,timeout,fillMode,numchanDI,numsample)





%% creat 1 AI channel, configure sample clock

Vmin = 0; Vmax = 10;
taskh.AI_10 = DAQmxCreateAIVoltageChan(lib,'Dev1/ai0',Vmin,Vmax);

% configure AI sampling rate/clock
	% C function:
	% int32 DAQmxCfgSampClkTiming (TaskHandle taskHandle,const char source[],float64 rate,int32 activeEdge,int32 sampleMode,uInt64 sampsPerChanToAcquire);
source = ''; % empty means to use onboard clock
rate = 10000; % sampling rate in Hz
activeEdge = DAQmx_Val_Rising; % Rising
% activeEdge = DAQmx_Val_Falling; % Falling
sampleMode = DAQmx_Val_FiniteSamps; % Finite Samples
% sampleMode = DAQmx_Val_ContSamps; % Continuous Samples
% sampleMode = DAQmx_Val_HWTimedSinglePoint; % Hardware Timed Single Point
sampsPerChanToAcquire = 2;

[err,b] = calllib(lib,'DAQmxCfgSampClkTiming',taskh.AI_10,...
	source,rate,activeEdge,sampleMode,sampsPerChanToAcquire);
DAQmxCheckError(lib,err);

[err,b] = calllib(lib,'DAQmxTaskControl',taskh.AI_10,DAQmx_Val_Task_Verify);
DAQmxCheckError(lib,err);


% read 1 AI channel
timeout = 1;
% fillMode =  DAQmx_Val_GroupByChannel; % Group by Channel
fillMode = DAQmx_Val_GroupByScanNumber; % Group by Scan Number
numchanAI = 1;
numsample = 1;
AI_10 = DAQmxReadAnalogF64(lib,taskh.AI_10,DAQmx_Val_Auto,timeout,fillMode,numchanAI,numsample)



%% creat 2 AI channels, configure sample clock, and read values

AIphysicalChannels = {'Dev1/ai0','Dev1/ai1','Dev1/ai2','Dev1/ai3'};
Vmins = [0,0,0,0]; Vmaxs = [10,10,10,10];
taskh.AIs = DAQmxCreateAIVoltageChan(lib,AIphysicalChannels,Vmins,Vmaxs);


% configure AI sampling rate/clock
	% C function:
	% int32 DAQmxCfgSampClkTiming (TaskHandle taskHandle,const char source[],float64 rate,int32 activeEdge,int32 sampleMode,uInt64 sampsPerChanToAcquire);
source = ''; % empty means to use onboard clock
rate = 10000; % sampling rate in Hz
activeEdge = DAQmx_Val_Rising; % Rising
% activeEdge = DAQmx_Val_Falling; % Falling
sampleMode = DAQmx_Val_FiniteSamps; % Finite Samples
% sampleMode = DAQmx_Val_ContSamps; % Continuous Samples
% sampleMode = DAQmx_Val_HWTimedSinglePoint; % Hardware Timed Single Point
sampsPerChanToAcquire = 2;

[err,b] = calllib(lib,'DAQmxCfgSampClkTiming',taskh.AIs,...
	source,rate,activeEdge,sampleMode,sampsPerChanToAcquire);
DAQmxCheckError(lib,err);

[err,b] = calllib(lib,'DAQmxTaskControl',taskh.AIs,DAQmx_Val_Task_Verify);
DAQmxCheckError(lib,err);


% read AI channels
timeout = 1;
% fillMode =  DAQmx_Val_GroupByChannel; % Group by Channel
fillMode = DAQmx_Val_GroupByScanNumber; % Group by Scan Number
numchanAI = numel(AIphysicalChannels); % AI 0,1,2,3
numsample = 1;

AIs = DAQmxReadAnalogF64(lib,taskh.AIs,DAQmx_Val_Auto,timeout,fillMode,numchanAI,numsample)




%% clear all tasks

% loop to clear all taskhandles
tasknames = fieldnames(taskh);
numtasks = numel(tasknames);
for m = 1:numtasks
	[err] = calllib(lib,'DAQmxClearTask',taskh.(tasknames{m}));
	DAQmxCheckError(lib,err);
end


%% unload library
if libisloaded(lib) % checks if library is loaded
	unloadlibrary(lib)
end

