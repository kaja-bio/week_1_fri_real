scurvy = read.csv("scurvy.csv")
head(scurvy)
#good_treatments = scurvy[scurvy$gum_rot_d6=="1_mild" || scurvy$gum_rot_d6=="0_none" || scurvy$weakness_of_the_knees_d6=="1_mild"  || scurvy$weakness_of_the_knees_d6=="0_none" || scurvy$lassitude =="0_none"|| scurvy$lassitude =="1_mild"  || scurvy$skin_sores_d6=="0_none"|| scurvy$skin_sores_d6 =="1_mild"]
scurvy$all = paste(scurvy$skin_sores_d6, scurvy$gum_rot_d6,scurvy$weakness_of_the_knees_d6, scurvy$lassitude_d6)
library(tidyverse)
no_gum = filter(scurvy$gum_rot_d6, scurvy$gum_rot_d6 %in% c("2_moderate", "3_severe"))
summary(scurvy)
#none of this works lmaooo
plot(scurvy$treatment, scurvy$fit_for_duty_d6)
