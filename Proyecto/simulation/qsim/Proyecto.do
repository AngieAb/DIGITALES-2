onerror {quit -f}
vlib work
vlog -work work Proyecto.vo
vlog -work work Proyecto.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Proyecto_vlg_vec_tst
vcd file -direction Proyecto.msim.vcd
vcd add -internal Proyecto_vlg_vec_tst/*
vcd add -internal Proyecto_vlg_vec_tst/i1/*
add wave /*
run -all
