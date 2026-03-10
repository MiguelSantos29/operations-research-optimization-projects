// Função objetivo
min: 7 * c7 + 10 * c10 + 11 * c11;

// Restrições de contentores
CONTENTOR1:   c7 <= 5;
CONTENTOR2:   c10 <= 3;   // CONTENTOR3: NÃO TEM RESTRIÇÃO DE QUANTIDADE

// Restrições de itens
// ITEM1: não existe
ITEM2:       x0_2  + x2_4  + x4_6  + x5_7  + x6_8  + x7_9  + x8_10 + x9_11 = 6;
ITEM4:       x0_4  + x4_8  + x5_9 = 11;
ITEM5:       x0_5  + x5_10 = 5;

// Restrições de conservação de fluxo (com propagação contínua dos fluxos)
NODE0:     c11  + c10  + c7  - x0_5  - x0_4  - x0_2                     = 0;
//NODE1: Nao e possivel haver fluxo para este nodo
NODE2:     x0_2  - x2_4 - x2_3                                       = 0;
NODE3: +x2_3 - x3_4 = 0;
NODE4:  +x3_4 + x0_4 - x4_8 - x4_6 + x2_4 - x4_5           = 0;
NODE5: +x4_5 + x0_5 - x5_10 - x5_7 - x5_9  - x5_6        = 0;
NODE6:  +x5_6 + x4_6 - x6_8 - x6_7= 0;
NODE7:   +x6_7 - c7 + x5_7 - x7_9 - x7_8= 0;
NODE8:   +x7_8 + x4_8 + x6_8 - x8_10 - x8_9= 0;
NODE9:   +x8_9 + x5_9 + x7_9 - x9_11 - x9_10 = 0;
NODE10:  +x9_10 - c10 + x8_10 + x5_10 - x10_11= 0;
NODE11:  +x10_11 - c11 + x9_11  = 0;








qt2: item2 = x0_2  + x2_4  + x4_6  + x5_7  + x6_8  + x7_9  + x8_10 + x9_11;
qt4: item4 = x0_4  + x4_8  + x5_9;
qt5: item5 = x0_5  + x5_10;

// Declaração das variáveis inteiras
int c7, c10, c11,
    x0_2, x0_4, x0_5, x2_4, x4_6, x4_8, x5_7, x5_9, x5_10,
    x6_8, x7_9, x8_10, x9_11;
