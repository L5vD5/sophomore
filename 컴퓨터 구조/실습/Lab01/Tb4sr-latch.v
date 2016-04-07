`include "sr_latch.v"
module Tb4sr_latch;

reg set,reset;
wire q,qbar;
sr_latch s1(q,qbar,~set,~reset);

initial
begin
	set=1;
	reset=0;
	#5
	set=0;
	#5
	reset=1;
	#5
	reset=0;
	#5
	set=1;
	reset=1;
	#5
	$stop;
end
endmodule