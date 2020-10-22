library(tidyverse)

ggplot(mtcars)+
  geom_point(aes(x=hp,y=wt))+
               scale_color_manual(values = c("#a42bbd","#2dc23e","#eb4034"),name = "Gears")+
  theme_bw()+
    facet_wrap(~ gear)

