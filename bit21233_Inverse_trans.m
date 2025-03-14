
image = imread('ALISHA.jpg'); 
image = im2double(image); 
c = 1;
log_transformed = c * log(1 + image);

gamma = 2.0; 
gamma_corrected = log_transformed .^ gamma;

figure;

subplot(1, 3, 1);
imshow(image);
title('      O Image         ');

subplot(1, 3, 2);
imshow(log_transformed);
title('L Transform            ');

subplot(1, 3, 3);
imshow(gamma_corrected);
title(['G Correction (\gamma = ', num2str(gamma), ')']);
