library(ggplot2)

datos <- read.csv("Data/TasasGradUnivsPR.csv")

attach(datos)

png(file="TasaDeGraduacionBS_PR_.png",height=600,width=1000)

	c <- ggplot(datos, aes(Población, Tasa.de.Graduación, colour=factor(PrivPub), group=PrivPub))
	c + stat_smooth(method = "lm", se = FALSE) + geom_point(size=4) + opts(title = "Tasa de graduación de bachillerato", plot.title = theme_text(size=20), axis.title.x = theme_text(size=18), axis.title.y = theme_text(size=18, angle=90), axis.text.x = theme_text(size=16), axis.text.y = theme_text(size=16)) + labs(x = "Tamaño de la población estudiantil", y= "Tasa de graduación a 6 años (%)") + scale_y_continuous(limits=c(0, 60)) + scale_x_continuous(formatter = "comma") + scale_colour_hue(name="Tipo de\nuniversidad")

dev.off()
