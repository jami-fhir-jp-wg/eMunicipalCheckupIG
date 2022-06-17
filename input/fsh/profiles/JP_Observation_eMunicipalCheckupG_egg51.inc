#include "JP_Observation_eMunicipalCheckupG_eggDef51.inc"
//-- ここから
// 肺がん検診
// JP_Observation_eMunicipalCheckupG_egg51.incから展開 

* obeys code-$$cd01-valueCodingSystem-$$oidnum01
    and code-$$cd02-valueCodingSystem-$$oidnum02
    and code-$$cd04-valueCodingSystem-$$oidnum04
    and code-$$cd07-valueCodingSystem-$$oidnum07
    and code-$$cd09-valueCodingSystem-$$oidnum09
    and code-$$cd11-valueCodingSystem-$$oidnum11
    and code-$$cd12-valueCodingSystem-$$oidnum12
    and code-$$cd14-valueCodingSystem-$$oidnum14

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
