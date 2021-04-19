# Consonance ratings from Arthurs and Timmers 2018

art18<-NULL
art18$dataset<-'art18'

art18$name[1]<-'Major'
art18$name[2] <-'Minor'
art18$name[3] <-'Dim'
art18$name[4] <-'Aug'
art18$name[5] <-'Sus'
art18$name[6] <-'Major7'
art18$name[7] <-'Minor7'
art18$name[8] <-'Dom7'
art18$name[9] <-'Dim7'
art18$name[10]<-'H-dim7'
art18$name[11]<-'Mi-major7'
art18$name[12]<-'Aug-ma7'
art18<-data.frame(art18)

art18$id[1]<-'c1'
art18$id[2] <-'c2'
art18$id[3] <-'c3'
art18$id[4] <-'c4'
art18$id[5] <-'c5'
art18$id[6] <-'c6'
art18$id[7] <-'c7'
art18$id[8] <-'c8'
art18$id[9] <-'c9'
art18$id[10]<-'c10'
art18$id[11]<-'c11'
art18$id[12]<-'c12'

art18$rating[1] <- 5.7
art18$rating[2] <- 4.8
art18$rating[3] <- 4.3
art18$rating[4] <- 3.7
art18$rating[5] <- 5.0
art18$rating[6] <- 4.5
art18$rating[7] <- 4.6
art18$rating[8] <- 5.1
art18$rating[9] <- 3.8
art18$rating[10]<- 4.1
art18$rating[11]<- 3.2
art18$rating[12]<- 3.4

art18$pi_chord[[1]]<-c(60, 64, 67)
art18$pi_chord[[2]]<-c(60, 63, 67)
art18$pi_chord[[3]]<-c(60, 63, 66)
art18$pi_chord[[4]]<-c(60, 64, 68)
art18$pi_chord[[5]]<-c(60, 65, 67)
art18$pi_chord[[6]]<-c(60, 64, 67, 71)
art18$pi_chord[[7]]<-c(60, 63, 67, 70)
art18$pi_chord[[8]]<-c(60, 64, 67, 70)
art18$pi_chord[[9]]<-c(60, 63, 66, 69)
art18$pi_chord[[10]]<-c(60, 63, 66, 70)
art18$pi_chord[[11]]<-c(60, 63, 67, 71)
art18$pi_chord[[12]]<-c(60, 64, 68, 71)

art18$chord_size<-0
for (k in 1:nrow(art18)) {
  art18$chord_size[k]<-length(art18$pi_chord[[k]])
}
rm(k)
#art18<-tibble::as_tibble(art18)
