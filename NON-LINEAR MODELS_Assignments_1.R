setwd("D://ACADGILD//12//Assignments//INPUT")
yeast_data<- read.delim("YEAST DATA.txt", header = F, sep = "")
heads_yeast <- c("Sequence Name","mcg","gvh","alm","mit","erl","pox","vac","nuc","Class")
colnames(yeast_data) <- heads_yeast

anova_result <- aov(nuc ~ Class, data = yeast_data)
anova_result
summary(anova_result)
#              Df Sum Sq Mean Sq F value Pr(>F)    
#Class          9  1.993 0.22141   22.01 <2e-16 ***
#  Residuals   1474 14.825 0.01006                   
#---
#  Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1


#p value in the summary is less than 0.05 so we can conclude that there is significant factor of Class on nuc.


# Problem B


Tukey_result <- TukeyHSD(anova_result)

#TukeyHSD gives more clarification towards Class differences. 
#Below is the part of output sorted in the Descending order of diff . 


#Pair	diff	lwr	upr	p
#NUC-EXC	0.105106893	0.04924622	0.160967571	0.0000001
#NUC-MIT	0.090694715	0.06521504	0.116174388	0
#NUC-ME2	0.086188126	0.0391211	0.133255152	0.0000004
#NUC-ERL	0.085678322	-0.0572575	0.228614148	0.669633
#NUC-CYT	0.074442901	0.05314812	0.095737681	0
#NUC-ME1	0.063496504	0.01319448	0.113798528	0.0026743
#NUC-ME3	0.061678322	0.03244028	0.090916364	0
#ME3-EXC	0.043428571	-0.01577047	0.10262761	0.3735707
#ME1-EXC	0.04161039	-0.03036153	0.113582306	0.7147855
