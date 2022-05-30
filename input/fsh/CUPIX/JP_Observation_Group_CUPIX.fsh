Profile:        JP_Observation_Group_CUPIX
Parent:         JP_Observation_Common
Id:             JP-Observation-Group-CUPIX
Description:    "健診・検診結果報告書　ObservationGroupリソースGroup仕様共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Observation-Group-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* status 1..1 MS
* status
  * ^short = "検査結果の結果状態を表すコード。値は最終結果を表す'final'固定。"

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/observation-category" (exactly)
      * ^short = "コード体系を識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "コード体系http://terminology.hl7.org/CodeSystem/observation-categoryから、検診項目にあったカテゴリを指定する。"
    * display 0..1 MS
      * ^short = "コードの表示名"

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。"
* code from $EMCUPX_observation_codes_vs (required)
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "健診項目グループコードを識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "健診項目グループコード"
    * display 0..1 MS
      * ^short = "健診項目グループコードの表示名"

* subject 1..1 MS
* subject only Reference(JP_Patient_CUPIX)
  * ^short = "受診者情報を表すPatientリソースへの参照"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定"

* effectiveDateTime 0..1 MS
  * ^short = "検査実施日。検体検査の場合は、検体の採取日となる。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を'24:00'と記録することはできないため'00:00'と記録すること。"


//* hasMember 1..* MS
* hasMember 0..* MS
* hasMember only Reference(JP_Observation_CUPIX)
  * ^short = "健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照を表現する。"
  * reference 1..1 MS
    * ^short = "Observationリソースへの参照。"

* component 0..0 MS
