function show_model( obj )

color = [0.0078    0.5176    0.5098];
lighting = 'flat';

fig = figure;
set(fig, 'Position', [0 0 1280 400]);

subplot(1, 3, 1);
trimesh(obj.faces, obj.vertices(:, 1), obj.vertices(:, 2), obj.vertices(:, 3),  'FaceColor', color, 'EdgeColor', 'none', ...
'AmbientStrength', 0.4, 'DiffuseStrength', 0.8,'FaceLighting', lighting, 'BackFaceLighting', 'reverselit', 'SpecularStrength', 0.2, 'SpecularExponent', 10);
set(gcf, 'Color', 'w', 'Renderer', 'OpenGL');
set(gca, 'Projection', 'perspective');
axis equal;
axis off;
view(30, 0);
lightangle(60, 30);

subplot(1, 3, 2);
trimesh(obj.faces, obj.vertices(:, 1), obj.vertices(:, 2), obj.vertices(:, 3),  'FaceColor', color, 'EdgeColor', 'none', ...
'AmbientStrength', 0.4, 'DiffuseStrength', 0.8,'FaceLighting', lighting, 'BackFaceLighting', 'reverselit', 'SpecularStrength', 0.2, 'SpecularExponent', 10);
set(gcf, 'Color', 'w', 'Renderer', 'OpenGL');
set(gca, 'Projection', 'perspective');
axis equal;
axis off;
view(120, 0);
lightangle(90, 30);

subplot(1, 3, 3);
trimesh(obj.faces, obj.vertices(:, 1), obj.vertices(:, 2), obj.vertices(:, 3),  'FaceColor', color, 'EdgeColor', 'none', ...
'AmbientStrength', 0.4, 'DiffuseStrength', 0.8,'FaceLighting', lighting, 'BackFaceLighting', 'reverselit', 'SpecularStrength', 0.2, 'SpecularExponent', 10);
set(gcf, 'Color', 'w', 'Renderer', 'OpenGL');
set(gca, 'Projection', 'perspective');
axis equal;
axis off;
view(0, 30);
lightangle(30, 30);

end

