#define	$$urn   urn:oid:1.2.392.100495.100.
#define	$$url   http://jpfhir/eMunicipalCheckup/ValueSet/valueSet

//----------
#define $$KN  肺がん検診

#define	$$item	過去の受診歴
#define	$$oidnum	2000
#define $$cd$$KN_$$item  9P500000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item01    $$item

#define	$$item	がんに係る症状の有無
#define	$$oidnum	2052
#define $$cd$$KN_$$item	9P501000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item02    $$item

#define	$$item	喫煙指数
#define $$cd$$KN_$$item	9N737000000000012
#define $$item03    $$item

#define	$$item	胸部エックス線検査判定
#define	$$oidnum	2100
#define $$cd$$KN_$$item	9P502000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item04    $$item

#define	$$item	胸部エックス線検査判定
#define $$cd$$KN_$$item	9P503160800000049
#define $$item05    $$item

#define	$$item	喀痰検査受診日
#define $$cd$$KN_$$item	7A030161506144349
#define $$item06    $$item

#define	$$item	喀痰検査判定
#define	$$oidnum	2101
#define $$cd$$KN_$$item	7A030000006144311
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item07    $$item

#define	$$item	喀痰検査所見
#define $$cd$$KN_$$item 7A030160806144349
#define $$item08    $$item

#define	$$item	精密検査対象有無
#define	$$oidnum	2140
#define $$cd$$KN_$$item	9P504000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item09    $$item

#define	$$item	その他所見
#define $$cd$$KN_その他所見	9P505160800000049
#define $$item10    $$item

#define	$$item	偶発症の有無
#define	$$oidnum	2010
#define $$cd$$KN_偶発症の有無	9P506000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item11    $$item

#define	$$item	精密検査結果
#define	$$oidnum	2150
#define $$cd$$KN_$$item	9P507000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item12    $$item

#define	$$item	精密検査その他所見
#define $$cd$$KN_$$item	9P508160800000049
#define $$item13    $$item

#define	$$item	精密検査による偶発症の有無
#define	$$oidnum	2011
#define $$cd$$KN_$$item	9P507000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$cd$$KN_$$item	9P509000000000011
#define	$$cs$$KN_$$item	$$urn.$$oidnum
#define	$$cd$$KN_$$item	$$url-$$oidnum
#define $$item14    $$item

// JP_Observation_eMunicipalCheckupG_egg51.incから展開 
* code.coding contains
        obs_$$cd$$KN_$$item01 0..1
    and obs_$$cd$$KN_$$item02 0..1
    and obs_$$cd$$KN_$$item03 0..1
    and obs_$$cd$$KN_$$item04 0..1
    and obs_$$cd$$KN_$$item05 0..1
    and obs_$$cd$$KN_$$item06 0..1
    and obs_$$cd$$KN_$$item07 0..1
    and obs_$$cd$$KN_$$item08 0..1
    and obs_$$cd$$KN_$$item09 1..1
    and obs_$$cd$$KN_$$item10 0..1
    and obs_$$cd$$KN_$$item11 0..1
    and obs_$$cd$$KN_$$item12 1..1
    and obs_$$cd$$KN_$$item13 0..1
    and obs_$$cd$$KN_$$item14 0..1   

//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item01)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item02)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item03)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item04)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item05)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item06)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item07)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item08)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item09)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item10)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item11)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item12)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item13)
* insert Obs_code_coding_slicing($$EMCUPX_observation_codes_cs, $$cd$$KN_$$item14)
//--ここまで

//-- ここから
// 肺がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
* value[x][valueCodeableConcept].coding contains
        obs_$$cd$$KN_$$item01 0..1
    and obs_$$cd$$KN_$$item02 0..1
    and obs_$$cd$$KN_$$item04 0..1
    and obs_$$cd$$KN_$$item07 0..1
    and obs_$$cd$$KN_$$item09 0..1
    and obs_$$cd$$KN_$$item11 0..1
    and obs_$$cd$$KN_$$item12 0..1
    and obs_$$cd$$KN_$$item14  0..1   

* insert valCC_coding_slicing($$cd$$KN_item01,$$cs$$KN_item01,$$vs$$KN_item01)
* insert valCC_coding_slicing($$cd$$KN_item02, $$cs$$KN_item02, $$vs$$KN_item02)
* insert valCC_coding_slicing($$cd$$KN_item04, $$cs$$KN_item04, $$vs$$KN_item04)
* insert valCC_coding_slicing($$cd$$KN_item07, $$cs$$KN_item07, $$vs$$KN_item07)
* insert valCC_coding_slicing($$cd$$KN_item09, $$cs$$KN_item09, $$vs$$KN_item09)
* insert valCC_coding_slicing($$cd$$KN_item11, $$cs$$KN_item11, $$vs$$KN_item11)
* insert valCC_coding_slicing($$cd$$KN_item12, $$cs$$KN_item12, $$vs$$KN_item12)
* insert valCC_coding_slicing($$cd$$KN_item14, $$cs$$KN_item14, $$vs$$KN_item14)
//-- ここまで
