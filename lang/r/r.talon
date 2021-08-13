mode: user.r
mode: user.auto_lang
and code.language: r
-
# TODO: functions

tag(): user.code_operators
tag(): user.code_generic
# tag(): user.code_comment
comment: user.code_comment()

settings():
    user.code_private_function_formatter = "SNAKE_CASE"
    user.code_protected_function_formatter = "SNAKE_CASE"
    user.code_public_function_formatter = "SNAKE_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

toggle library: user.code_toggle_libraries()
library <user.code_libraries>:
    user.code_insert_library(code_libraries, "")
    key(end enter)
    
^function <user.text>$: user.code_private_function(text)



# R specific commands
chain:
    key(end)
    " %>%"
chine: 
    key(end)
    " %<>%"
tee pipe:
    key(end)
    " %T>%"

state NA: insert("NA")
boom: ", "
dot R: ".R"
page break: "<br>"
fill csiro: "scale_fill_manual(values = pal)"
colour csiro: "scale_colour_manual(values = pal)"
scales percent: "labels = scales::label_percent(accuracy = 1)"
fix UTF-8: "fileEncoding = 'UTF-8-BOM'" 
remove wos: "mutate(UT = sub('WOS:', '', UT))"
add wos: "mutate(UT = paste0('WOS:', UT))"

pivot wider:
    "pivot_wider(names_from = , values_from = )"
    key(left:17)
pivot longer:
    "pivot_longer(cols = , names_to = , values_to = )"
    key(left:28) 
write csv:
    "write.csv(, row.names = FALSE, na = '')"
    key(left:29)
play sound:
    "BRRR::skrrrahh(0)"
    key(enter) 
give praise:
    "praise::praise()"
    key(enter) 

figure caption:
    "fig.cap=''"
    key(left)
figure ID:
    "fig.id=''"
    key(left)
table caption:
    "tab.cap=''"
    key(left)
table ID:
    "tab.id=''"
    key(left)
figure height:
    "fig.height="
    key(left)
figure width:
    "fig.width="
    key(left)
table reference:
    "\@ref(tab:)"
    key(left)
figure reference:
    "Figure \@ref(fig:)"
    key(left)
