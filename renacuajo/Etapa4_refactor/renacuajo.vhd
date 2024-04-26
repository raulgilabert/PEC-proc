package renacuajo_pkg is
    type INST is (
        AND_I, OR_I, XOR_I, NOT_I, ADD_I, SUB_I, SHA_I, SHL_I,      -- Arithmetic-logical instructions
        CMPLT_I, CMPLE_I, CMPEQ_I, CMPLTU_I, CMPLEU_I,              -- Comparison instructions
        ADDI_I,                                                     -- Immediate arithmetic instructions
        LD_I, ST_I,                                                 -- Memory instructions
        MOVI_I, MOVHI_I,                                            -- Immediate move instructions
        BZ_I, BNZ_I,                                                -- Branch instructions

        MUL_I, MULH_I, MULHU_I, DIV_I, DIVU_I,                      -- Multiplication and division instructions

        JZ_I, JNZ_I, JMP_I, JAL_I,                                  -- Jump instructions
        
        LDB_I, STB_I,                                               -- Byte memory instructions

        HALT_I,                                                     -- Halt instruction
        NOP_I
    );
end package renacuajo_pkg;

package body renacuajo_pkg is
end package body renacuajo_pkg;