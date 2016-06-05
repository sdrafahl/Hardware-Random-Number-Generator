module multiply(in,out);
	input [3:0]in;
	output reg [3:0]out;
	
	always @(in or out)
		case(in)
			4'b0000:out=4'b0000;
			4'b0001:out=4'b0011;
			4'b0010:out=4'b0110;
			4'b0011:out=4'b1001;
			4'b0100:out=4'b0010;
			4'b0101:out=4'b0101;
			4'b0110:out=4'b1000;
			4'b0111:out=4'b0001;
			4'b1000:out=4'b0100;
			4'b1001:out=4'b0111;
			4'b1010:out=4'b0000;
			4'b1011:out=4'b0011;
			4'b1100:out=4'b0110;
			4'b1101:out=4'b1001;
			4'b1110:out=4'b0010;
			4'b1111:out=4'b0101;
		endcase
endmodule