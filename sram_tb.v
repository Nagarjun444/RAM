module tb;

 reg clk,en,we;

  reg[2:0] addres;

  reg [7:0] data_in;

  wire [7:0] data_out;
    
 ram DUT(.clk(clk),.en(en),.we(we),.addres(addres),.data_in(data_in),.data_out(data_out));
	
initial
     clk=1'b0;
	 always #10  clk=~clk;
	 
initial 
   begin
       en<=1'b1;
           #10;
	     we<=1'b1;
              addres<= 3'd3;
	     data_in <=32'd32;
                #10;
                addres<= 3'd4;
                data_in <= 32'd44;
	    #20;
		 we<=1'b0;
                 
	  #70;
	  $finish;
	  
	end


endmodule
