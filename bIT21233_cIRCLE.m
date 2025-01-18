% Circle Creation Script
% Author: Sabiha Khan
% Description: This script demonstrates how to create a circle in a binary matrix using MATLAB.
% The circle is drawn by populating pixel values based on the Euclidean distance 
% from the circle's center to each point in the matrix.

% Step 1: Initialize a matrix of zeros
% The matrix serves as the canvas for the circle.
A = zeros(100, 100); 

% Step 2: Define the circle's center coordinates
% cx and cy represent the x and y coordinates of the circle's center, respectively.
cx = 50; % Center of the circle in the x-direction
cy = 50; % Center of the circle in the y-direction

% Step 3: Define the radius of the circle
radius = 20; % The radius determines the size of the circle

% Step 4: Generate the circle using nested loops
% The nested loops iterate through each element of the matrix.
% If the distance of a point from the center is less than or equal to the radius,
% the pixel value is set to 255 (white).
for i = 1:100
    for j = 1:100     
        % Calculate the Euclidean distance from the center to the current point
        if sqrt((cx - i)^2 + (cy - j)^2) <= radius
            A(i, j) = 255; % Set the pixel value to white
        end
    end
end

% Step 5: Display the resulting circle
% The `imshow` function visualizes the matrix as an image. 
% The empty brackets (`[]`) scale the display based on the matrix values.
imshow(A, []);
title('Circle Created in a Binary Matrix');
xlabel('X-axis');
ylabel('Y-axis');

% Additional Notes:
% - Adjust the matrix size (e.g., 100x100) to change the resolution of the image.
% - Change the `cx`, `cy`, and `radius` values to position the circle differently.
% - The circle is generated by checking the distance formula for every point in the matrix.
