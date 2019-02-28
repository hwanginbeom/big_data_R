install.packages("plotly")
library(ggplot2)
install.packages("ggplot2")
library(plotly)

p <- ggplot(data = mpg , aes(x=displ , y= hwy, col = drv))+geom_point()
ggplotly(p)
p <- ggplot(data=diamonds , aes (x=cut,fill = clarity))+geom_bar(position = "dodge")
ggplotly(p)

install.packages("dygraphs")

library(dygraphs)
economics <- ggplot2::economics
head(economics)

library(xts)
#�ð� ���� �Ӽ��� ���ϴ� xts�� Ÿ�Ժ�ȯ �Ѵ�.
eco <- xts(economics$unemploy,order.by = economics$date)
head(eco)

dygraph(eco)

#dyRangeSelector�� ���� ��¥ ���� ���ñ���� �߰��Ѵ�.
dygraph(eco) %>% dyRangeSelector()

eco_a <- xts(economics$psavert, order.by = economics$date)
eco_b <- xts(economics$unemploy, order.by = economics$date)

eco2 <- cbind(eco_a,eco_b)
colnames(eco2) <- c("psavert", "unemploy")
head(eco_2)
dygraph(eco2) %>% dyRangeSelector()
