onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /test_sisa/clk
add wave -noupdate /test_sisa/addr
add wave -noupdate /test_sisa/rd_data
add wave -noupdate /test_sisa/wr_data
add wave -noupdate /test_sisa/reset_proc
add wave -noupdate -expand -group proc /test_sisa/proc0/clk
add wave -noupdate -expand -group proc /test_sisa/proc0/boot
add wave -noupdate -expand -group proc /test_sisa/proc0/datard_m
add wave -noupdate -expand -group proc /test_sisa/proc0/addr_m
add wave -noupdate -expand -group proc /test_sisa/proc0/data_wr
add wave -noupdate -expand -group proc /test_sisa/proc0/wr_m
add wave -noupdate -expand -group proc /test_sisa/proc0/word_byte
add wave -noupdate -expand -group proc /test_sisa/proc0/immed_x2
add wave -noupdate -expand -group proc /test_sisa/proc0/in_d
add wave -noupdate -expand -group proc /test_sisa/proc0/ins_dad
add wave -noupdate -expand -group proc /test_sisa/proc0/wrd
add wave -noupdate -expand -group proc /test_sisa/proc0/op
add wave -noupdate -expand -group proc /test_sisa/proc0/addr_a
add wave -noupdate -expand -group proc /test_sisa/proc0/addr_b
add wave -noupdate -expand -group proc /test_sisa/proc0/addr_d
add wave -noupdate -expand -group proc /test_sisa/proc0/immed
add wave -noupdate -expand -group proc /test_sisa/proc0/pc
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/boot
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/clk
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/datard_m
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/op
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/wrd
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/addr_a
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/addr_b
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/addr_d
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/immed
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/pc
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/ins_dad
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/in_d
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/immed_x2
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/wr_m
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/word_byte
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/ir
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/pc_s
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/ldpc
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/ldir
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/ldpc_s
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/wrd_s
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/wr_m_s
add wave -noupdate -expand -group ucontrol /test_sisa/proc0/c0/word_byte_s
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/ir
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/op
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/ldpc
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/wrd
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/addr_a
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/addr_b
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/addr_d
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/immed
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/wr_m
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/in_d
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/immed_x2
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/word_byte
add wave -noupdate -expand -group control_l /test_sisa/proc0/c0/c_l/suma
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/clk
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/boot
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/ldpc_l
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/wrd_l
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/wr_m_l
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/w_b
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/ldpc
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/wrd
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/wr_m
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/ldir
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/ins_dad
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/word_byte
add wave -noupdate -expand -group multi /test_sisa/proc0/c0/m/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {57599 ps} 0}
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
WaveRestoreZoom {0 ps} {348928 ps}
