library(qcc)
defect.counts <- c(12,29,18,3,34,4)
names(defect.counts) <- c("Weather","Overslept", "Alarm Failure","Time Change","Traffic","Other")

pareto.chart(defect.counts)

pareto.chart(defect.counts,col=heat.colors(length(defect.counts)))

pareto.chart(defect.counts,col=rainbow(length(defect.counts)))

pareto.chart(defect.counts,col=terrain.colors(length(defect.counts)))

pareto.chart(defect.counts,col=heat.colors(length(defect.counts)), las=1)

pareto.chart(defect.counts,col=heat.colors(length(defect.counts)), las=2)

pareto.chart(defect.counts,col=heat.colors(length(defect.counts)), ylab="Sıklık")

pareto.chart(defect.counts,col=heat.colors(length(defect.counts)),
             ylab="Sıklık", cex.names=0.8)


pareto.chart(defect.counts,col=heat.colors(length(defect.counts)),
             ylab="Sıklık", cex.names=0.8, main="Pareto Diyagramı")


## Fishbone

library(SixSigma)
effect <- "Flight Time"
causes.gr <- c("Operator", "Environment", "Tools", "Design",
               "Raw.Material", "Measure.Tool")

causes <- vector(mode = "list", length = length(causes.gr))

causes[1] <- list(c("operator #1", "operator #2", "operator #3"))
causes[2] <- list(c("height", "cleaning"))
causes[3] <- list(c("scissors", "tape"))
causes[4] <- list(c("rotor.length", "rotor.width2", "paperclip"))
causes[5] <- list(c("thickness", "marks"))
causes[6] <- list(c("calibrate", "model"))

ss.ceDiag(effect, causes.gr, causes, sub = "Paper Helicopter Project")















