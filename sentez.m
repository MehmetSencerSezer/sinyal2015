fs=8192; %örnekleme frekansı
duraklama=fs*(1/100); %duraklama değerinin tanımalnası
oktav_degeri=0;
notalar={}; %notalar dizisi oluşturdum
dosya=fopen('notalar.txt'); %notalar.txt dosyasını okumak açar.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',',')%notalar.txt deki değerleri okur
fclose(dosya);%dosyayı kapatır.

    for j=1:length(oktav) %txt ten çektiğimiz bütün oktavlar için.
        oktav(j)=oktav(j)+oktav_degeri; %degistirme değerini eski oktava ekle.
    end


for i=2:length(nota)
ff=frek(nota{i},oktav(i)); %Çektiğimiz  nota ve oktav değerleri için frek fonksiyonun çağırılması
[xx,t]=note(ff,olcu{i}); %note fonksiyonun çağırılması
plot(t,ff,duraklama) 
plot(t,ff,echo,t,duraklama) 
sound(echo)%sesi çalmak için.
end
