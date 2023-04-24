function delete_ch1_roi(idx)

global bess_beam_data
answer = questdlg('Do you want to delete this ROI?');
if strcmp(answer,'Yes')
    bess_beam_data.ch1_ROIs(idx) = [];
end
bess_beam_workflow('gui_display', bess_beam_data.hObject, bess_beam_data.eventdata, bess_beam_data.handles)