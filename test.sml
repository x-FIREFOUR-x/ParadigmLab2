use "task.sml";

    (*test 1 task*)
fun provided1_test1 () = 
    let val date1 = (2002,10,15)
        val date2 = (2002,10,15)
    in
        is_older(date1,date2)
    end;

fun provided1_test2 () = 
    let val date1 = (2000,9,15)
        val date2 = (2000,10,15)
    in
        is_older(date1,date2)
    end;

val res1_1 = provided1_test1();
val res1_2 = provided1_test2();



    (*test 2 task*)
fun provided2_test1 () = 
    let val dates = [(2020,12,6), (2021, 5,10), (2003,7,18)]
        val month = 7
    in
        number_in_month(dates, month)
    end;

fun provided2_test2 () = 
    let val dates = [(2002,12,1),(2002,11,10),(2002,12,10)]
        val month = 12
    in
        number_in_month(dates, month)
    end;

val res2_1 = provided2_test1();
val res2_2 = provided2_test2();



    (*test 3 task*)
fun provided3_test1 () = 
    let val dates = [(2003, 1, 30), (2003, 1, 30), (2003, 2, 30), (2003, 3, 30), (2003, 2, 30)]
        val months = [1, 2]
    in
        number_in_months(dates, months)
    end;

fun provided3_test2 () = 
    let val dates = [(2002,12,1),(2002,11,10),(2002,12,10)]
        val months = [3, 10]
    in
        number_in_months(dates, months)
    end;

val res3_1 = provided3_test1();
val res3_2 = provided3_test2();



    (*test 4 task*)
fun provided4_test1 () = 
    let val dates = [(2003, 1, 30), (2003, 2, 28), (2003, 2, 20), (2003, 1, 25), (2003, 1, 11)]
        val month = 1
    in
        dates_in_month(dates, month)
    end;

fun provided4_test2 () = 
    let val dates = [(1990,3,15), (1997,12,7), (1558,2,11)]
        val month = 3
    in
        dates_in_month(dates, month)
    end;

val res4_1 = provided4_test1();
val res4_2 = provided4_test2();



    (*test 5 task*)
fun provided5_test1 () = 
    let val dates = [(2003, 1, 3), (2001, 3, 1), (1507, 7, 1), (2000, 1, 14), (1976, 3, 15)]
        val months = [1,3]
    in
        dates_in_months(dates, months)
    end;

fun provided5_test2 () = 
    let val dates = [(2003, 1, 30), (2003, 2, 28), (2003, 3, 20), (2003, 4, 25), (2003, 5, 11)]
        val months = [1, 10, 3, 5]
    in
        dates_in_months(dates, months)
    end;

val res5_1 = provided5_test1();
val res5_1 = provided5_test2();



    (*test 6 task*)
fun provided6_test1 () = 
    let val strings = ["abc1","def2","3gjk","4klm","5nprs"]
        val numb = 3
    in
        get_nth(strings, numb)
    end;

fun provided6_test2 () = 
    let val strings = ["jock", "fire", "water"]
        val numb = 2
    in
        get_nth(strings, numb)
    end;

val res6_1 = provided6_test1();
val res6_2 = provided6_test2();



    (*test 7 task*)
fun provided7_test1 () = 
    let val date = (2002, 1, 19)
    in
        date_to_string(date)
    end;

fun provided7_test2 () = 
    let val date = (2000, 10, 9)
    in
        date_to_string(date)
    end;

val res7_1 = provided7_test1();
val res7_2 = provided7_test2();



    (*test 8 task*)
fun provided8_test1 () = 
    let val sum = 100
        val list = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
        number_before_reaching_sum(sum, list)
    end;

fun provided8_test2 () = 
    let val sum = 31
        val list = [15, 15, 10, 10]
    in
        number_before_reaching_sum(sum, list)
    end;

val res8_1 = provided8_test1();
val res8_2 = provided8_test2();
 


    (*test 9 task*)
fun provided9_test1 () = 
    let val day = 100
    in
        what_month(day)
    end;

fun provided9_test2 () = 
    let val day = 365
    in
        what_month(day)
    end;

val res9_1 = provided9_test1();
val res9_2 = provided9_test2();



    (*test 10 task*)
fun provided10_test1 () = 
    let val day1 = 90
        val day2 = 101
    in
        month_range(day1, day2)
    end;

fun provided10_test2 () = 
    let val day1 = 58
        val day2 = 73
    in
        month_range(day1, day2)
    end;

val res10_1 = provided10_test1();
val res10_2 = provided10_test2();



    (*test 11 task*)
fun provided11_test1 () = 
    let val dates = [(1800,10,20), (1799,10,10), (1801,10,10)]
    in
        valOf(oldest_date(dates))
    end;

fun provided11_test2 () = 
    let val dates = [(2003, 1, 3), (2001, 3, 1), (1976, 7, 1), (2000, 1, 14), (1976, 3, 15)]
    in
        valOf(oldest_date(dates))
    end;
val res11_1 =  provided11_test1();
val res11_2 =  provided11_test2();
