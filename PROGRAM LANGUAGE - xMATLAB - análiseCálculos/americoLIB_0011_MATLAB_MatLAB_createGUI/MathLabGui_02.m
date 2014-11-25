function varargout = MathLabGui_02(varargin)
% MATHLABGUI_02 MATLAB code for MathLabGui_02.fig
%      MATHLABGUI_02, by itself, creates a new MATHLABGUI_02 or raises the existing
%      singleton*.
%
%      H = MATHLABGUI_02 returns the handle to a new MATHLABGUI_02 or the handle to
%      the existing singleton*.
%
%      MATHLABGUI_02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATHLABGUI_02.M with the given input arguments.
%
%      MATHLABGUI_02('Property','Value',...) creates a new MATHLABGUI_02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MathLabGui_02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MathLabGui_02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MathLabGui_02

% Last Modified by GUIDE v2.5 16-Jul-2014 01:39:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MathLabGui_02_OpeningFcn, ...
                   'gui_OutputFcn',  @MathLabGui_02_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before MathLabGui_02 is made visible.
function MathLabGui_02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MathLabGui_02 (see VARARGIN)
%%
% 

% 

% Choose default command line output for MathLabGui_02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MathLabGui_02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MathLabGui_02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
imshow('matlab.png')
