transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/unidad_control.vhd}
vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/regfile.vhd}
vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/proc.vhd}
vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/multi.vhd}
vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/datapath.vhd}
vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/control_l.vhd}
vcom -93 -work work {/home/usuari/PEC-proc/renacuajo/Etapa2.1/alu.vhd}

