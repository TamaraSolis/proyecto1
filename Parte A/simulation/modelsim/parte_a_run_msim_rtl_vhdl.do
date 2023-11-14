transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Tamara/Desktop/Tami/facultad/TyDD2/FPGA/Parte A/combinacional.vhd}

