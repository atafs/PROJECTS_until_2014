function varargout = ELECTRO_ElectricField(varargin)


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ELECTRO_ElectricField_OpeningFcn, ...
                   'gui_OutputFcn',  @ELECTRO_ElectricField_OutputFcn, ...
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


% --- Executes just before ELECTRO_ElectricField is made visible.
function ELECTRO_ElectricField_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ELECTRO_ElectricField (see VARARGIN)

% Choose default command line output for ELECTRO_ElectricField
handles.output = hObject;

% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('image1.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');

% Update handles structure
guidata(hObject, handles);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ELECTRO_ElectricField wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ELECTRO_ElectricField_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function variable1_Callback(hObject, eventdata, handles)
% hObject    handle to variable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of variable1 as text
%        str2double(get(hObject,'String')) returns contents of variable1 as a double


% --- Executes during object creation, after setting all properties.
function variable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to variable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function variable2_Callback(hObject, eventdata, handles)
% hObject    handle to variable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of variable2 as text
%        str2double(get(hObject,'String')) returns contents of variable2 as a double


% --- Executes during object creation, after setting all properties.
function variable2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to variable2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
q1 = str2num(get(handles.variable1, 'string'));
r = str2num(get(handles.variable2, 'string'));

%constants
k = 9.e9;

%formula
f = k * ((q1)/(r^2));
ff = num2str(f);
set(handles.result, 'string', ff);


% --- Executes during object creation, after setting all properties.
function axe1_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('imageElectricField.jpg')
