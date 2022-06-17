#define	$$urn   urn:oid:1.2.392.100495.100
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//--------
// 子宮頸がん検診
#define	$$KN  子宮頸がん検診
#define	$$item01	過去の受診歴
#define	$$cd01	9P560000000000011
#define	$$oidnum01	2000
#define	$$cs01	$$urn.$$oidnum01
#define	$$vs01	$$url-$$oidnum01

#define	$$item02	がんに係る症状の有無
#define	$$cd02	9P561000000000011
#define	$$oidnum02	2052
#define	$$cs02	$$urn.$$oidnum02
#define	$$vs02	$$url-$$oidnum02

#define	$$item03	視診所見有無
#define	$$cd03	9N291160700000011
#define	$$oidnum03	2050
#define	$$cs03	$$urn.$$oidnum03
#define	$$vs03	$$url-$$oidnum03

#define	$$item04	視診所見内容
#define	$$cd04	9N291160800000049

#define	$$item05	内診所見有無
#define	$$cd05	9N296160700000011
#define	$$oidnum05	2050
#define	$$cs05	$$urn.$$oidnum05
#define	$$vs05	$$url-$$oidnum05


#define	$$item06	内診所見内容
#define	$$cd06	9N296160800000049

#define	$$item07	頸部細胞診検査判定
#define	$$cd07	7A021000008543311
#define	$$oidnum07	2400
#define	$$cs07	$$urn.$$oidnum07
#define	$$vs07	$$url-$$oidnum07


#define	$$item08	頸部細胞診検査所見
#define	$$cd08	7A021160808543349

#define	$$item09	精密検査の対象有無
#define	$$cd09	9P562000000000011
#define	$$oidnum09	2440
#define	$$cs09	$$urn.$$oidnum09
#define	$$vs09	$$url-$$oidnum09


#define	$$item10	その他所見
#define	$$cd10	9P563160800000049


#define	$$item11	偶発症の有無
#define	$$cd11	9P564000000000011
#define	$$oidnum11	2010
#define	$$cs11	$$urn.$$oidnum11
#define	$$vs11	$$url-$$oidnum11


#define	$$item12	精密検査結果
#define	$$cd12	9P565000000000011
#define	$$oidnum12	2450
#define	$$cs12	$$urn.$$oidnum12
#define	$$vs12	$$url-$$oidnum12

#define	$$item13	精密検査所見
#define	$$cd13	9P566160800000049

#define	$$item14	精密検査による偶発症の有無
#define	$$cd14	9P567000000000011
#define	$$oidnum14	2011
#define	$$cs14	$$urn.$$oidnum14
#define	$$vs14	$$url-$$oidnum14


//-- ここから
// 子宮頸がん検診
// JP_Observation_eMunicipalCheckupG_egg54.incから展開 
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
    and obs_$$cd13 0..1
    and obs_$$cd14 0..1   

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
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd13)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd14)
//--ここまで

//-- ここから
// 子宮頸がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_$$cd01 0..1
    and obs_$$cd02 0..1
    and obs_$$cd03 0..1
    and obs_$$cd05 0..1
    and obs_$$cd07 0..1
    and obs_$$cd09 0..1
    and obs_$$cd11 0..1
    and obs_$$cd12 0..1   
    and obs_$$cd14 0..1   

* insert valCC_coding_slicing($$cd01, $$cs01, $$vs01)
* insert valCC_coding_slicing($$cd02, $$cs02, $$vs02)
* insert valCC_coding_slicing($$cd03, $$cs03, $$vs03)
* insert valCC_coding_slicing($$cd05, $$cs05, $$vs05)
* insert valCC_coding_slicing($$cd07, $$cs07, $$vs07)
* insert valCC_coding_slicing($$cd09, $$cs09, $$vs09)
* insert valCC_coding_slicing($$cd11, $$cs11, $$vs11)
* insert valCC_coding_slicing($$cd12, $$cs12, $$vs12)
* insert valCC_coding_slicing($$cd14, $$cs14, $$vs14)
*/
//-- ここまで
