module MAR(
    input logic Clk,
    input logic [15:0] BUS,
    output logic [15:0] MAR
    );
    always_ff @(posedge Clk)
    begin
        MAR <= BUS;
    end
endmodule