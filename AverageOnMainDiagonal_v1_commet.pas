PROGRAM AverageDiagonal;
USES CRT;

VAR
  matrix: ARRAY[1..100, 1..100] OF INTEGER; (* Оголошення квадратного масиву для зберігання елементів матриці *)
  n, i, sum, count: INTEGER; (* Змінні для розміру матриці, індексів, суми та лічильника елементів *)
  average: REAL; (* Змінна для зберігання середнього арифметичного *)

BEGIN
  CLRSCR; (* Очищення екрану перед початком виконання програми *)

  (* Введення розміру матриці *)
  WRITE('Введіть розмір квадратної матриці n (n <= 100): ');
  READLN(n); (* Зчитування розміру матриці від користувача *)

  (* Введення елементів матриці *)
  WRITELN('Введіть елементи матриці:');
  FOR i := 1 TO n DO (* Цикл для рядків матриці *)
  BEGIN
    FOR count := 1 TO n DO (* Цикл для стовпців матриці *)
    BEGIN
      WRITE('matrix[', i, ', ', count, ']: '); (* Запит на введення елемента матриці *)
      READLN(matrix[i, count]); (* Зчитування значення елемента матриці *)
    END;
  END;

  (* Обчислення суми елементів на головній діагоналі *)
  sum := 0; (* Ініціалізація суми нулем *)
  count := 0; (* Ініціалізація лічильника нулем *)
  FOR i := 1 TO n DO (* Цикл по головній діагоналі матриці *)
  BEGIN
    sum := sum + matrix[i, i]; (* Додавання елемента діагоналі до суми *)
    count := count + 1; (* Збільшення лічильника елементів *)
  END;

  (* Обчислення середнього арифметичного *)
  IF count > 0 THEN (* Перевірка, чи є елементи на головній діагоналі *)
    average := sum / count (* Обчислення середнього арифметичного *)
  ELSE
    average := 0; (* Якщо елементів немає, середнє арифметичне дорівнює 0 *)

  (* Виведення результату *)
  WRITELN('Середнє арифметичне елементів головної діагоналі: ', average:0:2); (* Виведення результату з двома десятковими знаками *)

  READLN; (* Очікування введення, щоб програма не закрилась відразу *)
END.
