module unsrtb;

reg [3:0]parin;
reg clr;
reg clk;
reg [0:1]sel;
wire [3:0]out;

universal_shift_register uut(.parin(parin),.clr(clr),.clk(clk),.sel(sel),.out(out));
  
  initial begin
  $dumpfile("dump.vcd");
  
  $dumpvars(1);
end

initial  begin 
  out=4'b0000;
clk=0;
 always #20 clk=~clk;
end

initial  begin
parin=4'b1011;
sel=2'b00;
clr=1'b0;
#40;
  
parin=4'b1011;
sel=2'b01;
clr=1'b0;
#40;


parin=4'b1011;
sel=2'b10;
clr=1'b0;
#40;

parin=4'b1011;
sel=2'b11;
clr=1'b0;
#40;

end
endmodule
