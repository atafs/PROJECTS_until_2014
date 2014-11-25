function varargout = TELECOM_TS_ProcessoAleatorioGausseano(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TELECOM_TS_ProcessoAleatorioGausseano_OpeningFcn, ...
                   'gui_OutputFcn',  @TELECOM_TS_ProcessoAleatorioGausseano_OutputFcn, ...
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


% --- Executes just before TELECOM_TS_ProcessoAleatorioGausseano is made visible.
function TELECOM_TS_ProcessoAleatorioGausseano_OpeningFcn(hObject, eventdata, handles, varargin)

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

% UIWAIT makes TELECOM_TS_ProcessoAleatorioGausseano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TELECOM_TS_ProcessoAleatorioGausseano_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function sigma_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function sigma_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mX_Callback(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function mX_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ganho_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function ganho_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)


% --- Executes on button press in graphic.

function graphic_Callback(hObject, eventdata, handles)
%contants
sigma1 = str2num(get(handles.sigma, 'string'));
mX1 = str2num(get(handles.mX, 'string'));
ganho1 = str2num(get(handles.ganho, 'string'));

%variable
syms x;
x = linspace(-15,15);

%formula
p = (ganho1 * (1)/(sqrt(2*pi*sigma1) ) * exp( -((x - mX1).^2)/(2*sigma1) ) );

%graphic
axes(handles.axes7);
plot(x,p,'r*');


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image2.jpg')


% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image4.jpg')




% --- Executes during object creation, after setting all properties.
function axes4_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image6.jpg')




% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
axes(hObject)
imshow('image3.jpg')


% --- Executes during object creation, after setting all properties.
function axes7_CreateFcn(hObject, eventdata, handles)



% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
%contants
sigma1 = 1;
mX1 = 0;

%variable
syms x;
x = linspace(-15,15);

%formula
p = ( (1)/(sqrt(2*pi*sigma1) ) * exp( -((x - mX1).^2)/(2*sigma1) ) );

%graphic
xlabel('x')
ylabel('y')
title('Processo Aleatorio Gausseano')
plot(x,p,'b*')
