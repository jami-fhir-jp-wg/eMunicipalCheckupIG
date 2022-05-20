#-----------------------------------------------------------------------------
# 東大自治体検診FSHファイル作成プロジェクト
#  検診項目ObservationプロファイルFSHファイル作成ツール
#
# 前提ソフトウェア:
#  ActivePerl
#  Windows 10 Professional
#-----------------------------------------------------------------------------
use utf8;
use Encode 'decode';
use Encode 'encode';

binmode STDOUT, ":encoding(cp932)";
$infile = "FHIR用自治体検診項目表_20220131.csv";
$outdir = "./input/fsh/profiles";
$listfile = "sushi-config-profiles.txt";
$baseurl = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition";

init();
unlink($listfile);
generate_observation_fsh();
exit(0);

sub generate_observation_fsh{
	printlog("I", "reading $infile...");
	open(IN, encode('cp932', $infile)) || die;
	binmode IN, ":encoding(UTF-8)";
	
	%group_items = ();
	%group_categry = ();
	%type_list = ();
	%type_name = ();
	%obs_list1 = ();
	%obs_list2 = ();
	%item_name = ();

	for (1..2){
		$dummy = <IN>;
	}
	$rno = 1;
	while(<IN>){
		chop;
		(
		 $checkup_type,			# 区分
		 $group_name,			# 項目名
		 $item_name,			# データ項目名
		 $item_code,			# JLAC10項目コード(17桁)
		 $data_type_name,		# データタイプ
		 $data_type_xml,		# XMLデータ型
		 $max_bytes,			# 最大バイト長
		 $group_relation_code,	# 一連検査グループ関係コード
		 $code_table_oid,		# コード表OID
		 $output_section,		# 出力セクション
		 $observation_category,	# Observation.category コード
		 $observation_value,	# Observation.value[x]のデータ型
		 $observation_system,	# Observation.valueCodeableConceptのsystem
		 $observation_unit_code,# Observation.valueQuantityの単位コード(code)
		 $group_code,			# 一連検査グループコード
		 $group_category,		# グループのcategory
		 $component_item,		# Observation.component に記載する項目
		 $specimen_code,		# 検体コード
		 $report_kbn,			# レポート区分
		 $checkup_kbn,			# 検診区分
		 $optional				# 省略可
		) = split(",");

		last unless ($item_code);
		
		print "[$rno]\n";
		print_item("区分", $checkup_type);
		print_item("項目名", $group_name);
		print_item("データ項目名", $item_name);
		print_item("JLAC10項目コード(17桁)", $item_code);
		print_item("データタイプ", $data_type_name);
		print_item("XMLデータ型", $data_type_xml);
		print_item("最大バイト長", $max_bytes);
		print_item("一連検査グループ関係コード", $group_relation_code);
		print_item("コード表OID", $code_table_oid);
		print_item("出力セクション", $output_section);
		print_item("Observation.categoryコード", $observation_category);
		print_item("Observation.value[x]のデータ型", $observation_value);
		print_item("Observation.valueCodeableConceptのsystem", $observation_system);
		print_item("Observation.valueQuantityの単位コード(code)", $observation_unit_code);
		print_item("一連検査グループコード", $group_code);
		print_item("グループのcategory", $group_category);
		print_item("Observation.component に記載する項目", $component_item);
		print_item("検体コード", $specimen_code);
		print_item("レポート区分", $report_kbn);
		print_item("健診区分", $checkup_kbn);
		print_item("省略可", $optional);
		$type = $report_kbn . $checkup_kbn;
		$type_list{$type} ++;
		$item_name{$item_code} = $item_name;
		$rno++;

		unless ($type_name{$type}){
			$type_name{$type} = $checkup_type;
		}

		$type3 = $report_kbn . "3";	# 一次検査と精密検査
		$type_list{$type3} ++;
		unless ($type_name{$type3}){
			$type_name{$type3} = $checkup_type . "と精密検査";
		}

		$optional{$item_code} = $optional;

		if ($group_code ne ""){
			$group_items{$group_code} .= "," . $item_code;
			$group_name{$group_code} = $group_name if ($group_name);
			$group_category{$group_code} = $group_category;
			
			$obs = "Group_" . $group_code;
			$optional{$obs} = $optional;
			$item_name{$obs} = $group_name  if ($group_name);
			if ($output_section eq "問診"){
				$obs_list2{$type} .= "," . $obs if (index($obs_list2{$type}, $obs) == -1);
				$obs_list2{$type3} .= "," . $obs if (index($obs_list2{$type3}, $obs) == -1);
			}
			else{
				$obs_list1{$type} .= "," . $obs if (index($obs_list1{$type}, $obs) == -1);
				$obs_list1{$type3} .= "," . $obs if (index($obs_list1{$type3}, $obs) == -1);
			}
		}

		if ($output_section eq "問診"){
			$obs_list2{$type} .= "," . $item_code;
			$obs_list2{$type3} .= "," . $item_code;
		}
		else{
			$obs_list1{$type} .= "," . $item_code;
			$obs_list1{$type3} .= "," . $item_code;
		}
		
		my $comp = "";
		if ($component_item eq "*"){
			$comp = <IN>;
			chop $comp;
		}
		(
		 $comp_checkup_type,			# 区分
		 $comp_group_name,			# 項目名
		 $comp_item_name,			# データ項目名
		 $comp_item_code,			# JLAC10項目コード(17桁)
		 $comp_data_type_name,		# データタイプ
		 $comp_data_type_xml,		# XMLデータ型
		 $comp_max_bytes,			# 最大バイト長
		 $comp_group_relation_code,	# 一連検査グループ関係コード
		 $comp_code_table_oid,		# コード表OID
		 $comp_output_section,		# 出力セクション
		 $comp_observation_category,	# Observation.category コード
		 $comp_observation_value,	# Observation.value[x]のデータ型
		 $comp_observation_system,	# Observation.valueCodeableConceptのsystem
		 $comp_observation_unit_code,# Observation.valueQuantityの単位コード(code)
		 $comp_group_code,			# 一連検査グループコード
		 $comp_group_category,		# グループのcategory
		 $comp_component_item,		# Observation.component に記載する項目
		 $comp_specimen_code,		# 検体コード
		 $comp_report_kbn,			# レポート区分
		 $comp_checkup_kbn			# 検診区分
		) = split(",", $comp);

		output_item_fsh_file();
	}
	
	output_group_fsh_files();
	
	output_composition_fsh_files();
	
	output_bundle_fsh_files();

	close(IN);
}

sub output_item_fsh_file{
	$profile_name = "JP_Observation_eMunicipalCheckup_" . $item_code;
	$profile_id = $profile_name;
	$profile_id =~ s/_/-/g;
	
  my $invariants = <<__INV_CAT__;
Invariant: emc-obs-$item_code-cat
Description: "category.coding.code should be '$observation_category'."
Expression: "code = '$observation_category'"
Severity: #warning

Invariant: emc-obs-$item_code-code
Description: "code.coding.code must be '$item_code'."
Expression: "code = '$item_code'"
Severity: #error

Invariant: emc-obs-$item_code-disp
Description: "code.coding.display should be '$item_name'."
Expression: "display = '$item_name'"
Severity: #warning
__INV_CAT__

	my $value = "";
	my $specimen = "";
	my $component = "";
	if ($observation_value eq "string"){
		$value = <<__STRING__;
* value[x] only string
* valueString 1..1 MS
  * ^short = "文字型の検診結果の場合に使用する"
__STRING__
	}
	elsif ($observation_value eq "integer"){
		$value = <<__INTEGER__;
* value[x] only integer
* valueInteger 1..1 MS
  * ^short = "数値型の検診結果の場合に使用する"
__INTEGER__
	}
	elsif ($observation_value eq "dateTime"){
		$value = <<__DATETIME__;
* value[x] only dateTime
* valueDateTime 1..1 MS
  * ^short = "日付型の検診結果の場合に使用する"
__DATETIME__
	}
	elsif ($observation_value eq "CodeableConcept"){
    $invariants .= <<__INV_SYSTEM__;

Invariant: emc-obs-$item_code-system
Description: "valueCodeableConcept.coding.system should be '$observation_system'."
Expression: "system = '$observation_system'"
Severity: #warning
__INV_SYSTEM__
		$value = <<__VALUE__;
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1..1 MS
    * obeys emc-obs-$item_code-system
__VALUE__
	}
	elsif ($observation_value eq "Quantity"){
    $invariants .= <<__INV_UNIT__;

Invariant: emc-obs-$item_code-unit
Description: "valueQuantity.code should be '$observation_unit_code'."
Expression: "code = '$observation_unit_code'"
Severity: #warning
__INV_UNIT__
		$value = <<__QUANTITY__;
* value[x] only Quantity
* valueQuantity 1..1 MS
  * ^short = "数値（物理量）型の結果の場合に使用する。"
  * obeys emc-obs-$item_code-unit
__QUANTITY__
	}
	else{
		die;
	}
	
	if ($comp_component_item){
		if ($comp_observation_value eq "string"){
			$comp_value = <<__COMP_STRING__;
  * value[x] only string
  * valueString 1..1 MS
    * ^short = "所見を表す結果値"
__COMP_STRING__
		}
		elsif ($comp_observation_value eq "dateTime"){
			$comp_value = <<__COMP_DATETIME__;
  * value[x] only dateTime
  * valueDateTime 1..1 MS
    * ^short = "日付型の検診結果の場合に使用する"
__COMP_DATETIME__
		}
		else{
			die;
		}
		
    $comp_obeys = "emc-obs-$comp_item_code-code and emc-obs-$comp_item_code-disp";
    $invariants .= <<__INV_COMP_DISP__;

Invariant: emc-obs-$comp_item_code-code
Description: "component.code.coding.code must be '$comp_item_code'."
Expression: "code = '$comp_item_code'"
Severity: #error

Invariant: emc-obs-$comp_item_code-disp
Description: "component.code.coding.display should be '$comp_item_name'."
Expression: "display = '$comp_item_name'"
Severity: #warning
__INV_COMP_DISP__
		$component = <<__COMP__;
* component 0..1 MS
  * ^short = "本書では、所見型の健診項目の場合に、所見有無に対応する健診項目に対して、対応する所見を記述する場合に使用する。"
  * code 1..1 MS
    * coding 1..* MS
      * obeys $comp_obeys
$comp_value
__COMP__
	}
	
	$path = $outdir . "/$profile_name" . ".fsh";
	printlog("I", "exporting $path...");
	open(FSH, ">$path") || die;
	binmode FSH, ":encoding(UTF-8)";
		
	print FSH <<_FSH_;
Profile:        $profile_name
Parent:         JP_Observation_eMunicipalCheckup
Id:             $profile_id
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報($item_name)"
* ^url = "$baseurl/$profile_name"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-$item_code-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-$item_code-code and emc-obs-$item_code-disp

$value
$specimen
$component
$invariants
_FSH_
	close(FSH);
  output_profile($profile_name);
}

sub output_group_fsh_files{
	foreach $group_code (sort keys(%group_items)){
		output_group_fsh_file($group_code, $group_name{$group_code}, $group_category{$group_code}, $group_items{$group_code});
	}
}

sub output_group_fsh_file{
	my ($group_code, $group_name, $group_category, $group_items) = @_;
	@items = split(",", $group_items);
	
	$profile_name = "JP_Observation_eMunicipalCheckup_Group_" . $group_code;
	$profile_id = $profile_name;
	$profile_id =~ s/_/-/g;
	
  my $invariants = <<__INV_GCAT__;
Invariant: emc-obs-$group_code-cat
Description: "category.coding.code should be '$group_category'."
Expression: "code = '$group_category'"
Severity: #warning

Invariant: emc-obs-$group_code-code
Description: "code.coding.code must be '$group_code'."
Expression: "code = '$group_code'"
Severity: #error

Invariant: emc-obs-$group_code-disp
Description: "code.coding.display should be '$group_name'."
Expression: "display = '$group_name'"
Severity: #warning
__INV_GCAT__
	$contains = "";
	$members = "";
	foreach $item (@items){
		next unless ($item);
		
		if (length($contains) > 0){
			$contains .= " and\n";
			$members .= "\n";
		}
		$contains .= "  $item 1..1 MS";
		$members  .= <<__MEMBERS__;
* hasMember[$item] only Reference(JP_Observation_eMunicipalCheckup_$item)
__MEMBERS__
	}
	
	$path = $outdir . "/$profile_name" . ".fsh";
	printlog("I", "exporting $path...");
	open(FSH, ">$path") || die;
	binmode FSH, ":encoding(UTF-8)";
	
	print FSH <<__GFSH__;
Profile:        $profile_name
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             $profile_id
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報($group_name)"
* ^url = "$baseurl/$profile_name"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-$group_code-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-$group_code-code and emc-obs-$group_code-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
$contains
$members
$invariants
__GFSH__
	close(FSH);
  output_profile($profile_name);
}

sub output_composition_fsh_files{
	foreach $type (sort keys(%type_list)){
		output_composition_fsh_file($type, $type_name{$type}, $obs_list1{$type}, $obs_list2{$type});
	}
}

sub output_composition_fsh_file{
	my ($type, $type_name, $obs_list1, $obs_list2) = @_;

	$report_category = substr($type, 0, 2);
	$event_code = substr($type, 2, 1);
	$profile_name = "JP_Composition_eMunicipalCheckup_" . $type;
	$profile_id = $profile_name;
	$profile_id =~ s/_/-/g;
	
	my $section_contains1 = "";
	my $section_entry1 = "";
	my $section_count1 = 0;
	my $section_profile1 = "";
	foreach $prof (split(",", $obs_list1)){
		next unless ($prof);
		if (length($section_contains1) > 0){
			$section_contains1 .= " and\n";
			$section_profile1 .= " or ";
		}
		$section_count1++;
		if ($optional{$prof} eq "Y"){
			$section_contains1 .= "    $prof 0..1 MS";
		}
		else{
			$section_contains1 .= "    $prof 1..1 MS";
		}
		$section_profile1  .= "JP_Observation_eMunicipalCheckup_$prof";
		$prof_name = $item_name{$prof};
		$section_entry1 .= <<__ENTRY1__;
  * entry[$prof] only Reference(JP_Observation_eMunicipalCheckup_$prof)
    * ^short = "検査結果セクションに含まれる $prof_name をあらわすObservationリソースへの参照。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
__ENTRY1__
	}
	
	my $section_contains2 = "";
	my $section_entry2 = "";
	my $section_count2 = 0;
	my $section_profile2 = "";
	foreach $prof (split(",", $obs_list2)){
		next unless ($prof);
		if (length($section_contains2) > 0){
			$section_contains2 .= " and\n";
			$section_profile2 .= " or ";
		}
		$section_count2++;
		if ($optional{$prof} eq "Y"){
			$section_contains2 .= "    $prof 0..1 MS";
		}
		else{
			$section_contains2 .= "    $prof 1..1 MS";
		}
		$section_profile2  .= "JP_Observation_eMunicipalCheckup_$prof";

		$prof_name = $item_name{$prof};
		$section_entry2 .= <<__ENTRY2__;
  * entry[$prof] only Reference(JP_Observation_eMunicipalCheckup_$prof)
    * ^short = "問診結果セクションに含まれる $prof_name をあらわすObservationリソースへの参照。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
__ENTRY2__
	}
	
	my $section2 = "";
	my @keys = split(",", $obs_list2);
	if ($#keys >= 0){
		$section2 = <<__SECTION2__;
//  * entry 1..*
//  * entry $section_count2..$section_count2
  * entry 0..$section_count2
    * ^short = "問診結果セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
//  * entry only Reference($section_profile2)
  * entry only Reference(JP_Observation_eMunicipalCheckup or JP_Observation_eMunicipalCheckup_Group)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "resolve()"
    * ^slicing.rules = #closed
  * entry contains
__SECTION2__
	}
	else{
		$section2 = <<__SECTION3__;
  * entry 0..0
__SECTION3__
	}

	$path = $outdir . "/$profile_name" . ".fsh";
	printlog("I", "exporting $path...");
	open(FSH, ">$path") || die;
	binmode FSH, ":encoding(UTF-8)";
	
	print FSH <<__CFSH__;
Profile:        $profile_name
Parent:         Composition
Id:             $profile_id
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報($type_name)"
* ^url = "$baseurl/$profile_name"
* ^status = #draft

* language 0..1 MS
  * ^short = "日本語を指定する場合、”ja”を指定する。固定値。"

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * status = \$narrative_cs#generated
  * div 1..1 MS

* extension contains \$composition-clinicaldocument-versionNumber named versionNumber 0..1 MS
* extension[versionNumber]
  * ^short = "健診結果報告書の文書バージョンを表す拡張「composition-clinicaldocument-versionNumber」。"
  * url 1..1 MS
  * url = \$composition-clinicaldocument-versionNumber (exactly)
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
      * ^short = "文書区分コード。”xx：自治体検診結果報告書”を指定。固定値。"
    * code = #xx // TODO: 実際の値に変更する必要がある
    * display 0..1 MS
      * ^short = "文書区分コードの表示名。"
    * display = "自治体検診結果報告書"
  
* category 1..1 MS
  * ^short = "報告区分を表すコードを設定する。このファイルが作成された目的や作成タイミングなどの情報を格納するために使用される。"
  * coding 1..1 MS
    * system 1..1 MS
      * ^short = "報告区分コードのコード体系を識別するURI。固定値。"
//    * system = "urn:oid:2.16.840.1.113883.2.2.1.6.1001" (exactly)
    * system = \$report_category_cs (exactly)
    * code 1..1 MS
      * ^short = "報告区分コード。"
    * code = #$report_category (exactly)
    * display 0..1 MS
      * ^short = "コードの表示名。"

* subject 1..1 MS
  * ^short = "受診者情報を表すPatientリソースへの参照。"
* subject only Reference(JP_Patient_eMunicipalCheckup) 
  * reference 1..1 MS
    * ^short = "PatientリソースのfullUrl要素に指定されるUUIDを指定。"

* encounter 1..1 MS
  * ^short = "検診を表すEncounterリソースへの参照。"
* encounter only Reference(JP_Encounter_eMunicipalCheckup)
  * reference 1..1 MS
    * ^short = "EncounterリソースのfullUrl要素に指定されるUUIDを指定。"

* date 1..1 MS
  * ^short = "このリソースを作成または最後に編集した日時。ISO8601に準拠し、秒の精度まで記録し、タイムゾーンも付記する。午前0時を”24:00”と記録することはできないため”00:00”と記録すること。"

//* author 2..2 MS
* author 1..2 MS
  * ^short = "本文書を作成した施設および作成者への参照"
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resolve()"
  * ^slicing.rules = #closed
* author contains 
    practitionerRole 1..1 MS and 
//    organizationProvider 1..1 MS
    organizationProvider 0..1 MS
* author[practitionerRole] only Reference(JP_PractitionerRole_eMunicipalCheckup)
  * reference 1..1 MS
    * ^short = "PractitionerRoleリソースのfullUrl要素に指定されるUUIDを指定。"
* author[organizationProvider] only Reference(JP_Organization_eMunicipalCheckup_Provider) 
  * reference 1..1 MS
    * ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定。"

* title 1..1 MS
  * ^short = "この文書の（人が読める）タイトル。"

* confidentiality 1..1 MS
  * ^short = "本個人提供用健診結果報告書アクセス基準を記述する。"

* custodian 0..1 MS
  * ^short = "検診結果報告書の作成・修正をおこない報告書の管理責任を持つ施設（Organizationリソース）への参照。報告書作成機関と同一の場合、本要素を省略してもよい。"
* custodian only Reference(JP_Organization_eMunicipalCheckup_Provider)
  * reference 1..1 MS
    * ^short = "custodianに対応するOrganizationリソースのfullUrl要素に指定されるUUIDを指定。"

* event 1..1 MS
  * ^short = "検診実施情報として、検診がどの区分として実施されたかを示す健診プログラムサービスコードと、健診実施年月日を指定する。"
  * code 1..1 MS
    * coding 1..1 MS
      * ^short = "自治体検診の検診区分。"
      * system 1..1 MS
        * ^short = "自治体検診の検診区分を識別するURI。固定値。"
      * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/checkup-type-code" (exactly)
      * code 1..1 MS
        * ^short = "検診区分。"
      * code = #$event_code (exactly)
      * display 0..1 MS
        * ^short = "検診区分の表示名。"
  * period 1..1 MS
    * start 1..1 MS
      * ^short = "検診実施日。ISO8601に準拠yyyy-mm-dd形式で記述する。"
    * end 0..1 MS
  * detail 1..1 MS
    * ^short = "検診実施情報を表すEncounterリソースへの参照。"
  * detail only Reference(JP_Encounter_eMunicipalCheckup)
    * reference 1..1 MS
      * ^short = "参照されるEncounterリソースのfullUrl要素に指定されたUUID。"

* section
  //セクションの特性ごとの制約
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "code.coding.code"
  * ^slicing.rules = #closed
  * ^slicing.ordered = false
  * ^slicing.description = "section.codeに連動したスライシング設定"

* section contains
    OBSERVATION 0..1 MS and
    QUESTIONAIRRE 0..1 MS and
    ATTACHMENT 0..1 MS

//検査結果セクション
* section[OBSERVATION]
  * ^short = "検査結果セクション。健診項目のうち問診以外の項目に関連するリソースが全て本セクションに含まれる。"
  * title = "検査結果" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code 1..1 MS
  * code.coding from \$section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = \$section_code_cs (exactly)
    * code = \$section_code_cs#01910 (exactly)
      * ^short = "検査結果セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "検査結果セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = \$narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "resolve()"
    * ^slicing.rules = #closed
//  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry contains COV 0..2 MS and
$section_contains1
    * ^short = "検査結果セクションに含まれるリソースの参照。検査項目を表すObservationリソースが含まれる。"
  * entry[COV] only Reference(JP_Coverage_eMunicipalCheckup)
    * ^short = "検査結果セクションに含まれる保険証情報および受診券情報をあらわすCoverageリソースへの参照。"
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"
$section_entry1

//TODO Invariantsで Observation 1> Coverage 0..2になっているか確認

//問診結果セクション
* section[QUESTIONAIRRE]
  * ^short = "問診結果セクション。健診項目のうち問診項目に関連するリソースが全て本セクションに含まれる。"
  * title = "問診結果" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code.coding from \$section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = \$section_code_cs (exactly)
    * code = \$section_code_cs#01920 (exactly)
      * ^short = "問診結果セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "問診結果セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = \$narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
$section2$section_contains2
$section_entry2

//添付書類セクション
* section[ATTACHMENT]
  * ^short = "添付書類セクション。健診結果報告書に関連する添付処理を表すリソースが全て本セクションに含まれる。"
  * title = "添付書類" (exactly)
    * ^short = "セクションタイトル。固定値。"
  * code.coding from \$section_code_vs
    * ^short = "コード体系を表す Coding.system に関しては、CodeSystem/section-codeを使用するが、特定健診報告書制度に従う場合は、「urn:oid:1.2.392.200119.6.1002」を用いてもよい。"
    * system 1..1 MS
      * ^short = "セクション区分コードのコード体系を識別するURI。固定値。"
    * system = \$section_code_cs (exactly)
    * code = \$section_code_cs#01995 (exactly)
      * ^short = "添付書類セクションを表すセクション区分のコード値。固定値。"
    * display 0..1 MS
    * display = "添付書類セクション" (exactly)
      * ^short = "セクション区分コードの表示名。"
  * text 0..1 MS
    * ^short = "セクションの内容を表す文字列。書式は5.2.2.2「テキスト部（ナラティブ）仕様」の本文を参照。"
    * status 1..1 MS
    * status = \$narrative_cs#generated
      * ^short = "固定値。"
    * div 1..1 MS
      * ^short = "本セクションの内容をテキストで表現した文字列を入れてもよい。内容を省略しても構わない。 このデータは人がこのセクションの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。"
  * entry 1..*
    * ^short = "添付書類セクションに含まれるリソースの参照。添付書類を表す。DocumentReferenceリソースが含まれる。"
  * entry only Reference(JP_DocumentReference_eMunicipalCheckup)
    * reference 1..1
      * ^short = "参照先のリソースのfullUrl要素に指定されるUUID。"

__CFSH__
	close(FSH);
  output_profile($profile_name);
}

sub output_bundle_fsh_files{
	foreach $type (sort keys(%type_list)){
		output_bundle_fsh_file($type, $type_name{$type}, $obs_list1{$type}, $obs_list2{$type});
	}
}

sub output_bundle_fsh_file{
	my ($type, $type_name, $obs_list1, $obs_list2) = @_;

	$report_category = substr($type, 0, 2);
	$profile_name = "JP_Bundle_eMunicipalCheckup_" . $type;
	$profile_id = $profile_name;
	$profile_id =~ s/_/-/g;
	
	my $entry_contains = "";
	my $entry_entry = "";
	my $entry_count = 0;
	foreach $prof (split(",", $obs_list1 . "," . $obs_list2)){
		next unless ($prof);
		if (length($entry_contains) > 0){
			$entry_contains .= " and\n";
			$entry_profile .= " or ";
		}
		$entry_count++;
		if ($optional{$prof} eq "Y"){
			$entry_contains .= "    $prof 0..1 MS";
		}
		else{
			$entry_contains .= "    $prof 1..1 MS";
		}
		$entry_profile  .= "JP_Observation_eMunicipalCheckup_$prof";
		$prof_name = $item_name{$prof};
		$entry_entry .= <<__BENTRY__;

* entry[$prof]
  * ^short = "検査結果情報エントリ $prof_name"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_$prof
    * ^short = "健診項目情報 $prof_name"
__BENTRY__
	}
  $entry_contains .= " and";
	
	$path = $outdir . "/$profile_name" . ".fsh";
	printlog("I", "exporting $path...");
	open(FSH, ">$path") || die;
	binmode FSH, ":encoding(UTF-8)";
	
	print FSH <<__BFSH__;
Profile:        $profile_name
Parent:         Bundle
Id:             $profile_id
Description:    "自治体検診結果報告書　Bundleリソース　文書情報($type_name)"
* ^url = "$baseurl/$profile_name"
* ^status = #draft

* meta 1..1 MS
//  * profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/eMunicipalCheckup-Bundle/1.0"
  * profile = \$profile
    * ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"

* identifier 1..1 MS
  * system = "urn:ietf:rfc:3986"
    * ^short = "固定値。"
  * value 1..1
    * ^short = "Bundleリソースを一意に特定する識別子。本仕様では、Bundleに対して一意となるように生成されたUUIDを指定する。"

* type 1..1 MS
  * ^short = "Bundleリソースがドキュメントタイプであることを示す。"
* type = http://hl7.org/fhir/bundle-type#document (exactly)

* timestamp 1..1 MS
  * ^short = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    composition 1..1 MS and
    patient 1..1 MS and
    practitionerRole 1..1 MS and
    organizationProvider 1..1 MS and 
    practitioner 1..1 MS and
    encounter 1..1 MS and
//    coverage 1..1 MS and
    coverage 0..1 MS and
    organizationInsurer 0..1 MS and
$entry_contains
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS

* entry[composition]
  * ^short = "構成リソース一覧目次に相当。"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Composition_eMunicipalCheckup_$type
    * ^short = "文書構成情報($type_name)"

* entry[patient]
  * ^short = "受診者情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Patient_eMunicipalCheckup
    * ^short = "受診者情報"

* entry[practitionerRole]
  * ^short = "検診結果作成者役割情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_PractitionerRole_eMunicipalCheckup
    * ^short = "検診結果作成者役割情報"

* entry[organizationProvider]
  * ^short = "検診結果作成組織情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Organization_eMunicipalCheckup_Provider
    * ^short = "検診結果作成組織情報"

* entry[practitioner]
  * ^short = "検診結果作成者情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Practitioner_eMunicipalCheckup
    * ^short = "検診結果作成者情報"

* entry[encounter]
  * ^short = "検診実施情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Encounter_eMunicipalCheckup
    * ^short = "検診実施情報"

* entry[coverage]
  * ^short = "保険情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Coverage_eMunicipalCheckup
    * ^short = "保険・自費情報"

* entry[organizationInsurer]
  * ^short = "保険者情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Organization_eMunicipalCheckup_Insurer
    * ^short = "保険者情報"

$entry_entry

* entry[specimen]
  * ^short = "検体情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Specimen_eMunicipalCheckup
    * ^short = "検体情報"

* entry[diagnosticReport]
  * ^short = "健診結果画像報告書エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_DiagnosticReport_eMunicipalCheckup
    * ^short = "健診結果画像報告書情報"

* entry[media]
  * ^short = "健診結果画像情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Media_eMunicipalCheckup
    * ^short = "健診結果画像情報"

* entry[documentReference]
  * ^short = "添付文書エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_DocumentReference_eMunicipalCheckup
    * ^short = "添付文書情報"
__BFSH__
	close(FSH);
  output_profile($profile_name);
}


sub print_item{
	my ($label, $value) = @_;
	my $tnum = (24-length($label))/8;
	
	$tab ="";
	for ($n=0; $n<$tnum; $n++){
		$tab .= "\t";
	}
	
	print "  " . $label . "$tab=/" . $value . "/\n";
}

sub output_profile{
  my ($profile) = @_;

  open(LST, ">>$listfile") || die;
  print LST "    - $baseurl/$profile\n";
  close(LST);
}

#------------------------------------------------------------------------
#  init
#    グローバル変数を初期化する
#------------------------------------------------------------------------
sub init{
    %error_levels = 
	('I', 'INFORM',
	 'W', 'WARNING',
	 'E', 'ERROR',
	 'F', 'FATAL',
	 'N', 'NEVER');

    $logfile  ="./_genObsFsh.log";
}

#------------------------------------------------------------------------
# printlog
#   ログを出力する
#------------------------------------------------------------------------
sub printlog{
    ($level, @rest) = @_;

    $level_name = $error_levels{$level};

    @now = localtime(time());
    $d = sprintf("%02d/%02d %02d:%02d:%02d",
		 $now[4]+1, $now[3], $now[2], $now[1], $now[0]);

    print "$d ", sprintf("%-8s", $level_name), @rest, "\n";

    open(LOG, ">>$logfile") || die "log file $logfile open error.";
    print LOG encode('cp932', "$d " . sprintf("%-8s", $level_name) . @rest . "\n");
    close(LOG);
}

