module SEXT(
    input logic [15:0] IR,
    output logic [15:0] SEXT_10,
    output logic [15:0] SEXT_8,
    output logic [15:0] SEXT_5,
    output logic [15:0] SEXT_4
    );
    assign SEXT_10 = {6{IR[9]}, IR[9:0]};
    assign SEXT_8 = {8{IR[7]}, IR[7:0]};
    assign SEXT_5 = {11{IR[4]}, IR[4:0]};
    assign SEXT_4 = {12{IR[3]}, IR[3:0]};
endmodule