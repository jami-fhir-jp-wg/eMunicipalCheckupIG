Profile:        JP_DocumentReference_CUPIX
Parent:         DocumentReference
Id:             JP-DocumentReference-CUPIX
Description:    "健診・検診結果報告書　DocumentReferenceリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-DocumentReference-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* status 1..1 MS
* status = #current
  * ^short = "'current'固定"

* description 0..1 MS
  * ^short = "人が読むことのできる添付文書の説明"

* content 1..1 MS
  * ^short = "base64Binary型でエンコードされた添付文書データ"
  * attachment 1..1 MS
    * ^short = "基底仕様上は1つのリソースで複数のファイルを添付することが可能であるが、本書では、１つのリソースに対して表現可能な添付ファルは1つまでとする。"
    * contentType 1..1 MS
      * ^short = "添付ファイルのコンテントタイプ。MimeTypeコード体系より指定する。"
    * data 0..1 MS
      * ^short = "添付ファイルをデータに内包する場合の、Base64符号化されたデータ"
    * url 0..1 MS
      * ^short = "添付ファイルを外部参照する場合の参照URL"
    * hash 0..1 MS
      * ^short = "添付ファイルのSHA-1によるハッシュ値"
    * title 0..1 MS
      * ^short = "添付ファイルを説明するタイトル文字列"

  * format 0..1 MS
    * ^short = "指定可能な場合、添付ファイルのフォーマットを指定"
    * system 1..1 MS
    * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/attachement-format"  (exactly)
      * ^short = "フォーマットを規定するコード体系を指定。固定値"
    * code 1..1 MS
      * ^short = "フォーマットコード。CDA R2形式特定健診の場合、'cdar2_hc08_v08'を指定。JAHIS 健康診断報告書規格の場合、'cdar2_jahis_18007'を指定"
    * display 0..1 MS
      * ^short = "フォーマットコードの表示名"

* context 0..1 MS
  * related only Reference(JP_Observation_CUPIX)
    * ^short = "必要に応じて、添付文書に関連する検査結果（Observationリソース）への参照を記録することが可能"
    * reference 1..1
      * ^short = "Observationリソースへの参照"

