# ランダム計算問題テンプレート

CSV の `extra_json` に `calculation` を入れると、`variants` の中から一組を毎回選んで出題する。`label` と `answer` はCSV必須列のため任意の説明を入れるが、実際の問題文・正答は `calculation` が使われる。

```json
{
  "calculation": {
    "template": "質量が{mass} g、体積が{volume} cm³の物質の密度は何g/cm³か。",
    "unit": "g/cm³",
    "variants": [
      {"mass": 54, "volume": 20, "answer": "2.7"},
      {"mass": 80, "volume": 32, "answer": "2.5"},
      {"mass": 96, "volume": 40, "answer": "2.4"}
    ]
  }
}
```

最初に入れる候補は、答えが整数または有限小数になるものだけにする。

- 生物: 顕微鏡の総合倍率、遺伝の割合・個体数
- 化学: 密度、質量パーセント濃度、溶解度、水の電気分解の体積比

出題時の問題文と正答は `attempts.question_snapshot_json` に保存されるため、同じ回答履歴を後から開いても数値は変わらない。
