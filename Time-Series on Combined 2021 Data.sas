
ods graphics / reset width=13.4in height=9.8in imagemap;

proc sort data=MYSASLIB.MIS480_M8_COMBINEDDATA out=_SeriesPlotTaskData;
	by Date;
run;

proc sgplot data=_SeriesPlotTaskData;
	title height=14pt "Stock Price Analysis for Calendar Year 2021";
	series x=Date y=CSCO_Close / LEGENDLABEL="Cisco Stock" lineattrs=(thickness=2) ;
	series x=Date y=CTXS_Close / LEGENDLABEL="Citrix Stock" lineattrs=(thickness=2) ;
	series x=Date y=IBM_Close / LEGENDLABEL="IBM Stock" lineattrs=(thickness=2) ;
	series x=Date y=MSFT_Close / LEGENDLABEL="Microsoft Stock" lineattrs=(thickness=2) ;
	series x=Date y=VMW_Close / LEGENDLABEL="VMware Stock" lineattrs=(thickness=2) ;
	xaxis grid label="Date - Daily Close Stock Price" interval=month;
	yaxis grid label="Close Stock Price ($)" minor minorcount=5 minorgrid;
run;

ods graphics / reset;
title;

proc datasets library=WORK noprint;
	delete _SeriesPlotTaskData;
	run;
