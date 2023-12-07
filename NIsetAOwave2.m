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