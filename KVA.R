**R Kodlarını Kullanarak Veri Keşif Süreci**

* **Veri Oluşturma:** Rastgele 1000 veri noktası içeren bir veri kümesi oluşturun.
    ```r
    data <- data.frame(
      x = rnorm(1000),
      y = rnorm(1000),
      z = rnorm(1000)
    )
    ```

* **Veri Hazırlama:** Verileri temizle ve uygun biçime dönüştür.
    ```r
    # Eksik verileri kaldır
    data <- data[!is.na(data$x) & !is.na(data$y) & !is.na(data$z), ]
    
    # Veri türlerini tutarlı hale getir
    data$x <- as.numeric(data$x)
    data$y <- as.numeric(data$y)
    data$z <- as.numeric(data$z)
    ```

* **Veri Keşfi:** Veri kümesini kümele, korelasyonları analiz et ve anomalileri tespit et.
    ```r
    # Kümeleme (K-Means algoritması)
    library(cluster)
    km <- kmeans(data, 3)
    
    # Korelasyon analizi
    library(corrplot)
    corrplot(cor(data), method = "circle")
    
    # Anomali tespiti
    library(outliers)
    outliers <- findOutliers(data)
    ```
