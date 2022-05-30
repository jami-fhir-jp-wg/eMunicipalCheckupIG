Profile:        JP_Media_CUPIX
Parent:         Media
Id:             JP-Media-CUPIX
Description:    "健診・検診結果報告書　Mediaリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Media-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* status 1..1 MS
* status = #completed
  * ^short = "'completed'固定"

* content 1..1 MS
  * ^short = "添付ファイルデータ。URLによる外部参照する方法と、データ中に、バイナリデータを内包する方法の2つの添付方法がある"
  * contentType 0..1 MS
    * ^short = "添付ファイルのコンテントタイプ。MimeTypeコード体系より指定する。"
  * data 0..1 MS
    * ^short = "添付ファイルをデータに内包する場合の、Base64符号化されたデータ。"
  * url 0..1 MS
    * ^short = "添付ファイルを外部参照する場合の参照URL"
  * hash 0..1 MS
    * ^short = "添付ファイルのSHA-1によるハッシュ値"
  * title 0..1 MS
    * ^short = "添付ファイルを説明するタイトル文字列"
