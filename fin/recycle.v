module recycle(in,out);
	input [3:0]in;
	output reg [3:0]out;
	always @(in or out)
		case(in)
			4'b0000:
				out=4'b0111;
			4'b0001: 
				out=4'b1000;
			4'b0010: 
				out=4'b1001;
			default: out=4'b1111;
		endcase
endmodule