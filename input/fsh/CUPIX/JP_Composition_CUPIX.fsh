Profile:        JP_Composition_CUPIX
Parent:         Composition
Id:             JP-Composition-CUPIX
Description:    "健診・検診結果報告書　Compositionリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Composition-CUPIX"
* ^status = #draft
* obeys emc-cmp-1 and emc-cmp-2

* language 0..1 MS
  * ^short = "日本語を指定する場合、”ja”を指定する。固定値。"

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * status = $narrative_cs#generated
  * div 1..1 MS

* extension contains $composition-clinicaldocument-versionNumber named versionNumber 0..1 MS
* extension[versionNumber]
  * ^short = "健診結果報告書の文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。"
  * url 1..1 MS
  * url = $composition-clinicaldocument-versionNumber (exactly)
    * ^short = "拡張を識別するURL。固定値。"
  * value[x] only string
  * valueString 1..1 MS
    * ^short = "文書のバージョン番号を表す文字列。"

* identifier 0..1 MS
  * ^short = "このリソースの識別ID。実装に応じた検診結果報告書IDを記述する。"
  * system 1..1 MS
    * ^short = "検診結果報告書IDの名前空間を表すURI。"
  * value 1..1 MS
    * ^short = "検診結果報告書ID"

* status 1..1 MS
  * ^short = "この文書のステータス。"

* type 1..1 MS
  * ^short = "Compositionが表す文書の種類。本規格では、コード体系 文書区分コード（ http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes）より、「自治体検診結果報告書」を指定する。"
  * coding 1..1 MS
  * coding from http://jpfhir.jp/fhir/Common/ValueSet/doc-typecodes
    * system 1..1 MS
      * ^short = "文書区分コードのコード体系を識別するURI。固定値。"
    * system = "http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes"
    * code 1..1 MS
      * ^short = "文書区分コード。プロファイル/文書ごとに指定された固有値を設定"
    //* code = #xx // TODO: 実際の値に変更する必要がある
    * display 0..1 MS
      * ^short = "文書区分コードの表示名。"
    //* display = "自治体検診結果報告書"

* category 1..1 MS
  * ^short = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。"
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "報告区分コードのコード体系を識別するURI。固定値。"
//    * system = "urn:oid:2.16.840.1.113883.2.2.1.6.1001" (exactly)
    * system = $report_category_cs (exactly)
    * code 1..1 MS
      * ^short = "報告区分コード。"
    * display 0..1 MS
      * ^short = "コードの表示名。"

* subject 1..1 MS
  * ^short = "受診者情報を表すPatientリソースへの参照。"
* subject only Reference(JP_Patient_CUPIX)
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"

* encounter 1..1 MS
  * ^short = "検診を表すEncounterリソースへの参照。"
* encounter only Reference(JP_Encounter_CUPIX)
  * reference 1..1 MS
    * ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"

* date 1..1 MS
  * ^short = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。"

//* author 2..2 MS 健診結果報告書規格では2..2
* author 1..2 MS
  * ^short = "本文書を作成した施設および作成者への参照"
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #open
* author contains
    practitionerRole 1..1 MS and
    organizationProvider 0..1 MS
* author[practitionerRole] only Reference(JP_PractitionerRole_CUPIX)
  * reference 1..1 MS
    * ^short = "PractitionerRoleリソースのfullUrl要素に指定されるUUIDを指定。"
* author[organizationProvider] only Reference(JP_Organization_Provider_CUPIX)
  * reference 1..1 MS
    * ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定。"

* title 1..1 MS
  * ^short = "この文書の（人が読める）タイトル。"

* confidentiality 1..1 MS
  * ^short = "本個人提供用健診結果報告書アクセス基準を記述する。"

* custodian 0..1 MS
  * ^short = "検診結果報告書の作成・修正をおこない報告書の管理責任を持つ施設（Organizationリソース）への参照。報告書作成機関と同一の場合、本要素を省略してもよい。"
* custodian only Reference(JP_Organization_Provider_CUPIX)
  * reference 1..1 MS
    * ^short = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"

* event 1..1 MS
  * ^short = "検診実施情報として、検診がどの区分として実施されたかを示す健診プログラムサービスコードと、健診実施年月日を指定する。"
  * code 1..1 MS
    * coding 1..1 MS
      * ^short = "検診区分。"
      * system 1..1 MS
        * ^short = "検診区分を識別するURI。固定値。"
      //* system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code" (exactly)
      * code 1..1 MS
        * ^short = "検診区分。"
      * display 0..1 MS
        * ^short = "検診区分の表示名。"
  * period 1..1 MS
    * start 1..1 MS
      * ^short = "検診実施日。ISO8601に準拠yyyy-mm-dd形式で記述する。"
    * end 0..1 MS
  * detail 1..1 MS
    * ^short = "検診実施情報を表すEncounterリソースへの参照。"
  * detail only Reference(JP_Encounter_CUPIX)
    * reference 1..1 MS
      * ^short = "参照されるEncounterリソースのfullUrl要素に指定されたUUID。"

* section
  //セクションの特性ごとの制約
  * ^slicing.discriminator.type = #pattern
//  * ^slicing.discriminator.path = "code"
  * ^slicing.discriminator.path = "code.coding.code"
  * ^slicing.rules = #open

* section contains
// 添付書類だけの場合は０もあり
    OBSERVATION 0..1 MS and
    QUESTIONAIRRE 0..1 MS and
    ATTACHMENT 0..1 MS

//検査結果セクション
* section[OBSERVATION]
  * ^short = "検査結果セクション。健診項目のうち問診以外の項目に関連するリソースが全て本セクションに含まれる。"
  * title = "検査結果" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code 1..1 MS
  * code.coding from $section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = $section_code_cs (exactly)
    * code = $section_code_cs#01910 (exactly)
      * ^short = "検査結果セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "検査結果セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = $narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry
    * ^short = "検査結果セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "resolve()"
    * ^slicing.rules = #open
//  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry contains 
      OBS 0..* MS and 
      COV 0..2 MS

  * entry[OBS] only Reference(JP_Observation_CUPIX or JP_Observation_Group_CUPIX)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

  * entry[COV] only Reference(JP_Coverage_CUPIX)
    * ^short = "検査結果セクションに含まれる保険証情報および受診券情報をあらわすCoverageリソースへの参照。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

//TODO Invariantsで Observation 1> Coverage 0..2になっているか確認

//問診結果セクション
* section[QUESTIONAIRRE]
  * ^short = "問診結果セクション。健診項目のうち問診項目に関連するリソースが全て本セクションに含まれる。"
  * title = "問診結果" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code.coding from $section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = $section_code_cs (exactly)
    * code = $section_code_cs#01920 (exactly)
      * ^short = "問診結果セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "問診結果セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = $narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry 0..*
    * ^short = "問診結果セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

  * entry only Reference(JP_Observation_CUPIX or JP_Observation_Group_CUPIX)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

//添付書類セクション
* section[ATTACHMENT]
  * ^short = "添付書類セクション。健診結果報告書に関連する添付処理を表すリソースが全て本セクションに含まれる。"
  * title = "添付書類" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code.coding from $section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = $section_code_cs (exactly)
    * code = $section_code_cs#01995 (exactly)
      * ^short = "添付書類セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "添付書類セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = $narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry 1..*
    * ^short = "添付書類セクションに含まれるリソースの参照。添付書類を表す。DocumentReferenceリソースが含まれる。"
  * entry only Reference(JP_DocumentReference_CUPIX or JP_DiagnosticReport_CUPIX)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

// 各種制約
Invariant: emc-cmp-1
Description: "language should be 'ja' in case populated.(使用する場合は日本語環境(ja)を規定する)"
Expression: "language.empty() or language = 'ja'"
Severity: #warning

Invariant: emc-cmp-2
Description: "only attachment section must be used in case of CDA attachment pattern.(「CDA添付パターン」では、検査結果セクション、問診結果セクションは使用せず、添付書類セクションのみが使用される)"
Expression: "section.exists(code.coding.code = '01995') xor (section.exists(code.coding.code = '01910') or section.exists(code.coding.code = '01920'))"
Severity: #error
