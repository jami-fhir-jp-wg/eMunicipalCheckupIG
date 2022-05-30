Profile:        JP_Observation_CUPIX
Parent:         JP_Observation_Common
Id:             JP-Observation-CUPIX
Description:    "健診・検診結果報告書　Observationリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Observation-CUPIX"

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
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。"
* code from $EMCUPX_observation_codes_vs  (required)
  //TODO: JLAC10のURLがおかしいので、Issueとして挙げる
  * coding 1.. MS
    * system 1..1 MS
      * ^short = "健診項目コードを識別するURI。固定値。"
    * code 1..1 MS
      * ^short = "健診項目コード"
    * display 0..1 MS
      * ^short = "健診項目コードの表示名"

* subject 1..1 MS
* subject only Reference(JP_Patient_CUPIX)
  * ^short = "受診者情報を表すPatientリソースへの参照"
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定"

* effectiveDateTime 0..1 MS
  * ^short = "検査実施日。検体検査の場合は、検体の採取日となる。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を'24:00'と記録することはできないため'00:00'と記録すること。"

* valueQuantity 0..1 MS
  * ^short = "数値（物理量）型の結果の場合に使用する。"
  * value 1..1 MS
    * ^short = "測定値"
  * unit 0..1 MS
    * ^short = "単位コードの表示名"
  * system 1..1 MS
  * system = $ucum (exactly)
    * ^short = "単位コードのコード体系。UCUMのURIを指定する。固定値"
  * code 1..1 MS
    * ^short = "単位コード"

* valueCodeableConcept 0..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1.. MS
    * extension contains http://hl7.org/fhir/StructureDefinition/ordinalValue named ordinalValue 0..1 MS
    * extension[ordinalValue]
      * url 1..1 MS
        * ^short = "拡張を識別するURL。固定値。"
      * url = "http://hl7.org/fhir/StructureDefinition/ordinalValue" (exactly)
      * valueDecimal 1..1 MS
        * ^short = "コード値の順序。"
    * system 1..1 MS
      * ^short = "コード値のコード体系を識別するURI"
    * code 1..1 MS
      * ^short = "コード値"
    * display MS
      * ^short = "コードの表示名"

* valueString 0..1 MS
  * ^short = "文字型の検診結果の場合に使用する"

* valueInteger 0..1 MS
  * ^short = "数値型の検診結果の場合に使用する"

* valueDateTime 0..1 MS
  * ^short = "日付型の検診結果の場合に使用する"

* dataAbsentReason 0..1 MS
  * ^short = "結果値の欠損理由"
  // CodeStstemは、http://terminology.hl7.org/CodeSystem/data-absent-reasonだが、ValueSetはhl7.orgになっている。2022/01/27
  * coding from http://hl7.org/fhir/ValueSet/data-absent-reason
    * system 1..1 MS
    * system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
      * ^short = "欠損理由コードのコード体系。コードで指定する場合、data-absent-reason のURIを指定。"
    * code 1..1 MS
      * ^short = "欠損理由コード"
    * display 0..1 MS
      * ^short = "欠損理由コードの表示名"
  * text 0..1 MS
    * ^short = "欠損理由をコード化できない場合に、文字で指定する場合に使用する。"

* interpretation 0..* MS
  * ^short = "結果値の解釈を表現する。”observation-interpretation”コード体系からのコードを指定する。"
  * coding from http://hl7.org/fhir/ValueSet/observation-interpretation
    * system 1..1 MS
      * ^short = "observation-interpretationコード体系を識別するURI。固定値。"
    * system = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation" (exactly)
    * code 1..1 MS
      * ^short = "結果解釈コード"
    * display 0..1 MS
      * ^short = "表示名"

* note 0..1 MS
  * ^short = "自由記載のコメント"
  * text 1..1 MS

* method 0..1 MS
  * ^short = "検査の測定方法コードを表す"
  * coding 0..* MS
    * system 1..1 MS
//    * system = "urn:oid:1.2.392.200119.6.1007" (exactly)
// TODO JLAC10のコード体系を整理したい
    * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10-examMethod-codes" (exactly)
      * ^short = "測定方法コードのコード体系を識別するOID。固定値"
    * code 1..1 MS
      * ^short = "測定方法コード"
    * display 0..1 MS
      * ^short = "測定方法コードの表示名"

* specimen 0..1 MS
* specimen only Reference(JP_Specimen_CUPIX)
  * ^short = "検体情報への参照。FHIR JP 検体検査プロファイルに準拠し、検体検査の場合は必須で指定する。検体検査以外の健診項目の場合は、省略可能。"
  * reference 1..1 MS
    * ^short = "Specimenリソースへの参照。fullUrlプロパティに指定されたUUIDを指定する。"

* referenceRange 0..1 MS
  * ^short = "健診結果の基準値を指定する場合に使用する。"
  * low 0..1 MS
    * ^short = "基準値の下限を表現する。"
    * value 1..1 MS
      * ^short = "基準値下限"
    * unit 0..1 MS
      * ^short = "基準値下限の単位表示名"
    * system 0..1 MS
    * system = $ucum (exactly)
      * ^short = "基準値下限の単位コード。指定する場合はUCUMコードのコード体系を識別するURIを指定。固定値。"
    * code 0..1 MS
      * ^short = "基準値下限の単位コード"
  * high 0..1 MS
    * ^short = "基準値の上限を表現する。"
    * value 1..1 MS
      * ^short = "基準値上限"
    * unit 0..1 MS
      * ^short = "基準値上限の単位表示名"
    * system 0..1 MS
    * system = $ucum (exactly)
      * ^short = "基準値上限の単位コード。指定する場合はUCUMコードのコード体系を識別するURIを指定。固定値。"
    * code 0..1 MS
      * ^short = "基準値上限の単位コード"

* hasMember 0..* MS
* hasMember only Reference(JP_Observation_CUPIX)
  * ^short = "健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照を表現する。"
  * reference 1..1 MS
    * ^short = "Observationリソースへの参照。"

* derivedFrom 0..* MS
* derivedFrom only Reference(JP_Media_CUPIX)
  * ^short = "検査結果にシェーマ画像などを直接参照させたい場合に使用する。"
  * reference 1..1 MS
    * ^short = "検査画像情報を表すMediaリソースへの参照。"

* component 0..* MS
  * ^short = "本書では、所見型の健診項目の場合に、所見有無に対応する健診項目に対して、対応する所見を記述する場合に使用する。"
  * code 1..1 MS
    * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。"
    * coding 1..* MS
      * system 1..1 MS
      * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10" (exactly)
        * ^short = "JLAC10コードを識別するURI。固定値。"
      * code 1..1 MS
        * ^short = "健診項目コード"
      * display 0..1 MS
        * ^short = "健診項目コードの表示名"
  * value[x] 1..1 MS
    * ^short = "健診結果"
  * valueDateTime 0..1
  * valueString 0..1
    * ^short = "所見を表す結果値"
  * dataAbsentReason 0..1 MS
    * ^short = "健診結果が欠損している場合の欠損理由"
    * coding 0..* MS
      * system 1..1 MS
      * system = "http://terminology.hl7.org/CodeSystem/data-absent-reason" (exactly)
        * ^short = "欠損理由コードのコード体系。コードで指定する場合、data-absent-reason のURIを指定。"
      * code 1..1 MS
        * ^short = "欠損理由コード"
      * display 0..1 MS
        * ^short = "欠損理由コードの表示名"
    * text 0..1 MS
      * ^short = "欠損理由をコード化できない場合に、文字で指定する場合に使用する。"
