pkg load image;
load('digit_image.mat');
images = [];
angles = linspace(0, 180, 200);
for angle = angles 
    rimage = imrotate(image, angle, 'nearest', 'crop');
    images = [images, reshape(rimage, prod(size(rimage)), 1)];
end 
x = images; 
xbar = mean(x,2); 
xc = x - xbar; 
S = (1/(size(x)(2))-1)* xc * xc' ; 
[U,L] = eigs(S, 200); 

pc = U(:,200);
pcsc = ((pc-min(pc))/(max(pc)-min(pc)));
imshow(reshape(pcsc, 64, 64));
