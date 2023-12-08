% SPDX-FileCopyrightText: 2005 Jens Roesner
%
% SPDX-License-Identifier: GPL-3.0-or-later

function messmatrix=NImess(synchron,trigger,numofchans,samprate,samptime)
% function messmatrix=NImess(synchron,trigger,numofchans,samprate,samptime)
% provides access of NI's NI-DAQmx driver from Matlab
% Analog Input (synchronized or not) with (especially) M-Series cards 
% Measures the first numofchans channels.

if ~libisloaded('myni')
    disp('Matlab: Load nicaiu.dll')
    funclist = loadlibrary('nicaiu.dll','nidaqmx.h','alias','myni');
    %if you do NOT have nicaiu.dll and nidaqmx.h
    %in your Matlab path, add full pathnames or copy the files.
    %libfunctions('myni','-full') % use this to show the... 
    %libfunctionsview('myni')     % included function
end
disp('Matlab: dll loaded')
disp('')

disp('NI: Define constants')
% Other constants must be searched in the NI installation directory
DAQmx_Val_Volts= 10348; % measure volts
DAQmx_Val_Rising = 10280; % Rising
DAQmx_Val_FiniteSamps = 10178; % Finite Samples

disp('NI: Create Tasks')
taskh1=uint32(1);
[a,b,taskh1] = calllib('myni','DAQmxCreateTask','master',taskh1)
% a will be the error code

if synchron==1
    taskh2=uint32(1);
    [a,b,taskh2] = calllib('myni','DAQmxCreateTask','slave1',taskh2);
    taskh3=uint32(1);
    [a,b,taskh3] = calllib('myni','DAQmxCreateTask','slave2',taskh3);
end

disp('NI: Create AI Channels')
taskchans1=['Dev1/ai0:' num2str(numofchans-1)];
[a,b,c,d] = calllib('myni','DAQmxCreateAIVoltageChan',uint32(taskh1),taskchans1,'',-1,-10,10,DAQmx_Val_Volts,'')
if synchron==1
    taskchans2=['Dev2/ai0:' num2str(numofchans-1)];
    taskchans3=['Dev3/ai0:' num2str(numofchans-1)];
    [a,b,c,d] = calllib('myni','DAQmxCreateAIVoltageChan',uint32(taskh2),taskchans2,'',-1,-10,10,DAQmx_Val_Volts,'');
    [a,b,c,d] = calllib('myni','DAQmxCreateAIVoltageChan',uint32(taskh3),taskchans3,'',-1,-10,10,DAQmx_Val_Volts,'');
end

if synchron==1
    [a,b]=calllib('myni','DAQmxSetRefClkSrc',taskh1,'/Dev1/10MHzRefclock');
    [a,b]=calllib('myni','DAQmxSetRefClkSrc',taskh2,'/Dev1/10MHzRefclock');
    [a,b]=calllib('myni','DAQmxSetRefClkSrc',taskh3,'/Dev1/10MHzRefclock');
    [a]=calllib('myni','DAQmxSetRefClkRate',taskh1,10000000);
    [a]=calllib('myni','DAQmxSetRefClkRate',taskh2,10000000);
    [a]=calllib('myni','DAQmxSetRefClkRate',taskh3,10000000);
end

nsample=samprate*samptime; % 

disp('NI: Config Sample Clock')
[a,b]=calllib('myni','DAQmxCfgSampClkTiming',taskh1,'',samprate,DAQmx_Val_Rising,...
     DAQmx_Val_FiniteSamps,nsample)
if synchron==1
   [a,b]=calllib('myni','DAQmxCfgSampClkTiming',taskh2,'',samprate,DAQmx_Val_Rising,...
        DAQmx_Val_FiniteSamps,nsample)
   [a,b]=calllib('myni','DAQmxCfgSampClkTiming',taskh3,'',samprate,DAQmx_Val_Rising,...
        DAQmx_Val_FiniteSamps,nsample)
end

disp('NI: Config Digital edge start trigger')
if trigger==1
    [a,b]=calllib('myni','DAQmxCfgDigEdgeStartTrig',taskh1,'/Dev1/PFI0',DAQmx_Val_Rising );
else
    [a]=calllib('myni','DAQmxDisableStartTrig',taskh1)
end
if synchron==1
    [a,b]=calllib('myni','DAQmxCfgDigEdgeStartTrig',taskh2,'/Dev1/ai/StartTrigger',DAQmx_Val_Rising )
    [a,b]=calllib('myni','DAQmxCfgDigEdgeStartTrig',taskh3,'/Dev1/ai/StartTrigger',DAQmx_Val_Rising )
end

disp('NI: Start task(s)')
if synchron==1
    [a]=calllib('myni','DAQmxStartTask',taskh3)
    [a]=calllib('myni','DAQmxStartTask',taskh2)
    [a]=calllib('myni','DAQmxStartTask',taskh1)
else
    [a]=calllib('myni','DAQmxStartTask',taskh1)
end

 
DAQmx_Val_GroupByScanNumber = 1;
readarray1=ones(numofchans,nsample);
readarray1_ptr=libpointer('doublePtr',readarray1);
if synchron==1
    readarray2=ones(numofchans,nsample);
    readarray3=ones(numofchans,nsample);
    readarray2_ptr=libpointer('doublePtr',readarray2);
    readarray3_ptr=libpointer('doublePtr',readarray3);
end
sampread=0;
sampread_ptr=libpointer('int32Ptr',sampread);
empty=[];
empty_ptr=libpointer('uint32Ptr',empty);
arraylength=nsample*numofchans; % more like "buffersize",
disp('NI: Reading Data!')
[a,readarray1,sampread,empty]=calllib('myni','DAQmxReadAnalogF64',taskh1,-1,-1,...
     DAQmx_Val_GroupByScanNumber,readarray1_ptr,arraylength,sampread_ptr,empty_ptr);
if synchron==1
    [a,readarray2,sampread,empty]=calllib('myni','DAQmxReadAnalogF64',taskh2,-1,-1,...
         DAQmx_Val_GroupByScanNumber,readarray2_ptr,arraylength,sampread_ptr,empty_ptr);
    [a,readarray3,sampread,empty]=calllib('myni','DAQmxReadAnalogF64',taskh3,-1,-1,...
         DAQmx_Val_GroupByScanNumber,readarray3_ptr,arraylength,sampread_ptr,empty_ptr);
end

disp('NI: Stop task')
[a] = calllib('myni','DAQmxStopTask',taskh1);
if synchron==1
    [a] = calllib('myni','DAQmxStopTask',taskh2);
    [a] = calllib('myni','DAQmxStopTask',taskh3);
end

disp('NI: Clear task(s)')
[a] = calllib('myni','DAQmxClearTask',taskh1);
if synchron==1
    [a] = calllib('myni','DAQmxClearTask',taskh2);
    [a] = calllib('myni','DAQmxClearTask',taskh3);
end

if synchron==1
    messmatrix=[readarray1' readarray2' readarray3'];
else
    messmatrix=[readarray1'];
end

disp('NImess finished')