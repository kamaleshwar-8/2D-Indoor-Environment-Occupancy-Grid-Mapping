% Define grid size (10x10 grid)
gridSize = 10;

% Create a binary occupancy grid (0 = free space, 1 = occupied space)
environment = zeros(gridSize, gridSize);

% Add walls (set edges as walls)
environment(1, :) = 1; % Top wall
environment(end, :) = 1; % Bottom wall
environment(:, 1) = 1; % Left wall
environment(:, end) = 1; % Right wall

% Add a door on the bottom wall (at position 5)
environment(end, 5) = 0; % Free space for the door

% Add a small table (2x2 block)
environment(4:5, 4:5) = 1;

% Plot the occupancy grid
figure;
axis equal; % Keep aspect ratio
imagesc(environment);
colormap(gray); % Set color map to grayscale
colorbar; % Show color bar
title('Simple 2D Indoor Map'); % Title for the plot
xlabel('X-axis (Grid)'); % X-axis label
ylabel('Y-axis (Grid)'); % Y-axis label
grid on; % Show grid