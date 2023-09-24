module MDR(
    input logic Clk,
    input logic MIO_EN,
    input logic [15:0] BUS,
    input logic MDR_In,
    input logic LD_MDR
    output logic [15:0] MDR
);
    logic [15:0] temp;
    always_comb begin
        if(MIO_EN == 1) begin
            temp = BUS;
        end
        else begin
            temp = MDR_In;
        end
    end

    always_ff @(posedge Clk) begin
        if(LD_MDR == 1) begin
            MDR <= temp;
        end
    end


            

endmodule