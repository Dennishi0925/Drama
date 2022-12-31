library(jsonlite)
library(tidyverse)

### process
# 先抓取有各國 weekly ranking 的 json_data 
# 接著抓取有影片資訊的 en-names
# 兩者 join 就搞定了

### taiwan data
url_data <- "https://top10.netflix.com/data/weeks/20221218-data.json"
json_data <- fromJSON(url_data)
df_tw <- json_data$countries[map(json_data$countries,~.[[1]]) == "TW"][[1]][[2]] %>% as_tibble()

### drama data
url_names <- "https://top10.netflix.com/data/weeks/20221218-en-names.json"
json_names <- fromJSON(url_names)
json_data$countries[[1]][[2]] %>% as_tibble()
df_name <- json_names %>% as_tibble() %>% select(-geoOverrides)

df_ranking_netflix <- df_tw %>% left_join(df_name) %>%
  mutate(rank = as.integer(rank)) %>%
  group_by(category) %>%
  arrange(category, rank) %>% ungroup()

