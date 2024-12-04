PROGRAM AverageDiagonal;
USES CRT;

VAR
  matrix: ARRAY[1..100, 1..100] OF INTEGER;
  n, i, sum, count: INTEGER;
  average: REAL;

BEGIN
  CLRSCR;

  (* Введення розміру матриці *)
  WRITE('Введіть розмір квадратної матриці n (n <= 100): ');
  READLN(n);

  (* Введення елементів матриці *)
  WRITELN('Введіть елементи матриці:');
  FOR i := 1 TO n DO
  BEGIN
    FOR count := 1 TO n DO
    BEGIN
      WRITE('matrix[', i, ', ', count, ']: ');
      READLN(matrix[i, count]);
    END;
  END;

  (* Обчислення суми елементів на головній діагоналі *)
  sum := 0;
  count := 0;
  FOR i := 1 TO n DO
  BEGIN
    sum := sum + matrix[i, i];
    count := count + 1;
  END;

  (* Обчислення середнього арифметичного *)
  IF count > 0 THEN
    average := sum / count
  ELSE
    average := 0;

  (* Виведення результату *)
  WRITELN('Середнє арифметичне елементів головної діагоналі: ', average:0:2);

  READLN;
END.
