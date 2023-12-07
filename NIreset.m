disp('NI: reset devices')
[a]=calllib('myni','DAQmxResetDevice','Dev1');
[a]=calllib('myni','DAQmxResetDevice','Dev2');
[a]=calllib('myni','DAQmxResetDevice','Dev3');

