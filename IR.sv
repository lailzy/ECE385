module IR(
    input logic Clk,
    input logic [15:0] BUS,
    input logic LD_IR,
    output logic [15:0] IR


);  
        always_ff @(posedge Clk) begin
            if(LD_IR) begin
                IR <= BUS;
            end
        end
endmodule