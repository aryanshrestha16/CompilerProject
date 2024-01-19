        default rel
        section .text
        extern _peek_byte
        extern _read_byte
        extern _write_byte
        extern _raise_error
        global _entry
_entry:
        push rbx
        push r15
        mov rbx, rdi
        lea rax, [rel _ret4158]
        push rax
        mov rax, 80
        push rax
        jmp _label_f_5e96933745
_ret4158:
        push rax
        and rax, 5
        cmp rax, 5
        pop rax
        jne _morethanone_4154
        xor rax, 5
        mov r9, [rax + 0]
        cmp r9, 2
        jne _raise_error_align
        mov r10, 0
_loop4157:
        cmp r10, r9
        je _done4155
        mov r8, [rax + 8]
        push r8
        add r10, 1
        add rax, 8
        jmp _loop4157
_done4155:
        mov rax, [rsp + 8]
        push rax
        mov rax, [rsp + 8]
        push rax
        mov rax, 152
        mov [rbx + 0], rax
        pop rax
        mov [rbx + 8], rax
        mov rax, rbx
        or rax, 2
        add rbx, 16
        mov [rbx + 0], rax
        pop rax
        mov [rbx + 8], rax
        mov rax, rbx
        or rax, 2
        add rbx, 16
        add rsp, 16
        jmp _finish4156
_morethanone_4154:
        mov r9, 2
        cmp r9, 1
        jne _raise_error_align
        push rax
        mov rax, [rsp + 0]
        push rax
        mov rax, [rsp + 16]
        push rax
        mov rax, 152
        mov [rbx + 0], rax
        pop rax
        mov [rbx + 8], rax
        mov rax, rbx
        or rax, 2
        add rbx, 16
        mov [rbx + 0], rax
        pop rax
        mov [rbx + 8], rax
        mov rax, rbx
        or rax, 2
        add rbx, 16
        add rsp, 16
_finish4156:
        global _morethanone
        global _checkdone
        push rax
        and rax, 5
        cmp rax, 5
        pop rax
        je _morethanone
        mov r8, 1
        mov [rbx + 0], r8
        mov [rbx + 8], rax
        mov rax, rbx
        jmp _checkdone
_morethanone:
        xor rax, 5
_checkdone:
        pop r15
        pop rbx
        ret
_label_f_5e96933745:
        mov r9, 2
        cmp r9, 0
        je _compile_values4161
        cmp r9, 1
        je _compile_values4160
        mov rax, [rsp + 0]
        push rax
        mov rax, 16
        pop r8
        mov r9, r8
        and r9, 15
        cmp r9, 0
        jne _raise_error_align
        mov r9, rax
        and r9, 15
        cmp r9, 0
        jne _raise_error_align
        add rax, r8
        push rax
        mov rax, [rsp + 8]
        push rax
        mov r9, 2
        mov r8, rbx
        mov [rbx + 0], r9
_compile_values4159:
        add rbx, 8
        pop rax
        mov [rbx + 0], rax
        sub r9, 1
        cmp r9, 0
        jne _compile_values4159
        mov rax, r8
        or rax, 5
        jmp _compile_values4162
_compile_values4161:
        or rbx, 5
        mov [rbx + 8], r9
        mov rax, rbx
        jmp _compile_values4162
_compile_values4160:
        mov rax, [rsp + 0]
        push rax
        mov rax, [rsp + 8]
        push rax
        mov rax, 16
        pop r8
        mov r9, r8
        and r9, 15
        cmp r9, 0
        jne _raise_error_align
        mov r9, rax
        and r9, 15
        cmp r9, 0
        jne _raise_error_align
        add rax, r8
        push rax
        pop rax
_compile_values4162:
        add rsp, 8
        ret
_raise_error_align:
        mov r15, rsp
        and r15, 8
        sub rsp, r15
        call _raise_error
