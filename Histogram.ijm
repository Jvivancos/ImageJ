// "Histogram Generator"
// This macro generates a histogram for an entire image and a specified region of interest (ROI).

// Generate histogram for the entire image
run("Blobs (25K)");
run("Histogram");

// Move the histogram window
selectWindow("Histogram of Blobs");
setLocation(100, 100);

// Posar pausa i Generar nou histograma d'una regió
waitForUser("L'Histograma mostra tots els valors dels píxels de la imatge sencera.");
waitForUser("També es poden visualitzar Histogrames de zones de la imatge, fent-ne una selecció");

// Close the current histogram window
close();

// Select the original image window and create an ROI
selectWindow("blobs.gif");
makeRectangle(27, 14, 45, 45);

// Generate histogram for the selected region
run("Histogram");

// Move the new histogram window
selectWindow("Histogram of Blobs");
setLocation(300, 100);

waitForUser("Observeu els nous valors de l'Histograma de la regió seleccionada");
waitForUser("Premeu el botó 'Live' de la finestra 'Histogram of Blobs'");
waitForUser("Modifiqueu la selecció i observeu els canvis en l'Histograma de la regió seleccionada.");
waitForUser("Premeu 'Cancel' per sortir");

