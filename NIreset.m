% SPDX-FileCopyrightText: 2005 Jens Roesner, 2023 Johannes Keyser
%
% SPDX-License-Identifier: GPL-3.0-or-later

disp('NI: reset devices')
[a] = calllib('myni', 'DAQmxResetDevice', 'Dev1');
[a] = calllib('myni', 'DAQmxResetDevice', 'Dev2');
[a] = calllib('myni', 'DAQmxResetDevice', 'Dev3');
