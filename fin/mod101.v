module mod101(in,f);
	input [3:0]in;
	output reg [3:0]f;
	always @(f or in)
		case(in)
			4'b1010:
				f=4'b0000;
			4'b1011:
				f=4'b0001; 
			4'b1100:
				f=4'b0010;
			4'b1101:
				f=4'b0011; 
			4'b1110:
				f=4'b0100;
			4'b1111:
				f=4'b0101;
			default:
				f=in;
		endcase
endmodule