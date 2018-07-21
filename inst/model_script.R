# script for creatng a model

library(DALEX)
library(randomForest)

set.seed(59)
model <- randomForest(m2.price ~ construction.year + surface + floor +
                                      no.rooms + district, data = apartments)
save(model, file = "data/model.rda")
