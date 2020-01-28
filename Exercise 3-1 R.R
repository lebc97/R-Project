
#
library(tidyverse)
tvs<-read_csv("https://raw.githubusercontent.com/NicoleRadziwill/Data-for-R-Examples/master/tvs-201407.csv")

# Parsed with column specification:
#   cols(
#     ZTIME = col_double(),
#     LON = col_double(),
#     LAT = col_double(),
#     WSR_ID = col_character(),
#     CELL_ID = col_character(),
#     CELL_TYPE = col_character(),
#     RANGE = col_double(),
#     AZIMUTH = col_double(),
#     AVGDV = col_double(),
#     LLDV = col_double(),
#     MXDV = col_double(),
#     MXDV_HEIGHT = col_double(),
#     DEPTH = col_double(),
#     BASE = col_double(),
#     TOP = col_double(),
#     MAX_SHEAR = col_double(),
#     MAX_SHEAR_HEIGHT = col_double()
#   )

tvs
# A tibble: 1,532 x 17
# ZTIME    LON   LAT WSR_ID CELL_ID CELL_TYPE RANGE AZIMUTH AVGDV  LLDV  MXDV MXDV_HEIGHT DEPTH
# <dbl>  <dbl> <dbl> <chr>  <chr>   <chr>     <dbl>   <dbl> <dbl> <dbl> <dbl>       <dbl> <dbl>
#   1 2.01e13  -91.5  41.3 KDVN   M7      TVS          46     250    34    83    83           4    26
# 2 2.01e13  -94.5  40.2 KMCI   J1      TVS          46      13    32    52    52           3    17
# 3 2.01e13  -88.1  41.5 KORD   W7      TVS          19     210    37    50    53           2     7
# 4 2.01e13  -94.8  40.0 KMCI   C1      TVS          33     356    32    31    70          14    18
# 5 2.01e13  -88.0  41.6 KORD   W7      TVS          14     207    41    56    56           1     6
# 6 2.01e13  -91.1  41.2 KDVN   S7      TVS          33     229    33    53    53           3     6
# 7 2.01e13 -102.   38.1 KGLD   Z3      TVS          83     202    28    61    61           9     7
# 8 2.01e13  -80.3  26.5 KMIA   Z4      TVS          44      10    42    54    56           6     8
# 9 2.01e13  -88.0  41.6 KORD   W9      TVS          14     199    40    45    80           7    13
# 10 2.01e13  -94.8  40.0 KMCI   U1      TVS          32     359    31    54    54           2    17
# # … with 1,522 more rows, and 4 more variables: BASE <dbl>, TOP <dbl>, MAX_SHEAR <dbl>,
# #   MAX_SHEAR_HEIGHT <dbl>

sub.tvs<-tvs %>% select(DEPTH,TOP,MAX_SHEAR)

summary(sub.tvs)
# DEPTH           TOP         MAX_SHEAR  
# Min.   : 5.0   Min.   : 5.0   Min.   : 10  
# 1st Qu.: 7.0   1st Qu.: 9.0   1st Qu.: 24  
# Median :10.0   Median :13.0   Median : 30  
# Mean   :12.3   Mean   :15.6   Mean   : 38  
# 3rd Qu.:17.0   3rd Qu.:21.0   3rd Qu.: 42  
# Max.   :63.0   Max.   :69.0   Max.   :283  

sd(sub.tvs$DEPTH)
#[1] 7.19
var(sub.tvs$DEPTH)
#[1] 51.7

sub.tvs %>%
  summarise(sd=sd(DEPTH))
# # A tibble: 1 x 1
# sd
# <dbl>
#   1  7.19

sub.tvs %/%
  summarise (var=var(DEPTH))

mode<-function(x) {
  uniq.vals <- unique(x)
  uniq.vals[which.max(tabulate(match(x,uniq.vals)))]
}
mode(sub.tvs$TOP)
#[1] 7

source("https://raw.githubusercontent.com/NicoleRadziwill/RFunctions/master/mode.R")
mode(c(2,3,4,4,4,4,5,6))
#[1]4
mode(sub.tvs$TOP)
#[1]7

library(pastecs)
options(scipen=100)
options(digits=3)
stat.desc(sub.tvs)
# DEPTH       TOP MAX_SHEAR
# nbr.val       1532.000  1532.000  1532.000
# nbr.null         0.000     0.000     0.000
# nbr.na           0.000     0.000     0.000
# min              5.000     5.000    10.000
# max             63.000    69.000   283.000
# range           58.000    64.000   273.000
# sum          18905.000 23850.000 58260.000
# median          10.000    13.000    30.000
# mean            12.340    15.568    38.029
# SE.mean          0.184     0.205     0.631
# CI.mean.0.95     0.360     0.401     1.238
# var             51.724    64.179   610.432
# std.dev          7.192     8.011    24.707
# coef.var         0.583     0.515     0.650
> 

# stat.desc(basic=TRUE)
# stat.desc(desc=TRUE)
# stat.desc(norm=TRUE)
# stat.desc(p=0.99)
# stat.desc(digits=3)
# stat.desc(options=999)

  
  
  
