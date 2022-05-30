Profile: JP_Ticket_CUPIX
Parent: Coverage
Id: JP-Ticket-CUPIX
Description: "健診・検診結果報告書　Coverageリソース保険者発行受診券共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Ticket-CUPIX"

* ^status = #draft


* status 1..1 MS
* status = #active
  * ^short = "固定値"

* type 1..1
  * ^short = "受診券を表す種別を指定する"
  * coding 1..1
    * system 1..1
    * system = "urn:oid:1.2.392.200119.6.208"
      * ^short = "受診券の券面種別コード体系を識別するURI。"
    * code = #1
      * ^short = "受診券情報であることを表すコード。固定値"

* subscriberId 1..1
  * ^short = "受診券整理番号"

* beneficiary 1..1 MS
* beneficiary only Reference(JP_Patient_CUPIX)
  * ^short = "受診者情報（Patientリソース）への参照"

* relationship from $subscriber-relationship-vs (extensible)

* period 1..1 MS
  * ^short = "受診券の有効期間。ISO8601に準拠してyyyy-mm-dd形式で指定する。"

  * start 0..1 MS
    * ^short = "受診券の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"
  * end 0..1 MS
    * ^short = "受診券の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy-mm-dd形式で指定する。"

* payor 1..1 MS
* payor only Reference(JP_Organization)
  * ^short = "受診券の発行者である費用負担者（医療保険の場合は保険者）情報。費用負担者を表すOrganizationリソースへの参照。"
