
ods graphics / reset width=6.4in height=4.8in imagemap;

proc sort data=MYSASLIB.MIS480_M8_VMW out=_SeriesPlotTaskData;
	by Date;
run;

proc sgplot data=_SeriesPlotTaskData;
	title height=14pt "VMW Stock Price";
	series x=Date y=Close /;
	xaxis grid;
	yaxis grid label="Close Stock Price";
run;

ods graphics / reset;
title;

proc datasets library=WORK noprint;
	delete _SeriesPlotTaskData;
	run;
