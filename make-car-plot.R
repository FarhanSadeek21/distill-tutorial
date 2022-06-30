library(tidyverse)

car_plot <- mtcars |>
    select(mpg, wt) |>
    ggplot(aes(wt, mpg)) +
    geom_point()+
    geom_smooth(method=lm, se=F) +
    theme_clean()+
    labs(title="Fuel Efficiency and Weight",
         subtitle="Heavier cars are less fuel efficienct",
         y="MPG",
         x="Weight(1000s of lbs)",
         caption = "Henderson and Vellerman (2019)"
    )

write_rds(car_plot, "car_plot.rds")
