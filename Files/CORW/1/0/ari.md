Ari
===

Status: _In Progress_

Ari is a
[virtual machine](https://en.wikipedia.org/wiki/Virtual_machine)
to support what might become _Ariadne IV_.

Ari is a virtual
reduced instruction set computer
\[[RISC](https://en.wikipedia.org/wiki/Reduced_instruction_set_computer)\].

Goals
-----

 1. Simplicity (small code size, including code to compile Ari)
 2. Composability (multiple copies of Ari should be able to work together)

### Benchmarks

 - The 6502 \[[1](https://westerndesigncenter.com/wdc/documentation/w65c02s.pdf),
 [2](https://en.wikipedia.org/wiki/MOS_Technology_6502),
 [3](http://6502.org/)\]
 is too complicated.
 - RISC-V \[[1](https://riscv.org/),
 [2](https://en.wikipedia.org/wiki/RISC-V)\]
 is too complicated.

Inspiration
-----------

In the film [_The Queens Gambit_](https://www.netflix.com/title/80234304),
the protagonist's (adopted) mother makes a comment about chess,
as she watches her daughter play a match:
"It's so complicated."
Therefore, I am striving to make Ari _less_ complicated than chess
\[[1](https://handbook.fide.com/chapter/E012018),
[2](https://en.wikipedia.org/wiki/Rules_of_chess)\].

Language
--------

Ari is written in C89/90 (see Goal No. 1).
