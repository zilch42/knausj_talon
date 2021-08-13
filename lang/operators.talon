tag: user.code_operators
-
#pointer operators
# op dereference: user.code_operator_indirection()
# op address of: user.code_operator_address_of()
# op arrow: user.code_operator_structure_dereference()

#lambda
# op lambda: user.code_operator_lambda()

#subscript
# op subscript: user.code_operator_subscript()

#assignment
assign: user.code_operator_assignment()

#math operators
long minus: user.code_operator_subtraction()
long plus: user.code_operator_addition()
long mod: user.code_operator_modulo()
# op (minus | subtract) equals: user.code_operator_subtraction_assignment()
# op (plus | add) equals: user.code_operator_addition_assignment()
# op (times | multiply): user.code_operator_multiplication()
# op (times | multiply) equals: user.code_operator_multiplication_assignment()
# op divide: user.code_operator_division()
# op divide equals: user.code_operator_division_assignment()
# op mod equals: user.code_operator_modulo_assignment()
# (op (power | exponent) | to the power [of]): user.code_operator_exponent()

#comparison operators
double equals: user.code_operator_equal()
not equals: user.code_operator_not_equal()
long greater than: " > "
long greater (equal | equals): " >= "
long less than: " < "
long less [or] (equal | equals): " <= "
contained in: user.code_operator_in()
# (op | is) (less | below) [than]: user.code_operator_less_than()
# (op | is) greater [than] or equal: user.code_operator_greater_than_or_equal_to()
# (op | is) less [than] or equal: user.code_operator_less_than_or_equal_to()


#logical operators
(single | logical) and: user.code_operator_and()
(single | logical) or: user.code_operator_or()
element and: user.code_operator_bitwise_and()
element or: user.code_operator_bitwise_or()

#bitwise operators
# (op | logical | bitwise) (ex | exclusive) or: user.code_operator_bitwise_exclusive_or()
# (op | logical | bitwise) (left shift | shift left): user.code_operator_bitwise_left_shift()
# (op | logical | bitwise) (right shift | shift right): user.code_operator_bitwise_right_shift()
# (op | logical | bitwise) (ex | exclusive) or equals: user.code_operator_bitwise_exclusive_or_equals()
# [(op | logical | bitwise)] (left shift | shift left) equals: user.code_operator_bitwise_left_shift_equals()
# [(op | logical | bitwise)] (left right | shift right) equals: user.code_operator_bitwise_right_shift_equals()

#tbd
# (op | pad) colon: " : "
