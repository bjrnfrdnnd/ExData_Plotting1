# plot 1setwd
par(mfrow=c(1,1));
df <- readRDS(file.path("..","df_selected_dates.rds"));
with(df,
     hist(Global_active_power/1000,
          col="red",
          xlab="Global Active Power (kilowatts)",
          main="Global Active Power"));
dev.copy(png,file.path("..","figure","plot1.png"),width=480,height=480,bg="transparent");
dev.off();
