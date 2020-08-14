module Sel_Fill(
input aclk,
input aresetn,
input sel,
input Din,
output reg Dout
    );

always @(posedge aclk or negedge aresetn) begin
    if(!aresetn)
        Dout <= 1'b0;
    else begin
        if(sel) // 选择有效数据；
            Dout <= Din;
        else
            Dout <= 1'b0;
    end
end

endmodule