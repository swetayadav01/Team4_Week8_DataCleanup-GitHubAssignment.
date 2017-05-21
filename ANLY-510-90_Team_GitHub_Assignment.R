## Coding by Sweta Yadav

require(zoo)

# Load csv, setting empty values to NA
dirty_data <- read.csv("C:/Users/Sweta/Downloads/dirty_data.csv",  header=T, na.strings=c("","NA"))

# Replace NA in Area column with previous not NULL value
clean_data <- transform(dirty_data, Area = na.locf(Area))

# Remove anything other than alphanumeric, "/" and "&"
clean_data$Street <- str_replace_all(clean_data$Street,"[^a-zA-Z0-9/&]", " ")
clean_data$Street.2 <- str_replace_all(dirty_data_clean_area$Street.2,"[^a-zA-Z0-9/&]", " ")

# Trim leading and ending spaces, replace multiple spaces with single space
clean_data$Street <- gsub("\\s+", " ", str_trim(clean_data$Street))
clean_data$Street.2 <- gsub("\\s+", " ", str_trim(clean_data$Street.2))


### Coding by Sathya Narayanan Subbaraj

# Convert the column to lower case and then convert the column to Title case (capitalized first letter)
clean_data$Street <- str_to_title(sapply(clean_data$Street, tolower))
clean_data$Street.2 <- str_to_title(sapply(clean_data$Street.2, tolower))

# Convert Street to St
clean_data$Street <- str_replace_all(clean_data$Street,"Street", "St")
clean_data$Street.2 <- str_replace_all(clean_data$Street.2,"Street", "St")

# Convert Road to Rd
clean_data$Street <- str_replace_all(clean_data$Street,"Road", "Rd")
clean_data$Street.2 <- str_replace_all(clean_data$Street.2,"Road", "Rd")

# Convert Roads to Rd
clean_data$Street <- str_replace_all(clean_data$Street,"Roads", "Rd")
clean_data$Street.2 <- str_replace_all(clean_data$Street.2,"Roads", "Rd")

# Convert Lane to Ln
clean_data$Street <- str_replace_all(clean_data$Street,"Lane", "Ln")
clean_data$Street.2 <- str_replace_all(clean_data$Street.2,"Lane", "Ln")

# Convert Avenues to Ave
clean_data$Street <- str_replace_all(clean_data$Street,"Avenues", "Ave")
clean_data$Street.2 <- str_replace_all(clean_data$Street.2,"Avenues", "Ave")