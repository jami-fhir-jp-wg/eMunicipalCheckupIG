Profile:        JP_Specimen_CUPIX
Parent:         Specimen
Id:             JP-Specimen-CUPIX
Description:    "健診・検診結果報告書　Specimenリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Specimen-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* type 0..1 MS
  * ^short = "検体の材料コード。JLAC10材料コードを指定する。"
  * coding 0..1 MS
    * system 1..1 MS
    * system = $jlac10_specimen_cs (exactly)
      * ^short = "JLAC10 材料コードを識別するURL。固定値"
    * code 1..1 MS
      * ^short = "材料コード"
    * display 0..1 MS
      * ^short = "材料コードの表示名"

* note 0..1 MS
  * text 1..1 MS
    * ^short = "自由記載の検体材料コメント"

