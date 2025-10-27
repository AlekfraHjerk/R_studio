req <- request("https://planets-by-api-ninjas.p.rapidapi.com") %>%
  req_url_path("v1/planets") %>%
  req_url_query(name = "Venus") %>%
  req_headers('X-RapidAPI-Key' = 'c8d8e44be8mshdcd0663d8d7d769p1f476ajsn1d1fe509e712',
              'X-RapidAPI-Host' = 'planets-by-api-ninjas.p.rapidapi.com') 
resp <- req %>% 
  req_perform() 
resp %>%
  resp_body_json()
