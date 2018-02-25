# plot 2
require(lubridate)
df <- readRDS(file.path("..","df_selected_dates.rds"));
par(mfrow=c(1,1));
dateTimes <- with(df,ymd(Date)+hms(Time));
with(df,
     plot(dateTimes,
          df$Global_active_power/1000,
          xlab="",
          ylab="Global Active Power (kilowatts)",
          type="l"));
dev.copy(png,file.path("..","figure","plot2.png"),width=480,height=480,bg="transparent");
dev.off();
