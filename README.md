# ChutesAndLadders

# Purpose

This package simulates a solo player board game Chutes and Ladders

- The URL to the GitHub (i.e., the source code) is: https://github.com/ellenemon/ChutesAndLadders
- The URL to the Pkgdown webpage is: https://

# How to install
This package is called `ChutesAndLadders`. To install, run the following code (in R):

```R
library(devtools)
devtools::install_github("ellenemon/ChutesAndLadders")
```

Upon completion, you can run the following code (in R):
```R
library(ChutesAndLadders)
board <- ChutesAndLadders::define_board()
ChutesAndLadders::show_board(board)
```

# Session info

This package was developed in the following environment
```R
> devtools::session_info()
─ Session info ─────────────────────────────────────────────
 setting  value
 version  R version 4.4.0 (2024-04-24)
 os       macOS Ventura 13.6.6
 system   x86_64, darwin20
 ui       RStudio
 language (EN)
 collate  en_US.UTF-8
 ctype    en_US.UTF-8
 tz       America/Los_Angeles
 date     2024-06-06
 rstudio  2024.04.0+735 Chocolate Cosmos (desktop)
 pandoc   3.1.11 @ /Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/x86_64/ (via rmarkdown)

─ Packages ─────────────────────────────────────────────────
 package          * version    date (UTC) lib source
 brio               1.1.5      2024-04-24 [1] CRAN (R 4.4.0)
 cachem             1.1.0      2024-05-16 [1] CRAN (R 4.4.0)
 callr              3.7.6      2024-03-25 [1] CRAN (R 4.4.0)
 ChutesAndLadders * 0.0.0.9000 2024-06-06 [1] local
 cli                3.6.2      2023-12-11 [1] CRAN (R 4.4.0)
 commonmark         1.9.1      2024-01-30 [1] CRAN (R 4.4.0)
 crayon             1.5.2      2022-09-29 [1] CRAN (R 4.4.0)
 curl               5.2.1      2024-03-01 [1] CRAN (R 4.4.0)
 desc               1.4.3      2023-12-10 [1] CRAN (R 4.4.0)
 devtools           2.4.5      2022-10-11 [1] CRAN (R 4.4.0)
 digest             0.6.35     2024-03-11 [1] CRAN (R 4.4.0)
 ellipsis           0.3.2      2021-04-29 [1] CRAN (R 4.4.0)
 evaluate           0.23       2023-11-01 [1] CRAN (R 4.4.0)
 fansi              1.0.6      2023-12-08 [1] CRAN (R 4.4.0)
 fastmap            1.2.0      2024-05-15 [1] CRAN (R 4.4.0)
 fs                 1.6.4      2024-04-25 [1] CRAN (R 4.4.0)
 glue               1.7.0      2024-01-09 [1] CRAN (R 4.4.0)
 htmltools          0.5.8.1    2024-04-04 [1] CRAN (R 4.4.0)
 htmlwidgets        1.6.4      2023-12-06 [1] CRAN (R 4.4.0)
 httpuv             1.6.15     2024-03-26 [1] CRAN (R 4.4.0)
 knitr              1.46       2024-04-06 [1] CRAN (R 4.4.0)
 later              1.3.2      2023-12-06 [1] CRAN (R 4.4.0)
 lifecycle          1.0.4      2023-11-07 [1] CRAN (R 4.4.0)
 magrittr           2.0.3      2022-03-30 [1] CRAN (R 4.4.0)
 memoise            2.0.1      2021-11-26 [1] CRAN (R 4.4.0)
 mime               0.12       2021-09-28 [1] CRAN (R 4.4.0)
 miniUI             0.1.1.1    2018-05-18 [1] CRAN (R 4.4.0)
 pillar             1.9.0      2023-03-22 [1] CRAN (R 4.4.0)
 pkgbuild           1.4.4      2024-03-17 [1] CRAN (R 4.4.0)
 pkgconfig          2.0.3      2019-09-22 [1] CRAN (R 4.4.0)
 pkgload            1.3.4      2024-01-16 [1] CRAN (R 4.4.0)
 prettyunits        1.2.0      2023-09-24 [1] CRAN (R 4.4.0)
 processx           3.8.4      2024-03-16 [1] CRAN (R 4.4.0)
 profvis            0.3.8      2023-05-02 [1] CRAN (R 4.4.0)
 promises           1.3.0      2024-04-05 [1] CRAN (R 4.4.0)
 ps                 1.7.6      2024-01-18 [1] CRAN (R 4.4.0)
 purrr              1.0.2      2023-08-10 [1] CRAN (R 4.4.0)
 R6                 2.5.1      2021-08-19 [1] CRAN (R 4.4.0)
 rcmdcheck          1.4.0      2021-09-27 [1] CRAN (R 4.4.0)
 Rcpp               1.0.12     2024-01-09 [1] CRAN (R 4.4.0)
 remotes            2.5.0      2024-03-17 [1] CRAN (R 4.4.0)
 rlang              1.1.3      2024-01-10 [1] CRAN (R 4.4.0)
 rmarkdown          2.27       2024-05-17 [1] CRAN (R 4.4.0)
 roxygen2           7.3.1      2024-01-22 [1] CRAN (R 4.4.0)
 rprojroot          2.0.4      2023-11-05 [1] CRAN (R 4.4.0)
 rstudioapi         0.16.0     2024-03-24 [1] CRAN (R 4.4.0)
 sessioninfo        1.2.2      2021-12-06 [1] CRAN (R 4.4.0)
 shiny              1.8.1.1    2024-04-02 [1] CRAN (R 4.4.0)
 stringi            1.8.4      2024-05-06 [1] CRAN (R 4.4.0)
 stringr            1.5.1      2023-11-14 [1] CRAN (R 4.4.0)
 testthat           3.2.1.1    2024-04-14 [1] CRAN (R 4.4.0)
 tibble             3.2.1      2023-03-20 [1] CRAN (R 4.4.0)
 urlchecker         1.0.1      2021-11-30 [1] CRAN (R 4.4.0)
 usethis          * 2.2.3      2024-02-19 [1] CRAN (R 4.4.0)
 utf8               1.2.4      2023-10-22 [1] CRAN (R 4.4.0)
 vctrs              0.6.5      2023-12-01 [1] CRAN (R 4.4.0)
 whisker            0.4.1      2022-12-05 [1] CRAN (R 4.4.0)
 withr              3.0.0      2024-01-16 [1] CRAN (R 4.4.0)
 xfun               0.44       2024-05-15 [1] CRAN (R 4.4.0)
 xml2               1.3.6      2023-12-04 [1] CRAN (R 4.4.0)
 xopen              1.0.1      2024-04-25 [1] CRAN (R 4.4.0)
 xtable             1.8-4      2019-04-21 [1] CRAN (R 4.4.0)
 yaml               2.3.8      2023-12-11 [1] CRAN (R 4.4.0)

 [1] /Library/Frameworks/R.framework/Versions/4.4-x86_64/Resources/library
```



