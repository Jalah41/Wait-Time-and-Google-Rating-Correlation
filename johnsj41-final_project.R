# johnsj41-final_project.R
# STA 145 Final Project: Upload your data into R

# Step 6: load the tidyverse
library(readr)

# Step 7: load data.csv from the working directory
data <- read_delim("data.csv")

# Step 8: run the three checks
dim(data)
names(data)
summary(data)

# descriptive statistics
mean(data$wait_time)
sd(data$wait_time)
min(data$wait_time)
max(data$wait_time)

mean(data$google_r)
sd(data$google_r)
min(data$google_r)
max(data$google_r)


# linear regression test
lm <- lm(google_r ~ wait_time, data = data)
summary(lm)


#scatter plot
plot <- plot(data$google_r, data$wait_time)
print(plot)

# add x line and y line for means
meany <- mean(data$google_r)
meanx <- mean(data$wait_time)


abline(v = meany, col = "black")
abline(h = meanx, col = "black")