# random_forest_Apartments
R random forest model hosted on opencpu


## Steps for hosting on opencpu

https://www.opencpu.org/api.html


## Hosted app
! repository name

https://analyticsplussoftwaresolutions.ocpu.io/random_forest_Apartments/info


## How to predict

```
library(rjson)
library(DALEX)

model_url <- "https://analyticsplussoftwaresolutions.ocpu.io/random_forest_Apartments/R/pred/json"

custom_pred <- function(model_url, data){
  x <- toJSON(unname(split(data, 1:nrow(data))))
  (tmp <- httr::POST(model_url, body = list(input = x)))
  result <- rawToChar(tmp$content)
  fromJSON(result)
}

custom_pred(model_url, apartments[1,])


# explainer
explainer <- explain(model = model_url, predict_function = custom_pred, 
                     data = apartmentsTest[,-1], 
                     y = apartmentsTest$m2.price)
mp <- model_performance(explainer)
plot(mp)
```
