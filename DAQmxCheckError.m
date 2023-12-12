% SPDX-FileCopyrightText: 2010 Nathan Tomlin, 2023 Johannes Keyser
%
% SPDX-License-Identifier: BSD-2-Clause

function DAQmxCheckError(lib, err)
% function DAQmxCheckError(lib, err)
% 
% Read error code:
%   zero means no error - does nothing
%   nonzero - find out error string and generate error
% 
% INPUTS
%   lib = .dll or alias (ex. 'myni')
%   err = DAQmx error

if err ~= 0 
    % find out how long the error string is
    [numerr, b] = calllib(lib, 'DAQmxGetErrorString', err, '', 0);

    % get error string    
    errstr = char(1:numerr);  % have to pass dummy string of correct length
    [err, errstr] = calllib(lib, 'DAQmxGetErrorString', err, errstr, numerr);

    % matlab error
    error(['DAQmx error - ', errstr])
end

