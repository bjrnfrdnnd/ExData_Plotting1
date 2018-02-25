# plot 3
require(lubridate);
df <- readRDS(file.path("..","df_selected_dates.rds"));
par(mfrow=c(1,1));
dateTimes <- with(df,ymd(Date)+hms(Time));
with(df,
     plot(dateTimes,
          df$Sub_metering_1/1000,
          col="black",
          xlab="",
          ylab="",
          type="l"));
with(df,
     lines(dateTimes,
           df$Sub_metering_2/1000,
           col="red"));
with(df,
     lines(dateTimes,
           df$Sub_metering_3/1000,
           col="blue"));

title(ylab="Energy sub metering");
a <- legend("topright",
            legend=names(df)[7:9],
            col=c("black","red","blue"),
            lty=rep(1,3),
            y.intersp = 0.6,   # move legend lines closer together
            cex=0.9,           # make legend font smaller
            bty="o"            # show legend box
); 


dev.copy(png,file.path("..","figure","plot3.png"),width=480,height=480,bg="transparent");
dev.off();
