library(jsonlite)
library(tidyverse)

url_data <- "https://top10.netflix.com/data/weeks/20221218-data.json"
json_data <- fromJSON(url_data)
json_data %>% str()
json_data$global
json_data$countries %>% length()
json_data$countries[[1]][[1]]
json_data$countries[[1]][[1]]
json_data$countries[[2]][[1]]
json_data$countries[map(json_data$countries,~.[[1]]) == "TW"][[1]][[2]] %>% as_tibble()

url_data <- "https://top10.netflix.com/data/weeks/20221218-data.json"
json_data <- fromJSON(url_data)
json_data %>% str()
json_data$global
json_data$countries %>% length()
json_data$countries[[1]][[1]]
json_data$countries[[1]][[1]]
json_data$countries[[2]][[1]]
json_data$countries[map(json_data$countries,~.[[1]]) == "TW"][[1]][[2]] %>% as_tibble()

url_taiwan <- "https://top10.netflix.com/_next/data/ekvJ8uEfOBggHwbcEWeIb/taiwan.json"
json_taiwan <- fromJSON(url_taiwan)
json_taiwan %>% str()
json_taiwan$pageProps$data$weeklyTopTen %>% as_tibble()
json_taiwan$pageProps$data$weeklyCountryRanks %>% as_tibble()
json_taiwan$pageProps$data$mostPopular %>% as_tibble()
json_data$countries %>% length()
json_data$countries[[1]][[2]] %>% as_tibble()
json_data$global %>% as_tibble() %>% glimpse()

url_boxtw <- "https://top10.netflix.com/data/weeks/20221218-tw-boxart.json"
json_boxtw <- fromJSON(url_boxtw)
json_boxtw %>% str()
json_boxtw %>% as_tibble() %>% glimpse()
json_boxtw$pageProps$data$weeklyTopTen %>% as_tibble()

url_names <- "https://top10.netflix.com/data/weeks/20221218-en-names.json"
json_names <- fromJSON(url_names)
json_names %>% str()
json_names %>% as_tibble() %>% glimpse()
json_names %>% as_tibble() %>% filter(id == "json_data$countries[[1]][[2]]") %>% as_tibble()
json_data$countries[[1]][[2]] %>% as_tibble()
json_names %>% as_tibble() %>% filter(id == 70173671)

### process
# 先抓取有各國 weekly ranking 的 json_data 
# 接著抓取有影片資訊的 en-names
# 兩者 join 就搞定了

# tw-boxart 是視覺好看