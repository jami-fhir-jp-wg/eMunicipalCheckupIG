#define	$$urn   urn:oid:1.2.392.100495.100
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//-----
#define	$$KN  大腸がん検診

#define	$$item01	過去の受診歴
#define	$$cd01	9P580000000000011
#define	$$oidnum01	2000
#define	$$cs01	$$urn.$$oidnum01
#define	$$vs01	$$url-$$oidnum01


#define	$$item02	大腸がんに係る症状の有無
#define	$$cd02	9P581000000000011
#define	$$oidnum02	2052
#define	$$cs02	$$urn.$$oidnum02
#define	$$vs02	$$url-$$oidnum02


#define	$$item03	便潜血検査判定
#define	$$cd03	1B040000001599811
#define	$$oidnum03	2500
#define	$$cs03	$$urn.$$oidnum03
#define	$$vs03	$$url-$$oidnum03


#define	$$item04	便潜血検査所見
#define	$$cd04	1B040160801599849


#define	$$item05	精密検査の対象有無
#define	$$cd05	9P582000000000011
#define	$$oidnum05	2540
#define	$$cs05	$$urn.$$oidnum05
#define	$$vs05	$$url-$$oidnum05


#define	$$item06	その他所見
#define	$$cd06	9P583160800000049

#define	$$item07	偶発症の有無
#define	$$cd07	9P584000000000011
#define	$$oidnum07	2010
#define	$$cs07	$$urn.$$oidnum07
#define	$$vs07	$$url-$$oidnum07


#define	$$item08	精密検査結果
#define	$$cd08	9P585000000000011
#define	$$oidnum08	2550
#define	$$cs08	$$urn.$$oidnum08
#define	$$vs08	$$url-$$oidnum08


#define	$$item09	精密検査所見
#define	$$cd09	9P586160800000049

#define	$$item10	精密検査による偶発症の有無
#define	$$cd10	9P587000000000011
#define	$$oidnum10	2011
#define	$$cs10	$$urn.$$oidnum10
#define	$$vs10	$$url-$$oidnum10

//-- ここから
// 大腸がん検診
// JP_Observation_eMunicipalCheckupG_egg55.incから展開 
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
//--ここまで

//-- ここから
// 大腸がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_$$cd01 0..1
    and obs_$$cd02 0..1
    and obs_$$cd03 0..1
    and obs_$$cd05 0..1
    and obs_$$cd07 0..1
    and obs_$$cd08 0..1
    and obs_$$cd10 0..1

* insert valCC_coding_slicing($$cd01, $$cs01, $$vs01)
* insert valCC_coding_slicing($$cd02, $$cs02, $$vs02)
* insert valCC_coding_slicing($$cd03, $$cs03, $$vs03)
* insert valCC_coding_slicing($$cd05, $$cs05, $$vs05)
* insert valCC_coding_slicing($$cd07, $$cs07, $$vs07)
* insert valCC_coding_slicing($$cd08, $$cs08, $$vs08)
* insert valCC_coding_slicing($$cd10, $$cs10, $$vs10)
*/
//-- ここまで
