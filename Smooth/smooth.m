img = imread('zuckk.png');
imgd = im2double(img);   % imgd in [0,1]
f = ones(3,3)/9;
img1 = filter2(f, rgb2gray(imgd));
subplot(121);imshow(img);title('Citra Asli');
subplot(122);imshow(img1);title('Smooth');
