ods noproctitle;
ods graphics / imagemap=on;

proc means data=MYSASLIB.MIS480_M8_VMW chartype mean std min max n vardef=df;
	var Close;
run;
