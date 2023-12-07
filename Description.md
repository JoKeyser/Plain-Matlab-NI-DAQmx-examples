# How to use National Instruments M-Series cards with Matlab

_NOTE: This file is based on Jens Roesner's website text at <https://www.jensroesner.com/work/matlab/index.html>._

## 2005 legacy content

### Who is this for?

For all people wanting to use their M-Series cards (and/or NI-DAQmx drivers) with Matlab.

### Update August 1st, 2006

I was just made aware by Steven that [Matlab](http://www.mathworks.com/) now supports M-Series cards via the new [Data Acquisition Toolbox](http://www.mathworks.com/products/daq/).
This is an easy and very refined way of accessing the new capabilities of the M-Series and can even be used to access the older E-series cards through the newer NI-DAQmx.

### Update April 28th, 2010

I have just received the following info:

    I'm not sure why, but your code seemed to work fine for me until I tried any of the create channel commands. 
    They all returned a `-200088` error. 
    I finally figured out a very slight tweak to your code  that worked for me - not sure why the original didn't work.

    I had to pass the initial task handle as empty - `uint32([])`.
    This is example code that worked for me:

    ```matlab
    taskhDO0 = [];
    [err,b,taskhDO0] = calllib('myni','DAQmxCreateTask','DO0',uint32(taskhDO0))
    [err,b,c,d] = calllib('myni','DAQmxCreateDOChan',taskhDO0,'Dev1/port0/line0','',DAQmx_Val_ChanPerLine)
    ```

    I am using Matlab 7.8.0 (R2009a) on XP. 

As I have no way of testing this any more, I have not changed the source code below.
Also, be sure to check the [NI forums](http://forums.ni.com/ni/board/message?board.id=250&thread.id=10165) `:)`.

### Content

Basic introduction into importing NI-DAQmx into Matlab.
Simple AI (analog input), advanced AI (synchronous) and simple AO solutions are displayed with Matlab source code.

### Motivation

There's probably little disagreement that the new M-Series cards are superior to the old E-Series cards.
Matlab did (in February 2005) not support either series directly and the Data Acquisition Toolbox (DAQ) was only compatible with the E-series cards.
This has changed now (August 2006).

By buying the [Matlab Data Acquisition Toolbox](http://www.mathworks.com/products/daq/) you can access both E-Series and M-Series cards (and many cards by other manufacturers) seamlessly from within Matlab.
For a full list of supported hardware, see the Matlab list of [Supported Hardware Devices and Vendors](http://www.mathworks.com/products/supportedio.html?prodCode=DA) in DAQ.
Furthermore, using the Adaptor Kit that is supplied with the
Matlab DAQ Toolbox might make it possible to even connect to your otherwise unsupported card.
I'll leave this page online because it still is a feasible way to access functions of the M-Series cards and furthermore illustrates some very basic steps on how to use Matlab's powerful function of importing dll files.

### First step

Start by loading the NI dll: `funclist = loadlibrary('nicaiu.dll', 'nidaqmx.h', 'alias', 'myni')`

(You can choose any alias as long as it is a legal variable name.)

If your version of Matlab is too old to provide the `loadlibrary` function directly, download it here: <http://www.codeproject.com/dll/MatlabGenericDll.asp?df=100&forumid=26247&exp=0&select=972623>.
After importing, you see the list of available functions.
You can also display them by `libfunctionsview(\'myni\')`.
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

### The following function enables triggered and untriggered, synchronized or unsynchronized AI

```matlab
    function messmatrix=NImess(synchron,trigger,numofchans,samprate,samptime)
    % function messmatrix=NImess(synchron,trigger,numofchans,samprate,samptime)
    % 2005, written by jens.roesner -at- gmx.de
    % version 1.0 as of 20.02.2005
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
```

### Simple AO

```matlab
    function AOtaskhandle=NIsetAO(tasknum,outputchan,voltage)
    % function messmatrix=NIsetAO(tasknum,outputchan,voltage)
    % tasknum=0 for a new task or task-handle for existing chan
    % only single-channel DC out
    % 2005, written by jens.roesner -at- gmx.de
    % version 1.0 as of 20.02.2005
    % provides access of NI's NI-DAQmx driver from Matlab
    % Analog Output with (especially) M-Series cards

    if ~libisloaded('myni')
        disp('Matlab: Load nicaiu.dll')
        funclist = loadlibrary('nicaiu.dll','nidaqmx.h','alias','myni');
        %funclist = libfunctions('myni','-full')
        %libfunctionsview('myni')
    end
    disp('Matlab: dll loaded')
    disp('')

    disp('NI: Define constants')
    DAQmx_Val_Volts= 10348; % measure volts
    DAQmx_Val_Rising = 10280; % Rising
    DAQmx_Val_FiniteSamps = 10178; % Finite Samples

    if tasknum==0
        disp('NI: Create AO Task')
        if outputchan==0
            taskhAO0=uint32(1);
            [a,b,AOtaskhandle] = calllib('myni','DAQmxCreateTask','AO_0',taskhAO0)
        else
            taskhAO1=uint32(1);
            [a,b,AOtaskhandle] = calllib('myni','DAQmxCreateTask','AO_1',taskhAO1)
        end

        disp('NI: Create AO Channel')
        taskchans=['Dev1/ao' num2str(outputchan)];
        [a,b,c,d] = calllib('myni','DAQmxCreateAOVoltageChan',uint32(AOtaskhandle),taskchans,'',-10,10,DAQmx_Val_Volts,'')
    else
        AOtaskhandle=tasknum
    end

    disp('NI: Set&Start task')
    [a,b]=calllib('myni','DAQmxWriteAnalogScalarF64',AOtaskhandle,1,0,voltage,[])
```

### Wave Output AO

```matlab
    function AOtaskhandle=NIsetAOwave2(tasknum,spannungsvektor1,spannungsvektor2,samprate)
    % function AOtaskhandle=NIsetAOwave2(tasknum,spannungsvektor1,spannungsvektor2,samprate)
    % tasknum=0 for new task, or task-handle for existing
    % spannungsvektor is german for "vector of voltages"

    if length(spannungsvektor1)~=length(spannungsvektor2)
        disp('Voltage vectors have to be of the same size! Truncating!')
        beep
        beep
        beep
        if length(spannungsvektor1)>length(spannungsvektor2)
            spannungsvektor1=spannungsvektor1(1:length(spannungsvektor2));
        else
            spannungsvektor2=spannungsvektor2(1:length(spannungsvektor1));
        end
    end

    if ~libisloaded('myni')
        disp('Matlab: Load nicaiu.dll')
        funclist = loadlibrary('nicaiu.dll','nidaqmx.h','alias','myni');
        %funclist = libfunctions('myni','-full')
        %libfunctionsview('myni')
    end
    disp('Matlab: dll loaded')
    disp('')

    disp('NI: Define constants')
    DAQmx_Val_Volts= 10348; % measure volts
    DAQmx_Val_Rising = 10280; % Rising
    DAQmx_Val_FiniteSamps = 10178; % Finite Samples
    DAQmx_Val_CountUp =10128; % Count Up
    DAQmx_Val_CountDown =10124; % Count Down
    DAQmx_Val_GroupByChannel = 0; % Group per channel

    if tasknum==0
        disp('NI: Create AO Task')
        taskhAO1=uint32(1);
        [a,b,AOtaskhandle] = calllib('myni','DAQmxCreateTask','AO_1',taskhAO1)
        disp('NI: Create AO Channel')
        taskchans=['Dev1/ao0:1'];
        [a,b,c,d] = calllib('myni','DAQmxCreateAOVoltageChan',uint32(AOtaskhandle),taskchans,'',-10,10,DAQmx_Val_Volts,'')
    else
        AOtaskhandle=tasknum
    end

    disp('NI: Config Sample Clock')
    %int32 DAQmxCfgSampClkTiming (TaskHandle taskHandle, const char source[],
    %float64 rate, int32 activeEdge, int32 sampleMode, uInt64
    %sampsPerChanToAcquire);
    [a,b]=calllib('myni','DAQmxCfgSampClkTiming',uint32(AOtaskhandle),'',samprate,DAQmx_Val_Rising,...
        DAQmx_Val_FiniteSamps,length(spannungsvektor1))


    disp('NI: Set AO task')
    %[a,b]=calllib('myni','DAQmxWriteAnalogScalarF64',AOtaskhandle,1,0,spannung,[])
    %DAQmxWriteAnalogF64 (TaskHandle taskHandle, int32 numSampsPerChan, bool32 autoStart, float64 timeout, bool32 dataLayout, float64 writeArray[], int32 *sampsPerChanWritten, bool32 *reserved);
    %[int32, doublePtr, int32Ptr, uint32Ptr] DAQmxWriteAnalogF64(uint32, int32, uint32, double, uint32, doublePtr, int32Ptr, uint32Ptr)
    empty_ptr=libpointer('doublePtr',[]);
    zero_ptr=libpointer('int32Ptr',0);
    [a,b,c]=calllib('myni','DAQmxWriteAnalogF64',AOtaskhandle, uint32(length(spannungsvektor1)), 0, 10, DAQmx_Val_GroupByChannel, [spannungsvektor1, spannungsvektor2], zero_ptr, []);
    disp(['a= ' num2str(a) ' c= ' num2str(c)])

    disp('NI: Start AO task')
    [a]=calllib('myni','DAQmxStartTask',AOtaskhandle)
    if a==0
        disp('NI: AO wave started')
    else
        disp('NI: AO wave failed.')
    end

    disp(' ')
    % disp('NI: Stop task')
    % [a] = calllib('myni','DAQmxStopTask',AOtaskhandle);
    %
```

### Download

- [NI_2\_Matlab.zip](https://www.jensroesner.com/work/matlab/NI_2_Matlab.zip) (functions described above)
- [NIconstants.zip](https://www.jensroesner.com/work/matlab/NIconstants.zip) (NI constants and error codes)
