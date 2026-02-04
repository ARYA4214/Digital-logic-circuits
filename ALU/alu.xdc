## ==========================
##  ALU INPUT PINS
## ==========================

# A[3:0] → SW0-SW3
set_property IOSTANDARD LVCMOS33 [get_ports {A[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {A[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {A[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {A[3]}]


# B[3:0] → SW4-SW7
set_property IOSTANDARD LVCMOS33 [get_ports {B[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {B[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {B[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {B[3]}]


# sel[2:0] → SW8-SW10
set_property IOSTANDARD LVCMOS33 [get_ports {sel[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {sel[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {sel[2]}]


## ==========================
##  ALU OUTPUT PINS
## ==========================

# Y[3:0] → LED0-LED3
set_property IOSTANDARD LVCMOS33 [get_ports {Y[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Y[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Y[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {Y[3]}]


# carry → LED4
set_property IOSTANDARD LVCMOS33 [get_ports carry]


set_property PACKAGE_PIN A4 [get_ports carry]
set_property PACKAGE_PIN A2 [get_ports {Y[0]}]
set_property PACKAGE_PIN B3 [get_ports {Y[1]}]
set_property PACKAGE_PIN A3 [get_ports {Y[2]}]
set_property PACKAGE_PIN B4 [get_ports {Y[3]}]
set_property PACKAGE_PIN V2 [get_ports {sel[0]}]
set_property PACKAGE_PIN K1 [get_ports {A[3]}]
set_property PACKAGE_PIN K2 [get_ports {A[2]}]
set_property PACKAGE_PIN L1 [get_ports {A[1]}]
set_property PACKAGE_PIN M1 [get_ports {A[0]}]
set_property PACKAGE_PIN M2 [get_ports {B[3]}]
set_property PACKAGE_PIN N1 [get_ports {B[2]}]
set_property PACKAGE_PIN N2 [get_ports {B[1]}]
set_property PACKAGE_PIN P1 [get_ports {B[0]}]
