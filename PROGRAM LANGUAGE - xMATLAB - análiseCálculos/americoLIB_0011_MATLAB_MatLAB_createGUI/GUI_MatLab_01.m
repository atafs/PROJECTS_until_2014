function varargout = GUI_MatLab_01(varargin)
% GUI_MATLAB_01 MATLAB code for GUI_MatLab_01.fig
%      GUI_MATLAB_01, by itself, creates a new GUI_MATLAB_01 or raises the existing
%      singleton*.
%
%      H = GUI_MATLAB_01 returns the handle to a new GUI_MATLAB_01 or the handle to
%      the existing singleton*.
%
%      GUI_MATLAB_01('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_MATLAB_01.M with the given input arguments.
%
%      GUI_MATLAB_01('Property','Value',...) creates a new GUI_MATLAB_01 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_MatLab_01_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_MatLab_01_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_MatLab_01

% Last Modified by GUIDE v2.5 16-Jul-2014 01:01:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_MatLab_01_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_MatLab_01_OutputFcn, ...
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


% --- Executes just before GUI_MatLab_01 is made visible.
function GUI_MatLab_01_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_MatLab_01 (see VARARGIN)

% Choose default command line output for GUI_MatLab_01
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_MatLab_01 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_MatLab_01_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a = handles.a;

b = get(hObject,'Value');

c = imadd(a,b);

axes(handles.axes2);
imshow(c);

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[filename, pathname] = uigetfile('*.m', 'Pick a MATLAB code file');
    if isequal(filename,0) || isequal(pathname,0)
       disp('User pressed cancel')
    else
       a = imread(filename );
       axes (handle.axes1);
       imshow(a);
       handles.a=a;
    end
    % Update handles structure
guidata(hObject, handles);









