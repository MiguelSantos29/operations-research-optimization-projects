// Minimizar a soma dos comprimentos dos contentores utilizados
min: 11 * y_11 + 10 *  y_10 + 7 * y_7;

// Garantir que todos os itens sejam alocados
item_1: x_11_1 + x_10_1 + x_7_1 = 0;
item_2: x_11_2 + x_10_2 + x_7_2 = 6;
item_3: x_11_3 + x_10_3 + x_7_3 = 0;
item_4: x_11_4 + x_10_4 + x_7_4 = 11;
item_5: x_11_5 + x_10_5 + x_7_5 = 5;


//Maximo contentores (11 é ilimitado)
contentor_10: y_10 <= 3;
contentor_7: y_7 <= 5;

//capacidade respeitada
cap_11: 1*x_11_1 + 2*x_11_2 + 3*x_11_3 + 4*x_11_4 + 5*x_11_5 <= 11 * y_11;
cap_10: 1*x_10_1 + 2*x_10_2 + 3*x_10_3 + 4*x_10_4 + 5*x_10_5 <= 10 * y_10;
cap_7:  1*x_7_1  + 2*x_7_2  + 3*x_7_3  + 4*x_7_4  + 5*x_7_5  <= 7 * y_7;

// Restrições de capacidade dos contentores (Duvida_aula? E possivel alinahr tudo e dar wrap ou nao?)
//* Restrições para contentores de tamanho 11 */
limite_itens_4_11: f_src_11_4 <= 2 * y_11;  // Máximo de 2 itens de tamanho 4
limite_itens_5_11: f_src_11_5 <= 2 * y_11;  // Máximo de 2 itens de tamanho 5
limite_itens_2_11: f_src_11_2 <= 5 * y_11;  // Máximo de 5 itens de tamanho 2

comb_4_5_2_11: f_src_11_4 + f_src_11_5 + f_src_11_2 <= 3 * y_11;
comb_4_4_2_11: 2*f_src_11_4 + f_src_11_2 <= 3 * y_11;
comb_5_5_2_11: 2*f_src_11_5 + f_src_11_2 <= 3 * y_11;
comb_2_2_2_2_2_11: 5*f_src_11_2 <= 5 * y_11;


 /* Restrições para contentores de tamanho 10 */
limite_itens_4_10: f_src_10_4 <= 2 * y_10;
limite_itens_5_10: f_src_10_5 <= 2 * y_10;
limite_itens_2_10: f_src_10_2 <= 5 * y_10;

comb_4_5_2_10: f_src_10_4 + f_src_10_5 + f_src_10_2 <= 3 * y_10;
comb_4_4_2_10: 2*f_src_10_4 + f_src_10_2 <= 3 * y_10;
comb_5_5_2_10: 2*f_src_10_5 + f_src_10_2 <= 3 * y_10;
comb_2_2_2_2_10: 4*f_src_10_2 <= 4 * y_10;



 /* Restrições para contentores de tamanho 7 */
limite_itens_4_7: f_src_7_4 <= 1 * y_7;
limite_itens_5_7: f_src_7_5 <= 1 * y_7;
limite_itens_2_7: f_src_7_2 <= 3 * y_7;

comb_4_2_7: f_src_7_4 + f_src_7_2 <= 2 * y_7;
comb_5_2_7: f_src_7_5 + f_src_7_2 <= 2 * y_7;
comb_2_2_2_7: 3*f_src_7_2 <= 3 * y_7;





// vou garantir que só são usados contentores nao a 0 e que possa alocar o item

link_11_2: 2 * x_11_2 <= 11 * y_11;
link_10_2: 2 * x_10_2 <= 10 * y_10;
link_7_2:  2 * x_7_2  <= 7 * y_7;

link_11_4: 4 * x_11_4 <= 11 * y_11;
link_10_4: 4 * x_10_4 <= 10 * y_10;
link_7_4:  4 * x_7_4  <= 7 * y_7;

link_11_5: 5 * x_11_5 <= 11 * y_11;
link_10_5: 5 * x_10_5 <= 10 * y_10;
link_7_5:  5 * x_7_5  <= 7 * y_7;



// tem de ser inteiras
int y_11, y_10, y_7, x_11_1, x_10_1, x_7_1, x_11_2, x_10_2, x_7_2,
    x_11_3, x_10_3, x_7_3, x_11_4, x_10_4, x_7_4,
    x_11_5, x_10_5, x_7_5;
