vlog -work work C:/Users/Tamara/Desktop/Tami/facultad/TyDD2/FPGA/Parte C/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sumador_completo_vlg_vec_tst
onerror {resume}
add wave {sumador_completo_vlg_vec_tst/i1/a0}
add wave {sumador_completo_vlg_vec_tst/i1/a1}
add wave {sumador_completo_vlg_vec_tst/i1/a2}
add wave {sumador_completo_vlg_vec_tst/i1/a3}
add wave {sumador_completo_vlg_vec_tst/i1/b0}
add wave {sumador_completo_vlg_vec_tst/i1/b1}
add wave {sumador_completo_vlg_vec_tst/i1/b2}
add wave {sumador_completo_vlg_vec_tst/i1/b3}
add wave {sumador_completo_vlg_vec_tst/i1/C}
add wave {sumador_completo_vlg_vec_tst/i1/f0}
add wave {sumador_completo_vlg_vec_tst/i1/f1}
add wave {sumador_completo_vlg_vec_tst/i1/f2}
add wave {sumador_completo_vlg_vec_tst/i1/f4}
add wave {sumador_completo_vlg_vec_tst/i1/suma_resta}
add wave {sumador_completo_vlg_vec_tst/i1/V}
add wave {sumador_completo_vlg_vec_tst/i1/Z}
run -all
