
<!-- README.md is generated from README.Rmd. Please edit that file -->

# inconMore - More data for Computational Models of Simultaneous Consonance

`inconMore` is an R library that supplements simultaneous consonance
perception datasets originally provided by Peter Harrison’s wonderful
`incon` library available at <https://github.com/pmcharrison/incon>.
incon contains a range of roughness and harmonicity models and some
perceptual datasets. Here we offer extra datasets.

## Installation

You can install the current version of `inconMore` from Github by
entering the following commands into R:

``` r
if (!require(devtools)) install.packages("devtools")
devtools::install_github("tuomaseerola/inconMore")
```

## Datasets

Currently the following datasets are implemented:

| dataset | Stimulus N | Study                               |
|:--------|:-----------|:------------------------------------|
| art18   | 12         | Arthurs et al., 2018                |
| pop19   | 80         | Popescu et al., 2019                |
| lah20a  | 25         | Lahdelma & Eerola 2020 (Exp. 1)     |
| lah20b  | 72         | Lahdelma & Eerola 2020 (Exp. 2)     |
| bowl18  | 298        | Bowling et al., 2018                |
| jl12a   | 55         | Johnson-Laird et al., 2012 (Exp. 1) |
| jl12b   | 48         | Johnson-Laird et al., 2012 (Exp. 2) |
| sch03   | 12         | Schwartz et al., 2003               |
| lah16   | 15         | Lahdelma & Eerola, 2016             |

## Usage

The primary function is `inconMore`, which contains several datasets.

``` r
library(inconMore)
data <- inconMore::art18 # Arthurs and Timmers 2018
knitr::kable(head(data))
```

| dataset | name   | id  | rating | pi\_chord      | chord\_size |
|:--------|:-------|:----|-------:|:---------------|------------:|
| art18   | Major  | c1  |    5.7 | 60, 64, 67     |           3 |
| art18   | Minor  | c2  |    4.8 | 60, 63, 67     |           3 |
| art18   | Dim    | c3  |    4.3 | 60, 63, 66     |           3 |
| art18   | Aug    | c4  |    3.7 | 60, 64, 68     |           3 |
| art18   | Sus    | c5  |    5.0 | 60, 65, 67     |           3 |
| art18   | Major7 | c6  |    4.5 | 60, 64, 67, 71 |           4 |

See the package’s inbuilt documentation, `?inconMore`, for further
details.

## Example

``` r
library(inconMore)
library(hrep)
library(incon)

chord <- hrep::pi_chord(inconMore::art18$pi_chord[[1]]) # major
incon(chord,model = 'hutch_78_roughness')
#> hutch_78_roughness 
#>          0.1202426
chord <- hrep::pi_chord(inconMore::art18$pi_chord[[3]]) # diminished
incon(chord,model = 'hutch_78_roughness')
#> hutch_78_roughness 
#>          0.2005575
```

## Citation

Eerola, T. & Lahdelma, I. (2021). More data for Computational Models of
Simultaneous Consonance.

## References

Arthurs, Y., Beeston, A. V., & Timmers, R. (2018). Perception of
isolated chords: Examining frequency of occurrence, instrumental timbre,
acoustic descriptors and musical training. *Psychology of Music, 46(5)*,
662–681.

Bowling, D. L., Purves, D., & Gill, K. Z. (2018). Vocal similarity
predicts the relative attraction of musical chords. *Proceedings of the
National Academy of Sciences, 115(1)*, 216–221.
<https://doi.org/10.1073/pnas.1713206115>

Johnson-Laird, P. N., Kang, O. E., & Leong, Y. C. (2012). On musical
dissonance. *Music Perception: An Interdisciplinary Journal, 30(1)*,
19-35. <https://doi.org/10.1525/mp.2012.30.1.19>

Lahdelma, I. & Eerola, T. (2016). Mild dissonance preferred over
consonance in single chord perception. *i-Perception, 7(3)*, 1-21.
<https://doi.org/10.1177/2041669516655812>

Lahdelma, I. & Eerola, T. (2020). Cultural familiarity and musical
expertise impact the pleasantness of consonance/dissonance but not its
perceived tension. *Scientific Reports(10), 8693*.
<https://doi.org/10.1038/s41598-020-65615-8>

Popescu, T., Neuser, M. P., Neuwirth, M., Bravo, F., Mende, W., Boneh,
O., Moss, F. C., & Rohrmeier, M. (2019). The pleasantness of sensory
dissonance is mediated by musical style and expertise. *Scientific
Reports, 9(1070)*. <https://doi.org/10.1038/s41598-018-35873-8>

Schwartz, D. A., Howe, C. Q., & Purves, D. (2003). The statistical
structure of human speech sounds predicts musical universals. Journal of
Neuroscience, 23(18), 7160–7168.
<https://doi.org/10.1523/JNEUROSCI.23-18-07160.2003>
