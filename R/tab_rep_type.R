tab_rep_type_ui <- function() {
  list(
    radioButtons(
      "rep_type",
      "Type of Report:",
      c(
        "Institutional Report" = "inst",
        "Sector Report" = "sect"
      )
    )
  )
}

tab_rep_type_server <- function(input, output, session) {
  observeEvent(
    input$rep_type,
    {
      session$userData$next_tabs[["rep_type"]] <- switch(input$rep_type,
        inst = tab_name_to_number("inst_type"),
        sect = tab_name_to_number("report")
      )
    }
  )
}

tab_rep_type_helper <- function() {
  list(
    helpText(
      list(
        "The tool can generate two types of report:",
        tags$ul(
          tags$li("an ", strong("\"Institutional Report\""), ", which produces a report tailored to your institution"),
          tags$li("a ", strong("\"Sector Report\""), ", which produces a report for an individual sector")
        ),
        paste0(
          "Selecting \"Institutional Report\" will take you to a series of screens where you are asked for some basic information ",
          "regarding your firm's business activities."
        ),
        paste0(
          "Selecting \"Sector Report\" will take you straight to the final report page which will allow you to select ",
          "a sector and climate scenario to report on."
        )
      )
    ),
    hr()
  )
}
