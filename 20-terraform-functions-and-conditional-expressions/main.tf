//We can use (+,-,*,/) numeric operator. 
output addition {
    value = var.prize_1 + var.prize_2 
}
//Equality operator (==, !=)
//Conditional <condition> ? vartosetiftrue : vartosetiffalse
output equality {
    value = var.prize_1 != var.prize_2 ? var.name_1 : var.name_2 
}
//comparison (<,>,<=,>=) and logical (&&, ||, !)
output comparison {
    value = var.prize_1 < var.prize_2 ? var.name_1 : var.name_2 
}

//Numerical functions ceil, floor, min, max
output numerical_functions_min_max {
    value = min(var.prizes...)
}
output numerical_functions_ceil_floor {
    value = ceil(var.prize_1)
}





