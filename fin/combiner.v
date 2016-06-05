module combiner(a,b,c,d,out);
	
	input a;
	input b;
	input c;
	input d;
	output reg [3:0]out;
	always 
	out[0]=a;
	always
	out[1]=b;
	always 
	out[2]=c;
	always 
	out[3]=d;
endmodule
