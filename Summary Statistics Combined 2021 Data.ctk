
ods noproctitle;
ods graphics / imagemap=on;

proc means data=MYSASLIB.MIS480_M8_COMBINEDDATA chartype mean std min max n 
		vardef=df;
	var CSCO_Close CTXS_Close IBM_Close MSFT_Close VMW_Close;
run;
