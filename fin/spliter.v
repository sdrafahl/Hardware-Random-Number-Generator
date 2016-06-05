module spliter(a,b,c,d,in);
	input [3:0]in;
	output reg a;
	output reg b;
	output reg c;
	output reg d;
	always 
	a=in[0];
	always
	b=in[1];
	always 
	c=in[2];
	always 
	d=in[3];
endmodule