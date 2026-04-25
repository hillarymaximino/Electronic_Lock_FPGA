`timescale 1ms / 1us 

module tb_aguarda_soltar_rapido;

  logic       clk;
  logic       rst;
  logic       enable;
  logic [3:0] col_matriz;
  logic [3:0] lin_matriz;
  logic [79:0] digitos_value; 
  logic       digitos_valid;

  decodificador_de_teclado dut (
    .clk(clk),
    .rst(rst),
    .enable(enable),
    .col_matriz(col_matriz),
    .lin_matriz(lin_matriz),
    .digitos_value(digitos_value),
    .digitos_valid(digitos_valid)
  );

  initial clk = 0;
  always #0.5 clk = ~clk;

  logic [3:0] tb_linha_pressionada = 4'b1111;
  logic [3:0] tb_coluna_pressionada = 4'b1111;
  assign col_matriz = (lin_matriz == tb_linha_pressionada) ? tb_coluna_pressionada : 4'b1111;

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_aguarda_soltar_rapido);

    rst = 1; enable = 0; #5;
    rst = 0; enable = 1; #15; 

    tb_linha_pressionada = 4'b1101; 
    tb_coluna_pressionada = 4'b0111; 

    #150; 
    
    #450;

    tb_linha_pressionada = 4'b1111;
    tb_coluna_pressionada = 4'b1111;

    #100; 
    
    $finish; 
  end

endmodule
