tag: user.code_operators_math
-

# math operators
long minus: user.code_operator_subtraction()
long plus: user.code_operator_addition()
long mod: user.code_operator_modulo()
long divide: user.code_operator_division()
# (op (power | exponent) | to the power [of]): user.code_operator_exponent()

# comparison operators
double equals: user.code_operator_equal()
not equals: user.code_operator_not_equal()
long grater than: user.code_operator_greater_than()
long less than: user.code_operator_less_than()
long greater [or] (equal | equals): user.code_operator_greater_than_or_equal_to()
long less [or] (equal | equals): user.code_operator_less_than_or_equal_to()

# logical operators
(single | logical) and: user.code_operator_and()
(single | logical) or: user.code_operator_or()
element and: user.code_operator_bitwise_and()
element or: user.code_operator_bitwise_or()

# TODO: This operator should either be abstracted into a function or removed.
long colon: " : "
