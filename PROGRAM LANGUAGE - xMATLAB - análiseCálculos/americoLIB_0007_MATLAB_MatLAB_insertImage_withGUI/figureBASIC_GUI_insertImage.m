function varargout = figureBASIC_GUI_insertImage(varargin)
% FIGUREBASIC_GUI_INSERTIMAGE MATLAB code for figureBASIC_GUI_insertImage.fig
%      FIGUREBASIC_GUI_INSERTIMAGE, by itself, creates a new FIGUREBASIC_GUI_INSERTIMAGE or raises the existing
%      singleton*.
%
%      H = FIGUREBASIC_GUI_INSERTIMAGE returns the handle to a new FIGUREBASIC_GUI_INSERTIMAGE or the handle to
%      the existing singleton*.
%
%      FIGUREBASIC_GUI_INSERTIMAGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIGUREBASIC_GUI_INSERTIMAGE.M with the given input arguments.
%
%      FIGUREBASIC_GUI_INSERTIMAGE('Property','Value',...) creates a new FIGUREBASIC_GUI_INSERTIMAGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before figureBASIC_GUI_insertImage_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to figureBASIC_GUI_insertImage_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help figureBASIC_GUI_insertImage

% Last Modified by GUIDE v2.5 16-Jul-2014 17:03:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @figureBASIC_GUI_insertImage_OpeningFcn, ...
                   'gui_OutputFcn',  @figureBASIC_GUI_insertImage_OutputFcn, ...
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


% --- Executes just before figureBASIC_GUI_insertImage is made visible.
function figureBASIC_GUI_insertImage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to figureBASIC_GUI_insertImage (see VARARGIN)

% Choose default command line output for figureBASIC_GUI_insertImage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes figureBASIC_GUI_insertImage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = figureBASIC_GUI_insertImage_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

%images stored
%C:\Program Files\MATLAB\R2013a\toolbox\images\imdemos

axes(hObject)
imshow('cameraman.tif')


