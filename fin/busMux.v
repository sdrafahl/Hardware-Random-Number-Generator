module busMux(ctrl,in_0,in_1,out);
	input ctrl;
	input [3:0]in_0;
	input [3:0]in_1;
	output reg [3:0]out;
	always @(in_0 or in_1 or out)
		case(ctrl)
			0: out=in_0;
			1: out=in_1;
		endcase
endmodule