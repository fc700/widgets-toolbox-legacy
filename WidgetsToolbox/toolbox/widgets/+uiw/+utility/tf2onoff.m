function str = tf2onoff(tf)
% tf2onoff - Utility to convert logical true/false to char 'on'/'off'
% 
% This function converts a single true/false flag to an on/off string
%
% Syntax:
%           str = uiw.utility.tf2onoff(tf)
%
% Inputs:
%           tf - logical scalar or vector
%
% Outputs:
%           str - 'on' or 'off'
%
% Examples:
%           none
%
% Notes: none
%

%   Copyright 2016-2020 The MathWorks Inc.
%
% 
%   
%   
%   
% ---------------------------------------------------------------------


if isscalar(tf)
    if tf
        str = 'on';
    else
        str = 'off';
    end
else
    str = repmat({'off'},size(tf));
    str(tf) = {'on'};
end