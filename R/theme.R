#' Custom ggplot2 theme
#'
#' @export
theme_custom <- function(font_size = 14) {
  palettes <- list(
    paletteer::paletteer_d(
      'ggsci::default_jco')
  )
  options(
    ggplot2.discrete.fill = palettes,
    ggplot2.discrete.colour = palettes
  )

  ggplot2::theme_bw(font_size) +
    ggplot2::theme(
      panel.grid.major.x = element_blank(),
      panel.grid.minor.x = element_blank(),
      panel.grid.minor.y = element_blank(),
      legend.title = element_blank(),
      #axis.ticks = ggplot2::element_blank(),
      strip.background = ggplot2::element_blank(),
      strip.text.y.right = element_text(angle = 0, hjust = 0, vjust = 0.5),
      strip.text.y.left = element_text(angle = 0, hjust = 1, vjust = 0.5),
      panel.spacing = grid::unit(0, 'cm'),
      panel.border = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(),
      axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1)
    )
}
