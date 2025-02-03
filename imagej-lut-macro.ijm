// Prompt user to select an image file
path = File.openDialog("Select an image file");
if (path=="") {
    exit("No image selected");
}

// Open the selected image
open(path);
imageTitle = getTitle();

// Get image ID to make sure we're working with the correct image
imageID = getImageID();
selectImage(imageID);

// Show LUT
run("Show LUT");

// Add some information about the image
print("Image information:");
print("Title: " + imageTitle);
print("Path: " + path);
print("Bit depth: " + bitDepth());
print("Width: " + getWidth());
print("Height: " + getHeight());