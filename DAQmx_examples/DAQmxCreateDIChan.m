function taskh = DAQmxCreateDIChan(lib,lines,lineGrouping)
% function taskh = DAQmxCreateDIChan(lib,lines,lineGrouping)
% 
% this function creates a task and adds digital output line(s) to the task
% 
% inputs:
%	lib - .dll or alias (ex. 'myni')
%	lines - line(s) to add to task
%		1 line example: 'Dev1/port0/line0'
%		2 lines example: {'Dev1/port0/line0','Dev1/port0/line1'}
%			passing as .../line0-1 probably also works, but I didn't test
%	lineGrouping - either DAQmx_Val_ChanPerLine or DAQmx_Val_ChanForAllLines
% 
% 
% C functions used:
%	int32 DAQmxCreateTask (const char taskName[],TaskHandle *taskHandle);
%	int32 DAQmxCreateDIChan (TaskHandle taskHandle,const char lines[],const char nameToAssignToLines[],int32 lineGrouping);
%	int32 DAQmxTaskControl (TaskHandle taskHandle,int32 action);
% 
% written by Nathan Tomlin (nathan.a.tomlin@gmail.com)
% v0 - 1004


% create task
taskh = [];
name_task = '';	% recommended to avoid problems
[err,b,taskh] = calllib(lib,'DAQmxCreateTask',name_task,uint32(taskh));
DAQmxCheckError(lib,err);

% 	% check whether done
% 	[err,b,istaskdone] = calllib(lib,'DAQmxIsTaskDone',(taskh),0);
%  	DAQmxCheckError(lib,err);

% create DI channel(s) and add to task
numchan = numel(lines);
name_line = '';	% recommended to avoid problems
if ~iscell(lines)	% just 1 channel
	[err,b,c,d] = calllib(lib,'DAQmxCreateDIChan',taskh,lines,name_line,lineGrouping);
	DAQmxCheckError(lib,err);
else % more than 1 channel to add to task
	for m = 1:numel(lines)	% loop to add channels
		[err,b,c,d] = calllib(lib,'DAQmxCreateDIChan',taskh,lines{m},name_line,lineGrouping);
		DAQmxCheckError(lib,err);
	end
end

% verify everything OK
DAQmx_Val_Task_Verify =2; % Verify
[err,b] = calllib(lib,'DAQmxTaskControl',taskh,DAQmx_Val_Task_Verify);
DAQmxCheckError(lib,err);
