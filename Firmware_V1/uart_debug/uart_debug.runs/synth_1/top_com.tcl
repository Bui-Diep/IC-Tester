# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tfgg484-2L

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {D:/Projects Vivado/uart_debug/uart_debug.cache/wt} [current_project]
set_property parent.project_path {D:/Projects Vivado/uart_debug/uart_debug.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/uart_controller_tx.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/uart_controller_rx.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/fifo_tx.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/fifo_rx.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/baud_rate_generator.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/delay.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/decoder.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/lcd.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/checking.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/encoder.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/uart_controller.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/sampling_frequency.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/gui_fifo_tx.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/doc_fifo_rx.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/debounce_btn.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/top_decoder.vhd}
  {D:/Projects Vivado/uart_debug/uart_debug.srcs/sources_1/imports/uart_new/top_com.vhd}
}
read_xdc {{D:/Projects Vivado/uart_debug/uart_debug.srcs/constrs_1/imports/new/top_pin.xdc}}
set_property used_in_implementation false [get_files {{D:/Projects Vivado/uart_debug/uart_debug.srcs/constrs_1/imports/new/top_pin.xdc}}]

synth_design -top top_com -part xc7a35tfgg484-2L
write_checkpoint -noxdef top_com.dcp
catch { report_utilization -file top_com_utilization_synth.rpt -pb top_com_utilization_synth.pb }
