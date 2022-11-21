tag: user.r
app: r_studio
app: firefox
and win.title: /RStudio Workbench/
app: chrome
and win.title: /RStudio Workbench/
-
tag(): user.code_imperative

tag(): user.code_comment_line
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_common
tag(): user.code_libraries
tag(): user.code_libraries_gui
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_math
tag(): user.common_variables

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

# TODO: migrate to function tag
^function define <user.text>$: user.code_private_function(text)

named arg {user.code_parameter_name}: user.code_insert_named_argument(code_parameter_name)


# R specific commands
chain:
    key(end)
    " %>% "
inner chain: " %>% "
# chain:
#     key(end)
#     " |> "
# inner chain: " |> "
# old chain:
#     key(end)
#     " %>% "
# old inner chain: " %>% "

# about the new pipes 
# https://r4ds.hadley.nz/workflow-pipes.html

chine: 
    key(end)
    " %<>% "
tee pipe:
    key(end)
    " %T>% "

contained in: " %in% "
not contained in: " %not_in% "
state NA: insert("NA")
boom: ", "
page break: "<br>"
NA remove: "na.rm = TRUE"
sequence data frame: 
    "seq_len(nrow())"
    key(left:2)
install bibliotecR: 
    'remotes::install_local("W:/bibliotecR_0..tar.gz", dependencies = "Imports")'
    key(left:35)

# ggplot
fill CSIRO: "scale_fill_manual(values = pal)"
colour CSIRO: "scale_colour_manual(values = pal)"
scales percent: "labels = scales::label_percent(accuracy = 1)"
rotate axis labels: "theme(axis.text.x = element_text(angle = 90))"

fix UTF-8: "fileEncoding = 'UTF-8-BOM'" 
remove wos: "mutate(UT = sub('WOS:', '', UT))"
add wos: "mutate(UT = paste0('WOS:', UT))"
keep all: ".keep_all = TRUE"
shiny JS: "shinyjs"
long else: " else "
right assign: " -> "
placeholder: "_"

pivot wider:
    "pivot_wider(names_from = , values_from = )"
    key(left:17)
pivot longer:
    "pivot_longer(cols = , names_to = , values_to = )"
    key(left:28) 
join by:
    "by = ''"
    key(left)
write csv:
    "write.csv(, row.names = FALSE, na = '')"
    key(left:29)
play sound:
    "BRRR::skrrrahh(0)"
    key(enter) 
give praise:
    "praise::praise()"
    key(enter) 

figure caption: "fig.cap='"
figure ID: "fig.id='"
table caption: "tab.cap='"
table ID: "tab.id='"
figure height: "fig.height="
figure width: "fig.width="
table reference:
    "Table \\@ref(tab:)"
    key(left)
figure reference:
    "Figure \\@ref(fig:)"
    key(left)

# quarto functions
cue {user.quarto_chunk_options} [{user.quarto_logical}]:
    edit.delete_line()
    "#| "
    insert(quarto_chunk_options)
    ": "
    insert(quarto_logical)

# Shiny
import from: "@importFrom "
are lang: "rlang"
update version: "golem::set_golem_version()"

# openxlsx
create workbook:
    "wb <- createWorkbook()"
add sheet:
    "addWorksheet(wb, sheetName = '')"
    key(left:2)
right data:
    "writeData(wb, sheet = '', x = , xy = c())"
    key(left:18)
add style:
    "addStyle(wb, sheet = '', style = , rows = , cols = )"
    key(left:30)
save work book:
    "saveWorkbook(wb, '', overwrite = TRUE)"
    key(left:20)