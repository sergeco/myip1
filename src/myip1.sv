module myip1 (
    input  logic        clk,
    input  logic        reset_n,
    input  logic        data_i_valid,
    input  logic [15:0] data_i,
    output logic        data_o_valid,
    output logic [15:0] data_o
);


always_ff @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        data_o       <= 16'b0;
        data_o_valid <= 1'b0;
    end else if (data_i_valid) begin
        data_o       <= data_o + 16'd600;
        data_o_valid <= 1'b1;
    end else begin
        data_o_valid <= 1'b0;
    end
end


endmodule
