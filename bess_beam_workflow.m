function varargout = bess_beam_workflow(varargin)
% BESS_BEAM_WORKFLOW MATLAB code for bess_beam_workflow.fig
%      BESS_BEAM_WORKFLOW, by itself, creates a new BESS_BEAM_WORKFLOW or raises the existing
%      singleton*.
%
%      H = BESS_BEAM_WORKFLOW returns the handle to a new BESS_BEAM_WORKFLOW or the handle to
%      the existing singleton*.
%
%      BESS_BEAM_WORKFLOW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BESS_BEAM_WORKFLOW.M with the given input arguments.
%
%      BESS_BEAM_WORKFLOW('Property','Value',...) creates a new BESS_BEAM_WORKFLOW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bess_beam_workflow_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bess_beam_workflow_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bess_beam_workflow

% Last Modified by GUIDE v2.5 28-Oct-2022 14:12:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bess_beam_workflow_OpeningFcn, ...
                   'gui_OutputFcn',  @bess_beam_workflow_OutputFcn, ...
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


% --- Executes just before bess_beam_workflow is made visible.
function bess_beam_workflow_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bess_beam_workflow (see VARARGIN)

% Choose default command line output for bess_beam_workflow
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes bess_beam_workflow wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bess_beam_workflow_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function Ch1slider_Callback(hObject, eventdata, handles)
% hObject    handle to Ch1slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Ch1frame = get(handles.Ch1slider,'value');
set(handles.Ch1frame,'string',round(Ch1frame))
gui_display(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function Ch1slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch1slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Ch2slider_Callback(hObject, eventdata, handles)
% hObject    handle to Ch2slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

Ch2frame = get(handles.Ch2slider,'value');
set(handles.Ch2frame,'string',round(Ch2frame))
gui_display(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function Ch2slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch2slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function Ch1frame_Callback(hObject, eventdata, handles)
% hObject    handle to Ch1frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ch1frame as text
%        str2double(get(hObject,'String')) returns contents of Ch1frame as a double

global bess_beam_data
Ch1frame = str2num(get(handles.Ch1frame,'string'));
if Ch1frame >= 1 && Ch1frame <= size(bess_beam_data.ch1_data,3)
    set(handles.Ch1slider,'value',Ch1frame)
    gui_display(hObject, eventdata, handles)
else
    Ch1frame = get(handles.Ch1slider,'value');
    set(handles.Ch1frame,'string',num2str(Ch1frame))
end




% --- Executes during object creation, after setting all properties.
function Ch1frame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch1frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ch2frame_Callback(hObject, eventdata, handles)
% hObject    handle to Ch2frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ch2frame as text
%        str2double(get(hObject,'String')) returns contents of Ch2frame as a double

global bess_beam_data
Ch2frame = str2num(get(handles.Ch2frame,'string'));
if Ch2frame >= 1 && Ch2frame <= size(bess_beam_data.ch2_data,3)
    set(handles.Ch2slider,'value',Ch2frame)
    gui_display(hObject, eventdata, handles)
else
    Ch2frame = get(handles.Ch2slider,'value');
    set(handles.Ch2frame,'string',num2str(Ch2frame))
end


% --- Executes during object creation, after setting all properties.
function Ch2frame_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch2frame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ch1min_Callback(hObject, eventdata, handles)
% hObject    handle to Ch1min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ch1min as text
%        str2double(get(hObject,'String')) returns contents of Ch1min as a double
Ch1_min = str2num(get(handles.Ch1min, 'String'));
Ch1_max = str2num(get(handles.Ch2min, 'String'));
if Ch1_max <= Ch1_min
    
else
    gui_display(hObject, eventdata, handles)
end

% --- Executes during object creation, after setting all properties.
function Ch1min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch1min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ch1max_Callback(hObject, eventdata, handles)
% hObject    handle to Ch1max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ch1max as text
%        str2double(get(hObject,'String')) returns contents of Ch1max as a double
gui_display(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Ch1max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch1max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ch2min_Callback(hObject, eventdata, handles)
% hObject    handle to Ch2min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ch2min as text
%        str2double(get(hObject,'String')) returns contents of Ch2min as a double
gui_display(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Ch2min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch2min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ch2max_Callback(hObject, eventdata, handles)
% hObject    handle to Ch2max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ch2max as text
%        str2double(get(hObject,'String')) returns contents of Ch2max as a double
gui_display(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function Ch2max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ch2max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_loaddata_Callback(hObject, eventdata, handles)
% hObject    handle to menu_loaddata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global bess_beam_data
[filename,pathname] = uigetfile({'*.tiff;*.tif'},'Load bessel beam data');
[~,~,ext] = fileparts(filename);

if  strcmp(ext,'.tiff') || strcmp(ext,'.tif')
    prompt = {'Enter number of channels: 2 or 4'};
    dlgtitle = 'Numebr of channels in the collected data';
    dims = [1 50];
    definput = {'2'};
    answer = inputdlg(prompt,dlgtitle,dims,definput);
    n_channels = str2num(answer{1});
    if n_channels == 2 || n_channels == 4
        h = waitbar(0,'Please wait... loading the data');
        info = imfinfo([pathname filename]);
        n_frames = length(info);
        for u = 1:n_frames
            waitbar(u/n_frames,h,'Please wait... loading the data')
            if u == 1
                temp = imread([pathname filename],1);
                data = zeros([size(temp) n_frames]);
                data(:,:,u) = temp;
            else
                data(:,:,u) = imread([pathname filename],u);
            end
        end
        close(h)
    end
    prompt = "What is the Frequecy of the acquistion?";
    answer = inputdlg(prompt,'Acqisition Frequency', [1 40], {'9.45'});
    Freq = str2double(answer{1});
    ch1_size = size(data,3)/2;
    bess_beam_data.Freq = Freq;
    bess_beam_data.timg = (0:ch1_size-1)/Freq;
    [filename,pathname] = uigetfile('*.mat','Load trigger data');
    load([pathname filename],'analogInput');
    bess_beam_data.analogInput = analogInput;
    if n_channels == 2
        bess_beam_data.ch1_data = data(:,:,1:2:end);
        bess_beam_data.ch2_data = data(:,:,2:2:end);
%         ch1_size = size(data,3)/2;
%         bess_beam_data.ch1_data = data(:,:,1:ch1_size);
%         bess_beam_data.ch2_data = data(:,:,ch1_size+1:end);
    elseif n_channels == 4
        bess_beam_data.ch1_data = data(:,:,1:4:end);
        bess_beam_data.ch2_data = data(:,:,2:4:end);
        bess_beam_data.ch3_data = data(:,:,3:4:end);
        bess_beam_data.ch4_data = data(:,:,4:4:end);
    end
    
    set(handles.Ch1slider,'value',1);
    set(handles.Ch1slider,'min',1);
    set(handles.Ch1slider,'max',size(bess_beam_data.ch1_data,3));
    set(handles.Ch1slider,'sliderstep',[1/(size(bess_beam_data.ch1_data,3)-1) 0.1]);

    set(handles.Ch2slider,'value',1);
    set(handles.Ch2slider,'min',1);
    set(handles.Ch2slider,'max',size(bess_beam_data.ch2_data,3));
    set(handles.Ch2slider,'sliderstep',[1/(size(bess_beam_data.ch2_data,3)-1) 0.1]);
    
    Ch1_min = min(bess_beam_data.ch1_data(:));
    Ch1_max = max(bess_beam_data.ch1_data(:));
    bess_beam_data.Ch1_min= Ch1_min;
    bess_beam_data.Ch1_max= Ch1_max;
    set(handles.Ch1min,'string', num2str(Ch1_min));
    set(handles.Ch1max,'string', num2str(Ch1_max));
    
    Ch2_min = min(bess_beam_data.ch2_data(:));
    Ch2_max = max(bess_beam_data.ch2_data(:));
    bess_beam_data.Ch2_min= Ch2_min;
    bess_beam_data.Ch2_max= Ch2_max;
    set(handles.Ch2min,'string', num2str(Ch2_min));
    set(handles.Ch2max,'string', num2str(Ch2_max));
end

gui_display(hObject, eventdata, handles)

function gui_display(hObject, eventdata, handles)


global bess_beam_data

Ch1frame = str2num(get(handles.Ch1frame,'string'));
Ch2frame = str2num(get(handles.Ch2frame,'string'));
Ch1min = str2num(get(handles.Ch1min,'string'));
Ch1max = str2num(get(handles.Ch1max,'string'));
Ch2min = str2num(get(handles.Ch2min,'string'));
Ch2max = str2num(get(handles.Ch2max,'string'));

if get(handles.checkbox_motioncorrecteddata,'Value')
    img1 = bess_beam_data.ch1_data_mc(:,:,Ch1frame);
    img2 = bess_beam_data.ch2_data_mc(:,:,Ch2frame);
else
    img1 = bess_beam_data.ch1_data(:,:,Ch1frame);
    img2 = bess_beam_data.ch2_data(:,:,Ch2frame);
end

if get(handles.checkbox_showvesselseg,'Value')
    img1 = img1.*(1-bess_beam_data.vessel_seg);
end

axes(handles.Ch1axes)
imagesc(img1,[Ch1min Ch1max]);
colormap('gray')
axis image
colors = {'r','g','b','c','m','y','w'};
hold on
if isfield(bess_beam_data,'ch1_ROIs')
    for u = 1:length(bess_beam_data.ch1_ROIs)
        color_idx = min(u,length(colors));
        h = plot(bess_beam_data.ch1_ROIs{u}.Xi,bess_beam_data.ch1_ROIs{u}.Yi,'color','k','LineWidth',2,'color',colors{color_idx});
        set(h,'ButtonDownFcn', sprintf('delete_ch1_roi(%d)',u) );
    end
end
hold off
axes(handles.Ch2axes)
imagesc(img2,[Ch2min Ch2max]);
colormap('gray')
axis image
hold on
if isfield(bess_beam_data,'ch2_ROIs')
    for u = 1:length(bess_beam_data.ch2_ROIs)
        color_idx = min(u,length(colors));
        h = plot(bess_beam_data.ch2_ROIs{u}.Xi,bess_beam_data.ch2_ROIs{u}.Yi,'color','k','LineWidth',2,'color',colors{color_idx});
        set(h,'ButtonDownFcn', sprintf('delete_ch2_roi(%d)',u) );
    end
end
hold off
bess_beam_data.hObject = hObject;
bess_beam_data.eventdata = eventdata;
bess_beam_data.handles = handles;


% --------------------------------------------------------------------
function menu_saveprocesseddata_Callback(hObject, eventdata, handles)
% hObject    handle to menu_saveprocesseddata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu_loadprocesseddata_Callback(hObject, eventdata, handles)
% hObject    handle to menu_loadprocesseddata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function tools_applymotioncorrection_Callback(hObject, eventdata, handles)
% hObject    handle to tools_applymotioncorrection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global bess_beam_data

ch2_avg = mean(bess_beam_data.ch2_data,3);
[optimizer, metric] = imregconfig('monomodal');
bess_beam_data.ch2_data_mc = zeros(size(bess_beam_data.ch2_data));
bess_beam_data.ch1_data_mc = zeros(size(bess_beam_data.ch1_data));
h = waitbar(0,'Please wait... applying motion correction');
n_frames = size(bess_beam_data.ch2_data,3);
for u = 1:n_frames
    waitbar(u/n_frames,h,'Please wait... applying motion correction')
    tform = imregtform(bess_beam_data.ch2_data(:,:,u), ch2_avg, 'translation', optimizer, metric);
    bess_beam_data.ch2_data_mc(:,:,u) = imwarp(bess_beam_data.ch2_data(:,:,u),tform,'OutputView',imref2d(size(ch2_avg)));
    bess_beam_data.ch1_data_mc(:,:,u) = imwarp(bess_beam_data.ch1_data(:,:,u),tform,'OutputView',imref2d(size(ch2_avg)));
end
close(h)
set(handles.checkbox_motioncorrecteddata,'Enable','on')



% --- Executes on button press in checkbox_motioncorrecteddata.
function checkbox_motioncorrecteddata_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_motioncorrecteddata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_motioncorrecteddata
gui_display(hObject, eventdata, handles)


% --------------------------------------------------------------------
function tools_segmentvessels_Callback(hObject, eventdata, handles)
% hObject    handle to tools_segmentvessels (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


global bess_beam_data

if get(handles.checkbox_motioncorrecteddata,'Value')
    ch2_avg = mean(bess_beam_data.ch2_data_mc,3);
else
    ch2_avg = mean(bess_beam_data.ch2_data,3);
end

ch2_avg_seg = false(size(ch2_avg));
seg_threshold = str2num(get(handles.Ch2min,'string'));
ch2_avg_seg(ch2_avg < seg_threshold) = 0;
ch2_avg_seg(ch2_avg > seg_threshold) = 1;

bess_beam_data.vessel_seg = ch2_avg_seg;
% bess_beam_data.ch1_data_vess_seg = bess_beam_data.ch1_data;
% for u = 1:size(bess_beam_data.ch1_data_vess_seg,3)
%     bess_beam_data.ch1_data_vess_seg(:,:,u) = bess_beam_data.ch1_data_vess_seg(:,:,u).*ch2_avg_seg;
% end
figure; colormap('gray'); imagesc(ch2_avg_seg); axis image;
set(handles.checkbox_showvesselseg,'Enable','on')


% --- Executes on button press in checkbox_showvesselseg.
function checkbox_showvesselseg_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox_showvesselseg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox_showvesselseg
gui_display(hObject, eventdata, handles)


% --- Executes on button press in pushbutton_selectROIch1.
function pushbutton_selectROIch1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_selectROIch1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global bess_beam_data
axes(handles.Ch1axes)
while(1)
    [mask,Xi,Yi] = roipoly;
    hold on
    h = plot(Xi,Yi,'color','k','LineWidth',2);
    answer = questdlg('Are you statisfied with ROI?',...
        'Select ROI',...
        'Yes', 'No, select again', 'Cancel','Yes');
    if strcmp(answer, 'Yes')
        if isfield(bess_beam_data,'ch1_ROIs')
            L = length(bess_beam_data.ch1_ROIs)+1;
            bess_beam_data.ch1_ROIs{L}.mask = mask;
            bess_beam_data.ch1_ROIs{L}.Xi = Xi;
            bess_beam_data.ch1_ROIs{L}.Yi = Yi;
        else
            bess_beam_data.ch1_ROIs{1}.mask = mask;
            bess_beam_data.ch1_ROIs{1}.Xi = Xi;
            bess_beam_data.ch1_ROIs{1}.Yi = Yi;
        end 
        set(h,'visible','off')
        gui_display(hObject, eventdata, handles)
        break;
    elseif strcmp(answer, 'Cancel') || isempty(answer)
        set(h,'visible','off')
        break;
    end
    set(h,'visible','off')
end

% --- Executes on button press in pushbutton_selectROIch2.
function pushbutton_selectROIch2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_selectROIch2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global bess_beam_data
axes(handles.Ch2axes)
while(1)
    [mask,Xi,Yi] = roipoly;
    hold on
    h = plot(Xi,Yi,'color','k','LineWidth',2);
    answer = questdlg('Are you statisfied with ROI?',...
        'Select ROI',...
        'Yes', 'No, select again', 'Cancel','Yes');
    if strcmp(answer, 'Yes')
        if isfield(bess_beam_data,'ch2_ROIs')
            L = length(bess_beam_data.ch2_ROIs)+1;
            bess_beam_data.ch2_ROIs{L}.mask = mask;
            bess_beam_data.ch2_ROIs{L}.Xi = Xi;
            bess_beam_data.ch2_ROIs{L}.Yi = Yi;
        else
            bess_beam_data.ch2_ROIs{1}.mask = mask;
            bess_beam_data.ch2_ROIs{1}.Xi = Xi;
            bess_beam_data.ch2_ROIs{1}.Yi = Yi;
        end 
        set(h,'visible','off')
        gui_display(hObject, eventdata, handles)
        break;
    elseif strcmp(answer, 'Cancel') || isempty(answer)
        set(h,'visible','off')
        break;
    end
    set(h,'visible','off')
end


% --------------------------------------------------------------------
function tools_plotintensitychanges_Callback(hObject, eventdata, handles)
% hObject    handle to tools_plotintensitychanges (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global bess_beam_data
colors = {'r','g','b','c','m','y','w'};

% determine if stimulus is applied during the experiment
AirPuffMarker = bess_beam_data.analogInput.("AirPuff Marker");
AirPuffMarker(AirPuffMarker <3) = 0;
AirPuffMarker(AirPuffMarker >=3) = 1;
AirPuffMarker(2:end) = AirPuffMarker(2:end)-AirPuffMarker(1:end-1);
AirPuffMarker(AirPuffMarker<0) = 0;
stim_idx = find(AirPuffMarker == 1);
Time =  bess_beam_data.analogInput.("Time");
time_num = time2num(Time,"Seconds");
if ~isempty(stim_idx)
    for u=1:length(stim_idx)
        idx1 = stim_idx(u);
        [~,idx2] = min(abs(time_num-(time_num(idx1)+5)));
        AirPuffMarker(idx1+1:idx2) = 0;
    end
    
    % get one idx for each stimulus
    stim_idx_start = find(AirPuffMarker == 1);
    
    % determine acquisition starting time respective to trigger time
    galvoY = bess_beam_data.analogInput.("galvoY");
    galvoY_min = min(galvoY);
    galvoY_max = max(galvoY);
    threshold = (galvoY_min+galvoY_max)/2;
    idx = find(galvoY>threshold);
    acq_start_time = time_num(idx(1));
    
    % stimulus time with respective to image acquisition time
    stim_time = time_num(stim_idx_start)-acq_start_time;
end

if isfield(bess_beam_data,'ch1_ROIs')
    if length(bess_beam_data.ch1_ROIs) >=1
        n_points = size(bess_beam_data.ch1_data,3);
        ch1_deltaFbyF = zeros(length(bess_beam_data.ch1_ROIs),n_points);
        for u = 1:length(bess_beam_data.ch1_ROIs)
            ch1_data = bess_beam_data.ch1_data;
            for v = 1:size(ch1_data,3)
                ch1_data(:,:,v) = ch1_data(:,:,v).*bess_beam_data.ch1_ROIs{u}.mask.*(1-bess_beam_data.vessel_seg);
            end
            ROI_mean = squeeze(sum(sum(ch1_data,1),2))/sum(bess_beam_data.ch1_ROIs{u}.mask(:));
            ROI_mean_sort = sort(ROI_mean);
            ROI_baseline = mean(ROI_mean_sort(round(n_points/2-(n_points*5/100)):round(n_points/2+(n_points*5/100))));
            ch1_deltaFbyF(u,:) = (ROI_mean-ROI_baseline)/ROI_baseline;
        end
        img2 = mean(bess_beam_data.ch1_data,3);
        Ch1min = str2num(get(handles.Ch1min,'string'));
        Ch1max = str2num(get(handles.Ch1max,'string'));
        figure;
        imagesc(img2,[Ch1min Ch1max]);
        colormap('gray')
        axis image
        hold on
        if isfield(bess_beam_data,'ch1_ROIs')
            for u = 1:length(bess_beam_data.ch1_ROIs)
                color_idx = min(u,length(colors));
                h = plot(bess_beam_data.ch1_ROIs{u}.Xi,bess_beam_data.ch1_ROIs{u}.Yi,'LineWidth',2,'color',colors{color_idx});
%                 set(h,'ButtonDownFcn', sprintf('delete_ch1_roi(%d)',u) );
                text(mean(bess_beam_data.ch1_ROIs{u}.Xi),mean(bess_beam_data.ch1_ROIs{u}.Yi),num2str(u),'color',colors{color_idx})
            end
        end
        hold off
        figure;
        hold on;
        legend_labels= [];
        for w = 1:length(bess_beam_data.ch1_ROIs)
            plot(bess_beam_data.timg, ch1_deltaFbyF(w,:),'LineWidth',1.5,'color',colors{w});
            legend_labels{end+1} = ['Ca-ROI' num2str(w)];
        end
        if ~isempty(stim_time)
            for u = 1:length(stim_time)
                xline(stim_time(u));
            end
        end
        legend(legend_labels);
        hold off;  
        ylabel('\DeltaI/I')
        xlabel('t(sec)')
    end
end
if isfield(bess_beam_data,'ch2_ROIs')
    if length(bess_beam_data.ch2_ROIs) >=1
        n_points = size(bess_beam_data.ch2_data,3);
        ch2_deltaFbyF = zeros(length(bess_beam_data.ch2_ROIs),n_points);
        for u = 1:length(bess_beam_data.ch2_ROIs)
            ch2_data = bess_beam_data.ch2_data;
            for v = 1:size(ch2_data,3)
                ch2_data(:,:,v) = ch2_data(:,:,v).*bess_beam_data.ch2_ROIs{u}.mask;
            end
            ROI_mean = squeeze(sum(sum(ch2_data,1),2))/sum(bess_beam_data.ch2_ROIs{u}.mask(:));
            ROI_mean_sort = sort(ROI_mean);
            ROI_baseline = mean(ROI_mean_sort(round(n_points/2-(n_points*5/100)):round(n_points/2+(n_points*5/100))));
            ch2_deltaFbyF(u,:) = (ROI_mean-ROI_baseline)/ROI_baseline;
        end
        img2 = mean(bess_beam_data.ch2_data,3);
        Ch2min = str2num(get(handles.Ch2min,'string'));
        Ch2max = str2num(get(handles.Ch2max,'string'));
        figure;
        imagesc(img2,[Ch2min Ch2max]);
        colormap('gray')
        axis image
        hold on
        if isfield(bess_beam_data,'ch2_ROIs')
            for u = 1:length(bess_beam_data.ch2_ROIs)
                color_idx = min(u,length(colors));
                h = plot(bess_beam_data.ch2_ROIs{u}.Xi,bess_beam_data.ch2_ROIs{u}.Yi,'LineWidth',2,'color',colors{color_idx});
                 text(mean(bess_beam_data.ch1_ROIs{u}.Xi),mean(bess_beam_data.ch1_ROIs{u}.Yi),num2str(u),'color',colors{color_idx})
%                 set(h,'ButtonDownFcn', sprintf('delete_ch2_roi(%d)',u) );
            end

        end
        
        hold off
        figure;
        hold on;
        legend_labels= [];
        for w = 1:length(bess_beam_data.ch2_ROIs)
            plot(bess_beam_data.timg, ch2_deltaFbyF(w,:),'LineWidth',1.5,'color',colors{w});
            legend_labels{end+1} = ['V-ROI' num2str(w)];
        end
        if ~isempty(stim_time)
            for u = 1:length(stim_time)
                xline(stim_time(u));
            end
        end
        legend(legend_labels);
        hold off;
        ylabel('\DeltaI/I')
        xlabel('t(sec)')
    end
end



% If stimulus is present
if ~isempty(stim_idx)
%     for u=1:length(stim_idx)
%         idx1 = stim_idx(u);
%         [~,idx2] = min(abs(time_num-(time_num(idx1)+5)));
%         AirPuffMarker(idx1+1:idx2) = 0;
%     end
%     
%     % get one idx for each stimulus
%     stim_idx_start = find(AirPuffMarker == 1);
%     
%     % determine acquisition starting time respective to trigger time
%     galvoY = bess_beam_data.analogInput.("galvoY");
%     galvoY_min = min(galvoY);
%     galvoY_max = max(galvoY);
%     threshold = (galvoY_min+galvoY_max)/2;
%     idx = find(galvoY>threshold);
%     acq_start_time = time_num(idx(1));
%     
%     % stimulus time with respective to image acquisition time
%     stim_time = time_num(stim_idx_start)-acq_start_time;
    avg_npoints = round(30*bess_beam_data.Freq);
    points_before = round(avg_npoints*0.133);
    points_after = avg_npoints-points_before-1;
    stim_time_points = (0:avg_npoints-1)/bess_beam_data.Freq;
    if isfield(bess_beam_data,'ch1_ROIs')
        if length(bess_beam_data.ch1_ROIs) >=1
            ch1_deltaFbyF_avg = zeros(length(bess_beam_data.ch1_ROIs), avg_npoints);
            for v =1:length(stim_time)
                [~,time_idx] = min(abs(bess_beam_data.timg-stim_time(v)));
                ch1_deltaFbyF_avg = ch1_deltaFbyF_avg+ch1_deltaFbyF(:,time_idx-points_before:time_idx+points_after);
            end
            ch1_deltaFbyF_avg = ch1_deltaFbyF_avg/length(stim_time);
            figure;
            hold on;
            for w = 1:length(bess_beam_data.ch1_ROIs)
                plot(stim_time_points, ch1_deltaFbyF_avg(w,:),'LineWidth',1.5,'color',colors{w});
            end
            hold off;
            ylabel('\DeltaI/I')
            xlabel('t(sec)')
        end
    end
    if isfield(bess_beam_data,'ch2_ROIs')
        if length(bess_beam_data.ch2_ROIs) >=1
            ch2_deltaFbyF_avg = zeros(length(bess_beam_data.ch2_ROIs), avg_npoints);
            for v =1:length(stim_time)
                [~,time_idx] = min(abs(bess_beam_data.timg-stim_time(v)));
                ch2_deltaFbyF_avg = ch2_deltaFbyF_avg+ch2_deltaFbyF(:,time_idx-points_before:time_idx+points_after);
            end
            ch2_deltaFbyF_avg = ch2_deltaFbyF_avg/length(stim_time);
            figure;
            hold on;
            for w = 1:length(bess_beam_data.ch2_ROIs)
                plot(stim_time_points, ch2_deltaFbyF_avg(w,:),'LineWidth',1.5,'color',colors{w});
            end
            hold off;
            ylabel('\DeltaI/I')
            xlabel('t(sec)')
        end
    end
end


