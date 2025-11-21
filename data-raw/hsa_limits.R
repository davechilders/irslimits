library(tidyverse)

# Add HSA limits
# https://dqydj.com/historical-hsa-contribution-limit/
hsa_limits <- tribble(
  ~year, ~single, ~family, ~catchup,
  2020, 3550, 7100, 1000,
  2021, 3600, 7200, 1000,
  2022, 3650, 7300, 1000,
  2023, 3850, 7750, 1000,
  2024, 4150, 8300, 1000,
  2025, 4300, 8550, 1000,
  2026, 4400, 8750, 1000
) |>
  mutate(across(everything(), as.integer))

usethis::use_data(hsa_limits, overwrite = TRUE)
