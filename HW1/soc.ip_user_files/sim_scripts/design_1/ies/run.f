-makelib ies_lib/xilinx_vip -sv \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ipshared/866c/src/hw1.v" \
  "../../../bd/design_1/ipshared/866c/hdl/hw1_v1_0_S00_AXI.v" \
  "../../../bd/design_1/ipshared/866c/hdl/hw1_v1_0.v" \
  "../../../bd/design_1/ip/design_1_hw1_0_0/sim/design_1_hw1_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_3 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_17 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_18 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_18 \
  "../../../../soc.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

