import cv2
import numpy as np

# Load the image using OpenCV
image_path = 'mask.jpg'  # replace with your image path
image = cv2.imread(image_path)

# Convert the image from BGR to RGB
image_rgb = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

# Define the target RGB values
red_value = 19
green_value = 12
blue_value = 212

# Find the pixel locations where the R, G, and B values match the target values
# The image array shape is (height, width, 3)
matches = np.where((image_rgb[:, :, 0] == red_value) & 
                   (image_rgb[:, :, 1] == green_value) & 
                   (image_rgb[:, :, 2] == blue_value))

# matches[0] contains the row indices and matches[1] contains the column indices
coordinates = list(zip(matches[0], matches[1]))

# Output the coordinates
if coordinates:
    print(f"Pixels with RGB value ({red_value}, {green_value}, {blue_value}) found at:")
    for coord in coordinates:
        print(coord)
else:
    print(f"No pixel found with RGB value ({red_value}, {green_value}, {blue_value})")

print(image_rgb[99, 232])