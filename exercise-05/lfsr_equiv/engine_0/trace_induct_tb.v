`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  reg [0:0] PI_i_in;
  reg [0:0] PI_i_clk;
  reg [0:0] PI_i_ce;
  reg [0:0] PI_i_reset;
  lfsr_equiv UUT (
    .i_in(PI_i_in),
    .i_clk(PI_i_clk),
    .i_ce(PI_i_ce),
    .i_reset(PI_i_reset)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$lfsr_equiv.\v:75$2_CHECK  = 1'b0;
    // UUT.$formal$lfsr_equiv.\v:75$2_EN  = 1'b0;
    UUT.fib.sreg = 8'b00000000;
    UUT.gal.sreg = 8'b00000010;

    // state 0
    PI_i_in = 1'b0;
    PI_i_clk = 1'b0;
    PI_i_ce = 1'b0;
    PI_i_reset = 1'b0;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 4
    if (cycle == 3) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 5
    if (cycle == 4) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 6
    if (cycle == 5) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 7
    if (cycle == 6) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 8
    if (cycle == 7) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 9
    if (cycle == 8) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 10
    if (cycle == 9) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    // state 11
    if (cycle == 10) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b1;
      PI_i_reset <= 1'b0;
    end

    // state 12
    if (cycle == 11) begin
      PI_i_in <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_ce <= 1'b0;
      PI_i_reset <= 1'b0;
    end

    genclock <= cycle < 12;
    cycle <= cycle + 1;
  end
endmodule
