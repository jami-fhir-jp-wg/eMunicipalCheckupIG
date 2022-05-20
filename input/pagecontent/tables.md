<style type="text/css">
.text table {
width: auto;
border: 1px solid #000000;
border-collapse: collapse;
border-spacing: 0;
}
table {
  border: solid 1px black;
  border-collapse: collapse;
}

table td {
  border: solid 1px black;
  border-collapse: collapse;

}
table th {
  border: solid 1px black;
  border-collapse: collapse;

}
</style>
## <a id="tbl-01">**表1 Bundleリソース　文書情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Bundle” | **Bundle**リソースであることを示す。 | 
| 2 | meta |  |  | 1..1 | Meta |  |  | 
| 2.1 |  | profile |  | 1..1 | canonical(StructureDocument) | http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup | 本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。 | 
| 3 | identifier |  |  | 1..1 | identifier |  |  | 
| 3.1 |  | system |  | 1..1 | url | “urn:ietf:rfc:3986” | 固定値。 | 
| 3.2 |  | value |  | 1..1 | string | "urn:uuid:f3b74ffe-4df6-6abd-9d40-f6870fd165bf" | **Bundle**リソースを一意に特定する識別子。本仕様では、**Bundle**に対して一意となるように生成されたUUIDを指定する。値は例示。 | 
| ４ | type |  |  | 1..1 | code | “document” | **Bundle**リソースがドキュメントタイプであることを示す。 | 
| ５ | timestamp |  |  | 1..1 | instant | "2020-08-21T12:12:21.123+09:00" | このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。値は例示。 | 
| 6 | entry |  |  | 1..1 | BackboneElement |  | 構成リソース一覧目次に相当。 | 
| 6.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:180f219f-97a8-486d-99d9-ed631fe4fc57 | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 6.2 |  | resource |  | 1..1 | Resource | **Composition**リソース | 文書構成情報 | 
| 7 | entry |  |  | 1..1 | BackboneElement |  | 受診者情報エントリ | 
| 7.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c4f | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 7.2 |  | resource |  | 1..1 | Resource | **Patient**リソース | 受診者情報 | 
| 8 | entry |  |  | 1..1 | BackboneElement |  | 検診結果作成者役割情報エントリ | 
| 8.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 8.2 |  | resource |  | 1..1 | Resource | **PractitionerRole**リソース | 検診結果作成者役割情報 | 
| 9 | entry |  |  | 1..1 | BackboneElement |  | 検診結果作成組織情報エントリ | 
| 9.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:5c9f9f7f-e546-04c2-6888-a9e0b24e5720 | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 9.2 |  | resource |  | 1..1 | Resource | **Organization**リソース | 検診結果作成組織情報 | 
| 10 | entry |  |  | 1..1 | BackboneElement |  | 検診結果作成者情報エントリ | 
| 10.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:2d5a292d-169a-5cc4-0e10-7a1c0d3fcb2b | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 10.2 |  | resource |  | 1..1 | Resource | **Practitioner**リソース | 検診結果作成者情報 | 
| 11 | entry |  |  | 1..1 | BackboneElement |  | 検診実施情報エントリ | 
| 11.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 11.2 |  | resource |  | 1..1 | Resource | **Encounter**リソース | 検診実施情報 | 
| 12 | entry |  |  | 0..1 | BackboneElement |  | 保険情報エントリ | 
| 12.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 12.2 |  | resource |  | 0..1 | Resource | **Coverage**リソース | 保険・自費情報 | 
| 13 | entry |  |  | 0..* | BackboneElement |  | 健診項目情報エントリ | 
| 13.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:9d543094-213f-5b40-c28e-35f0bc1cb1df | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 13.2 |  | resource |  | 1..1 | Resource | **Observation**リソース | 健診項目情報 | 
| 14 | entry |  |  | 0..* | BackboneElement |  | 検体情報エントリ | 
| 14.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:75cec9fb-9a82-68e7-f27a-4306b744e3c2 | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 14.2 |  | resource |  | 1..1 | Resource | **Specimen**リソース | 検体情報 | 
| 15 | entry |  |  | 0..* | BackboneElement |  | 健診結果画像情報エントリ | 
| 15.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:bdd60110-fd63-bd9e-e289-98de10c2a0c7 | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 15.2 |  | resource |  | 1..1 | Resource | **DiagnosticReport**リソース |  | 
| 16 | entry |  |  | 0..* | BackboneElement |  | 健診結果画像報告書エントリ | 
| 16.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc3 | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 16.2 |  | resource |  | 1..1 | Resource | **Media**リソース |  | 
| 17 | entry |  |  | 0..* | BackboneElement |  | 添付文書エントリ | 
| 17.1 |  | fullUrl |  | 1..1 | uri | urn:uuid:05f5ce7d-3ad7-39b4-4ab5-6dc99dd51922 | エントリリスト内のリソースを一意に識別するためのUUID。値は例示。 | 
| 17.2 |  | resource |  | 1..1 | Resource | **DocumentReference**リソース | 添付文書情報 | 


## <a id="tbl-02">**表2 Compositionリソース　文書構成情報</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  |  | “Composition” | **Composition**リソースであることを示す。 | 
| 2 | language |  |  |  | 0..1 | code | “ja” | 日本語を指定する場合、”ja”を指定する。固定値。 | 
| 3 | text |  |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 3.1 |  | status |  |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 3.2 |  | div |  |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 4 | extension |  |  |  | 0..1 | Extension |  | 健診結果報告書の文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。 | 
| 4.1 |  | url |  |  | 1..1 | uri | “http:// hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber” | 拡張を識別するURL。固定値。 | 
| 4.2 |  | valueString |  |  | 1..1 | string | “1.0” | 文書のバージョン番号を表す文字列。値は例示。 | 
| 5 | identifier |  |  |  | 0..1 | Identifier |  | このリソースの識別ID。実装に応じた検診結果報告書IDを記述する。 | 
| 5.1 |  | system |  |  | 1..1 | uri | "urn:oid:1.2.392.100495.100.1.11311234567" | 検診結果報告書IDの名前空間を表すURI。値は例示。 | 
| 5.2 |  | value |  |  | 1..1 | string | “12345” | 検診結果報告書ID | 
| 6 | status |  |  |  | 1..1 | code | “final” | この文書のステータス。値は例示。 | 
| 7 | type |  |  |  | 1..1 | CodeableConcept |  | Compositionが表す文書の種類。本規格では、コード体系 文書区分コード（ http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes）より、「自治体検診結果報告書」を指定する。 | 
| 7.1 |  | coding |  |  | 1..1 | Coding |  |  | 
| 7.1.1 |  |  | system |  | 1..1 | uri | http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes | 文書区分コードのコード体系を識別するURI。固定値。 | 
| 7.1.2 |  |  | code |  | 1..1 | code | “xx” | 文書区分コード。”xx：自治体検診結果報告書”を指定。固定値。 | 
| 7.1.3 |  |  | display |  | 0..1 | string | “自治体検診結果報告書” | 文書区分コードの表示名。 | 
| 8 | category |  |  |  | 1..1 | CodeableConcept |  | 報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。 | 
| 8.1 |  | coding |  |  | 1..1 | Coding |  |  | 
| 8.1.1 |  |  | system |  | 1..1 | uri | http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category | 報告区分コードのコード体系を識別するURI。固定値。 | 
| 8.1.2 |  |  | code |  | 1..1 | code | “51” | 報告区分コード。値は例示。 | 
| 8.1.3 |  |  | display |  | 0..1 | string | “肺がん検診” | コードの表示名。値は例示。 | 
| 9 | subject |  |  |  | 1..1 | Reference |  | 受診者情報を表す**Patient**リソースへの参照。 | 
| 9.1 |  | reference |  |  | 1..1 | string | " urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c4f " | **Patient**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 10 | encounter |  |  |  | 1..1 | Reference |  | 検診を表す**Encounter**リソースへの参照。 | 
| 10.1 |  | reference |  |  | 1..1 | string | urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc | **Encounter**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 11 | date |  |  |  | 1..1 | dateTime | "2020-08-21T12:28:21+09:00" | このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。 | 
| 12 | author |  |  |  | 1..2 | Reference |  | 本文書を作成した施設および作成者への参照。 | 
| 12.1 |  | reference |  |  | 1..1 | string | "urn:uuid:7f60d206-66c5-4998-931e-86bf2b2d0bdc" | **PractitionerRole**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 13 | title |  |  |  | 1..1 | string | “健康診断結果のお知らせ” | この文書の（人が読める）タイトル。値は例示。 | 
| 14 | confidentiality |  |  |  | 1..1 | code | “N” | 本個人提供用健診結果報告書アクセス基準を記述する。値は例示。 | 
| 15 | custodian |  |  |  | 0..1 | Reference(Organization) |  | 検診結果報告書の作成・修正をおこない報告書の管理責任を持つ施設（Organizationリソース）への参照。報告書作成機関と同一の場合、本要素を省略してもよい。 | 
| 15.1 |  | reference |  |  | 1..1 | string | "urn:uuid:179f9f7f-e546-04c2-6888-a9e0b24e5720" | custodianに対応する**Organization**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 16 | event |  |  |  | 1..1 | BackboneElement |  | 検診実施情報として、検診がどの区分として実施されたかを示す健診プログラムサービスコードと、健診実施年月日を指定する。 | 
| 16.1 |  | code |  |  | 1..1 | CodeableConcept |  |  | 
| 16.1.1 |  |  | coding |  | 1..1 | Coding |  | 自治体検診の検診区分。 | 
| 16.1.1.1 |  |  |  | system | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code” | 自治体検診の検診区分を識別するURI。固定値。 | 
| 16.1.1.2 |  |  |  | code | 1..1 | code | “1” | 検診区分。値は例示。 | 
| 16.1.1.3 |  |  |  | display | 0..1 | string | “一次検診” | 検診区分の表示名。値は例示。 | 
| 16.2 |  | period |  |  | 1..1 | Period |  |  | 
| 16.2.1 |  |  | start |  | 1..1 | dateTime | "2020-10-01" | 検診実施日。ISO8601に準拠yyyy-mm-dd形式で記述する。 | 
| 16.2.2 |  |  | end |  | 0..1 | dateTime | "2020-10-01" |  | 
| 16.3 |  | detail |  |  | 1..1 | Reference(Encounter) |  | 検診実施情報を表す**Encounter**リソースへの参照。 | 
| 16.3.1 |  |  | reference |  | 1..1 | string | "urn:uuid:1af0a9a6-a91d-8aef-d14e-069795b89c9f" | 参照される**Encounter**リソースのfullUrl要素に指定されたUUID。値は例示。 | 
| 17 | section |  |  |  | 1..1 | BackboneElement |  | 検査結果セクション。健診項目のうち問診以外の項目に関連するリソースが全て本セクションに含まれる。 | 
| 17.1 |  | title |  |  | 1..1 | string | “検査結果” | セクションタイトル。固定値。 | 
| 17.2 |  | code |  |  | 1..1 | CodeableConcept |  |  | 
| 17.2.1 |  |  | coding |  | 1..1 | Coding |  |  | 
| 17.2.1.1 |  |  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code" | セクション区分コードのコード体系を識別するURI。固定値。 | 
| 17.2.1.2 |  |  |  | code | 1..1 | code | “01910” | 検査結果セクションを表すセクション区分のコード値。固定値。 | 
| 17.2.1.3 |  |  |  | display | 0..1 | string | “検査結果セクション” | セクション区分コードの表示名。 | 
| 17.3 |  | text |  |  | 0..1 | Narrative |  | セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。 | 
| 17.3.1 |  |  | status |  | 1..1 | code | “generated” | 固定値。 | 
| 17.3.2 |  |  | div |  | 1..1 | xhtml |  | 本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 | 
| 17.4 |  | entry |  |  | 0..* | Reference(Observation) |  | 検査結果セクションに含まれるリソースの参照。検査項目を表す**Observation**リソースが含まれる。 | 
| 17.4.1 |  |  | reference |  | 1..1 | string | "urn:uuid:ef7892cc-fb3a-b951-9ac7-f8cd6c746f0a" | 参照先のリソースのfullUrl要素に指定されるUUID。値は例示。 | 
| 17.5 |  | entry |  |  | 0..2 | Reference(Coverage) |  | 検査結果セクションに含まれる保険証情報をあらわす**Coverage**リソースへの参照。 | 
| 17.5.1 |  |  | reference |  | 1..1 | string | “urn:uuid:38f45298-ea42-9f15-7fb2-48ed899d3ab6” | 参照先リソースのfullUrl要素に指定されるUUIR。値は例示。 | 
| 18 | section |  |  |  | 0..1 | BackboneElement |  | 問診結果セクション。健診項目のうち問診項目に関連するリソースが全て本セクションに含まれる。 | 
| 18.1 |  | title |  |  | 1..1 | string | “問診結果” | セクションタイトル。固定値。 | 
| 18.2 |  | code |  |  | 1..1 | CodeableConcept |  |  | 
| 18.2.1 |  |  | coding |  | 1..1 | Coding |  |  | 
| 18.2.1.1 |  |  |  | system | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code” | セクション区分コードのコード体系を識別するURI。固定値。 | 
| 18.2.1.2 |  |  |  | code | 1..1 | code | “01920” | 問診結果セクションを表すセクション区分のコード値。固定値。 | 
| 18.2.1.3 |  |  |  | display | 0..1 | string | “問診結果セクション” | セクション区分コードの表示名。 | 
| 18.3 |  | text |  |  | 0..1 | Narrative |  | セクションの内容を表す文字列。 | 
| 18.3.1 |  |  | status |  | 1..1 | code | “generated” | 固定値。 | 
| 18.3.2 |  |  | div |  | 1..1 | xhtml |  | 本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 | 
| 18.4 |  | entry |  |  | 0..* | Reference(Observation) |  | 問診結果セクションに含まれるリソースの参照。検査項目を表す**Observation**リソースが含まれる。 | 
| 18.4.1 |  |  | reference |  | 1..1 | string | "urn:uuid:ef7892cc-fb3a-b951-9ac7-f8cd6c746f0a" | 参照先のリソースのfullUrl要素に指定されるUUID。値は例示。 | 
| 19 | section |  |  |  | 1..1 | BackboneElement |  | 添付書類セクション。健診結果報告書に関連する添付処理を表すリソースが全て本セクションに含まれる。 | 
| 19.1 |  | title |  |  | 1..1 | string | “添付書類” | セクションタイトル。固定値。 | 
| 19.2 |  | code |  |  | 1..1 | CodeableConcept |  |  | 
| 19.2.1 |  |  | coding |  | 1..1 | Coding |  |  | 
| 19.2.1.1 |  |  |  | system | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code” | セクション区分コードのコード体系を識別するURI。固定値。 | 
| 19.2.1.2 |  |  |  | code | 1..1 | code | “01995” | 添付書類セクションを表すセクション区分のコード値。固定値。 | 
| 19.2.1.3 |  |  |  | display | 0..1 | string | “添付書類セクション” | セクション区分コードの表示名。 | 
| 19.3 |  | text |  |  | 0..1 | Narrative |  | セクションの内容を表す文字列。 | 
| 19.3.1 |  |  | status |  | 1..1 | code | “generated” | 固定値。 | 
| 19.3.2 |  |  | div |  | 1..1 | xhtml |  | 本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 | 
| 19.4 |  | entry |  |  | 1..* | Reference(DocumentReference) |  | 添付書類セクションに含まれるリソースの参照。添付書類を表す。**DocumentReference**リソースが含まれる。 | 
| 19.4.1 |  |  | reference |  | 1..1 | string | "urn:uuid:ef7892cc-fb3a-b951-9ac7-f8cd6c746f0a" | 参照先のリソースのfullUrl要素に指定されるUUID。値は例示。 | 



## <a id="tbl-03">**表3 Patientリソース　受診者情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  |  | “Patient” | **Patient**リソースであることを示す。 | 
| 2 | text |  |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 2.1 |  | status |  |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | extension |  |  |  | 0..1 | Extension |  | 受診時年齢を表現する拡張「JP_Age_At_Event」を使用し、受診時年齢を記述する。 | 
| 3.1 |  | url |  |  | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event” | 拡張を識別するURL。固定値。 | 
| 3.2 |  | extension |  |  | 1..1 | Extension |  |  | 
| 3.2.1 |  |  | url |  | 1..1 | uri | “age” | 固定値。 | 
| 3.2.2 |  |  | valueAge |  | 1..1 | Age |  |  | 
| 3.2.2.1 |  |  |  | value | 1..1 | decimal | 58 | 受診時年齢。値は例示。 | 
| 3.2.2.2 |  |  |  | unit | 1..1 | string | “歳” | 固定値。 | 
| 3.2.2.3 |  |  |  | system | 1..1 | uri | “http://unitsofmeasure.org” | 単位コードUCUMを識別するURL。固定値。 | 
| 3.2.2.4 |  |  |  | code | 1..1 | code | “a” | 「年」を表すUCUMコード。固定値。 | 
| 3.3 |  | extension |  |  | 1..1 | Extension |  |  | 
| 3.3.1 |  |  | url |  | 1..1 | uri | “event” | 固定値。 | 
| 3.3.2 |  |  | valueReference |  | 1..1 | Reference | "urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad" | 検診実施情報への参照。値は例示。 | 
| 4 | identifier |  |  |  | 1..1 | Identifier |  | 社員番号や健診実施機関受診者整理番号。 | 
| 4.1 |  | system |  |  | 1..1 | uri | "urn:oid: 1.2.392.200119.6.102.1[保険医療機関コード(10 桁)]" | 末尾の1[保険医療機関コード(10 桁)]は、保険医療機関コード(10 桁)の先頭に1をつけた11桁とした文字列。 | 
| 4.2 |  | value |  |  | 1..1 | string |  |  | 
| 5 | name |  |  |  | 0..1 | HumanName |  | 受診者氏名　漢字表記 | 
| 5.1 |  | extension |  |  | 1..1 | Extension |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 | 
| 5.1.1 |  |  | url |  | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" | 拡張を識別するURL。固定値。 | 
| 5.1.2 |  |  | valueCode |  | 1..1 | code | “IDE” | 漢字表記であることを示す固定値。 | 
| 5.2 |  | use |  |  | 1..1 | code | “official” | 氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 | 
| 5.3 |  | text |  |  | 1..1 | string | “東京太郎” | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。 | 
| 5.4 |  | family |  |  | 0..1 | string | “東京” | 氏名の姓。 | 
| 5.5 |  | given |  |  | 0..* | string | “太郎” | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。 | 
| 6 | name |  |  |  | 0..1 | HumanName |  | よみ（カタカナ） | 
| 6.1 |  | extension |  |  | 1..1 | Extension |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 | 
| 6.1.1 |  |  | url |  | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" | 拡張を識別するURL。固定値。 | 
| 6.1.2 |  |  | valueCode |  | 1..1 | code | “SYL” | カナ表記であることを示す固定値。 | 
| 6.2 |  | use |  |  | 1..1 | code | “official” | 氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 | 
| 6.3 |  | text |  |  | 1..1 | string | トウキョウタロウ | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。 | 
| 6.4 |  | family |  |  | 0..1 | string | トウキョウ | カナ氏名の姓。 | 
| 6.5 |  | given |  |  | 0..* | string | タロウ | カナ氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。 | 
| 7 | name |  |  |  | 0..1 | HumanName |  | 半角アルファベット文字表記の氏名 | 
| 7.1 |  | extension |  |  | 1..1 | Extension |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 | 
| 7.1.1 |  |  | url |  | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation" | 拡張を識別するURL。固定値。 | 
| 7.1.2 |  |  | valueCode |  | 1..1 | code | “ABC” | 半角アルファベット文字表記であることを示す固定値。 | 
| 7.2 |  | use |  |  | 1..1 | code | “official” | 氏名が正式名称であることを明示するために、NameUseバリューセット（http://hl7.org/fhir/ValueSet/name-use）より「official」を必須で設定する。 | 
| 7.3 |  | text |  |  | 1..1 | string | TOKYO TARO | 半角アルファベット文字氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。 | 
| 7.4 |  | family |  |  | 0..1 | string | TOKYO | 半角アルファベット文字氏名の姓。 | 
| 7.5 |  | given |  |  | 0..* | string | TARO | 半角アルファベット文字氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。 | 
| 8 | telecom |  |  |  | 0..1 |  |  | 受診者連絡先電話番号。 | 
| 8.1 |  | system |  |  | 1..1 | code | “phone” | 電話番号の連絡先種別を表すコード体系を識別するコード。ContactPointSystemから指定。値は例示。 | 
| 8.2 |  | value |  |  | 1..1 | string | “03-1111-2222” | 電話番号文字列。見易さのためにハイフンを入れてもよい。 | 
| 8.3 |  | use |  |  | 1..1 | code | “home” | 電話番号種別を表すコード。ContactPointUseから指定。値は例示。 | 
| 9 | gender |  |  |  | 1..1 | code | “male” | 受診者の性別。"male"または"female"。値は例示。 | 
| 10 | birthDate |  |  |  | 1..1 | dateTime | “1920-02-11” | 受診者の生年月日。ISO8601に準拠して"yyyy-mm-dd"形式。値は例示。 | 
| 11 | address |  |  |  | 0..1 | Address |  | 受診者の住所。 | 
| 11.1 |  | text |  |  | 1..1 | string | “神奈川県横浜市港区１－２－３” | 住所文字列。値は例示。 | 
| 11.2 |  | postalCode |  |  | 1..1 | string | “123-4567” | 郵便番号。値は例示。 | 
| 11.3 |  | country |  |  | 1..1 | string | “JP” | 居住地が国内の場合「JP」固定。 | 

## <a id="tbl-04">**表 4 連絡先種別（ContactPointSystem）**</a>

| コード | 説明 | 
| --- | --- |
| phone | 電話 | 
| fax | ファックス | 
| email | 電子メールアドレス | 
| pager | ポケットベル番号 | 
| url | URLとして表現される連絡先（Webサイトやブログ、Skypeなど） | 
| sms | SMSメッセージの送信に使用できる連絡先 | 
| other | その他の連絡先 | 


## <a id="tbl-05">**表 5 電話種別（ContactPointUse）**</a>

| コード | 説明 | 
| --- | --- |
| home | 自宅 | 
| work | 勤務先 | 
| temp | 一時的な連絡先 | 
| old | 使用していない以前の連絡先 | 
| mobile | 携帯電話 | 


## <a id="tbl-06">**表 6 性別コード（AdministrativeGender）**</a>

| コード | 説明 | 
| --- | --- |
| male | 男性 | 
| female | 女性 | 
| unknown | 情報なし | 


## <a id="tbl-07">**表 7 和暦西暦変換**</a>

| 元号 | 対応する西暦 | 
| --- | --- |
| 明治 | 1868年9月8日 ～ 1912年7月29日 | 
| 大正 | 1912年7月30日 ～ 1926年12月24日 | 
| 昭和 | 1926年12月25日 ～ 1989年1月7日 | 
| 平成 | 1989年1月8日 ～ 2019年4月30日 | 
| 令和 | 2019年5月1日 ～ | 



## <a id="tbl-08">**表8 PractitionerRoleリソース　文書作成者役割情報**</a>

| No | 要素Lv1 | 要素Lv2 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  | “PractitionerRole” | **PractitionerRole**リソースであることを示す。 | 
| 2 | text |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。 | 
| 2.1 |  | status | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> |  | 
| 3 | practitioner |  | 1..1 | Reference(Practitioner) |  | 検診結果報告書作成者を表す**Practitioner**リソースへの参照 | 
| 3.1 |  | reference | 1..1 | string | “urn:uuid:195a292d-169a-5cc4-0e10-7a1c0d3fcb2b” | **Practitioner**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 4 | organization |  | 1..1 | Reference(Organization) |  | 検診結果報告書作成機関を表す**Organization**リソースへの参照。 | 
| 4.1 |  | reference | 1..1 | string | "urn:uuid:179f9f7f-e546-04c2-6888-a9e0b24e5720" | **Organization**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 


## <a id="tbl-09">**表9 Organizationリソース　検診結果報告書作成組織情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Organization” | **Organization**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。 | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> |  | 
| 3 | identifier |  |  | 1..1 | Identifier |  | 保険医療機関番号10桁。 | 
| 3.1 |  | system |  | 1..1 | uri | “urn:oid:1.2.392.200119.6.102” | 保険医療機関番号10桁の名前空間を識別するURL。固定値。 | 
| 3.2 |  | value |  | 1..1 | string | “1311234567” | 保険医療機関番号10桁。値は例示。 | 
| 4 | type |  |  | 1..1 | CodeableConcept |  | 施設種別 | 
| 4.1 |  | coding |  | 1..1 |  |  |  | 
| 4.1.1 |  |  | system | 1..1 | uri | “http://terminology.hl7.org/CodeSystem/organization-type” | 施設種別を表すコード体系を識別するURI。固定値。 | 
| 4.1.2 |  |  | code | 1..1 | code | “prov” | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、医療機関を表すコードを指定。固定値。 | 
| 5 | name |  |  | 1..1 | string | "厚生労働省第一病院" | 医療機関名称。値は例示。 | 
| 6 | telecom |  |  | 0..1 | ContactPoint |  | 医療機関電話番号 | 
| 6.1 |  | system |  | 1..1 | code | “phone” | 固定値。 | 
| 6.2 |  | value |  | 1..1 | string | “0123-456-7890” | 値は例示。 | 
| 7 | address |  |  | 0..1 | Address |  | 医療機関住所 | 
| 7.1 |  | text |  | 1..1 | string | "東京都千代田区千代田９－９－９" | 値は例示。 | 
| 7.2 |  | postalCode |  | 1..1 | string | 100-0001 | 医療機関の郵便番号。値は例示。 | 
| 7.3 |  | country |  | 1..1 | string | “JP” | 国内の場合「JP」固定。 | 


## <a id="tbl-10">**表10 Practitionerリソース　検診結果報告書作成者情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Practitioner” | **Practitioner**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。 | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> |  | 
| 3 | name |  |  | 1..1 | HumanName |  | 検診結果報告書作成氏名 | 
| 3.1 |  | extension |  | 1..1 | Extension |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 | 
| 3.1.1 |  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation” | 拡張を識別するURL。固定値。 | 
| 3.1.2 |  |  | valueCode | 1..1 | code | “IDE” | 漢字表記であることを示す固定値。 | 
| 3.2 |  | text |  | 1..1 | string | “神奈川花子” | 氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。 | 
| 3.3 |  | family |  | 0..1 | string | “神奈川” | 氏名の姓。 | 
| 3.4 |  | given |  | 0..* | string | “花子” | 氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。 | 
| 4 | name |  |  | 0..1 | HumanName |  | よみ（カタカナ） | 
| 4.1 |  | extension |  | 1..1 | Extension |  | 氏名が漢字表記かカナ表記かを区別するための拡張「iso21090-EN-representation」。 | 
| 4.1.1 |  |  | url | 1..1 | uri | "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation” | 拡張を識別するURL。固定値。 | 
| 4.1.2 |  |  | valueCode | 1..1 | code | “SYL” | 固定値。 | 
| 4.2 |  | text |  | 1..1 | string | “カナガワハナコ” | カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。 | 
| 4.3 |  | family |  | 0..1 | string | “カナガワ” | カナ氏名の姓。 | 
| 4.4 |  | given |  | 0..* | string | “ハナコ” | カナ氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。 | 


## <a id="tbl-11">**表11 Coverageリソース　保険情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Coverage” | **Coverage**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。 | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> |  | 
| 3 | extension |  |  | 0..1 | Extension |  | 被保険者証記号を表す拡張「InsuredPersonSymbol」。保険種別が「1：医保」、「2：国保」の場合に記録する。被保険者証記号がない場合は、本拡張要素自体出現しない。 | 
| 3.1 |  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/ Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol" | 拡張を識別するURL。固定値。 | 
| 3.2 |  | valueString |  | 1..1 | string | “１２３４５” | 被保険者証記号。記録形式は「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従う。値は例示。 | 
| 4 | extension |  |  | 0..1 | Extension |  | 被保険者証番号を表す拡張「InsuredPersonNumber」。保険種別が「1：医保」、「2：国保」、「7：後期高齢者」の場合に記録する。それ以外の場合は、本拡張要素自体出現しない。 | 
| 4.1 |  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/core/ Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber" | 拡張を識別するURL。固定値。 | 
| 4.2 |  | valueString |  | 1.1 | string | “６７８９０” | 被保険者証番号。記録形式は「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従う。値は例示。 | 
| 5 | extension |  |  | 0..1 | Extension |  | 被保険者証番号の枝番を表す拡張「InsuredPersonSubNumber」。 | 
| 5.1 |  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber" | 拡張を識別するURL。固定値。 | 
| 5.2 |  | valueString |  | 1.1 | string | "01" | 被保険者証記号・番号に対する個人単位被保険者番号（枝番）。「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従い、桁数が2桁に満たない場合は、先頭に"0"を記録し2桁で記録する。値は例示。後続のdependent要素にも同一の情報を記述すること。 | 
| 6 | status |  |  | 1..1 | code | “active” | 固定値。処方箋発行時に真に有効な保険かどうかは意味しない。 | 
| 7 | type |  |  | 1..1 | CodeableConcept |  | 保険種別コード。 | 
| 7.1 |  | coding |  | 1..1 | Coding |  |  | 
| 7.1.1 |  |  | system | 1..1 | uri | "urn:oid:1.2.392.100495.20.2.61" | 保険種別コード体系を識別するURI。 | 
| 7.1.2 |  |  | code | 1..1 | code | “1” | 保険種別コード。値は例示。 | 
| 8 | beneficiary |  |  | 1..1 | Reference(Patient) |  | この保険で給付される受診者情報（**Patient**リソース）へのリテラル参照。 | 
| 8.1 |  | reference |  | 1..1 | string | "urn:uuid:11f0a9a6-a91d-3aef-fc4e-069995b89c4f" | **Patient**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 9 | dependent |  |  | 0..1 | string | “01” | 被保険者証記号・番号に対する個人単位被保険者番号（枝番）。「オンライン又は光ディスク等による請求に係る記録条件仕様（医科用）」に従い、桁数が2桁に満たない場合は、先頭に"0"を記録し2桁で記録する。値は例示。被保険者番号の枝番を記述する拡張要素にも同一の値を記述すること。 | 
| 10 | relationship |  |  | 1..1 | CodeableConcept |  | 給付される患者と被保険者との関係（本人、または被扶養者）。被保険者区分コード表より「1：被保険者」、または、「2：被扶養者」を指定する。 | 
| 10.1 |  | coding |  | 1..1 | Coding |  |  | 
| 10.1.1 |  |  | system | 1..1 | uri | "urn:oid:1.2.392.100495.20.2.62" | 被保険者区分コードのコード体系を識別するURI。固定値。 | 
| 10.1.2 |  |  | code | 1..1 | code | “1” | 被保険者区分コード。値は例示。 | 
| 10.1.3 |  |  | display | 0..1 | string | “被保険者” | 値は例示。 | 
| 11 | period |  |  | 0..1 | Period |  | 保険証の有効期間。保険証に明示的に記載がある場合、かつ、医療機関がその情報を把握している場合のみ記録する。 | 
| 11.1 |  | start |  | 0..1 | dateTime | “2018-04-01” | 保険証の有効期間の開始日。資格取得日。ISO8601に準拠してyyyy-mm-dd形式で指定する。値は例示。 | 
| 11.2 |  | end |  | 0..1 | dateTime |  | 保険証の有効期間の終了日。資格喪失日。ISO8601に準拠してyyyy-mm-dd形式で指定する。 | 
| 12 | payor |  |  | 1..1 | Reference(Organization\|Patient) |  | 費用負担者（医療保険の場合は保険者）情報。保険種別が「6：自費」の場合、患者本人を表す**Patient**リソースへの参照。それ以外の保険種別は、費用負担者を表す**Organization**リソースへの参照。 | 
| 12.1 |  | reference |  | 1..1 | string | "urn:uuid:7c9f9f7f-e546-0ac2-6828-a9e0b24e5750" | **Patient**リソースまたは**Organization**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 


## <a id="tbl-12">**表12 Organizationリソース　保険者情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Organization” | **Organization**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。 | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> |  | 
| 3 | identifier |  |  | 1..1 | Identifier |  | 保険者番号8桁。 | 
| 3.1 |  | system |  | 1..1 | uri | “urn:oid:1.2.392.100495.20.3.61” | 保険者番号8桁の名前空間を識別するURL。固定値。 | 
| 3.2 |  | value |  | 1..1 | string | “06123456” | 保険者番号8桁。値は例示。 | 
| 4 | type |  |  | 1..1 | CodeableConcept |  | 施設種別 | 
| 4.1 |  | coding |  | 1..1 |  |  |  | 
| 4.1.1 |  |  | system | 1..1 | uri | “http://terminology.hl7.org/CodeSystem/organization-type” | 施設種別を表すコード体系を識別するURI。固定値。 | 
| 4.1.2 |  |  | code | 1..1 | code | “ins” | バリューセットOrganizationType(http://hl7.org/fhir/ValueSet/organization-type) から、保険者を表すコードを指定。固定値。 | 
| 5 | name |  |  | 1..1 | string | "サンプル健康保険組合" | 保険者名称。値は例示。 | 


## <a id="tbl-13">**表13 Encounterリソース　検診実施情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Encounter” | **Encounter**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。 | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | extension |  |  | 0..1 | Extension |  | 一次検診受診年度を表現する拡張「JP_Fiscal_Year_At_Primary_Checkup」。一次検診の受診年度をdate型で記述する。 | 
| 3.1 |  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Fiscal_Year_At_Primary_Checkup" | 拡張を識別するURL。固定値。 | 
| 3.2 |  | valueDate |  | 1..1 | date | “2022” | 年度。値は例示。 | 
| 4 | extension |  |  | 0..1 | Extension |  | 費用徴収区分を表現する拡張「JP_Checkup_Fee_Collection」。自治体検診の費用徴収に関わる内容を文字列で記述する。 | 
| 4.1 |  | url |  | 1..1 | uri | "http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Checkup_Fee_Collection" | 拡張を識別するURL。固定値。 | 
| 4.2 |  | valueString |  | 1..1 | string | “本人負担はありません。” | 値は例示。 | 
| 5 | status |  |  | 1..1 | code | “finished” | バリューセットEncounterStatus(http://hl7.org/fhir/ValueSet/encouner-status)より”finished"を指定する。固定値。 | 
| 6 | class |  |  | 1..1 | Coding |  | 受診情報の分類 | 
| 6.1 |  | system |  | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/encounter-category” | コード体系を識別するURI。固定値。 | 
| 6.2 |  | code |  | 1..1 | code | “checkup” | 健診を表すコード。固定値。 | 
| 6.3 |  | display |  | 0..1 | string | “健診” | 固定値。 | 
| 7 | serviceType |  |  | 1..1 | BackboneElement |  | 自治体検診の受診方法。 | 
| 7.1 |  | coding |  | 1..1 | Coding |  |  | 
| 7.1.1 |  |  | system | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-encounter-type” | 自治体検診の受診方法のコード体系を表すURI。固定値。 | 
| 7.1.2 |  |  | code | 1..1 | code | “1” | 自治体検診の受診方法。値は例示。 | 
| 7.1.3 |  |  | display | 0..1 | string | ”個別受診” | 自治体検診の受診方法の表示名。値は例示。 | 
| 8 | period |  |  | 1..1 | Period |  | 検診の受診日。1日で実施される健診ではperiod型のstart要素とend要素には同一の日付を記録する。 | 
| 8.1 |  | start |  | 1..1 | datetime | “2020-10-10” | 値は例示。 | 
| 8.2 |  | end |  | 1..1 | datetime | “2020-10-10” | 値は例示。 | 
| 9 | serviceProvider |  |  | 1..1 | BackboneElement |  | 検診実施機関を表す**Organization**リソースへの参照。 | 
| 9.1 |  | reference |  | 1..1 | String |  |  | 


## <a id="tbl-14">**表14 セクション一覧**</a>

| セクションコード | セクション名 | 説明 | 
| --- | --- | --- |
| 01910 | 検査結果セクション | 検診項目の検査結果を格納するセクション。検診項目とは、受診者本人が作成したものではない検診結果（検体検査結果や診察項目など）を格納する。 | 
| 01920 | 問診結果セクション | 問診項目の結果を格納するセクション。問診項目とは、受診者本人が作成した健診項目を意味する。 | 
| 01995 | 添付書類セクション | 検診結果報告書の添付文書（画像結果報告書、心電図波形、DICOM画像など）を格納するセクション。 | 


## <a id="tbl-15">**表15 検査結果で指定するデータ**</a>

| No | 項目名と対応リソース.要素 | 値 | 備考 | 
| --- | --- | --- | --- |
| (1) | 検査項目コード<br>Observation.code | 検査項目に対応するコードを指定。「XML用自治体検診項目情報」の「項目コード」に収載されており、JLAC10 17桁コードにもとづいて厚生労働省および関連団体で特定健診項目コードとして取り決めたコードを使用する。 |  | 
| (2) | 検査項目コード体系OID<br>Observation.code.coding.system | 自治体検診項目コードを使用する場合：“urn:oid:1.2.392.100495.100.1051”<br>JLAC10の場合："http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10" |  | 
| (3) | 検査項目コード<br>Observation.code.coding.code | 前項のコード体系における健診項目に対応する検査項目コード |  | 
| (4) | 検査項目コード表示名<br>Observation.code.coding.display | 項目に対応するコード値の表示名を設定。 |  | 
| (5) | 検査結果データ型 | FHIRインスタンス中には直接出現しない。 |  | 
| (6) | 結果<br>Observation.value | 定量数値結果の場合、測定値の実数部（物理量）をObservation.value. valueQuantity.valueに設定。定性検査結果コードの場合、結果を示すコードをObservation.value.valueCodeableConsept.conding.code、または結果文字列をObservation.value.valueStringに設定。数値結果の場合、結果値を Observation.value.valueInteger に設定。日付で表現される結果の場合、Observation.value.valueDateTimeに設定。 | 未実施、測定不可能の場合は出現しない。 | 
| (7) | 単位コード<br>Observation.value.valueQuantity.unit、<br>Observation.value.valueQuantity.system、<br>Observation.value.valueQuantity.code | 定量数値結果の場合、「ＸＭＬ用特定健診項目情報」の「UCUM単位コード」を参考にUCUM単位コードを設定。コード体系UCUMで定められた表記に従っている。表示用の単位コードと異なる場合があることに注意。検査値に単位がない場合には出現しない。定性検査結果コードの場合には出現しない。 | 未実施、測定不可能の場合は出現しない。 | 
| (8) | 結果コード体系OID<br>Observation.value.valueCodeableConsept.conding.system | 定量数値結果の場合には出現しない。定性検査結果コードの場合で結果がコード値をとる場合に、そのコードテーブルのOID。「FHIR用自治体検診項目表」の「結果コード体系」を設定できる。 | 未実施、測定不可能の場合は出現しない。 | 
| (9) | 結果コード表示名<br>Observation.value.valueCodeableConsept.conding.display | 定量数値結果の場合には出現しない。定性検査結果コードの場合で結果がコード値をとる場合に、そのコードに対応する結果表示文字列。 | 未実施、測定不可能の場合は出現しない。 | 
| (10) | 検査基準値下限閾値<br>Observaiton.referenceRange.low.value | 定量数値結果であって、検査基準値が設定される項目のみ出現し、項目に設定された検査基準値の下限閾値（実数部）を設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (11) | 検査基準値下限単位コード<br>Observaiton.referenceRange.low.code、<br>Observaiton.referenceRange.low.unit | 定量数値結果であって、検査基準値が設定される項目のみ出現し、（7）と同一の単位コードを設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (12) | 検査基準値上限閾値<br>Observaiton.referenceRange.high.value | 定量数値結果であって、検査基準値が設定される項目のみ出現し、項目に設定された検査基準値の上限閾値（実数部）を設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (13) | 検査基準値上限単位コード<br>Observaiton.referenceRange.high.code、Observaiton.referenceRange.high.unit | 定量数値結果であって、検査基準値が設定される項目のみ出現し、（7）と同一の単位コードを設定。 | 検査基準値が設定される項目のみ出現。未実施の場合は出現しない。 | 
| (14) | 結果解釈コード<br>Observation.interpretation | 結果値の解釈を表現する。OIDには"http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"を使用する。 |  | 

## <a id="tbl-16">**表16 Observationリソース　検査項目情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 要素Lv5 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  |  |  | “Observation” | **Observation**リソースであることを示す。 | 
| 2 | text |  |  |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 2.1 |  | status |  |  |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  |  |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | status |  |  |  |  | 1..1 | code | “final” | 検査結果の結果状態を表すコード。値は最終結果を表す”final”ないし未検を表す"cancelled"のいずれかを指定する。 | 
| 4 | category |  |  |  |  | 1..1 | CodeableConcept |  | 検査項目の区分を表すカテゴリコード。 | 
| 4.1 |  | coding |  |  |  | 1..1 | Coding |  |  | 
| 4.1.1 |  |  | system |  |  | 1..1 | uri | “http://terminology.hl7.org/CodeSystem/observation-category” | コード体系を識別するURI。固定値。 | 
| 4.1.2 |  |  | code |  |  | 1..1 | code | “laboratory” | コード体系http://terminology.hl7.org/CodeSystem/observation-categoryから、検診項目にあったカテゴリを指定する。値は例示。 | 
| 4.1.3 |  |  | display |  |  | 0..1 | string | “検体検査” | コードの表示名。値は例示。 | 
| 5 | code |  |  |  |  | 1..1 | CodeableConcept |  | 健診項目コード。健診項目を識別するJLAC10コードを指定。 | 
| 5.1 |  | coding |  |  |  | 1..1 | Coding |  |  | 
| 5.1.1 |  |  | system |  |  | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10” | JLAC10コードを識別するURI。固定値。 | 
| 5.1.2 |  |  | code |  |  | 1..1 | code | "3F015000002327101" | 健診項目コード。値は例示。 | 
| 5.1.3 |  |  | display |  |  | 0..1 | string | “中性脂肪” | 健診項目コードの表示名。値は例示。 | 
| 6 | subject |  |  |  |  | 1..1 | Reference |  | 受診者情報を表す**Patient**リソースへの参照。 | 
| 6.1 |  | reference |  |  |  | 1..1 | string | "urn:uuid:11f0a9a6-a91d-3aef-fc4e-069995b89c4f" | **Patient**リソースのfullUrl要素に指定されるUUIDを指定。値は例示。 | 
| 7 | effectiveDateTime |  |  |  |  | 0..1 | dateTime | "2020-08-21T12:28:21+09:00" | 検査実施日。検体検査の場合は、検体の採取日となる。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。 | 
| 8 | value[x] |  |  |  |  | 0..1 | string |  | 健診結果値 | 
| 8.1 |  | valueQuantity |  |  |  | 0..1 | Quantity |  | 数値（物理量）型の結果の場合に使用する。 | 
| 8.1.1 |  |  | value |  |  | 1..1 | decimal | 100 | 測定値。値は例示。 | 
| 8.1.2 |  |  | unit |  |  | 0..1 | string | “mg/dl” | 単位コードの表示名。値は例示。 | 
| 8.1.3 |  |  | system |  |  | 1..1 | uri | “http://unitsofmeasure.org“ | 単位コードのコード体系。UCUMのURIを指定する。固定値。 | 
| 8.1.4 |  |  | code |  |  | 1..1 | code | “mg/dL” | 単位コード。値は例示。 | 
| 8.2 |  | valueCodeableConsept |  |  |  | 1..1 | CodeableConcept |  | 検診結果がコード型である健診項目の結果を表す。 | 
| 8.2.1 |  |  | coding |  |  | 1..1 | Coding |  |  | 
| 8.2.1.1 |  |  |  | extension |  | 0..1 | Extension |  | 順序付きコードを使用する場合に使用する拡張「ordinalValue」。 | 
| 8.2.1.1.1 |  |  |  |  | url | 1..1 | string | "http://hl7.org/fhir/StructureDefinition/ordinalValue" | 拡張を識別するURL。固定値。 | 
| 8.2.1.1.2 |  |  |  |  | valueDecimal | 1..1 | decimal | 2 | コード値の順序。値は例示。 | 
| 8.2.1.2 |  |  |  | system |  | 1..1 | uri | “urn:oid:1.2.392.200119.6.2102” | コード値のコード体系を識別するURI。値は例示。 | 
| 8.2.1.3 |  |  |  | code |  | 1..1 | code | “1” | コード値。値は例示。 | 
| 8.2.1.4 |  |  |  | display |  | 0..1 | string | “（－）” | コードの表示名。値は例示。 | 
| 8.3 |  | valueString |  |  |  | 0..1 | string | “所見無し” | 文字型の検診結果の場合に使用する。値は例示。 | 
| 8.4 |  | valueInteger |  |  |  |  | integer | 100 | 数値型の検診結果の場合に使用する。値は例示。 | 
| 8.5 |  | valueDatetime |  |  |  |  | dateTime | “2021-06-08” | 日付型の検診結果の場合に使用する。値は例示。 | 
| 9 | dataAbsentReason |  |  |  |  | 0..1 | CodeableConcept |  | 結果値の欠損理由。 | 
| 9.1 |  | coding |  |  |  | 0..* | Coding |  |  | 
| 9.1.1 |  |  | system |  |  | 1..1 | uri | “http://terminology.hl7.org/CodeSystem/data-absent-reason” | 欠損理由コードのコード体系。コードで指定する場合、data-absent-reason のURIを指定。 | 
| 9.1.2 |  |  | code |  |  | 1..1 | code | “not-performed” | 欠損理由コード。値は例示。 | 
| 9.1.3 |  |  | display |  |  | 0..1 | string | “未実施” | 欠損理由コードの表示名。値は例示。 | 
| 9.1.4 |  | text |  |  |  | 0..1 | string |  | 欠損理由をコード化できない場合に、文字で指定する場合に使用する。 | 
| 10 | interpretation |  |  |  |  | 0..* | CodeableConcept |  | 結果値の解釈を表現する。”observation-interpretation”コード体系からのコードを指定する。 | 
| 10.1 |  | coding |  |  |  | 0..* | Coding |  |  | 
| 10.1.1 |  |  | system |  |  | 1..1 | uri | http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation | observation-interpretationコード体系を識別するURI。固定値。 | 
| 10.1.2 |  |  | code |  |  | 1..1 | code | “N” | 結果解釈コード。値は例示。 | 
| 10.1.3 |  |  | display |  |  | 0..1 | string | “Normal” | 表示名。値は例示。 | 
| 11 | note |  |  |  |  | 0..1 | Annotation |  | 自由記載のコメント | 
| 11.1 |  | text |  |  |  | 1..1 | markdown |  |  | 
| 12 | method |  |  |  |  | 0..1 | CodeableConcept |  | 検査の測定方法コードを表す。 | 
| 12.1 |  | coding |  |  |  | 0..* | Coding |  |  | 
| 12.1.1 |  |  | system |  |  | 1..1 | uri | "urn:oid:1.2.392.200119.6.1007" | 測定方法コードのコード体系を識別するOID。固定値。 | 
| 12.1.2 |  |  | code |  |  | 1..1 | code | “3F01510000” | 測定方法コード。値は例示。 | 
| 12.1.3 |  |  | display |  |  | 0..1 | string | “可視吸光光度法（酵素比色法・グリセロール消去）” | 測定方法コードの表示名。値は例示。 | 
| 13 | specimen |  |  |  |  | 0..1 | Reference(specimen) |  | 検体情報への参照。FHIR JP 検体検査プロファイルに準拠し、検体検査の場合は必須で指定する。検体検査以外の健診項目の場合は、省略可能。 | 
| 13.1 |  | reference |  |  |  | 1..1 | string | "urn:oid:d669559e-2e5a-c271-c1ff-cde1228d4077" | Specimenリソースへの参照。fullUrlプロパティに指定されたUUIDを指定する。値は例示。 | 
| 14 | referenceRange |  |  |  |  | 0..1 | BackboneElement |  | 健診結果の基準値を指定する場合に使用する。 | 
| 14.1 |  | low |  |  |  | 0..1 | SimpleQuantity |  | 基準値の下限を表現する。 | 
| 14.1.1 |  |  | value |  |  | 1..1 | decimal | 50 | 基準値下限。 | 
| 14.1.2 |  |  | unit |  |  | 0..1 | string | “mg/dl” | 基準値下限の単位表示名。 | 
| 14.1.3 |  |  | system |  |  | 0..1 | uri | “http://unitsofmeasure.org“ | 基準値下限の単位コード。指定する場合はUCUMコードのコード体系を識別するURIを指定。固定値。 | 
| 14.1.4 |  |  | code |  |  | 0..1 | code | “mg/dL” | 基準値上限の単位コード。値は例示。 | 
| 14.2 |  | high |  |  |  | 0..1 | SimpleQuantity |  | 基準値の上限を表現する。 | 
| 14.2.1 |  |  | value |  |  | 1..1 | decimal | 150 | 基準値上限。 | 
| 14.2.2 |  |  | unit |  |  | 0..1 | string | “mg/dl” | 基準値上限の単位表示名。 | 
| 14.2.3 |  |  | system |  |  | 0..1 | uri | “http://unitsofmeasure.org“ | 基準値上限の単位コード。指定する場合はUCUMコードのコード体系を識別するURIを指定。固定値。 | 
| 14.2.4 |  |  | code |  |  | 0..1 | code | “mg/dL” | 基準値上限の単位コード。値は例示。 | 
| 15 | hasMember |  |  |  |  | 0..* | Reference(Observation) |  | 健診項目グループを表現する場合に、グループ内の健診項目に対応するObservationリソースへの参照を表現する。 | 
| 15.1 |  | reference |  |  |  | 1..1 | string | "urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c1f" | Observationリソースへの参照。値は例示。 | 
| 16 | derivedFrom |  |  |  |  | 0..* |  |  | 検査結果にシェーマ画像などを直接参照させたい場合に使用する。 | 
| 16.1 |  | reference |  |  |  | 1..1 | Reference(Media) | "urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc3" | 検査画像情報を表す**Media**リソースへの参照。値は例示。 | 
| 17 | component |  |  |  |  | 0..* | BackboneElement |  | 本書では、所見型の健診項目の場合に、所見有無に対応する健診項目に対して、対応する所見を記述する場合に使用する。 | 
| 17.1 |  | code |  |  |  | 1..1 | CodeableConcept |  | 健診項目コード。健診項目を識別するJLAC10コードを指定。 | 
| 17.1.1 |  |  | coding |  |  | 1..* | Coding |  |  | 
| 17.1.1.1 |  |  |  | system |  | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10” | JLAC10コードを識別するURI。固定値。 | 
| 17.1.1.2 |  |  |  | code |  | 1..1 | code | "9N61100000000049" | 健診項目コード。値は例示。 | 
| 17.1.1.3 |  |  |  | display |  | 0..1 | string | “他覚症状所見” | 健診項目コードの表示名。値は例示。 | 
| 17.2 |  | value[x] |  |  |  |  |  |  | 健診結果 | 
| 17.2.1 |  |  | valueString |  |  |  |  | “胸部くも状血管あり” | 所見を表す結果値。値は例示。 | 
| 17.3 |  | dataAbsentReason |  |  |  |  | CodeableConcept |  | 健診結果が欠損している場合の欠損理由。 | 
| 17.3.1 |  |  | coding |  |  | 0..* | Coding |  |  | 
| 17.3.1.1 |  |  |  | system |  | 1..1 | uri | “http://terminology.hl7.org/CodeSystem/data-absent-reason” | 欠損理由コードのコード体系。コードで指定する場合、data-absent-reason のURIを指定。 | 
| 17.3.1.2 |  |  |  | code |  | 1..1 | code | “not-performed” | 欠損理由コード。値は例示。 | 
| 17.3.1.3 |  |  |  | display |  | 0..1 | string | “未実施” | 欠損理由コードの表示名。値は例示。 | 
| 17.3.2 |  |  | text |  |  | 0..1 | string |  | 欠損理由をコード化できない場合に、文字で指定する場合に使用する。 | 


## <a id="tbl-17">**表17 一連検査グループコード *http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes***</a>

| グループ | コード | 検査項目または情報項目 | 
| --- | --- | --- |
| 胸部エックス線検査 | 9P500 | 肺がん検診の胸部エックス線検査判定 | 
|  | 9P500 | 肺がん検診の胸部エックス線検査所見 | 
| 喀痰検査 | 7A030 | 肺がん検診の喀痰検査受診日 | 
|  | 7A030 | 肺がん検診の喀痰検査判定 | 
|  | 7A030 | 肺がん検診の喀痰検査所見 | 
| マンモグラフィー検査 | 9N281 | 乳がん検診のマンモグラフィー検査判定 | 
|  | 9N281 | 乳がん検診のマンモグラフィー検査所見 | 
| 胃エックス線検査 | 9P542 | 胃がん検診の胃部エックス線検査検査判定 | 
|  | 9P542 | 胃がん検診の胃部エックス線検査所見 | 
| 胃内視鏡検査 | 9P544 | 胃がん検診の胃内視鏡検査検査判定 | 
|  | 9P544 | 胃がん検診の胃内視鏡検査所見 | 
| 頸部細胞診検査 | 7A021 | 子宮頸がん検診の頸部細胞診検査判定 | 
|  | 7A021 | 子宮頸がん検診の頸部細胞診検査所見 | 
| 便潜血検査 | 1B040 | 大腸がん検診の便潜血検査判定 | 
|  | 1B040 | 大腸がん検診の便潜血検査所見 | 
| 骨粗鬆症DXA 検査 | 9Z507 | 骨粗鬆症検診のDXA 検査骨量値 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査骨密度 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査測定部位 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査に使用した機器 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査判定 | 
|  | 9Z507 | 骨粗鬆症検診のDXA 検査所見 | 
| 骨粗鬆症エックス線検査 | 9Z531 | 骨粗鬆症検診のエックス線検査骨量値 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査骨密度 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査測定部位 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査に使用した機器 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査判定 | 
|  | 9Z531 | 骨粗鬆症検診のエックス線検査所見 | 
| 骨粗鬆症CT 検査 | 9Z536 | 骨粗鬆症検診のCT 検査骨量値 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査骨密度 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査測定部位 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査に使用した機器 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査判定 | 
|  | 9Z536 | 骨粗鬆症検診のCT 検査所見 | 
| 骨粗鬆症超音波検査 | 9Z541 | 骨粗鬆症検診の超音波検査骨量値 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査の測定結果 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査測定部位 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査に使用した機器 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査判定 | 
|  | 9Z541 | 骨粗鬆症検診の超音波検査所見 | 


## <a id="tbl-18">**表18  Specimenリソース　検体情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Specimen” | **Specimen**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | type |  |  | 0..1 |  |  | 検体の材料コード。JLAC10 材料コードを指定する。 | 
| 3.1 |  | coding |  | 0..1 | Coding |  |  | 
| 3.2 |  |  | system | 1..1 | uri | "http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10-specimen-codes" | JLAC10 材料コードを識別するURL。固定値。 | 
| 3.3 |  |  | code | 1..1 | code | “023” | 材料コード。値は例示。 | 
| 3.4 |  |  | display | 0..1 | string | “血清” | 材料コードの表示名。値は例示。 | 
| 4 | note |  |  | 0..* | Annotation |  |  | 
| 4.1 |  | text |  | 1..1 | markdown |  | 自由記載の検体材料コメント | 


## <a id="tbl-19">**表19  Mediaリソース　画像情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “Media” | **Media**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | status |  |  | 1..1 | code | “completed” | “completed" 固定。 | 
| 4 | content |  |  | 1..1 | Attachment |  | 添付ファイルデータ。URLによる外部参照する方法と、データ中に、バイナリデータを内包する方法の2つの添付方法がある。 | 
| 4.1 |  | contentType |  | 0..1 | code | “application/dicom” | 添付ファイルのコンテントタイプ。MimeTypeコード体系より指定する。値は例示。 | 
| 4.2 |  | data |  | 0..1 | base64Binary | “/9j/4...KAP//Z” | 添付ファイルをデータに内包する場合の、Base64符号化されたデータ。値は例示。 | 
| 4.3 |  | url |  | 0..1 | url | "http://10.1.2.3:1000/wado?requestType=WADO&amp;wado_details..." | 添付ファイルを外部参照する場合の参照URL。値は例示。 | 
| 4.4 |  | hash |  | 0..1 | base64Binary | “EQH/..AgME” | 添付ファイルのSHA-1によるハッシュ値。値は例示。 | 
| 4.5 |  | title |  | 0..1 | string | “胸部X線撮影画像” | 添付ファイルを説明するタイトル文字列。値は例示。 | 


## <a id="tbl-20">**表20  DocumentReferenceリソース　添付文書情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  | “DocumentReference” | **DocumentReference**リソースであることを示す。 | 
| 2 | text |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 2.1 |  | status |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | status |  |  | 1..1 | code | “current” | “current" 固定。 | 
| 4 | description |  | text | 0..1 | string |  | 人が読むことのできる添付文書の説明 | 
| 5 | content |  |  | 1..1 | BackboneElement |  | base64Binary型でエンコードされた添付文書データ。 | 
| 5.1 |  | attachment |  | 1..1 | Attachment |  | 基底仕様上は1つのリソースで複数のファイルを添付することが可能であるが、本書では、１つのリソースに対して表現可能な添付ファイルは1つまでとする。 | 
| 5.1.1 |  |  | contentType | 1..1 | code | “application/dicom” | 添付ファイルのコンテントタイプ。MimeTypeコード体系より指定する。値は例示。 | 
| 5.1.2 |  |  | data | 0..1 | base64Binary | “/9j/4...KAP//Z” | 添付ファイルをデータに内包する場合の、Base64符号化されたデータ。値は例示。 | 
| 5.1.3 |  |  | url | 0..1 | url | "http://10.1.2.3:1000/wado?requestType=WADO&amp;wado_details..." | 添付ファイルを外部参照する場合の参照URL。値は例示。 | 
| 5.1.4 |  |  | hash | 0..1 | base64Binary | “EQH/..AgME” | 添付ファイルのSHA-1によるハッシュ値。値は例示。 | 
| 5.1.5 |  |  | title | 0..1 | string | “胸部X線撮影画像” | 添付ファイルを説明するタイトル文字列。値は例示。 | 
| 5.2 |  | format |  | 0..1 | Coding |  | 指定可能な場合、添付ファイルのフォーマットを指定。 | 
| 5.2.1 |  |  | system | 1..1 | uri | “http://jpfhir.jp/fhir/eCheckup/CodeSystem/attachement-format” | フォーマットを規定するコード体系を指定。固定値。 | 
| 5.2.2 |  |  | code | 1..1 | code | “cdar2_hc08_v08” | フォーマットコード。CDA R2形式特定健診の場合、”cdar2_hc08_v08”を指定。JAHIS 健康診断報告書規格の場合、”cdar2_jahis_18007”を指定。 | 
| 5.2.3 |  |  | display | 0..1 | string |  | フォーマットコードの表示名。 | 
| 6 | context |  |  | 0..1 |  |  |  | 
| 6.1 |  | related |  | 0..1 | Reference(Observation) |  | 必要に応じて、添付文書に関連する検査結果（Observationリソース）への参照を記録することが可能。 | 
| 6.1.1 |  |  | reference | 1..1 | string | "urn:uuid:673f8db5-0ffd-4395-7457-6da00420bdc1" | Observationリソースへの参照。値は例示。 | 


## <a id="tbl-21">**表21  DiagnosticReportリソース　検査報告書情報**</a>

| No | 要素Lv1 | 要素Lv2 | 要素Lv3 | 要素Lv4 | 多重度 | 型 | 値 | 説明 | 
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | resourceType |  |  |  |  |  | “DiagnosticReport” | **DiagnosticReport**リソースであることを示す。 | 
| 2 | text |  |  |  | 0..1 | Narrative |  | 本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。 このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする） | 
| 2.1 |  | status |  |  | 1..1 | code | “generated” | 固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。 | 
| 2.2 |  | div |  |  | 1..1 | xhtml | <div xmlns="http://www.w3.org/1999/xhtml">xxx</div> | 値は例示。 | 
| 3 | status |  |  |  | 1..1 | code | “final” | “final" 固定。 | 
| 4 | code |  |  |  | 1..1 | CodeableConcept |  | 報告書種別を表すコード。例えばLOINCコードを使用する。 | 
| 4.1 |  | coding |  |  | 1..* | Coding |  |  | 
| 4.1.1 |  |  | system |  | 1..1 | uri | “http://loinc.org” | 報告書種別コード体系を識別するURI。値は例示。 | 
| 4.1.2 |  |  | code |  | 1..1 | code | “18748-4” | 報告書種別コード。値は例示。 | 
| 4.1.3 |  |  | display |  | 0..1 | string | “画像検査報告書” | コードの表示名。値は例示。 | 
| 5 | media |  |  |  | 0..* | BackboneElement |  | 検査報告書に含まれる検査画像。 | 
| 5.1 |  | comment |  |  | 0..1 | string | “腹部エコー” | 検査報告書に含まれる検査画像に対するコメント。値は例示。 | 
| 5.2 |  | link |  |  | 1..1 | Reference(Media) |  | 検査報告書に含まれる検査画像を表すMediaリソースへの参照。 | 
| 5.2.1 |  |  | reference |  | 1..1 | string | "urn:uuid:673f8db5-0ffd-4395-9657-6da00420bbc3" | 参照されるMediaリソースのfullUrl要素に指定されるUUID。値は例示。 | 


## <a id="tbl-22">**表22 識別子名前空間一覧**</a>

| コード名 | 使用箇所 | URI | 説明 | 
| --- | --- | --- | --- |
| 文書ID | Composition.identifier | "urn:oid:1.2.392.100495.100.1.1[保険医療機関番号(10桁)]" | このリソース情報に付番されたID。Identifier型のvalue要素に、保険医療機関番号（10桁）、発行年（4桁）、施設内において発行年内で一意となる番号（8桁）をハイフン("-"：U+002D)で連結した文字列を指定するなど。 | 
| 文書区分コード | Composition.type | http://jpfhir.jp/fhir/Common/CodeSystem/doc-typecodes | FHIR文書の文書区分（健診結果報告書）。 | 
| 報告区分コード | Composition.category | http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-report-category | 健診結果が、どの健診事業として報告されるかを示す健診報告区分を表す健康診断結果報告の区分<br>・51：肺がん検診<br>・52：乳がん検診<br>・53：胃がん検診<br>・54：子宮頸がん検診<br>・55：大腸がん検診<br>・56：肝炎検診<br>・57：骨粗鬆症検診<br>・58：歯周疾患検診 | 
| 自治体検診検診区分 | Composition.event.code | http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code | 自治体検診の検診区分を識別するコード。<br>・1: 一次検診<br>・2：精密検査<br>・3：一次検診と精密検査 | 
| 自治体検診受診方法 | Encounter.serviceType | http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-encounter-type | 自治体検診の受診方法を識別するコード。<br>・1: 個別受診<br>・2：集団受診 | 
| セクションコード | Composition.section.code | http://jpfhir.jp/fhir/eCheckup/CodeSystem/section-code | 本文書のセクションコードを表すコードシステム。健診結果報告書内のセクションコード。<br>・01910：検査結果セクション<br>・01920：問診結果セクション<br>・01995：添付書類セクション | 
| 保険種別コード | Coverage.type | urn:oid:1.2.392.100495.20.2.61 | 保険種別コードを表すコードシステム。 | 
| 被保険者区分コード | Coverage.relationship | urn:oid:1.2.392.100495.20.2.62 | 被保険者区分を表すコードシステム。 | 
| 受診区分 | Encounter.class | http://jpfhir.jp/fhir/eCheckup/CodeSystem/encounter-category | 受診種別を表すコードシステム。<br>“checkup”	　：健診を表すコード | 
| 健診機関コード | Orgamization.identifier | urn:oid:1.2.392.200119.6.102 | 保険医療機関番号10桁のコードシステム。 | 
| 健診項目コード(JLAC10) | Observation.code | http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10 | 自治体検診結果報告書で使用するJLAC10コードのコードシステム。 | 
| 検査方法コード | Observation.method.conding.coding.code | http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10-examMethod-codes | 健診結果報告書で使用する検査方法コードシステム。 | 
| 材料コード | Specimen.type | http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10-specimen-codes | 検体の材料コードを表すコードシステム。 | 
| 添付文書フォーマットコード | DocumentReference.format | http://jpfhir.jp/fhir/eCheckup/CodeSystem/attachement-format | 添付文書のフォーマット（例：CDA R2形式）を示すコードシステム | 
| 受診者ID | Patient.identifier | urn:oid: 1.2.392.200119.6.102.1[保険医療機関コード(10 桁)] | 末尾の1[保険医療機関コード(10 桁)]は、保険医療機関コード(10 桁)の先頭に1をつけた11桁とした文字列。 | 
| 一連検査グループコード |  | http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes | 複数の検査項目が一連検査としてまとまって結果が得られるグループのコードシステム。 | 


## <a id="tbl-23">**表23 拡張一覧**</a>

| No | 拡張 | 説明 | 対象 | URL | 値の型 | 
| --- | --- | --- | --- | --- | --- |
| 1 | 被保険者証記号 | 被保険者証記号を格納する拡張。 | Coverage | [http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymboll](http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol) | string | 
| 2 | 被保険者証番号 | 被保険者証番号を格納する拡張。 | Coverage | [http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber](http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber) | string | 
| 3 | 被保険者証番号枝番 | 被保険者証番号の枝番を格納する拡張。 | Coverage | http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber | string | 
| 4 | 受診時年齢 | 検診受診時の年齢を表現する拡張。 | Patient | [http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event](http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Age_At_Event) | Age | 
| 5 | 一次検診受診年度 | 一次検診の受診年度を表現する拡張。 | Encounter | http://jpfhir.jp/fhir/eCheckup/Extension/StructureDefinition/JP_Fiscal_Year_At_Primary_Checkup | date | 
| 6 | 費用徴収区分 | 自治体検診の費用徴収区分を表現する拡張。 | Encounter | http://jpfhir.jp/fhir/eChecckup/Extension/StructureDefinition/JP_Checkup_Fee_Collection_Status | string |

