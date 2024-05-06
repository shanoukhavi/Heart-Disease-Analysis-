# Age: Age of the patient
# Sex: Sex of the patient
# exang: exercise induced angina (1 = yes; 0 = no)
# ca: number of major vessels (0-3)
# cp: Chest Pain type chest pain type
# Value 1: typical angina
# Value 2: atypical angina
# Value 3: non-anginal pain
# Value 4: asymptomatic
# trtbps: resting blood pressure (in mm Hg)
# chol: cholestoral in mg/dl fetched via BMI sensor
# fbs: (fasting blood sugar > 120 mg/dl) (1 = true; 0 = false)
# rest_ecg: resting electrocardiographic results
# Value 0: normal
# Value 1: having ST-T wave abnormality (T wave inversions and/or ST elevation or depression of > 0.05 mV)
# Value 2: showing probable or definite left ventricular hypertrophy by Estes' criteria
# thalach: maximum heart rate achieved
# target: 0= less chance of heart attack 1= more chance of heart attack

nrow(heart11)
ncol(heart11)
summary(heart11)

AGE<-heart11 $age
SEX<-heart11 $sex
CP<-heart11 $cp
TRESBPS<-heart11 $trestbps
CHOL<-heart11 $chol
FBS<-heart11 $fbs
RESTECG<-heart11 $restecg
THALACH<-heart11 $thalach
EXANG<-heart11 $exang
OLDPEAK<-heart11 $oldpeak
SLOPE<-heart11 $slope
CA<-heart11 $ca
THAL<-heart11 $thal
TARGET<-heart11 $target

#LINE CHART BETWEEN CHOLESTROL AND GENDER
png(file="LINE_PLOT 1.png")
x<-CHOL[1:20]
plot(x,type="o",col="red",xlab = "gender(Male and female)",ylab = "cholesterol",main = "HEART DETAILS OF GENDER AND CHOLESTEROL ")
dev.off()

#historigram of patients having cholestrol
png(file="historigram.png")
hist(CHOL[1:20],col = "red",border = "black")
dev.off()

#PIE CHART OF OLDPEAK
png(file="piechart1.png")
x<-heart11$restecg[1:20]
pie(x,main="old peak in heart disease",col=rainbow(length(x)))
dev.off()

#BARCHART OF CA VS CHOL
png(file="barplot.png")
barplot(CA[1:15],names.arg=CHOL[1:15],xlab="cholestrol",ylab="ca",col="blue",main="barchart",border="red")
dev.off()
#MULTILINE GRAPH BTW CA AND THAL
v<-CA[1:10]
t<-THAL[1:10]
png(file="line chart23.png")
plot(v,type="o",col="red",xlab="CA",ylab="THAL",main="linegraph")
lines(t,type = "o",col="blue")
dev.off()

#SCATTER PLOT GRAPH OF AGE VS CHOL
png(file="scatterplott.png")
plot(x=AGE,y=CHOL,xlab="age",ylab="chol",main="heartdisease",las=2,col="chocolate",pch=18,cex=2)
dev.off()
#PIE 3D OF AGE
install.packages("plotrix")
library(plotrix)
x<-c(AGE[1:7])
lbl<-c("ravi","savi","mavi","bgh","kl","rod","kog")
png(file="pie.png")
pie3D(x,labels=lbl,explode=0.1,main="piechartt",border="white",labelcol = "red",labelcex = 0.8)
dev.off()

#BOX PLOT OF AGE VS CP
png(file="boxplot.png")
boxplot(AGE ~CP,data=heart11,xlab="NO OF AGE ",ylab="CHEST PAIN",notch=TRUE,varwidth=TRUE,col="chocolate")
dev.off()
install.packages("ggplot2")
library("ggplot2")
library("reshape2")
#SCATTERPLOTMATRIX
png(file="scatterplotma6rix.png")
pairs(~AGE[1:100]+TRESBPS[1:100]+CHOL[1:100]+THALACH[1:100],data=heart11,main="scaterplotmatrix",col="chocolate")
dev.off()
library(tidyverse)

#GGPLOTT AGE VS CHOLESTROL
png(file="ggplo.png")
ggplot(heart11,
mapping = aes(x=AGE,y=CHOL))+
geom_point(size=5)+geom_line(colour="red")
dev.off()
ggplot(aes(THALACH,OLDPEAK ))+
geom_boxplot()+geom_point(alpha=0.5,aes(size=FBS,colour=EXANG))
coord_flip()+theme_bw()+labs(ile="chilled vs non chilled")

#ggplot for age vs chol representation
view(heart11)
names(heart11)
png(file="ggplo23.png")
ggplot(heart11,
mapping = aes(x=age,y=chol))+
geom_point()+geom_line(colour="red")
dev.off()

#ggplot for trestbps vs chol differentating using thal as colour
png(file="rnakplot.png")
heart11%>%
ggplot(aes(x=trestbps,y=chol))+geom_point(aes(color=thal))+
geom_smooth(method=lm,se=F)+labs(x="trestbps",y="chol",title="tresbps vs chol")+
theme_minimal()
dev.off()

#ggplot trestbps vs age using color is thal and size as fbs
png(file=" mine.png ")
heart11 %>%
ggplot(aes(trestbps,age))+geom_point(aes(color=thal,size=fbs))+geom_smooth(method=lm,se=F)+labs(x="trustbps",y="age",tile="trustbps vs age")+theme_minimal()
dev.off()

# bar chart using ggplot
names(heart11)
png(file="ggplohis.png")
heart11 %>%
drop_na(thalach)%>%
ggplot(aes(x=thalach))+
geom_bar(fill="#00FF00",)+

# coord_flip()+can be used for flipping the chart
theme_bw()+
labs(x="age",y=NULL,tile=" thalach")
dev.off()

#for the use of beautiful colors use htmlcolor codes
png(file="he.png")
heart11 %>%
ggplot(aes(age))+geom_histogram(binwidth = 3,fill="#97B3C6")+theme_bw()+
labs(x="the oldpeak",y=NULL,title = "oldpeak")
dev.off()