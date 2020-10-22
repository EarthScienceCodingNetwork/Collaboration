library(tidyverse)

ggplot(mtcars)+
  geom_point(aes(x=hp,y=wt, color = as.factor(gear)))+
               scale_color_manual(
                 values = c("#a42bbd","#2dc23e","#eb4034"),
                 name = "Gears"
                 )+
  labs(c = "X",y = "Y")+
  scale_y_log10()+
  theme_bw()+
  facet_wrap(~ gear)


