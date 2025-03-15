/** 
 * Lookup Tables - Taula de consulta (LUTs)
 * ----------------------------------------------
 * 
 * This short macro showcases different way to use the Lookup Tables, the while loop, the window dialog getBoolean() 
 * 
 * Due to the simple nature of this code, no copyright is applicable
 * 
 * Code created for Image Processing and Analysis For Life Scientists MOOC on EdX
 * https://www.edx.org/course/image-processing-and-analysis-for-life-scientists
 * 
 * 2018 - Romain Guiet, EPFL - SV - BIOP
 * 2025 - Traducció: JVM 
 * https://biop.epfl.ch
 */


run("Close All");
print ("\\Clear");

run("Display LUTs");
waitForUser("La funció 'Display LUTs' del menú 'Image > Color' mostra totes les Taules de Consulta (LUT) disponibles en aquesta versió de ImageJ");
selectImage(nImages);
close();

run("Blobs (25K)");
waitForUser("Amb la imatge 'Blobs' el sistema presentarà, una a una, les diferents LUTs, per mostrar com afecta a la visualització d'una imatge la tria d'una Taula de Consulta (LUT).");
blod_id = getImageID();
listLUT = getList("LUTs");

// we'll go though the array 'listLUT'  to change the display of the Image
i = 0;
showNextLUT = true ;
while ( showNextLUT ) {
	// we chekc that the index is ine the range of the array
	if (i < lengthOf(listLUT) ) {
		// we make sure to select the right image
		selectImage(blod_id);
		// and change the LUT
		run(listLUT[i]);
		
		// Ask the user if we show the next LUT, with a Dialog Window
		// Yes or No (and Cancel)
		showNextLUT = getBoolean("La LUT actual és : "+listLUT[i]+".\n Voleu canviar a la següent LUT? ");
		// if the user clic on Yes, we increment the index i
		if ( showNextLUT ) i++;
		// if the user clic on No, we print the LUT selected
		else print ("La LUT seleccionada és "+listLUT[i] );
		
	} else {
		// exit
		showNextLUT = false;
	}
}
selectWindow("Log");
