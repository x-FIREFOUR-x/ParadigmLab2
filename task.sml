val x = 10;
fun is_older (date1: int* int* int, date2: int* int* int) = 
if (#1 date1) < (#1 date2)
    then true
else 
    if (#2 date1) < (#2 date2)
        true
    else
        if (#3 date1) < (#3 date2)
            true
        else 
            false
