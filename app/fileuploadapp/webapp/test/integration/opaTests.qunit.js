sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'fileuploadapp/test/integration/FirstJourney',
		'fileuploadapp/test/integration/pages/FilesList',
		'fileuploadapp/test/integration/pages/FilesObjectPage'
    ],
    function(JourneyRunner, opaJourney, FilesList, FilesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('fileuploadapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheFilesList: FilesList,
					onTheFilesObjectPage: FilesObjectPage
                }
            },
            opaJourney.run
        );
    }
);