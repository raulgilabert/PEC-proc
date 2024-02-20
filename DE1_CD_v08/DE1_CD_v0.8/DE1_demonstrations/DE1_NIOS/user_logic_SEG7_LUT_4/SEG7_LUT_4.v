module SEG7_LUT_4 (	oSEG0,oSEG1,oSEG2,oSEG3,
					iDIG,iWR,iCLK,iRST_N );
input	[15:0]	iDIG;
input			iWR,iCLK,iRST_N;
output	[6:0]	oSEG0,oSEG1,oSEG2,oSEG3;
reg		[15:0]	rDIG;

always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	rDIG <= 0;
	else
	begin
		if(iWR)
		rDIG <= iDIG;
	end
end

SEG7_LUT	u0	(	oSEG0,rDIG[3:0]		);
SEG7_LUT	u1	(	oSEG1,rDIG[7:4]		);
SEG7_LUT	u2	(	oSEG2,rDIG[11:8]	);
SEG7_LUT	u3	(	oSEG3,rDIG[15:12]	);

endmodule