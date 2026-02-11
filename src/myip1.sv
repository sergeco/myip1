module myip1 (
    input  logic        clk_i,
    input  logic        rst_ni,
    input  logic        select_i,
    output logic [15:0] data_o
);

    always_comb begin
        if (select_i) begin
            data_o = 16'hDEAD;
        end else begin
            data_o = 16'h0000;
        end
    end

endmodule
