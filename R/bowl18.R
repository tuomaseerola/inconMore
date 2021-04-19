#' Bowling et al 2018 consonance ratings
#'
#' A dataset containing ratings of consonance.
#'
#' @format A data frame with 298 rows and 4 variables:
#' \describe{
#'   \item{id}{Chord names}
#'   \item{name}{Chord name if known}
#'   \item{chord_size}{Number of pitches in the chord, numerosity}
#'   \item{rating}{Mean rating}
#'   \item{rating_sd}{Standard deviation of rating}
#'   \item{rating_se}{Standard error of rating}
#'   \item{fr_chord}{Frequency representation of the chord tones}
#'   \item{pi_chord}{pitch of the chord tones in midi}
#'   \item{pi_chord_int}{pitch of the chord tones in integer}
#'   \item{pi_chord_type_int}{pitch of the chord tones in integer}
#'   \item{tuning_tonic_pc}{pitch of the chord tones in integer}
#'   \item{tuning_tonic_pc_int}{pitch of the chord tones in integer}
#'   ...
#' }
#' @source \url{https://doi.org/10.1073/pnas.1713206115}
"bowl18"
