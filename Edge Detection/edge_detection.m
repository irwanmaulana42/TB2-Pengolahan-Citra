% importing the image
img = imread('nt_col.jpg');
I = rgb2gray(img);
subplot(2, 4, 1),
imshow(I);
title('Gray Scale Image');
 
% Sobel Edge Detection
J = edge(I, 'Sobel');
subplot(2, 4, 2),
imshow(J);
title('Sobel');
 
% Prewitt Edge detection
K = edge(I, 'Prewitt');
subplot(2, 4, 3),
imshow(K);
title('Prewitt');
 
% Robert Edge Detection
L = edge(I, 'Roberts');
subplot(2, 4, 4),
imshow(L);
title('Robert');
 
% Log Edge Detection
M = edge(I, 'log');
subplot(2, 4, 5),
imshow(M);
title('Log');
 
% Zerocross Edge Detection
M = edge(I, 'zerocross');
subplot(2, 4, 6),
imshow(M);
title('Zerocross');
 
% Canny Edge Detection
N = edge(I, 'Canny');
subplot(2, 4, 7),
imshow(N);
title('Canny');

%Original Image
subplot(2, 4, 8),
imshow(img);
title('Original Image');