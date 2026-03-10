// Minimizar a soma dos comprimentos dos contentores utilizados
min: 11 * y_11 + 10 * y_10 + 7 * y_7;

// Garantir que todos os itens sejam alocados
item_1: x_11_1 + x_10_1 + x_7_1 = 0;
item_2: x_11_2 + x_10_2 + x_7_2 = 6;
item_3: x_11_3 + x_10_3 + x_7_3 = 0;
item_4: x_11_4 + x_10_4 + x_7_4 = 11;
item_5: x_11_5 + x_10_5 + x_7_5 = 5;

//Maximo contentores (11 é ilimitado)
contentor_10: y_10 <= 3;
contentor_7: y_7 <= 5;

// Restrições de capacidade dos contentores (Duvida? E possivel alinahr tudo e dar wrap ou nao?)
cap_11: 1*x_11_1 + 2*x_11_2 + 3*x_11_3 + 4*x_11_4 + 5*x_11_5 <= 11 * y_11;
cap_10: 1*x_10_1 + 2*x_10_2 + 3*x_10_3 + 4*x_10_4 + 5*x_10_5 <= 10 * y_10;
cap_7:  1*x_7_1  + 2*x_7_2  + 3*x_7_3  + 4*x_7_4  + 5*x_7_5  <= 7 * y_7;


// vou garantir que só são usados contentores nao a 0 e que possa alocar o item
link_11_1: 1 * x_11_1 <= 11 * y_11;
link_10_1: 1 * x_10_1 <= 10 * y_10;
link_7_1:  1 * x_7_1  <= 7 * y_7;

link_11_2: 2 * x_11_2 <= 11 * y_11;
link_10_2: 2 * x_10_2 <= 10 * y_10;
link_7_2:  2 * x_7_2  <= 7 * y_7;

link_11_3: 3 * x_11_3 <= 11 * y_11;
link_10_3: 3 * x_10_3 <= 10 * y_10;
link_7_3:  3 * x_7_3  <= 7 * y_7;

link_11_4: 4 * x_11_4 <= 11 * y_11;
link_10_4: 4 * x_10_4 <= 10 * y_10;
link_7_4:  4 * x_7_4  <= 7 * y_7;

link_11_5: 5 * x_11_5 <= 11 * y_11;
link_10_5: 5 * x_10_5 <= 10 * y_10;
link_7_5:  5 * x_7_5  <= 7 * y_7;



// Definição das variáveis
int y_11, y_10, y_7;

int x_11_1, x_10_1, x_7_1, x_11_2, x_10_2, x_7_2,
    x_11_3, x_10_3, x_7_3, x_11_4, x_10_4, x_7_4,
    x_11_5, x_10_5, x_7_5;
