// Função objetivo
min: 7 * c7 + 10 * c10 + 11 * c11;

// Restrições de contentores
CONTENTOR1:   c7 <= 5;
CONTENTOR2:   c10 <= 3;   // CONTENTOR3: NÃO TEM RESTRIÇÃO DE QUANTIDADE

// Restrições de demanda exata dos itens (corrigidas)
ITEM2:       x0_2  + x2_4  + x4_6  + x5_7  + x6_8  + x7_9  + x8_10 + x9_11 >= 6;
ITEM4:       x0_4  + x4_8  + x5_9 >= 11;
ITEM5:       x0_5  + x5_10 >= 5;

// Definição das quantidades de cada item
qt2: item2 = x0_2  + x2_4  + x4_6  + x5_7  + x6_8  + x7_9  + x8_10  + x9_11;  // ✅ Somente fluxos de tamanho 2
qt4: item4 = x0_4  + x2_6  + x4_8  + x5_9  + x6_10  + x7_11;  // ✅ Somente fluxos de tamanho 4
qt5: item5 = x0_5  + x2_7  + x4_9  + x5_10  + x6_11;  // ✅ Somente fluxos de tamanho 5


// Restrições de conservação de fluxo (com TODAS as saídas possíveis)
NODE0:     - c11 - c10 - c7 + x0_2  + x0_4  + x0_5  = 0;
//NODE1:     0;  // Não há fluxo pois 1 não pode ser origem
NODE2:     - x0_2  + x2_4  + x2_5  + x2_6  + x2_7  = 0;
//NODE3:     0;  // Não há fluxo pois 3 não pode ser origem
NODE4:     - x0_4  - x2_4  + x4_6  + x4_8  + x4_9  = 0;
NODE5:     - x0_5  - x2_5  + x5_7  + x5_9  + x5_10 = 0;
NODE6:     - x2_6  - x4_6  + x6_8  + x6_10 + x6_11 = 0;
NODE7:     - x2_7  - x5_7  + x7_9  + x7_11 = 0;
NODE8:     - x4_8  - x6_8  + x8_10 = 0;
NODE9:     - x4_9  - x5_9  - x7_9  + x9_11 = 0;
NODE10:    - x5_10 - x6_10 - x8_10 + c10 = 0;
NODE11:    - x6_11 - x7_11 - x9_11 + c11 = 0;


// Declaração das variáveis inteiras
int c7, c10, c11,
    x0_2, x0_4, x0_5, x2_4, x4_6, x4_8, x5_7, x5_9, x5_10,
    x6_8, x7_9, x8_10, x9_11;
