images = [];
angles = linspace(0, 180, 200);
for angle = angles 
    rimage = imrotate(image, angle, 'nearest', 'crop');
    images = [images, reshape(rimage, prod(size(rimage)), 1)];
end 
image6 = reshape(images(:, 100), 64, 64);
imwrite(image6, 'Task6.png');
imshow(image6)