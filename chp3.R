
# head --------------------------------------------------------------------

# chp3.R

# Date: Apr. 5, 2018

library(tidyverse)

# 3.3 ---------------------------------------------------------------------
# color, size, shape.
ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y= hwy),
             color = "blue", size = 1, shape = 21)

str(mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=cty, y= hwy),color ="blue")

# ggplot(data = mpg) +
  # geom_point(mapping = aes(x=cty, y= hwy),color = displ<5)


ggplot(mtcars, aes(wt, mpg)) +
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)


ggplot(data = mtcars) +
  geom_point(mapping = aes(x=wt, y= mpg),shape = 21, 
            color ="blue", fill = "red", stroke=2)


# 3.5 Facet ---------------------------------------------------------------------

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_wrap(~ class, nrow = 3)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(. ~ class)


# 3.6 geoms ---------------------------------------------------------------

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_smooth(
    mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE
  )

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth()

# boxplot
p <- ggplot(mpg, aes(class, hwy))
p + geom_boxplot()
ggplot(data = mpg, aes(hwy))+ geom_histogram(binwidth = 1)


ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point() + 
  geom_smooth(se = FALSE)


# 3.6.1 Exercises ---------------------------------------------------------

# 1.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(size = 3) + 
  geom_smooth(se = FALSE)

# 2.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, group = drv)) + 
  geom_point(size = 3) + 
  geom_smooth(se = FALSE)

ggplot(data = mpg) + 
  geom_point( mapping = aes(x = displ, y = hwy,  group = drv), size = 3) + 
  geom_smooth( mapping = aes(x = displ, y = hwy,  group = drv), se = FALSE)

# 3.

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_point(size = 3) + 
  geom_smooth(se = FALSE)

# 4.

ggplot(data = mpg) + 
  geom_point( mapping = aes(x = displ, y = hwy,  color = drv), size = 3) + 
  geom_smooth( mapping = aes(x = displ, y = hwy), se = FALSE)

# 5.
ggplot(data = mpg) + 
  geom_point( mapping = aes(x = displ, y = hwy,  color = drv), size = 3) + 
  geom_smooth( mapping = aes(x = displ, y = hwy, linetype = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, linetype = drv, color = drv)) + 
  geom_point(size = 3) + 
  geom_smooth(se = FALSE)

# 6. 
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, fill = drv)) + 
  geom_point(size = 4, shape = 21, color = "white", stroke = 2)
  
dim(mpg)

