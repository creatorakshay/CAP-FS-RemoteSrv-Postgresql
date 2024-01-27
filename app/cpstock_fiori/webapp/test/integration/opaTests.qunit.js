sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'cpstockfiori/test/integration/FirstJourney',
		'cpstockfiori/test/integration/pages/StockDetailList',
		'cpstockfiori/test/integration/pages/StockDetailObjectPage'
    ],
    function(JourneyRunner, opaJourney, StockDetailList, StockDetailObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('cpstockfiori') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStockDetailList: StockDetailList,
					onTheStockDetailObjectPage: StockDetailObjectPage
                }
            },
            opaJourney.run
        );
    }
);