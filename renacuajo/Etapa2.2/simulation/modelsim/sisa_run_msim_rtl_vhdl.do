transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/unidad_control.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/SRAMController.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/sisa.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/regfile.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/proc.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/multi.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/MemoryController.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/datapath.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/control_l.vhd}
vcom -93 -work work {/home/usuari/universidad/Q6/PEC/lab/renacuajo/Etapa2.2/alu.vhd}

