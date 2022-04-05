
    (*1*)
fun is_older (date1: int* int* int, date2: int* int* int) = 
    if (#1 date1) < (#1 date2) then 
        true
    else if (#2 date1) < (#2 date2) then
        true
    else
        if (#3 date1) < (#3 date2) then
            true
        else 
            false
val ans = is_older((12,12,12), (12,12,12));
val ans = is_older((11,12,12), (12,12,12));
val ans = is_older((12,12,12), (11,12,12));


    (*2*)
fun numbers_in_month (dates : (int*int*int) list, month : int) =
    if null dates
    then 0
    else 
        if #2 (hd dates) = month then 
            numbers_in_month(tl dates, month) + 1 
        else 
            numbers_in_month(tl dates, month); 

val y = numbers_in_month([(2002,12,1),(2002,11,10),(2002,12,10)], 12);


    (*3*)
fun numbers_in_months (dates : (int*int*int) list, months : int list) = 
    if null months then 
        0
    else 
        numbers_in_months(dates, tl months) + numbers_in_month(dates, hd months);

val y = numbers_in_months([(2003, 1, 30), (2003, 1, 30), (2003, 2, 30), (2003, 2, 30), (2003, 3, 30)], [1, 2]);


    (*4*)
fun dates_in_month (dates : (int*int*int) list, month : int) =
    if null dates then
        []
    else
        if #2 (hd dates) = month then 
          (hd dates) :: dates_in_month(tl dates, month)
        else
           dates_in_month(tl dates, month);

val t = dates_in_month([(2003, 1, 30), (2003, 2, 28), (2003, 2, 20), (2003, 1, 25), (2003, 1, 11)], 1);


    (*5*)
fun dates_in_months (dates : (int*int*int) list, months : int list) =
    if null months then
        []
    else
       dates_in_month(dates, hd months) @ dates_in_months(dates, tl months);

val c = dates_in_months([(2003, 1, 3), (2001, 3, 1), (1507, 7, 1), (2000, 1, 14), (1976, 3, 15)],[1,3]);


    (*6*)
fun get_nth(strings : string list, n : int) =
    if (null strings) then
        ""
    else
        if (n = 1) then
            hd strings
        else
            get_nth(tl strings, n-1);

val c = get_nth(["abc1","def2","3gjk","4klm","5nprs"], 9);


    (*7*)
fun date_to_string(date : int*int*int) =
    get_nth([
        ("January"), ("February"), ("March"), ("April"),
        ("May"), ("June"), ("July"), ("August"),
         ("September"), ("October"), ("November"), ("December")
    ],(#2 date)) ^ " " ^ Int.toString(#3 date) ^ ", " ^ Int.toString(#1 date); 

val b = date_to_string(2000,10,9);


    (*8*)
fun number_before_reaching_sum (sum : int, lis : int list) =
    if null lis then
        0
    else
        if sum - (hd lis) > 0 then
            number_before_reaching_sum(sum - hd lis, tl lis) + 1
        else
          1;

val n_month = number_before_reaching_sum(100,[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]);
 

    (*11*)
fun oldest_date (dates : (int*int*int) list) =
    if null dates then
        NONE
    else 
        let fun oldest_nonempty (dates : (int*int*int) list) =
            if null (tl dates) then
                hd dates
            else let val tl_ans = oldest_nonempty(tl dates)
                in
                    if is_older(hd dates, tl_ans) then
                        hd dates
                    else
                        tl_ans
                end
    in
        SOME (oldest_nonempty(dates))
    end

val u = valOf(oldest_date([(1800,10,20), (1799,10,10), (1801,10,10)]));

