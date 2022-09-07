from talon import Context, Module, actions, clip, imgui, settings, ui

ctx = Context()

ctx.matches = r"""
mode: user.r
mode: user.auto_lang
and code.language: r
"""

ctx.lists["user.code_functions"] = {
    # base R
    "add incites citations": "add_incites_citations", 
    # "adorn rows": "adorn_rows", 
    "as character": "as.character",
    "as data frame": "as.data.frame",
    "as date": "as.Date",
    "as double": "as.double",
    "as factor": "as.factor",
    "as integer": "as.integer",
    "as numeric": "as.numeric",
    "as matrix": "as.matrix", 
    "as vector": "as.vector", 
    # "base read RDS": "readRDS",
    # "base save RDS": "saveRDS",
    # "cable": "kable",
    # "correlation": "cor",
    "count": "count",
    # "covariance": "cov",
    "create windows": "create_windows", 
    "data frame": "data.frame", 
    "distinct": "distinct", 
    "descending": "desc", 
    # "describe": "describe",
    # "eigen": "eigen",
    # "ex table": "xtable",
    "factor": "factor",
    "factor reorder": "fct_reorder", 
    "factor reverse": "fct_rev", 
    "get working directory": "getwd",
    "g sub": "gsub", 
    "grepl": "grepl", 
    "head": "head",
    "if else": "ifelse",
    "dplyr if else": "if_else",
    "install packages": "install.packages",
    "is NA": "is.na",
    "is not NA": "!is.na",
    "length": "length",
    "library": "library",
    "list files": "list.files",
    "list": "list",
    # "LM": "lm",
    "logarithm": "log",
    "make directory": "dir.create",
    # "margins": "margins",
    "max": "max",
    "mean": "mean",
    "min": "min",
    "NA omit": "na.omit", 
    "names": "names",
    "nest": "nest",
    "nrow": "nrow",
    "paste": "paste0",
    "print": "print",
    "reorder": "reorder",
    "read CSV": "read.csv",
    "read excel": "read.xlsx", 
    "repeat": "rep",
    "return": "return", 
    "RM chunk": "rm.chunk",
    "scale": "scale",
    "sequence along": "seq_along",
    "sequence length": "seq_len",
    "sequence": "seq",
    "set working directory": "setwd",
    # "sort": "sort",
    # "subset": "subset",
    "sub": "sub",
    "sum": "sum",
    "summary": "summary",
    "tail": "tail",
    # "tidy": "tidy",
    "trim white space": "trimws",
    # "type": "typeof",
    "unique": "unique",
    "unlist": "unlist", 
    "un nest": "unnest",
    "vector": "c",
    "weighted mean": "weighted.mean", 
    "look": "View",
# dplyr
    # "anti join": "anti_join",
    "add count": "add_count", 
    "arrange": "arrange",
    "as tibble": "as_tibble",
    "bind rows": "bind_rows",
    # "case when": "case_when",
    "distinct": "distinct",
    "everything": "everything",
    "filter": "filter",
    # "full join": "full_join",
    # "glimpse": "glimpse",
    "group by": "group_by",
    "inner join": "inner_join",
    "left join": "left_join",
    "mutate": "mutate",
    "pull": "pull",
    "relocate": "relocate", 
    # "rename all": "rename_all",
    "rename": "rename",
    "right join": "right_join",
    # "select all": "select_all",
    "select": "select",
    # "semi join": "semi_join",
    "starts with": "starts_with",
    "summarise": "summarise",
    "symbol": "!!sym", 
    "tally": "tally",
    "tibble": "tibble",
    "ungroup": "ungroup",
# ggplot2
    "coord cartesian": "coord_cartesian",
    "element text": "element_text",
    "element blank": "element_blank",
    "facet grid": "facet_grid",
    "facet wrap": "facet_wrap",
    "graph A B line": "geom_abline",
    "graph area": "geom_area",
    "graph aesthetic": "aes", 
    "graph bar": "geom_bar",
    "graph boxplot": "geom_boxplot",
    "graph column": "geom_col",
    "graph density": "geom_density",
    "graph histogram": "geom_histogram",
    "graph horizontal line": "geom_hline",
    "graph line": "geom_line",
    "graph plot": "ggplot", 
    "graph point": "geom_point",
    "graph pointrange": "geom_pointrange",
    # "graph polygon": "geom_polygon",
    "graph ribbon": "geom_ribbon",
    # "graph segment": "geom_segment",
    "graph smooth": "geom_smooth",
    "graph text": "geom_text",
    "graph vertical line": "geom_vline",
    # "graph violin": "geom_violin",
    "graph labels": "labs",
    "ex label":"xlab",
    "ex limit": "xlim",
    "why label":"ylab",
    "why limit": "ylim",
    "scale colour manual": "scale_colour_manual",
    "scale fill manual": "scale_fill_manual",
    # "scale fill viridis": "scale_fill_viridis_c",
    # "scale colour viridis": "scale_colour_viridis_c",
    "scale ex discrete": "scale_x_discrete", 
    "scale why discrete": "scale_y_discrete", 
    "scale ex continuous": "scale_x_continuous", 
    "scale why continuous": "scale_y_continuous", 
    "theme": "theme",
    "theme minimal": "theme_minimal",
    "theme set": "theme_set",
# purrr
    "map character": "map_chr",
    "map data frame": "map_dfr",
    "map double": "map_dbl",
    "map": "map",
    "map to": "map2",
    "P map": "pmap",
# strings
    "string contains": "str_detect",
    "string detect": "str_detect",
    "string replace all": "str_replace_all",
    "string replace": "str_replace",
    "string to upper": "str_to_upper", 
    "string to lower": "str_to_lower", 
    "string to title": "str_to_title",
    "sub string": "substr",
# Shiny
    "bind event": "bindEvent", 
    "isolate": "isolate", 
    "giraffe output":"girafeOutput",
    "render giraffe":"renderGirafe",
    "render react":"renderReact",
    "render ui":"renderUI",
    "plot output":"plotOutput",
    "render plot":"renderPlot",
    "module server":"moduleServer",
    "reactive":"reactive",
    "reactive value":"reactiveVal",
    "observe":"observe",
    "observe event":"observeEvent",
    "giraffe":"girafe", 
# Base
}

ctx.lists["user.code_libraries"] = {
    "altmetric data": "AltmetricData", 
    "bibliotecr": "bibliotecR",
    "cable": "kable",
    "csiro pallets": "CSIROpalettes",
    "D plier": "dpylr", 
    "dev tools": "devtools",
    "lex table": "flextable",
    "gee gee animate": "gganimate",
    "grid extra": "gridExtra",
    "g giraffe": "ggiraph", 
    "i graph": "igraph",
    "knitter": "knitr",
    "lens data": "LensData",
    "lubridate": "lubridate",
    "magrittr": "magrittr",
    "office down": "officedown",
    "office R": "officer",
    "open excel": "openxlsx",
    "per": "purrr", 
    "are laying": "rlang", 
    "reticulate": "reticulate", 
    "R markdown": "rmarkdown",
    "shiny": "shiny", 
    "shiny fluent": "shiny.fluent", 
    "shiny js": "shinyjs", 
    "tibble": "tibble", 
    "tidy verse": "tidyverse",
    "wos concordance": "WoSConcordance",
    "wos data": "WoSdata2022",
    "use this": "usethis", 
    "you till": "utils", 

}


@ctx.action_class('user')
class UserActions:
    def code_operator_assignment():               actions.auto_insert(' <- ')
    def code_operator_subtraction():              actions.auto_insert(' - ')
    def code_operator_addition():                 actions.auto_insert(' + ')
    def code_operator_multiplication():           actions.auto_insert(' * ')
    def code_operator_exponent():                 actions.auto_insert(' ** ')
    def code_operator_division():                 actions.auto_insert(' / ')
    def code_operator_modulo():                   actions.auto_insert(' %% ')
    def code_operator_equal():                    actions.auto_insert(' == ')
    def code_operator_not_equal():                actions.auto_insert(' != ')
    def code_operator_greater_than():             actions.auto_insert(' > ')
    def code_operator_greater_than_or_equal_to(): actions.auto_insert(' >= ')
    def code_operator_less_than():                actions.auto_insert(' < ')
    def code_operator_less_than_or_equal_to():    actions.auto_insert(' <= ')
    def code_operator_in():                       actions.auto_insert(' %in% ')
    def code_operator_and():                      actions.auto_insert(' && ')
    def code_operator_or():                       actions.auto_insert(' || ')
    def code_operator_bitwise_and():              actions.auto_insert(' & ')
    def code_operator_bitwise_or():               actions.auto_insert(' | ')
    def code_null():                              actions.auto_insert('NULL')
    def code_state_if():
        actions.insert('if () {}')
        actions.key('left enter up end left:3')
    def code_state_else_if():
        actions.insert(' else if () {}')
        actions.key('left enter up end left:3')
    def code_state_else():
        actions.insert(' else {}')
        actions.key('left enter')
    def code_state_for():
        actions.insert('for ( in ) {}')
        actions.key('left enter up end left:7')
    def code_state_while():
        actions.insert('while () {}')
        actions.key('left enter up end left:3')
    def code_import():
        actions.insert('library()')
        actions.key('left')
    def code_comment(): actions.auto_insert('# ')
    def code_state_return():
        actions.insert('return()')
        actions.key('left')
    def code_is_null():
        actions.auto_insert("is.null()")
    def code_is_not_null():
        actions.auto_insert("!is.null()")
    def code_break(): actions.auto_insert('break')
    def code_next():  actions.auto_insert('next')
    def code_true():  actions.auto_insert('TRUE')
    def code_false(): actions.auto_insert('FALSE')
    def code_insert_function(text: str, selection: str):
        if selection:
            text = text + "({})".format(selection)
        else:
            text = text + "()"
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
        actions.insert("library()")
        actions.edit.left()
        actions.clip.set_text(text + "{}".format(selection))
        actions.edit.paste()
