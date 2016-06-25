function offobj = load_off(filename)
% Read the off file.
% offobj: a struct contains vertices and faces of 3D mesh models.
offobj = struct();
fid = fopen(filename, 'rb');
OFF_sign = fscanf(fid, '%c', 3);
assert(strcmp(OFF_sign, 'OFF') == 1);

info = fscanf(fid, '%d', 3);
offobj.vertices = reshape(fscanf(fid, '%f', info(1)*3), 3, info(1))';
offobj.faces = reshape(fscanf(fid, '%d', info(2)*4), 4, info(2))';
if ~isempty(find(offobj.faces(:,1) == 4, 1))
    fprintf('nononononono\n');
end

% These vertices to define faces should be offset by one to follow the matlab convention.
offobj.faces = offobj.faces(:,2:end) + 1; 

% Center model

bbox1 = min(offobj.vertices);
bbox2 = max(offobj.vertices);
center = (bbox1 + bbox2) / 2;
offobj.vertices = bsxfun(@minus, offobj.vertices, center);

fclose(fid);