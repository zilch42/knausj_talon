from talon import Context, actions, settings, Module

mod = Module()
ctx = Context()

ctx.matches = r"""
tag: user.r
"""

ctx.lists["user.code_common_function"] = {
    # base R
    "add incites citations": "add_incites_citations", 
    "as character": "as.character",
    "as data frame": "as.data.frame",
    "as date": "as.Date",
    "as double": "as.double",
    "as factor": "as.factor",
    "as integer": "as.integer",
    "as matrix": "as.matrix", 
    "as numeric": "as.numeric",
    "as vector": "as.vector", 
    "cable": "kable",
    "cable styling": "kable_styling",
    "correlation": "cor",
    "count": "count",
    "create windows": "create_windows", 
    "data frame": "data.frame", 
    "descending": "desc", 
    "dplyr if else": "if_else",
    "factor reorder": "fct_reorder", 
    "factor reverse": "fct_rev", 
    "factor": "factor",
    "g sub": "gsub", 
    "get working directory": "getwd",
    "grepl": "grepl", 
    "head": "head",
    "if else": "ifelse",
    "install packages": "install.packages",
    "is NA": "is.na",
    "is not NA": "!is.na",
    "is null": "is.null",
    "is not null": "!is.null",
    "length": "length",
    "library": "library",
    "list files": "list.files",
    "list": "list",
    "log": "log",
    "look": "View",
    "make directory": "dir.create",
    "max": "max",
    "mean": "mean",
    "min": "min",
    "NA omit": "na.omit", 
    "names": "names",
    "nrow": "nrow",
    "paste": "paste0",
    "print": "print",
    "read CSV": "read.csv",
    "read excel": "read.xlsx", 
    "reorder": "reorder",
    "repeat": "rep",
    "return": "return", 
    "RM chunk": "rm.chunk",
    "scale": "scale",
    "sequence along": "seq_along",
    "sequence length": "seq_len",
    "sequence": "seq",
    "set working directory": "setwd",
    "sort": "sort",
    "sub": "sub",
    "subset": "subset",
    "sum": "sum",
    "summary": "summary",
    "tail": "tail",
    "tidy": "tidy",
    "trim white space": "trimws",
    "type": "typeof",
    "un nest": "unnest",
    "unique": "unique",
    "unlist": "unlist", 
    "vector": "c",
    "vee table": "vtable",
    "view": "View",
    "weighted mean": "weighted.mean", 

    # dplyr
    "across": "across", 
    "add count": "add_count", 
    "anti join": "anti_join",
    "arrange": "arrange",
    "as tibble": "as_tibble",
    "bind rows": "bind_rows",
    "case when": "case_when",
    "distinct": "distinct",
    "everything": "everything",
    "filter": "filter",
    "full join": "full_join",
    "glimpse": "glimpse",
    "group by": "group_by",
    "inner join": "inner_join",
    "left join": "left_join",
    "mutate": "mutate",
    "pull": "pull",
    "relocate": "relocate", 
    "rename": "rename",
    "right join": "right_join",
    "select": "select",
    "semi join": "semi_join",
    "starts with": "starts_with",
    "summarise": "summarise",
    "symbol": "!!sym", 
    "tally": "tally",
    "tibble": "tibble",
    "ungroup": "ungroup",

    # ggplot2
    "coord cartesian": "coord_cartesian",
    "element blank": "element_blank",
    "element text": "element_text",
    "ex label":"xlab",
    "facet grid": "facet_grid",
    "facet wrap": "facet_wrap",
    "graph A B line": "geom_abline",
    "graph aesthetic": "aes", 
    "graph area": "geom_area",
    "graph bar": "geom_bar",
    "graph boxplot": "geom_boxplot",
    "graph column": "geom_col",
    "graph density": "geom_density",
    "graph histogram": "geom_histogram",
    "graph horizontal line": "geom_hline",
    "graph labels": "labs",
    "graph line": "geom_line",
    "graph plot": "ggplot", 
    "graph point": "geom_point",
    "graph pointrange": "geom_pointrange",
    "graph ribbon": "geom_ribbon",
    "graph smooth": "geom_smooth",
    "graph text": "geom_text",
    "graph vertical line": "geom_vline",
    "graph violin": "geom_violin",
    "labs": "labs",
    "scale colour manual": "scale_colour_manual",
    "scale colour viridis": "scale_colour_viridis_c",
    "scale ex continuous": "scale_x_continuous", 
    "scale ex discrete": "scale_x_discrete", 
    "scale fill manual": "scale_fill_manual",
    "scale fill viridis": "scale_fill_viridis_c",
    "scale why continuous": "scale_y_continuous", 
    "scale why discrete": "scale_y_discrete", 
    "theme minimal": "theme_minimal",
    "theme set": "theme_set",
    "theme": "theme",
    "why label":"ylab",
    "why limit": "ylim",

    # purrr
    "map character": "map_chr",
    "map data frame": "map_dfr",
    "map double": "map_dbl",
    "map": "map",
    "P map": "pmap",
    "map to": "map2",

    # stringr
    "string contains": "str_detect",
    "string detect": "str_detect",
    "string replace all": "str_replace_all",
    "string replace": "str_replace",
    "string to lower": "str_to_lower", 
    "string to title": "str_to_title",
    "string to upper": "str_to_upper", 
    "sub string": "substr",

    # tidyr
    "drop NA": "drop_na",
    "nest": "nest",
    "pivot longer": "pivot_longer",
    "pivot wider": "pivot_wider",
    "un nest": "unnest",

    # readr, readxl, and other non-base R reading/writing
    "read CSV": "read_csv",
    "read RDS": "read_rds",
    "read excel": "read_xlsx",
    "write CSV": "write_csv",
    "write RDS": "write_rds",

    # Shiny
    "action button": "actionButton",
    "bind event": "bindEvent", 
    "bind cache": "bindCache", 
    "conditional panel": "conditionalPanel",
    "data table output": "dataTableOutput",
    "download button": "downloadButton",
    "giraffe output":"girafeOutput",
    "giraffe":"girafe", 
    "input panel": "inputPanel",
    "isolate": "isolate", 
    "main panel": "mainPanel",
    "module server":"moduleServer",
    "navigation list panel": "navlistPanel",
    "observe event": "observeEvent",
    "observe":"observe",
    "plot output":"plotOutput",
    "reactive value":"reactiveVal",
    "reactive":"reactive",
    "render giraffe":"renderGirafe",
    "render plot":"renderPlot",
    "render react":"renderReact",
    "render ui": "renderUI",
    "select size input": "selectizeInput",
    "shiny ui": "shinyUI",
    "tab panel": "tabPanel",
    "table output": "tableOutput",
    "text output": "textOutput",
    "title panel": "titlePanel",
    "ui output": "uiOutput",

    # tadro
    "get meta data": "get_metadata", 

    # miscellaneous
    "tick": "tic", 
    "tok": "toc", 

}

ctx.lists["user.code_libraries"] = {
    "altmetric data": "AltmetricData", 
    "are laying": "rlang", 
    "bibliotecr": "bibliotecR",
    "bibliometrics": "bibliometrix", 
    "cable extra": "kableExtra",
    "csiro pallets": "CSIROpalettes",
    "D plier": "dpylr", 
    "dev tools": "devtools",
    "flex table": "flextable",
    "future": "future",
    "g giraffe": "ggiraph", 
    "gee gee animate": "gganimate",
    "gee gee plot": "ggplot2",
    "grid extra": "gridExtra",
    "i graph": "igraph",
    "knitter": "knitr",
    "lens data": "LensData",
    "lubridate": "lubridate",
    "magrittr": "magrittr",
    "margins": "margins",
    "office down": "officedown",
    "office R": "officer",
    "open alex": "openalexR", 
    "open excel": "openxlsx",
    "per": "purrr", 
    "R color brewer": "RColorBrewer",
    "R markdown": "rmarkdown",
    "read R": "readr",
    "reticulate": "reticulate", 
    "shiny alert": "shinyalert",
    "shiny fluent": "shiny.fluent", 
    "shiny js": "shinyjs", 
    "shiny": "shiny", 
    "test that": "testthat", 
    "tick-tock": "tictoc", 
    "tibble": "tibble", 
    "tidier": "tidyr",
    "tidy verse": "tidyverse",
    "use this": "usethis", 
    "vee table": "vtable",
    "viridis": "viridis",
    "wos concordance": "WoSConcordance",
    "wos data": "WoSdata2022",
    "you till": "utils", 
}

ctx.lists["user.code_parameter_name"] = {
    "alpha": "alpha",
    "breaks": "breaks",
    "colour": "colour",
    "data": "data",
    "fill": "fill",
    "H just": "hjust",
    "keep": ".keep",
    "label": "label",
    "labels": "labels",
    "log": "log",
    "main": "main",
    "mapping": "mapping",
    "method": "method",
    "NA remove": "na.rm",
    "path": "path",
    "position": "position",
    "plex label": "xlab",
    "plex limit": "xlim",
    "scales": "scales",
    "size": "size",
    "show legend": "show.legend",
    "sort": "sort",
    "title": "title",
    "type": "type",
    "vee just": "vjust",
    "width": "width",
    "with ties": "with_ties",
    "why label": "ylab",
    "why limit": "ylim",
    "why max": "ymax",
    "why min": "ymin",
}

mod.list("quarto_chunk_options")
ctx.lists["user.quarto_chunk_options"] = {
    "evaluate": "eval", 
    "include": "include", 
    "figure width": "fig.width", 
    "figure height": "fig.height", 
}

mod.list("quarto_logical")
ctx.lists["user.quarto_logical"] = {
    "true": "true", 
    "false": "false", 
}


@ctx.action_class("user")
class UserActions:
    def code_operator_assignment():
        actions.auto_insert(" <- ")

    def code_operator_subtraction():
        actions.auto_insert(" - ")

    def code_operator_addition():
        actions.auto_insert(" + ")

    def code_operator_multiplication():
        actions.auto_insert(" * ")

    def code_operator_exponent():
        actions.auto_insert(" ** ")

    def code_operator_division():
        actions.auto_insert(" / ")

    def code_operator_modulo():
        actions.auto_insert(" %% ")

    def code_operator_equal():
        actions.auto_insert(" == ")

    def code_operator_not_equal():
        actions.auto_insert(" != ")

    def code_operator_greater_than():
        actions.auto_insert(" > ")

    def code_operator_greater_than_or_equal_to():
        actions.auto_insert(" >= ")

    def code_operator_less_than():
        actions.auto_insert(" < ")

    def code_operator_less_than_or_equal_to():
        actions.auto_insert(" <= ")

    def code_operator_and():
        actions.auto_insert(" && ")

    def code_operator_or():
        actions.auto_insert(" || ")

    def code_operator_bitwise_and():
        actions.auto_insert(" & ")

    def code_operator_bitwise_or():               
        actions.auto_insert(' | ')

    def code_insert_null():
        actions.auto_insert("NULL")

    def code_state_if():
        actions.insert("if () {}")
        actions.key("left enter up end left:3")

    def code_state_else_if():
        actions.insert(" else if () {}")
        actions.key("left enter up end left:3")

    def code_state_else():
        actions.insert(" else {}")
        actions.key("left enter")

    def code_state_for():
        actions.insert("for ( in ) {}")
        actions.key("left enter up end left:7")

    def code_state_while():
        actions.insert("while () {}")
        actions.key("left enter up end left:3")

    def code_import():
        actions.user.insert_between("library(", ")")

    def code_comment_line_prefix():
        actions.auto_insert("# ")

    def code_state_return():
        actions.user.insert_between("return(", ")")

    def code_break():
        actions.auto_insert("break")

    def code_next():
        actions.auto_insert("next")

    def code_insert_true():
        actions.auto_insert("TRUE")

    def code_insert_false():
        actions.auto_insert("FALSE")

    def code_insert_function(text: str, selection: str):
        text += f"({selection or ''})"
        actions.user.paste(text)
        actions.edit.left()

    def code_private_function(text: str):
        result = "{} <- function () {{\n\n}}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.paste(result)
        actions.edit.up()
        actions.edit.up()
        actions.edit.line_end()
        actions.edit.left()
        actions.edit.left()
        actions.edit.left()

    def code_insert_library(text: str, selection: str):
        actions.user.insert_between("library(", ")")
        actions.user.paste(text + selection)

    def code_insert_named_argument(parameter_name: str):
        actions.insert(f"{parameter_name} = ")
