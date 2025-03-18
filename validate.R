library(pointblank)


small_table %>%
  col_is_posix(date_time) %>%
  col_vals_in_set(f, set = c("low", "mid", "high")) %>%
  col_vals_lt(a, value = 10) %>%
  col_vals_regex(b, regex = "^[0-9]-[a-z]{3}-[0-9]{3}$") %>%
  col_vals_between(d, left = 0, right = 10000) #fixed from 5000 to 10000

# In terminal: Rscripte validate.R
# gives error
# can do make validate or

# look at publish.yml