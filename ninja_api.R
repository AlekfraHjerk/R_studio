# GET with parameters and header API key -----------------------------------------
req <- request("https://planets-by-api-ninjas.p.rapidapi.com") %>%
  req_url_path("v1/planets") %>%
  req_url_query(name = "Pluto") %>%
  req_headers('X-RapidAPI-Key' = 'c8d8e44be8mshdcd0663d8d7d769p1f476ajsn1d1fe509e712',
              'X-RapidAPI-Host' = 'planets-by-api-ninjas.p.rapidapi.com') 
resp <- req %>% 
  req_perform() 
resp %>%
  resp_body_json()


# GET with string response --------------------------------------------
# String
req <- request("http://165.22.92.178:8080") %>% 
  req_url_path("responses") %>%
  req_url_query(format = "string") %>%
  req_headers(authorization = "DM_DV_123#!")

response <- req %>% 
  req_perform()
response # Inspect content type
response %>%
  resp_body_string


#Exercise 4
req <- request("http://165.22.92.178:8080") %>% 
  req_url_path("responses") %>%
  req_url_query(format = "string") %>%
  req_headers(authorization = "DM_DV_123#!")

response <- req %>% 
  req_perform()
response # Inspect content type
response %>%
  resp_body_string()
###changing this to json:
req <- request("http://165.22.92.178:8080") %>% 
  req_url_path("responses") %>%
  req_url_query(format = "json") %>%
  req_headers(authorization = "DM_DV_123#!")

response <- req %>% 
  req_perform()
response # Inspect content type
response %>%
  resp_body_json()
###Changing to html
req <- request("http://165.22.92.178:8080") %>% 
  req_url_path("responses") %>%
  req_url_query(format = "html") %>%
  req_headers(authorization = "DM_DV_123#!")

response <- req %>% 
  req_perform()
response # Inspect content type
response %>%
  resp_body_html()
