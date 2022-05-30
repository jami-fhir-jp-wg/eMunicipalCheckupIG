Profile:        JP_DiagnosticReport_CUPIX
Parent:         JP_DiagnosticReport_Common
Id:             JP-DiagnositicReport-CUPIX
//Title:          "自治体検診結果報告書　DiagnosticReportリソース 検査報告書情報"
Description:    "健診・検診結果報告書　DiagnositicReportリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-DiagnositicReport-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* status 1..1 MS
* status = #final
  * ^short = "'final'固定"

* code 1..1 MS
  * ^short = "報書種別を表すコード。例えばLOINCコードを使用する。"
  * coding 1..* MS
    * system 1..1 MS
      * ^short = "報告書種別コード体系を識別するURI"
    * code 1..1 MS
      * ^short = "報告書種別コード"
    * display 0..1 MS
      * ^short = "コードの表示名"

* media 0..* MS
  * ^short = "検査報告書に含まれる検査画像"
  * comment 0..1 MS
    * ^short = "検査報告書に含まれる検査画像に対するコメント"
  * link 1..1 MS
  * link only Reference(JP_Media_CUPIX)
    * ^short = "検査報告書に含まれる検査画像を表すMediaリソースへの参照。"
    * reference 1..1 MS
      * ^short = "参照されるMediaリソースのfullUrl要素に指定されるUUID"


