# plot 4
require(lubridate);
par(bg=NA);
df <- readRDS(file.path("..","df_selected_dates.rds"));
par(mfcol=c(2,2));
dateTimes <- with(df,ymd(Date)+hms(Time));

# top left 
with(df,
     plot(dateTimes,
          df$Global_active_power/1000,
          xlab="",
          ylab="Global Active Power",
          type="l"));

# bottom left
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
            y.intersp = 0.6,  # move legend lines closer together
            cex=0.9,          # make legend font smaller
            inset=c(0,-0.05), # shift the legend up
            bty="n"           # do not show legend box
);

# top right
with(df,
     plot(dateTimes,
          df$Voltage/1000,
          xlab="datetime",
          ylab="Voltage",
          type="l"));

# bottom right
with(df,
     plot(dateTimes,
          df$Global_reactive_power/1000,
          xlab="datetime",
          ylab="Global_reactive_power",
          type="l"));


dev.copy(png,file.path("..","figure","plot4.png"),width=480,height=480);
dev.off();
