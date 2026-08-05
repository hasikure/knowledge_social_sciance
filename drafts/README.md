# drafts の構成

- `questions/`
  - `chemistry/`：化学の問題案（Markdown）
  - `biology/`：生物の問題案（Markdown）
  - `earth-science/`：地学の問題案（Markdown）
- `csv/`
  - `chemistry/`：化学問題の統合CSV
  - `biology/`：生物問題の統合CSV
  - `earth-science/`：地学問題の統合CSV（`chigaku_questions_draft.csv`）
  - `social-studies/`：本番の社会問題を分野ごとにまとめたCSV
    - `geography.csv`：地理（都道府県・県庁所在地のアーカイブ分を含む）
    - `history.csv`：歴史
    - `item_key` は各 `quiz_id` 内で `q-01` からの連番に統一。本番CSVと同じキーを使う。
- `reviews/`
  - `chemistry/`：化学の精査・不足問題・解説案
  - `biology/`：生物の精査・不足問題
- `materials/`：分野共通の作問用資料・テンプレート

本番データの正本は `data/` 配下のCSVであり、`drafts/` は作問・精査のための作業資料です。
