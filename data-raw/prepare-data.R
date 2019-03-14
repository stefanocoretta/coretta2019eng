library(tidyverse)
library(usethis)

stimuli = read_csv("./data-raw/stimuli.csv")

eng_durations = read_csv("./data-raw/english-durations.csv", na = "--undefined--") %>%
  left_join(y = stimuli) %>%
  mutate(
    sentence_duration = sentence_off - sentence_ons,
    rel_rel = (c2_rel - c1_rel) * 1000,
    v1_duration = (v1_off - v1_ons) * 1000,
    c2_clos_duration = (c2_rel - v1_off) * 1000,
    voicing = factor(voicing, levels = c("voiceless", "voiced")),
    num_syl = factor(num_syl, levels = c("di", "mono")),
    place = factor(place, levels = c("velar", "labial")),
    c2 = factor(c2, levels = c("k", "g", "p", "b")),
    speech_rate = ifelse(num_syl == "mono", 6 / sentence_duration, 7 / sentence_duration),
    speech_rate_c = speech_rate - mean(speech_rate)
  ) %>%
  mutate_if(is.character, as.factor)

use_data(eng_durations)
