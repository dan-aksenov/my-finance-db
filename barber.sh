sed -i 's/\tзарплатная\ карта\t/\t4\t/gI' $1
sed -i 's/\tдебетная\ карта\t/\t3\t/gI' $1
sed -i 's/\tкредитная\ карта\t/\t2\t/gI' $1
sed -i 's/\tналичные\t/\t1\t/gI' $1

sed -i 's/\tАвтомобиль\t/\t1\t/gI' $1
sed -i 's/\tПродукты\t/\t2\t/gI' $1
sed -i 's/\tРазвлечения\t/\t3\t/gI' $1
sed -i 's/\tКафе и рестораны\t/\t4\t/gI' $1
sed -i 's/\tОбед на работе\t/\t5\t/gI' $1
sed -i 's/\tИнвестиции\t/\t6\t/gI' $1
sed -i 's/\tБензин\t/\t7\t/gI' $1
sed -i 's/\tУчёба\t/\t8\t/gI' $1
sed -i 's/\tПромтовары\t/\t9\t/gI' $1
sed -i 's/\tПодарки\t/\t10\t/gI' $1
sed -i 's/\tКвартплата\t/\t11\t/gI' $1
sed -i 's/\tБанк.комиссия\t/\t12\t/gI' $1
sed -i 's/\tМобильник\t/\t13\t/gI' $1
sed -i 's/\tИнтернет\t/\t14\t/gI' $1
sed -i 's/\tПарковка\t/\t15\t/gI' $1
sed -i 's/\tМедицина\t/\t16\t/gI' $1
sed -i 's/\tТранспорт\t/\t17\t/gI' $1
sed -i 's/\tУслуги\t/\t18\t/gI' $1
sed -i 's/\tсамолет\t/\t19\t/gI' $1
sed -i 's/\tГостиница\t/\t20\t/gI' $1
sed -i 's/\tПоезд\t/\t21\t/gI' $1
sed -i 's/\tДругое\t/\t22\t/gI' $1
sed -i 's/\tСпорт\t/\t23\t/gI' $1
sed -i 's/\tЧаевые\t/\t24\t/gI' $1

sed -i 's/\([0-9]\) \([0-9]\)/\1\2/g' $1
