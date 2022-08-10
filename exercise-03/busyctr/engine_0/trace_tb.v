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
  reg [0:0] PI_i_reset;
  reg [0:0] PI_i_clk;
  reg [0:0] PI_i_start_signal;
  busyctr UUT (
    .i_reset(PI_i_reset),
    .i_clk(PI_i_clk),
    .i_start_signal(PI_i_start_signal)
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
    // UUT.$formal$busyctr.\v:101$2_CHECK  = 1'b0;
    // UUT.$formal$busyctr.\v:101$2_EN  = 1'b0;
    // UUT.$formal$busyctr.\v:103$3_CHECK  = 1'b0;
    // UUT.$formal$busyctr.\v:103$3_EN  = 1'b0;
    // UUT.$formal$busyctr.\v:108$4_CHECK  = 1'b0;
    // UUT.$formal$busyctr.\v:108$4_EN  = 1'b0;
    // UUT.$past$busyctr.\v:109$1$0  = 16'b0000000000000000;
    UUT.counter = 16'b0000000000000000;
    UUT.o_busy = 1'b0;

    // state 0
    PI_i_reset = 1'b0;
    PI_i_clk = 1'b0;
    PI_i_start_signal = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_i_reset <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b1;
    end

    // state 2
    if (cycle == 1) begin
      PI_i_reset <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_i_reset <= 1'b0;
      PI_i_clk <= 1'b0;
      PI_i_start_signal <= 1'b0;
    end

    genclock <= cycle < 3;
    cycle <= cycle + 1;
  end
endmodule
