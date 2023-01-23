# Single Color Leds
set_property -dict {PACKAGE_PIN R14 IOSTANDARD LVCMOS33} [get_ports { LED[0] }];
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports { LED[1] }];
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports { LED[2] }];
set_property -dict {PACKAGE_PIN M14 IOSTANDARD LVCMOS33} [get_ports { LED[3] }];
# Push Buttons
#set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports { BTN[0] }];
#set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports { BTN[1] }];
#set_property -dict {PACKAGE_PIN L20 IOSTANDARD LVCMOS33} [get_ports { BTN[2] }];
#set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports { BTN[3] }];
# Clock signal 125 MHz
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { CLK_IN }];
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 5} [get_ports { CLK_IN }];