# tsp-shortest-path
- TSP (Travelling Salesman Problem) yani GSP (Gezgin Satıcı Problemi); başlanan noktaya dönülmek üzere, n adet düğümün sadece bir kere ziyaret edilerek, toplam mesafe, maliyet veya sürenin minimizasyonunu sağlama problemi olarak tanımlanır.
- Yolların uzunlukları dij olmak üzere, simetrik GSP’de dij= dji asimetrik GSP’de dij ≠dji’dir. Amaç uygun yollardan ilerleyerek tur uzunluğunu minimize etmektir.
- Karınca koloni algoritmasının GSP’ye uygulanmasında feromon izleri ve sezgisel bilgiler kullanılır. İz yoğunluğu tij (τ) algoritmanın adımları boyunca değiştirilen nümerik bilgilerdir.
- Başlangıçta her m karınca rastsal olarak seçilenşehirlere yerleştirilir ve iteratif olarak her şehre geçiş kuralı uygulanır. İ şehrindeki karınca henüz gidilmemiş j şehrini, iz yoğunluğu tij(τ) ve şehirler arasındaki uzunluğun fonksiyonuna bağlı bir olasılığa bağlı olarak seçer.
- Karınca büyük olasılıkla kendisine daha yakın olan şehri ve yüksek feromon izine sahip hattı seçer. Uygun bir çözümde her karınca tabu listesi olarak adlandırılan sınırlı bir hafızaya sahiptir.

# Screenshot

![tsp](https://user-images.githubusercontent.com/33956266/61252379-00986180-a766-11e9-906c-63aa0071ca2d.PNG)
