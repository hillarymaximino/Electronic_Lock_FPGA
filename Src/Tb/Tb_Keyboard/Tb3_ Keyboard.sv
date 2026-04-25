`timescale 1ns/1ps

module tb_ruido_simples;

  logic       clk;
  logic       rst;
  logic       enable;
  logic [3:0] col_matriz;
  logic [3:0] lin_matriz;

  typedef struct packed {
    logic [19:0][3:0] digits;
  } senhaPac_t;

  senhaPac_t digitos_value;
  logic      digitos_valid;

  decodificador_de_teclado dut (
    .clk           (clk),
    .rst           (rst),
    .enable        (enable),
    .col_matriz    (col_matriz),
    .lin_matriz    (lin_matriz),
    .digitos_value (digitos_value),
    .digitos_valid (digitos_valid)
  );

  localparam CLK_PERIOD = 1000;
  initial clk = 0;
  always #(CLK_PERIOD/2) clk = ~clk;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;


    rst       = 1;
    enable    = 0;
    col_matriz = 4'b1111;
    repeat(3) @(posedge clk);
    rst    = 0;
    enable = 1;
    repeat(2) @(posedge clk);

 
    col_matriz = 4'b1110;
    repeat(50) @(posedge clk);

 
    col_matriz = 4'b1111;
    repeat(10) @(posedge clk);


    if (digitos_valid !== 1'b0)
      $display("FALHOU — digitos_valid subiu com ruído de 50 ciclos");
    else

    $finish;
  end

endmodule
