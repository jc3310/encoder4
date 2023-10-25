`timescale 1ns/1ps
module tb_encoder4;
    reg     a0;
	 reg     a1;
	 reg     a2;
	 reg     a3;
    wire    y0;
	 wire    y1;

    encoder4 u0(a0,a1,a2,a3,y0,y1);

    initial begin
        #00 {a3,a2,a1,a0}=4'b0001;
        #20 {a3,a2,a1,a0}=4'b0010;
        #20 {a3,a2,a1,a0}=4'b0100;
        #20 {a3,a2,a1,a0}=4'b1000;
        #20 {a3,a2,a1,a0}=4'b1001;
		  #20;
    end 
	initial begin
   $monitor("%t| a3 = %d| a2 = %d| a1 = %d| a0 = %d| y1 = %d| y0 = %d", 
   $time, a3, a2, a1, a0, y1, y0); 
  end
endmodule