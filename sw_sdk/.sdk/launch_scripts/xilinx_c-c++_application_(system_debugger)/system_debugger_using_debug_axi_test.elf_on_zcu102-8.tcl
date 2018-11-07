connect -url tcp:lentinus15:3121
source /proj/gsd/vivado/SDK/2018.2/scripts/sdk/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A12411"} -index 1
loadhw -hw /group/techsup/parkerh/ext_axi_interface/sw_sdk/top_level_hw_platform_0/system.hdf -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A12411"} -index 1
source /group/techsup/parkerh/ext_axi_interface/sw_sdk/top_level_hw_platform_0/psu_init.tcl
psu_init
after 1000
psu_ps_pl_isolation_removal
after 1000
psu_ps_pl_reset_config
catch {psu_protection}
targets -set -nocase -filter {name =~"*A53*0" && jtag_cable_name =~ "Digilent JTAG-SMT2NC 210308A12411"} -index 1
rst -processor
dow /group/techsup/parkerh/ext_axi_interface/sw_sdk/axi_test/Debug/axi_test.elf
configparams force-mem-access 0
bpadd -addr &main
