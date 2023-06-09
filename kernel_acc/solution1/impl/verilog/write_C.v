// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="write_C_write_C,hls_ip_2021_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu7ev-ffvc1156-2-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.914000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=99,HLS_SYN_LUT=214,HLS_VERSION=2021_1}" *)

module write_C (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        M,
        N,
        fifoSortMatrixC_i_0_V_dout,
        fifoSortMatrixC_i_0_V_empty_n,
        fifoSortMatrixC_i_0_V_read,
        fifoSortMatrixC_i_1_V_dout,
        fifoSortMatrixC_i_1_V_empty_n,
        fifoSortMatrixC_i_1_V_read,
        matrixC_o,
        matrixC_o_ap_vld
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] M;
input  [31:0] N;
input  [31:0] fifoSortMatrixC_i_0_V_dout;
input   fifoSortMatrixC_i_0_V_empty_n;
output   fifoSortMatrixC_i_0_V_read;
input  [31:0] fifoSortMatrixC_i_1_V_dout;
input   fifoSortMatrixC_i_1_V_empty_n;
output   fifoSortMatrixC_i_1_V_read;
output  [31:0] matrixC_o;
output   matrixC_o_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifoSortMatrixC_i_0_V_read;
reg fifoSortMatrixC_i_1_V_read;
reg matrixC_o_ap_vld;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifoSortMatrixC_i_0_V_blk_n;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln184_fu_117_p2;
wire   [0:0] icmp_ln145_fu_128_p2;
reg    fifoSortMatrixC_i_1_V_blk_n;
wire   [31:0] add_ln183_fu_111_p2;
reg   [31:0] add_ln183_reg_158;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln184_fu_122_p2;
reg    ap_predicate_op34_read_state3;
reg    ap_predicate_op36_read_state3;
reg    ap_block_state3;
reg   [31:0] j_reg_75;
wire   [0:0] icmp_ln183_fu_106_p2;
reg   [31:0] ap_phi_mux_p_in_phi_fu_89_p4;
reg   [31:0] i_fu_40;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_40 <= 32'd0;
    end else if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (icmp_ln184_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_40 <= add_ln183_reg_158;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln183_fu_106_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_75 <= 32'd0;
    end else if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (icmp_ln184_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        j_reg_75 <= add_ln184_fu_122_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln183_reg_158 <= add_ln183_fu_111_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0)))) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln183_fu_106_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln184_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        if ((icmp_ln145_fu_128_p2 == 1'd0)) begin
            ap_phi_mux_p_in_phi_fu_89_p4 = fifoSortMatrixC_i_1_V_dout;
        end else if ((icmp_ln145_fu_128_p2 == 1'd1)) begin
            ap_phi_mux_p_in_phi_fu_89_p4 = fifoSortMatrixC_i_0_V_dout;
        end else begin
            ap_phi_mux_p_in_phi_fu_89_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_in_phi_fu_89_p4 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln183_fu_106_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln145_fu_128_p2 == 1'd1) & (icmp_ln184_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        fifoSortMatrixC_i_0_V_blk_n = fifoSortMatrixC_i_0_V_empty_n;
    end else begin
        fifoSortMatrixC_i_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (ap_predicate_op36_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        fifoSortMatrixC_i_0_V_read = 1'b1;
    end else begin
        fifoSortMatrixC_i_0_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln145_fu_128_p2 == 1'd0) & (icmp_ln184_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        fifoSortMatrixC_i_1_V_blk_n = fifoSortMatrixC_i_1_V_empty_n;
    end else begin
        fifoSortMatrixC_i_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (ap_predicate_op34_read_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        fifoSortMatrixC_i_1_V_read = 1'b1;
    end else begin
        fifoSortMatrixC_i_1_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (icmp_ln184_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        matrixC_o_ap_vld = 1'b1;
    end else begin
        matrixC_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln183_fu_106_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (icmp_ln184_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~(((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0))) & (icmp_ln184_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln183_fu_111_p2 = (i_fu_40 + 32'd1);

assign add_ln184_fu_122_p2 = (j_reg_75 + 32'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

always @ (*) begin
    ap_block_state3 = (((ap_predicate_op36_read_state3 == 1'b1) & (fifoSortMatrixC_i_0_V_empty_n == 1'b0)) | ((ap_predicate_op34_read_state3 == 1'b1) & (fifoSortMatrixC_i_1_V_empty_n == 1'b0)));
end

always @ (*) begin
    ap_predicate_op34_read_state3 = ((icmp_ln145_fu_128_p2 == 1'd0) & (icmp_ln184_fu_117_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op36_read_state3 = ((icmp_ln145_fu_128_p2 == 1'd1) & (icmp_ln184_fu_117_p2 == 1'd0));
end

assign icmp_ln145_fu_128_p2 = ((j_reg_75 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln183_fu_106_p2 = ((i_fu_40 == M) ? 1'b1 : 1'b0);

assign icmp_ln184_fu_117_p2 = ((j_reg_75 == N) ? 1'b1 : 1'b0);

assign matrixC_o = ap_phi_mux_p_in_phi_fu_89_p4;

endmodule //write_C
