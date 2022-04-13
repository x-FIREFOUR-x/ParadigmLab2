use "task.sml";

val res1 = is_older((12,12,12), (12,12,12));
val res1 = is_older((11,12,12), (12,12,12));
val res1 = is_older((13,10,11), (13,10,11));

val res2 = numbers_in_month([(2002,12,1),(2002,11,10),(2002,12,10)], 12);

val res3 = numbers_in_months([(2003, 1, 30), (2003, 1, 30), (2003, 2, 30), (2003, 2, 30), (2003, 3, 30)], [1, 2]);

val res4 = dates_in_month([(2003, 1, 30), (2003, 2, 28), (2003, 2, 20), (2003, 1, 25), (2003, 1, 11)], 1);

val res5 = dates_in_months([(2003, 1, 3), (2001, 3, 1), (1507, 7, 1), (2000, 1, 14), (1976, 3, 15)],[1,3]);

val res6 = get_nth(["abc1","def2","3gjk","4klm","5nprs"], 3);

val res7 = date_to_string(2000,10,9);

val res8 = number_before_reaching_sum(100,[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);
 
val res9 = what_month(100);

val res10 = month_range(90, 101);

val res11 = valOf(oldest_date([(1800,10,20), (1799,10,10), (1801,10,10)]));