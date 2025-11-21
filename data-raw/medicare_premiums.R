# Medicare Part B Premiums
premiums_b <- tribble(
  ~year, ~premium,
  1970,  4,
  1975,  6.70,
  1980,  8.70,
  1985,  15.50,
  1990,  28.60,
  1995,  46.10,
  2000,  45.50,
  2005,  78.20,
  2010,  110.50,
  2015,  104.90,
  2016,  121.80,
  2017,  134,
  2018,  134,
  2019,  135.50,
  2020,  144.60,
  2021,  148.50,
  2022,  170.10,
  2023,  164.90,
  2024,  174.80,
  2025,  185,
  2026,  202.90
)

usethis::use_data(premiums_b, overwrite = TRUE)

# IRMAA (Medicare Part B)
irmaa <- tribble(
  ~year, ~filing, ~magi_low, ~magi_high, ~adjustment,
  # Part B - Single
  2025, "single", 0, 106000, 0,
  2025, "single", 106001, 133000, 74,
  2025, "single", 133001, 167000, 185,
  2025, "single", 167001, 200000, 295.90,
  2025, "single", 200001, 500000, 406.90,
  2025, "single", 500001, Inf, 443.90,
  # Part B - MFJ
  2025, "mfj", 0, 212000, 0,
  2025, "mfj", 212001, 266000, 74,
  2025, "mfj", 266001, 334000, 185,
  2025, "mfj", 334001, 400000, 295.90,
  2025, "mfj", 400001, 750000, 406.90,
  2025, "mfj", 750001, Inf, 443.90,
  # Part B - MFS
  2025, "mfs", 0, 106000, 0,
  2025, "mfs", 106001, 394000, 406.90,
  2025, "mfs", 394001, Inf, 443.90,
) %>%
  mutate(total_premium = adjustment + premiums_b %>% filter(year == 2025) %>% pull(premium))

usethis::use_data(irmaa, overwrite = TRUE)

