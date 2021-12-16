%Remove any variables in memory space 
clear all; close all; 

% First we will be loading image

img =imread('Khabib.jpg');

subplot(2, 4, 1),
imshow(img);
title('Original Image');

% Now let's convert into grayscale image
gray_img=rgb2gray(img);
subplot(2, 4, 2),
imshow(gray_img);
title('Gray Scale Image');
%figure('Name','Gray Scale Image'); imshow(gray_img); 

%Get Fourier Transform of an image
F = fft2(gray_img);
subplot(2, 4, 3),
imshow(abs(F), []);
title('Fourier transform of an image');
%figure('Name','Fourier transform of an image'); imshow(abs(F), []); 

subplot(2, 4, 4),
imagesc(abs(fftshift(F)));
colormap gray;
title('Color Map gray');

%figure,imagesc(abs(fftshift(F)));
%colormap(jet);colorbar;

%Get the centered spectrum
Fsh = fftshift(F);
subplot(2, 4, 5),
imshow(abs(Fsh), []);
title('Centered fourier transform of Image');
%figure('Name','Centered fourier transform of Image'); imshow(abs(Fsh), []); 

%apply log transform
log_img = log(1+abs(Fsh));
subplot(2, 4, 6),
imshow(log_img, []);
title('Log fourier transform of Image');
%figure('Name','Log fourier transform of Image'); imshow(log_img, []);

%reconstruct the Image
F = ifftshift(Fsh);
f = ifft2(F);
subplot(2, 4, 7),
imshow(f, []);
title('Reconstructed Image');
%figure('Name','Reconstructed Image'); imshow(f, []);

subplot(2, 4, 8),
fftImage = fft2(gray_img);
fftImageRealPart = real(fftImage);
[rows, columns] = size(fftImageRealPart);
lineNumber = floor(rows/2); % Middle row
oneLine = fftImageRealPart(lineNumber, :);
plot(oneLine, 'r-', 'LineWidth', 2);
grid on;
title('DFT From FFT');