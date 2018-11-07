vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_19

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 riviera/axi_gpio_v2_0_19

vlog -work xilinx_vip  -sv2k12 "+incdir+/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/include" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/proj/gsd/vivado/Vivado/2018.2/data/xilinx_vip/include" \
"/proj/gsd/vivado/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/proj/gsd/vivado/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/proj/gsd/vivado/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../ipstatic/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../ipstatic/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../ext_axi_interface.srcs/sources_1/ip/axi_gpio_0/sim/axi_gpio_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

