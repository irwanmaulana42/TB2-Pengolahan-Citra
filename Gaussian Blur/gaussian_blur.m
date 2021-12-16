I = imread('zuck.jpg');
J1 = fspecial('gaussian', 32, 8);
K1 = imfilter(I, J1);
subplot(121);imshow(I);title('Citra Asli');
subplot(122);imshow(K1);title('Gaussian');