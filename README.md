# Cào dữ liệu
Notebook cào dữ liệu được chia ra 2 files:
1. `webcrawl.ipynb` - Cào dữ liệu Domestic/International/Worldwide Box Office, tổng hợp vào `WW_all.csv`;
2. `webcrawl2_movie details.ipynb` Cào thông tin của từng phim trong danh sách trên, tổng hợp vào `WW_all_new.csv`.

# Nguồn dữ liệu

## Webscraping
- Ngôn ngữ: Python
- ~5000 dữ liệu, ~400 trang có bảng top doanh thu phim 2005–2025.
- Mỗi bảng sẽ chỉ lấy các **cột in đậm**.

## Top Grossing Domestic (North America = US + Canada)
<img width="1377" height="302" alt="Screenshot 2025-10-17 002212" src="https://github.com/user-attachments/assets/ad94bbd3-c698-4629-b520-2024772a3834" />

- URL: [Top Grossing Movies 2025](https://www.the-numbers.com/market/2025/top-grossing-movies)
- Lấy cột: 
  - **Release Date**
  - **Distributor**
  - **Genre**
- Dữ liệu đã cào được lưu trong thư mực DOM

## Top Grossing International (Tất cả các nước còn lại)
<img width="1370" height="312" alt="Screenshot 2025-10-17 001812" src="https://github.com/user-attachments/assets/87b7eb75-7ce1-4cd6-80ae-af0963dccd65" />

- URL: [Top Grossing International 2025](https://www.the-numbers.com/box-office-records/international/all-movies/cumulative/released-in-2025)
- Lấy cột:
  - **Intl. Box Office**
  - **Share of #1 Mkt (%)**
  - **#1 Mkt (Country)**
- Dữ liệu đã cào được lưu trong thư mực INTL

## Top Grossing Worldwide
<img width="1365" height="278" alt="Screenshot 2025-10-17 003117" src="https://github.com/user-attachments/assets/545ecddc-f5d5-446f-9d52-0447f3a649c1" />

- URL: [Top Grossing Worldwide 2025](https://www.the-numbers.com/box-office-records/worldwide/all-movies/cumulative/released-in-2025)
- Lấy: **tất cả cột**

## Movie Details (từ link dẫn đến phim)
<img width="1201" height="935" alt="Screenshot 2025-10-19 162601" src="https://github.com/user-attachments/assets/9a296928-6551-4b7e-8db7-3d44f16ddb39" />

- Lấy:
  - **Release Date** (gộp 2 hàng đầu và lấy ngày sớm nhất)
  - Tất cả còn lại trừ Comparisons, Keywords, Source:
    - **Running Time**
    - **Keywords**
    - **Source**
    - **Genre**
    - **Production Method**
    - **Creative Type**
    - **MPAA Rating**
    - **Franchise**
    - **Production/Financing Companies**
    - **Production Countries**
    - **Languages**
- Dữ liệu đã cào được lưu trong thư mực Movie Details
