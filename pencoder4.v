module pencoder4(

    input       a0,
	 input       a1,
	 input       a2,
	 input       a3,
	 
    output reg  y0,
	 output reg  y1
);

    always @(*) begin
				
        if(a3)begin
				y0=1'b1;
				y1=1'b1;
		  end
		  else if(a2)begin
				y0=1'b1;
				y1=1'b0;
		  end	
		  else if(a1)begin
				y0=1'b0;
				y1=1'b1;
		  end	
		  else if(a0)begin
				y0=1'b0;
				y1=1'b0;
		  end	
        else begin
				y0=1'b0;
				y1=1'b0;
		  end 
    end
endmodule



