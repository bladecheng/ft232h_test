`timescale 1ns / 1ps

module top(
   input CLK,
	output LED,
	inout [35:0] GPIO
    );
	 
wire [7:0]zzz = 7'b01111010;
wire [7:0]read_data;
wire byte_received;
wire LED;
assign LED = 1'b1;

USB USB0(.CLOCK_50(CLK),
		   .GPIO(GPIO[35:0]),
			.reset(1'b0),
			.write_request(1'b1),
			.byte_received(byte_received),
			.write_data(zzz[7:0]),
			.read_data(read_data[7:0]));

endmodule 
