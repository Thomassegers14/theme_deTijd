#' Add De Tijd theme to ggplot chart
#'
#' This function allows you to add the De Tijd theme to your ggplotgraphics.
#' @keywords theme_DeTijd
#' @export
#' @examples
#' line <- ggplot(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' theme_DeTijd()

theme_DeTijd <- function () {
  
  sysfonts::font_add(family = "Coranto", regular = "./Fonts/Coranto2-Regular.otf", bold = "./Fonts/Coranto-Bold.otf")
  sysfonts::font_add(family = "Coranto headline", regular = "./Fonts/Coranto2Headline-Regular.otf", bold = "./Fonts/CorantoHeadline-Bold.otf")
  sysfonts::font_add(family = "ARS", regular = "./Fonts/ARSMaquette-Regular.otf", bold = "./Fonts/ARSMaquette-Bold.otf")
  showtext::showtext_auto()
  
  theme(
    
    #Text format:
    #This sets the font, size, type of text for the chart's title
    text = ggplot2::element_text(family = "ARS"),
    plot.title = ggplot2::element_text(family = "Coranto headline", face = "bold", size = 9, lineheight = 1, hjust = 0),
    plot.title.position = "plot",
    
    #This sets the font, size, type and colour of text for the chart's subtitle
    plot.subtitle = ggplot2::element_text(size = 6),
    plot.caption = ggplot2::element_text(size = 6, hjust = 0),
    plot.caption.position = "plot",
    plot.background = ggplot2::element_rect(fill = "#fef7ea", color = "transparent"),
    
    #Legend format
    #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
    legend.position = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(size = 6, face = "bold"),
    legend.title = ggplot2::element_blank(),
    legend.margin = ggplot2::margin(6, 0, 3, 0),
    legend.key.size = ggplot2::unit(0.5, "lines"),
    
    #Axis format
    #This sets the text font, size and colour for the axis test, as well as setting the margins and removes lines and ticks. In some cases, axis lines and axis ticks are things we would want to have in the chart - the cookbook shows examples of how to do so.
    axis.title = ggplot2::element_blank(),
    axis.text = ggplot2::element_text(size = 6, color = "#231f20"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10)),
    axis.ticks = ggplot2::element_blank(),
    axis.line = ggplot2::element_blank(),
    
    #Grid lines
    #This removes all minor gridlines and adds major y gridlines. In many cases you will want to change this to remove y gridlines and add x gridlines. The cookbook shows you examples for doing so
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(size = 0.1),
    panel.grid.major.y = ggplot2::element_line(color = "#231f20", linetype = "11"),
    panel.grid.major.x = ggplot2::element_line(color = "#231f20", size = 0.05),
    panel.spacing.x = ggplot2::unit(1, "lines"),
    panel.spacing.y = ggplot2::unit(1, "lines"),
    
    
    #Blank background
    #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
    panel.background = ggplot2::element_blank(),
    
    #Strip background (#This sets the panel background for facet-wrapped plots to white, removing the standard grey ggplot background colour and sets the title size of the facet-wrap title to font size 22)
    strip.background = ggplot2::element_blank(),
    strip.text = ggplot2::element_text(face = "bold", size = 8, hjust = 0)
    
  )
}