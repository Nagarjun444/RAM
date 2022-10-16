module ram(clk,addres,data_in,en,we,data_out);

  input clk,en,we;

  input[2:0] addres;

  input[7:0] data_in;

output reg [7:0] data_out;

  reg [7:0] mem [0:7];



always@(posedge clk)
begin
  if(en)
    begin
      if(we)
	     
       mem[addres]=data_in;
      else 
	   data_out=mem[addres];
 end
end

endmodule
