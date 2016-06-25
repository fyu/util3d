model_path = 'chair.off';
model = load_off(model_path);

dim = 30;
volume = polygon2voxel(model, [dim, dim, dim], 'auto');
figure
show_volume(volume, [dim, dim, dim]);