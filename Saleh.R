#Tapsiriq 1
mehsul_satisi = data.frame(table( data$satish_kodu,data$bonus_kart))
mehsul_satisi = subset(mehsul_satisi,mehsul_satisi$Freq>=3)
70016
bonuskart = subset(mehsul_satisi,mehsul_satisi$Var2=="TRUE")
34867/70016*100= 49.862

#Tapsiriq 3
data = esas_mehsullar
musteri_sayi = data.frame(table(data$satish_kodu,data$magaza_ad))
musteri_sayi = subset(musteri_sayi,musteri_sayi$Freq>0)
musteri_sayi = data.frame(table(musteri_sayi$Var2))

satis = data.frame(table(data$magaza_ad))     
netice = data.frame(musteri_sayi$Var,satis$Freq/musteri_sayi$Freq)

#Tapsiriq 4
mehsullar = data.frame(table(sort(data$mehsul_ad)))

#Tapsiriq 5
attach(data)
netice = data %>% group_by(`satish_kodu`)%>%summarise(odenis = sum(mehsul_qiymet))

#Tapsiriq 7
attach(kompaniya_data)
kompaniya_data = data.frame(subset(data,data$endirim_kompaniya!=""))
mehsulsayi = data.frame(table(data$endirim_kompaniya)) #satis sayina gore
kompaniya = kompaniya_data %>% group_by(`endirim_kompaniya`)%>%summarise(odenis=sum())
#yeniden baxaciyiq 28ci kod islemir, sum etmir


#Tapsiriq 8
data_kompot = subset(data,data$mehsul_kateqoriya==" Kompotlar ")
kompotlar = data.frame(table (data_kompot$mehsul_ad,data_kompot$mehsul_qiymet))
kompotlar = subset(kompotlar,kompotlar$Freq>0)














