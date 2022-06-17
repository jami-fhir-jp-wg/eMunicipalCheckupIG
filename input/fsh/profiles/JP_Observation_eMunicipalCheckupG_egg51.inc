#define	$$urn   urn:oid:1.2.392.100495.100
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//----------
#define $$KN  肺がん検診

#define	$$item01	過去の受診歴
#define	$$oidnum01	2000
#define $$cd01 9P500000000000011
#define	$$cs01 $$urn.$$oidnum01
#define	$$vs01 $$url-$$oidnum01

#define	$$item02	がんに係る症状の有無
#define	$$oidnum02	2052
#define $$cd02	9P501000000000011
#define	$$cs02	$$urn.$$oidnum02
#define	$$vs02	$$url-$$oidnum02


#define	$$item03	喫煙指数
#define $$cd03	9N737000000000012


#define	$$item04	胸部エックス線検査判定
#define	$$oidnum04	2100
#define $$cd04	9P502000000000011
#define	$$cs04	$$urn.$$oidnum04
#define	$$vs04	$$url-$$oidnum04


#define	$$item05	胸部エックス線検査判定
#define $$cd05	9P503160800000049


#define	$$item06	喀痰検査受診日
#define $$cd06	7A030161506144349


#define	$$item07	喀痰検査判定
#define	$$oidnum09	2101
#define $$cd07	7A030000006144311
#define	$$cs07	$$urn.$$oidnum09
#define	$$vs07	$$url-$$oidnum09


#define	$$item0	喀痰検査所見
#define $$cd08 7A030160806144349


#define	$$item09	精密検査対象有無
#define	$$oidnum10	2140
#define $$cd09	9P504000000000011
#define	$$cs09	$$urn.$$oidnum10
#define	$$vs09	$$url-$$oidnum10


#define	$$item10	その他所見
#define $$cd10	9P505160800000049


#define	$$item11	偶発症の有無
#define	$$oidnum11	2010
#define $$cd11	9P506000000000011
#define	$$cs11	$$urn.$$oidnum11
#define	$$vs11	$$url-$$oidnum11


#define	$$item12	精密検査結果
#define	$$oidnum12	2150
#define $$cd12	9P507000000000011
#define	$$cs12	$$urn.$$oidnum12
#define	$$vs12	$$url-$$oidnum12


#define	$$item13	精密検査その他所見
#define $$cd13	9P508160800000049


#define	$$item14	精密検査による偶発症の有無
#define	$$oidnum14	2011
#define $$cd14	9P509000000000011
#define	$$cs14	$$urn.$$oidnum14
#define	$$vs14	$$url-$$oidnum14

//-- ここから
// 肺がん検診
// JP_Observation_eMunicipalCheckupG_egg51.incから展開 
* code.coding contains
        obs_$$cd01 0..1 //$$item01
    and obs_$$cd02 0..1 //$$item02
    and obs_$$cd03 0..1 //$$item03
    and obs_$$cd04 0..1 //$$item04
    and obs_$$cd05 0..1 //$$item05
    and obs_$$cd06 0..1 //$$item06
    and obs_$$cd07 0..1 //$$item07
    and obs_$$cd08 0..1 //$$item08
    and obs_$$cd09 0..1 //$$item09
    and obs_$$cd10 0..1 //$$item10
    and obs_$$cd11 0..1 //$$item11
    and obs_$$cd12 0..1 //$$item12
    and obs_$$cd13 0..1 //$$item13
    and obs_$$cd14 0..1 //$$item14

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
// 肺がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_$$cd01 0..1 //$$item01
    and obs_$$cd02 0..1 //$$item02
    and obs_$$cd04 0..1 //$$item04
    and obs_$$cd07 0..1 //$$item07
    and obs_$$cd09 0..1 //$$item09
    and obs_$$cd11 0..1 //$$item11
    and obs_$$cd12 0..1 //$$item12
    and obs_$$cd14 0..1 //$$item14   

* insert valCC_coding_slicing($$cd01, $$cs01, $$vs01)
* insert valCC_coding_slicing($$cd02, $$cs02, $$vs02)
* insert valCC_coding_slicing($$cd04, $$cs04, $$vs04)
* insert valCC_coding_slicing($$cd07, $$cs07, $$vs07)
* insert valCC_coding_slicing($$cd09, $$cs09, $$vs09)
* insert valCC_coding_slicing($$cd11, $$cs11, $$vs11)
* insert valCC_coding_slicing($$cd12, $$cs12, $$vs12)
* insert valCC_coding_slicing($$cd14, $$cs14, $$vs14)
*/
//-- ここまで
