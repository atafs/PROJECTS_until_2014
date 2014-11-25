function varargout = TELECOM_ProcessoGausseano(varargin)
% TELECOM_PROCESSOGAUSSEANO MATLAB code for TELECOM_ProcessoGausseano.fig
%      TELECOM_PROCESSOGAUSSEANO, by itself, creates a new TELECOM_PROCESSOGAUSSEANO or raises the existing
%      singleton*.
%
%      H = TELECOM_PROCESSOGAUSSEANO returns the handle to a new TELECOM_PROCESSOGAUSSEANO or the handle to
%      the existing singleton*.
%
%      TELECOM_PROCESSOGAUSSEANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TELECOM_PROCESSOGAUSSEANO.M with the given input arguments.
%
%      TELECOM_PROCESSOGAUSSEANO('Property','Value',...) creates a new TELECOM_PROCESSOGAUSSEANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TELECOM_ProcessoGausseano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TELECOM_ProcessoGausseano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TELECOM_ProcessoGausseano

% Last Modified by GUIDE v2.5 18-Jul-2014 07:39:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TELECOM_ProcessoGausseano_OpeningFcn, ...
                   'gui_OutputFcn',  @TELECOM_ProcessoGausseano_OutputFcn, ...
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


% --- Executes just before TELECOM_ProcessoGausseano is made visible.
function TELECOM_ProcessoGausseano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TELECOM_ProcessoGausseano (see VARARGIN)

% Choose default command line output for TELECOM_ProcessoGausseano
handles.output = hObject;

% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('image4.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');

% Update handles structure
guidata(hObject, handles);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TELECOM_ProcessoGausseano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TELECOM_ProcessoGausseano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
%contants
sigma1 = str2num(get(handles.edit1, 'string'));
mX1 = str2num(get(handles.edit2, 'string'));
ganho1 = str2num(get(handles.edit3, 'string'));

%variable
syms x;
x = linspace(-15,15);

%formula
p = (ganho1 * (1)/(sqrt(2*pi*sigma1) ) * exp( -((x - mX1).^2)/(2*sigma1) ) );

%pushbutton1
axes(handles.axes3);
plot(x,p,'r*');

% --- Executes during object creation, after setting all properties.
function axes6_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image3.jpg')


% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
%contants
sigma1 = 1;
mX1 = 0;

%variable
syms x;
x = linspace(-15,15);

%formula
p = ( (1)/(sqrt(2*pi*sigma1) ) * exp( -((x - mX1).^2)/(2*sigma1) ) );

%pushbutton1
xlabel('x')
ylabel('y')
title('Processo Aleatorio Gausseano')
plot(x,p,'b*')

% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image3.jpg')


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image2.jpg')
