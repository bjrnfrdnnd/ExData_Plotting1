# Title
require(readr);
require(sqldf);
require(lubridate);
require(dplyr);

# download the file
if (1){
    URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip";
    zip_FN <- "hpc.zip";
    download.file(URL,destfile = zip_FN);
}

# unzip the file
if (1){
    unzip(zip_FN);
    data_FN <- unzip(zip_FN,list=T)$Name[1];
}

# read entire file and filter dates
if (1){
    df1 <- read_csv2(data_FN,
                     col_types = cols(.default = "n",
                                      Date=col_date("%d/%m/%Y"),
                                      Time=col_time("%H:%M:%S")),
                     na=c("?"),
                     n_max=Inf);
    df2 <- df1 %>% 
        filter(Date %in% as.Date(c("2007-02-1","2007-02-02")));
    saveRDS(df2, "df_selected_dates.rds");
}

setwd(file.path("code"));
# do plot1
if (1){
    source("Plot1.R");
}

# do plot2
if (1){
    source("Plot2.R");
}

# do plot3
if (1){
    source("Plot3.R");
}

# do plot4
if (1){
    source("Plot4.R");
}
setwd(file.path(".."));
