# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.cache/wt [current_project]
set_property parent.project_path /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/sources_1/bd/block_design/block_design.bd
set_property used_in_implementation false [get_files -all /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/sources_1/bd/block_design/ip/block_design_processing_system7_0_0/block_design_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/sources_1/bd/block_design/block_design_ooc.xdc]
set_property is_locked true [get_files /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/sources_1/bd/block_design/block_design.bd]

read_verilog -library xil_defaultlib /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/sources_1/bd/block_design/hdl/block_design_wrapper.v
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/constrs_1/imports/Projects/ZYBO_Master.xdc
set_property used_in_implementation false [get_files /opt/Xilinx/Projects/zybo_petalinux_i2c_lcd/zybo_petalinux_i2c_lcd.srcs/constrs_1/imports/Projects/ZYBO_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top block_design_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef block_design_wrapper.dcp

catch { report_utilization -file block_design_wrapper_utilization_synth.rpt -pb block_design_wrapper_utilization_synth.pb }
