#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Ошибка: не переданы аргументы"
    exit 1
fi

count=$#
sum=0

for num in "$@"; do
    sum=$((sum + num))
done

average=$(( (sum * 100) / count ))  # Умножаем на 100 для двух знаков после запятой

echo "Количество чисел: $count"
echo "Сумма чисел: $sum"
echo "Среднее арифметическое: $(echo $average | sed 's/..$/.&/')"  # Форматируем вывод