function varargout = factorialGUI(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @factorialGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @factorialGUI_OutputFcn, ...
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

function factorialGUI_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


function varargout = factorialGUI_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


function number_Callback(hObject, eventdata, handles)


function number_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in factorial.
function factorial_Callback(hObject, eventdata, handles)

n = str2num(get(handles.number, 'string'));

f=1;
for i=1:n
    f=f*i
end

ff = num2str(f);
set(handles.fact, 'string', ff);
        
        
