module combiner2(a,b,out);
	
	input a;
	input b;
	output reg [1:0]out;
	always 
	out[0]=a;
	always
	out[1]=b;
endmodule
