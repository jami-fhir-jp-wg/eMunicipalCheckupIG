#define	$$urn   urn:oid:1.2.392.100495.100
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//----------
//---- ここから
//----------
#define	$$KN  胃がん検診

#define	$$item01	過去の受診歴
#define	$$cd01	9P540000000000011
#define	$$oidnum01	2000
#define	$$cs01	$$urn.$$oidnum01
#define	$$vs01	$$url-$$oidnum01

#define	$$item02	がんに係る症状の有無
#define	$$cd02	9P541000000000011
#define	$$oidnum02	2052
#define	$$cs02	$$urn.$$oidnum02
#define	$$vs02	$$url-$$oidnum02

#define	$$item03	胃部エックス線検査検査判定
#define	$$cd03	9P542160700000011
#define	$$oidnum03	2050
#define	$$cs03	$$urn.$$oidnum03
#define	$$vs03	$$url-$$oidnum03

#define	$$item04	胃部エックス線検査所見
#define	$$cd04	9P543160800000049

#define	$$item05	胃内視鏡検査検査判定
#define	$$cd05	9P544160700000011
#define	$$oidnum05	2050
#define	$$cs05	$$urn.$$oidnum05
#define	$$vs05	$$url-$$oidnum05

#define	$$item06	胃内視鏡検査所見
#define	$$cd06	9P545160800000049

#define	$$item07	精密検査の対象有無
#define	$$cd07	9P546000000000011
#define	$$oidnum07	2340
#define	$$cs07	$$urn.$$oidnum07
#define	$$vs07	$$url-$$oidnum07

#define	$$item08	その他所見
#define	$$cd08	9P547160800000049

#define	$$item09	偶発症の有無
#define	$$cd09	9P548000000000011
#define	$$oidnum09	2010
#define	$$cs09	$$urn.$$oidnum09
#define	$$vs09	$$url-$$oidnum09

#define	$$item10	精密検査結果
#define	$$cd10	9P549000000000011
#define	$$oidnum10	2350
#define	$$cs10	$$urn.$$oidnum10
#define	$$vs10	$$url-$$oidnum10

#define	$$item11	精密検査所見
#define	$$cd11	9P550160800000049

#define	$$item12	精密検査による偶発症の有無
#define	$$cd12	9P551000000000011
#define	$$oidnum12	2011
#define	$$cs12	$$urn.$$oidnum12
#define	$$vs12	$$url-$$oidnum12

//---- ここから
// 胃がん検診
// JP_Observation_eMunicipalCheckupG_egg53.incから展開 
* code.coding contains
        obs_$$cd01 0..1
    and obs_$$cd02 0..1
    and obs_$$cd03 0..1
    and obs_$$cd04 0..1
    and obs_$$cd05 0..1
    and obs_$$cd06 0..1
    and obs_$$cd07 0..1
    and obs_$$cd08 0..1
    and obs_$$cd09 0..1
    and obs_$$cd10 0..1
    and obs_$$cd11 0..1
    and obs_$$cd12 0..1

//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd01)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd02)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd03)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd04)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd05)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd06)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd07)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd08)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd09)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd10)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd11)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd12)
//--ここまで

//-- ここから
// 胃がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_$$cd01 0..1
    and obs_$$cd02 0..1
    and obs_$$cd03 0..1
    and obs_$$cd05 0..1
    and obs_$$cd07 0..1
    and obs_$$cd09 0..1
    and obs_$$cd10 0..1
    and obs_$$cd12 0..1

* insert valCC_coding_slicing($$cd01, $$cs01, $$vs01)
* insert valCC_coding_slicing($$cd02, $$cs02, $$vs02)
* insert valCC_coding_slicing($$cd03, $$cs03, $$vs03)
* insert valCC_coding_slicing($$cd05, $$cs05, $$vs05)
* insert valCC_coding_slicing($$cd07, $$cs07, $$vs07)
* insert valCC_coding_slicing($$cd09, $$cs09, $$vs09)
* insert valCC_coding_slicing($$cd10, $$cs10, $$vs10)
* insert valCC_coding_slicing($$cd12, $$cs12, $$vs12)
*/
//-- ここまで
