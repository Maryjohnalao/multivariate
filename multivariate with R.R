data <- read.csv('HR_comma_sep.csv')
head(data)

data_standardize <- as.data.frame(scale(data[1:8]))
head(data_standardize)

cor(data[1:8])
cov.mat <- cor(data_standardize)
cov.mat

pca <- prcomp(data_standardize, center = T, scale. = T)
summary(pca)

ibrary(ggfortify)
autoplot(pca, data = data, colour = 'Salary')

