## VitrA veri bilimi bootcampı için hazırlanmış PostgreSQL ödev reposudur.

### Odev10 JOIN sorgularını kontrol etme

`Odev10.sql` içindeki üç sorgu ayrı ayrı çalıştırılabilir. Küçük ve tamamen sentetik tablolarla sorguların beklenen `LEFT`, `RIGHT` ve `FULL OUTER JOIN` sonuçlarını kontrol etmek için:

```bash
python -m pip install 'duckdb>=1.5,<2'
python scripts/check_odev10.py
```

Bu kontrol DuckDB üzerinde bir duman testidir; ödevlerin hedefi olan PostgreSQL ile tam uyumluluk testi değildir. Gerçek müşteri veya kurum verisi kullanılmaz.
