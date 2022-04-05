
    (*1. Function defenition old date*)
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


    (*2. Function defenition amount date in list while month equal month(2 parameters)*)
fun number_in_month (date_list: (int* int* int) list, month: int) = 
    if null date_list then 
        0
    else 
        if #2(hd date_list) = month then
            number_in_month(tl date_list, month) + 1
        else
            number_in_month(tl date_list, month)

val res = number_in_month([(11,12,1),(10,10,10),(1,12,6)],12);