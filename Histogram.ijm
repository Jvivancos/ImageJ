// "Histogram"
// Generates histogram
run("Blobs (25K)");
run("Histogram");

// Posar pausa i Generar nou histograma d'una regió
waitForUser("L'Histograma mostra tots els valors dels píxels de la imatge sencera.");
waitForUser("També es poden visualitzar Histogrames de zones de la imatge, fent-ne una selecció");
close();
selectWindow("blobs.gif");
makeRectangle(27, 14, 45, 45);
run("Histogram");
waitForUser("Observeu els nous valors de l'Histograma de la regió seleccionada");
waitForUser("Premeu el botó 'Live' de la finestra 'Histogram of Blobs'");
waitForUser("Modifiqueu la selecció i observeu els canvis en l'Histograma de la regió seleccionada.");
waitForUser("Premeu 'Cancel' per sortir");

