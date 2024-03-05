onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_sisa/clk
add wave -noupdate /test_sisa/proc0/c0/boot
add wave -noupdate /test_sisa/proc0/c0/m/state
add wave -noupdate /test_sisa/proc0/addr_m
add wave -noupdate /test_sisa/proc0/datard_m
add wave -noupdate /test_sisa/proc0/data_wr
add wave -noupdate /test_sisa/proc0/wr_m
add wave -noupdate /test_sisa/proc0/word_byte
add wave -noupdate -divider control
add wave -noupdate /test_sisa/proc0/c0/pc
add wave -noupdate /test_sisa/proc0/c0/ir
add wave -noupdate /test_sisa/proc0/c0/m/state
add wave -noupdate /test_sisa/proc0/c0/ldpc_s
add wave -noupdate /test_sisa/proc0/c0/ldir
add wave -noupdate /test_sisa/proc0/c0/ldpc
add wave -noupdate /test_sisa/proc0/c0/in_d
add wave -noupdate /test_sisa/proc0/c0/ins_dad
add wave -noupdate /test_sisa/proc0/c0/immed_x2
add wave -noupdate -divider datapath
add wave -noupdate /test_sisa/proc0/e0/datard_m
add wave -noupdate /test_sisa/proc0/e0/immed
add wave -noupdate /test_sisa/proc0/e0/in_d
add wave -noupdate /test_sisa/proc0/e0/immed_x2
add wave -noupdate /test_sisa/proc0/e0/ins_dad
add wave -noupdate -divider ALU
add wave -noupdate /test_sisa/proc0/e0/alu0/x
add wave -noupdate /test_sisa/proc0/e0/alu0/y
add wave -noupdate /test_sisa/proc0/e0/alu0/op
add wave -noupdate /test_sisa/proc0/e0/alu0/w
add wave -noupdate -divider reg
add wave -noupdate /test_sisa/proc0/e0/reg0/addr_a
add wave -noupdate /test_sisa/proc0/e0/reg0/a
add wave -noupdate /test_sisa/proc0/e0/reg0/addr_b
add wave -noupdate /test_sisa/proc0/e0/reg0/b
add wave -noupdate /test_sisa/proc0/e0/reg0/addr_d
add wave -noupdate /test_sisa/proc0/e0/reg0/wrd
add wave -noupdate /test_sisa/proc0/e0/reg0/d
add wave -noupdate /test_sisa/proc0/e0/reg0/regs
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {197 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2727 ps}
