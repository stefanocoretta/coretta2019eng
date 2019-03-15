#' Data on vowel, closure, and release to release duration in English.
#'
#' A dataset with durational measurements from 15 speakers of Mancunian English.
#'
#' @docType data
#' @format A tibble with 1800 observations and 21 variables.
#' \describe{
#'   \item{\code{speaker}}{The speaker's ID.}
#'   \item{\code{sentence}}{The sentence stimuli.}
#'   \item{\code{sentence_ons}}{The onset time of the sentence stimuli (seconds).}
#'   \item{\code{sentence_off}}{The offset time of the sentence stimuli (seconds).}
#'   \item{\code{c1_rel}}{The release of C1 (seconds).}
#'   \item{\code{c2_rel}}{The release of C2 (seconds).}
#'   \item{\code{v1_ons}}{The onset of V1 (seconds).}
#'   \item{\code{v1_off}}{THe onset of V2 (seconds).}
#'   \item{\code{frame}}{The frame sentence.}
#'   \item{\code{word}}{The target word.}
#'   \item{\code{vowel}}{The target vowel V1 (\code{ar, er, ee})}.
#'   \item{\code{vowel_ipa}}{The target vowel (V1) in IPA.}
#'   \item{\code{c2}}{The second consonant of the target word (C2).}
#'   \item{\code{place}}{The place of articulation of C2 (velar, labial).}
#'   \item{\code{voicing}}{The voicing of C2 (voiceless, voiced).}
#'   \item{\code{num_syl}}{The number of syllables of the target word (disyllabic, monosyllabic).}
#'   \item{\code{sentence_duration}}{The duration of the sentence stimuli (milliseconds).}
#'   \item{\code{rel_rel}}{The duration of the releaase-to-release interval (milliseconds).}
#'   \item{\code{v1_duration}}{The duration of V1 (milliseconds).}
#'   \item{\code{c2_clos_duration}}{The duration of the closure of C2 (milliseconds).}
#'   \item{\code{speech_rate}}{The speech rate (number of syllables in the sentence / sentence duration).}
#'   \item{\code{speech_rate_c}}{Centred speech rate.}
#' }
"eng_durations"
