{-# OPTIONS_GHC -w #-}
module Parser where

import Data.Char
import Common
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

data HappyAbsSyn t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22 t23 t24
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21
	| HappyAbsSyn22 t22
	| HappyAbsSyn23 t23
	| HappyAbsSyn24 t24

action_0 (25) = happyShift action_13
action_0 (26) = happyShift action_14
action_0 (27) = happyShift action_15
action_0 (29) = happyShift action_16
action_0 (31) = happyShift action_17
action_0 (32) = happyShift action_18
action_0 (33) = happyShift action_19
action_0 (34) = happyShift action_20
action_0 (35) = happyShift action_21
action_0 (36) = happyShift action_22
action_0 (37) = happyShift action_23
action_0 (47) = happyShift action_24
action_0 (48) = happyShift action_25
action_0 (49) = happyShift action_26
action_0 (50) = happyShift action_27
action_0 (53) = happyShift action_28
action_0 (55) = happyShift action_42
action_0 (6) = happyGoto action_41
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (16) = happyGoto action_11
action_0 (17) = happyGoto action_12
action_0 _ = happyFail

action_1 (48) = happyShift action_36
action_1 (58) = happyShift action_37
action_1 (59) = happyShift action_38
action_1 (60) = happyShift action_39
action_1 (61) = happyShift action_40
action_1 (21) = happyGoto action_32
action_1 (22) = happyGoto action_33
action_1 (23) = happyGoto action_34
action_1 (24) = happyGoto action_35
action_1 _ = happyFail

action_2 (29) = happyShift action_31
action_2 (18) = happyGoto action_30
action_2 _ = happyFail

action_3 (25) = happyShift action_13
action_3 (26) = happyShift action_14
action_3 (27) = happyShift action_15
action_3 (29) = happyShift action_16
action_3 (31) = happyShift action_17
action_3 (32) = happyShift action_18
action_3 (33) = happyShift action_19
action_3 (34) = happyShift action_20
action_3 (35) = happyShift action_21
action_3 (36) = happyShift action_22
action_3 (37) = happyShift action_23
action_3 (47) = happyShift action_24
action_3 (48) = happyShift action_25
action_3 (49) = happyShift action_26
action_3 (50) = happyShift action_27
action_3 (53) = happyShift action_28
action_3 (55) = happyShift action_29
action_3 (7) = happyGoto action_4
action_3 (8) = happyGoto action_5
action_3 (9) = happyGoto action_6
action_3 (10) = happyGoto action_7
action_3 (11) = happyGoto action_8
action_3 (12) = happyGoto action_9
action_3 (13) = happyGoto action_10
action_3 (16) = happyGoto action_11
action_3 (17) = happyGoto action_12
action_3 _ = happyFail

action_4 _ = happyReduce_3

action_5 _ = happyReduce_6

action_6 _ = happyReduce_8

action_7 (38) = happyShift action_64
action_7 (39) = happyShift action_65
action_7 (40) = happyShift action_66
action_7 (41) = happyShift action_67
action_7 (42) = happyShift action_68
action_7 (43) = happyShift action_69
action_7 (44) = happyShift action_70
action_7 (45) = happyShift action_71
action_7 (46) = happyShift action_72
action_7 (14) = happyGoto action_62
action_7 (15) = happyGoto action_63
action_7 _ = happyFail

action_8 _ = happyReduce_10

action_9 (25) = happyShift action_13
action_9 (26) = happyShift action_14
action_9 (27) = happyShift action_15
action_9 (29) = happyShift action_16
action_9 (47) = happyShift action_24
action_9 (48) = happyShift action_25
action_9 (49) = happyShift action_26
action_9 (13) = happyGoto action_61
action_9 (17) = happyGoto action_12
action_9 _ = happyReduce_18

action_10 (38) = happyReduce_12
action_10 (39) = happyReduce_12
action_10 (40) = happyReduce_12
action_10 (41) = happyReduce_12
action_10 (42) = happyReduce_12
action_10 (43) = happyReduce_12
action_10 (44) = happyReduce_12
action_10 (45) = happyReduce_12
action_10 (46) = happyReduce_12
action_10 _ = happyReduce_20

action_11 (25) = happyShift action_13
action_11 (26) = happyShift action_14
action_11 (27) = happyShift action_15
action_11 (29) = happyShift action_16
action_11 (31) = happyShift action_17
action_11 (32) = happyShift action_18
action_11 (33) = happyShift action_19
action_11 (34) = happyShift action_20
action_11 (35) = happyShift action_21
action_11 (36) = happyShift action_22
action_11 (37) = happyShift action_23
action_11 (47) = happyShift action_24
action_11 (48) = happyShift action_25
action_11 (49) = happyShift action_26
action_11 (50) = happyShift action_27
action_11 (53) = happyShift action_28
action_11 (55) = happyShift action_29
action_11 (7) = happyGoto action_60
action_11 (8) = happyGoto action_5
action_11 (9) = happyGoto action_6
action_11 (10) = happyGoto action_7
action_11 (11) = happyGoto action_8
action_11 (12) = happyGoto action_9
action_11 (13) = happyGoto action_10
action_11 (16) = happyGoto action_11
action_11 (17) = happyGoto action_12
action_11 _ = happyFail

action_12 _ = happyReduce_21

action_13 _ = happyReduce_41

action_14 _ = happyReduce_42

action_15 (28) = happyShift action_59
action_15 _ = happyFail

action_16 (25) = happyShift action_13
action_16 (26) = happyShift action_14
action_16 (27) = happyShift action_15
action_16 (29) = happyShift action_16
action_16 (30) = happyShift action_58
action_16 (31) = happyShift action_17
action_16 (32) = happyShift action_18
action_16 (33) = happyShift action_19
action_16 (34) = happyShift action_20
action_16 (35) = happyShift action_21
action_16 (36) = happyShift action_22
action_16 (37) = happyShift action_23
action_16 (47) = happyShift action_24
action_16 (48) = happyShift action_25
action_16 (49) = happyShift action_26
action_16 (50) = happyShift action_27
action_16 (53) = happyShift action_28
action_16 (55) = happyShift action_29
action_16 (7) = happyGoto action_57
action_16 (8) = happyGoto action_5
action_16 (9) = happyGoto action_6
action_16 (10) = happyGoto action_7
action_16 (11) = happyGoto action_8
action_16 (12) = happyGoto action_9
action_16 (13) = happyGoto action_10
action_16 (16) = happyGoto action_11
action_16 (17) = happyGoto action_12
action_16 _ = happyFail

action_17 _ = happyReduce_33

action_18 _ = happyReduce_34

action_19 _ = happyReduce_35

action_20 _ = happyReduce_36

action_21 _ = happyReduce_37

action_22 _ = happyReduce_38

action_23 _ = happyReduce_39

action_24 _ = happyReduce_22

action_25 _ = happyReduce_40

action_26 _ = happyReduce_43

action_27 (25) = happyShift action_13
action_27 (26) = happyShift action_14
action_27 (27) = happyShift action_15
action_27 (29) = happyShift action_16
action_27 (31) = happyShift action_17
action_27 (32) = happyShift action_18
action_27 (33) = happyShift action_19
action_27 (34) = happyShift action_20
action_27 (35) = happyShift action_21
action_27 (36) = happyShift action_22
action_27 (37) = happyShift action_23
action_27 (47) = happyShift action_24
action_27 (48) = happyShift action_25
action_27 (49) = happyShift action_26
action_27 (50) = happyShift action_27
action_27 (53) = happyShift action_28
action_27 (55) = happyShift action_29
action_27 (7) = happyGoto action_56
action_27 (8) = happyGoto action_5
action_27 (9) = happyGoto action_6
action_27 (10) = happyGoto action_7
action_27 (11) = happyGoto action_8
action_27 (12) = happyGoto action_9
action_27 (13) = happyGoto action_10
action_27 (16) = happyGoto action_11
action_27 (17) = happyGoto action_12
action_27 _ = happyFail

action_28 (47) = happyShift action_55
action_28 _ = happyFail

action_29 (47) = happyShift action_53
action_29 (57) = happyShift action_54
action_29 _ = happyFail

action_30 (64) = happyAccept
action_30 _ = happyFail

action_31 (30) = happyShift action_51
action_31 (48) = happyShift action_52
action_31 (58) = happyShift action_37
action_31 (59) = happyShift action_38
action_31 (60) = happyShift action_39
action_31 (61) = happyShift action_40
action_31 (20) = happyGoto action_49
action_31 (22) = happyGoto action_50
action_31 (23) = happyGoto action_34
action_31 (24) = happyGoto action_35
action_31 _ = happyFail

action_32 (64) = happyAccept
action_32 _ = happyFail

action_33 _ = happyReduce_52

action_34 (40) = happyShift action_46
action_34 (54) = happyShift action_47
action_34 (62) = happyShift action_48
action_34 _ = happyReduce_55

action_35 _ = happyReduce_57

action_36 (63) = happyShift action_45
action_36 _ = happyReduce_62

action_37 _ = happyReduce_58

action_38 _ = happyReduce_59

action_39 _ = happyReduce_60

action_40 _ = happyReduce_61

action_41 (64) = happyAccept
action_41 _ = happyFail

action_42 (47) = happyShift action_43
action_42 (57) = happyShift action_44
action_42 _ = happyFail

action_43 (45) = happyShift action_88
action_43 _ = happyFail

action_44 (47) = happyShift action_87
action_44 _ = happyFail

action_45 (48) = happyShift action_36
action_45 (58) = happyShift action_37
action_45 (59) = happyShift action_38
action_45 (60) = happyShift action_39
action_45 (61) = happyShift action_40
action_45 (21) = happyGoto action_86
action_45 (22) = happyGoto action_33
action_45 (23) = happyGoto action_34
action_45 (24) = happyGoto action_35
action_45 _ = happyFail

action_46 (48) = happyShift action_52
action_46 (58) = happyShift action_37
action_46 (59) = happyShift action_38
action_46 (60) = happyShift action_39
action_46 (61) = happyShift action_40
action_46 (22) = happyGoto action_85
action_46 (23) = happyGoto action_34
action_46 (24) = happyGoto action_35
action_46 _ = happyFail

action_47 (48) = happyShift action_52
action_47 (58) = happyShift action_37
action_47 (59) = happyShift action_38
action_47 (60) = happyShift action_39
action_47 (61) = happyShift action_40
action_47 (22) = happyGoto action_84
action_47 (23) = happyGoto action_34
action_47 (24) = happyGoto action_35
action_47 _ = happyFail

action_48 _ = happyReduce_56

action_49 (43) = happyShift action_83
action_49 (19) = happyGoto action_82
action_49 _ = happyReduce_49

action_50 (45) = happyShift action_81
action_50 _ = happyFail

action_51 _ = happyReduce_46

action_52 _ = happyReduce_62

action_53 (45) = happyShift action_80
action_53 _ = happyFail

action_54 (47) = happyShift action_79
action_54 _ = happyFail

action_55 (54) = happyShift action_78
action_55 _ = happyFail

action_56 (51) = happyShift action_77
action_56 _ = happyFail

action_57 (30) = happyShift action_76
action_57 _ = happyFail

action_58 _ = happyReduce_45

action_59 _ = happyReduce_44

action_60 _ = happyReduce_17

action_61 _ = happyReduce_19

action_62 (25) = happyShift action_13
action_62 (26) = happyShift action_14
action_62 (27) = happyShift action_15
action_62 (29) = happyShift action_16
action_62 (31) = happyShift action_17
action_62 (32) = happyShift action_18
action_62 (33) = happyShift action_19
action_62 (34) = happyShift action_20
action_62 (35) = happyShift action_21
action_62 (36) = happyShift action_22
action_62 (37) = happyShift action_23
action_62 (47) = happyShift action_24
action_62 (48) = happyShift action_25
action_62 (49) = happyShift action_26
action_62 (50) = happyShift action_27
action_62 (53) = happyShift action_28
action_62 (55) = happyShift action_29
action_62 (8) = happyGoto action_75
action_62 (9) = happyGoto action_6
action_62 (10) = happyGoto action_7
action_62 (11) = happyGoto action_8
action_62 (12) = happyGoto action_9
action_62 (13) = happyGoto action_10
action_62 (16) = happyGoto action_11
action_62 (17) = happyGoto action_12
action_62 _ = happyFail

action_63 (25) = happyShift action_13
action_63 (26) = happyShift action_14
action_63 (27) = happyShift action_15
action_63 (29) = happyShift action_16
action_63 (31) = happyShift action_17
action_63 (32) = happyShift action_18
action_63 (33) = happyShift action_19
action_63 (34) = happyShift action_20
action_63 (35) = happyShift action_21
action_63 (36) = happyShift action_22
action_63 (37) = happyShift action_23
action_63 (47) = happyShift action_24
action_63 (48) = happyShift action_25
action_63 (49) = happyShift action_26
action_63 (50) = happyShift action_27
action_63 (53) = happyShift action_28
action_63 (55) = happyShift action_29
action_63 (11) = happyGoto action_73
action_63 (12) = happyGoto action_9
action_63 (13) = happyGoto action_74
action_63 (16) = happyGoto action_11
action_63 (17) = happyGoto action_12
action_63 _ = happyFail

action_64 _ = happyReduce_25

action_65 _ = happyReduce_26

action_66 _ = happyReduce_27

action_67 _ = happyReduce_28

action_68 _ = happyReduce_29

action_69 _ = happyReduce_30

action_70 _ = happyReduce_24

action_71 _ = happyReduce_31

action_72 _ = happyReduce_32

action_73 _ = happyReduce_9

action_74 (38) = happyReduce_11
action_74 (39) = happyReduce_11
action_74 (40) = happyReduce_11
action_74 (41) = happyReduce_11
action_74 (42) = happyReduce_11
action_74 (43) = happyReduce_11
action_74 (44) = happyReduce_11
action_74 (45) = happyReduce_11
action_74 (46) = happyReduce_11
action_74 _ = happyReduce_20

action_75 _ = happyReduce_7

action_76 _ = happyReduce_23

action_77 (25) = happyShift action_13
action_77 (26) = happyShift action_14
action_77 (27) = happyShift action_15
action_77 (29) = happyShift action_16
action_77 (31) = happyShift action_17
action_77 (32) = happyShift action_18
action_77 (33) = happyShift action_19
action_77 (34) = happyShift action_20
action_77 (35) = happyShift action_21
action_77 (36) = happyShift action_22
action_77 (37) = happyShift action_23
action_77 (47) = happyShift action_24
action_77 (48) = happyShift action_25
action_77 (49) = happyShift action_26
action_77 (50) = happyShift action_27
action_77 (53) = happyShift action_28
action_77 (55) = happyShift action_29
action_77 (7) = happyGoto action_97
action_77 (8) = happyGoto action_5
action_77 (9) = happyGoto action_6
action_77 (10) = happyGoto action_7
action_77 (11) = happyGoto action_8
action_77 (12) = happyGoto action_9
action_77 (13) = happyGoto action_10
action_77 (16) = happyGoto action_11
action_77 (17) = happyGoto action_12
action_77 _ = happyFail

action_78 (25) = happyShift action_13
action_78 (26) = happyShift action_14
action_78 (27) = happyShift action_15
action_78 (29) = happyShift action_16
action_78 (31) = happyShift action_17
action_78 (32) = happyShift action_18
action_78 (33) = happyShift action_19
action_78 (34) = happyShift action_20
action_78 (35) = happyShift action_21
action_78 (36) = happyShift action_22
action_78 (37) = happyShift action_23
action_78 (47) = happyShift action_24
action_78 (48) = happyShift action_25
action_78 (49) = happyShift action_26
action_78 (50) = happyShift action_27
action_78 (53) = happyShift action_28
action_78 (55) = happyShift action_29
action_78 (7) = happyGoto action_96
action_78 (8) = happyGoto action_5
action_78 (9) = happyGoto action_6
action_78 (10) = happyGoto action_7
action_78 (11) = happyGoto action_8
action_78 (12) = happyGoto action_9
action_78 (13) = happyGoto action_10
action_78 (16) = happyGoto action_11
action_78 (17) = happyGoto action_12
action_78 _ = happyFail

action_79 (47) = happyShift action_95
action_79 _ = happyFail

action_80 (25) = happyShift action_13
action_80 (26) = happyShift action_14
action_80 (27) = happyShift action_15
action_80 (29) = happyShift action_16
action_80 (31) = happyShift action_17
action_80 (32) = happyShift action_18
action_80 (33) = happyShift action_19
action_80 (34) = happyShift action_20
action_80 (35) = happyShift action_21
action_80 (36) = happyShift action_22
action_80 (37) = happyShift action_23
action_80 (47) = happyShift action_24
action_80 (48) = happyShift action_25
action_80 (49) = happyShift action_26
action_80 (50) = happyShift action_27
action_80 (53) = happyShift action_28
action_80 (55) = happyShift action_29
action_80 (7) = happyGoto action_94
action_80 (8) = happyGoto action_5
action_80 (9) = happyGoto action_6
action_80 (10) = happyGoto action_7
action_80 (11) = happyGoto action_8
action_80 (12) = happyGoto action_9
action_80 (13) = happyGoto action_10
action_80 (16) = happyGoto action_11
action_80 (17) = happyGoto action_12
action_80 _ = happyFail

action_81 (48) = happyShift action_52
action_81 (58) = happyShift action_37
action_81 (59) = happyShift action_38
action_81 (60) = happyShift action_39
action_81 (61) = happyShift action_40
action_81 (22) = happyGoto action_93
action_81 (23) = happyGoto action_34
action_81 (24) = happyGoto action_35
action_81 _ = happyFail

action_82 (30) = happyShift action_92
action_82 _ = happyFail

action_83 (48) = happyShift action_52
action_83 (58) = happyShift action_37
action_83 (59) = happyShift action_38
action_83 (60) = happyShift action_39
action_83 (61) = happyShift action_40
action_83 (20) = happyGoto action_91
action_83 (22) = happyGoto action_50
action_83 (23) = happyGoto action_34
action_83 (24) = happyGoto action_35
action_83 _ = happyFail

action_84 _ = happyReduce_54

action_85 _ = happyReduce_53

action_86 _ = happyReduce_51

action_87 (47) = happyShift action_90
action_87 _ = happyFail

action_88 (25) = happyShift action_13
action_88 (26) = happyShift action_14
action_88 (27) = happyShift action_15
action_88 (29) = happyShift action_16
action_88 (31) = happyShift action_17
action_88 (32) = happyShift action_18
action_88 (33) = happyShift action_19
action_88 (34) = happyShift action_20
action_88 (35) = happyShift action_21
action_88 (36) = happyShift action_22
action_88 (37) = happyShift action_23
action_88 (47) = happyShift action_24
action_88 (48) = happyShift action_25
action_88 (49) = happyShift action_26
action_88 (50) = happyShift action_27
action_88 (53) = happyShift action_28
action_88 (55) = happyShift action_29
action_88 (7) = happyGoto action_89
action_88 (8) = happyGoto action_5
action_88 (9) = happyGoto action_6
action_88 (10) = happyGoto action_7
action_88 (11) = happyGoto action_8
action_88 (12) = happyGoto action_9
action_88 (13) = happyGoto action_10
action_88 (16) = happyGoto action_11
action_88 (17) = happyGoto action_12
action_88 _ = happyFail

action_89 (56) = happyShift action_100
action_89 _ = happyReduce_4

action_90 (45) = happyShift action_102
action_90 _ = happyFail

action_91 (43) = happyShift action_83
action_91 (19) = happyGoto action_101
action_91 _ = happyReduce_49

action_92 _ = happyReduce_47

action_93 _ = happyReduce_50

action_94 (56) = happyShift action_100
action_94 _ = happyFail

action_95 (45) = happyShift action_99
action_95 _ = happyFail

action_96 _ = happyReduce_13

action_97 (52) = happyShift action_98
action_97 _ = happyFail

action_98 (25) = happyShift action_13
action_98 (26) = happyShift action_14
action_98 (27) = happyShift action_15
action_98 (29) = happyShift action_16
action_98 (31) = happyShift action_17
action_98 (32) = happyShift action_18
action_98 (33) = happyShift action_19
action_98 (34) = happyShift action_20
action_98 (35) = happyShift action_21
action_98 (36) = happyShift action_22
action_98 (37) = happyShift action_23
action_98 (47) = happyShift action_24
action_98 (48) = happyShift action_25
action_98 (49) = happyShift action_26
action_98 (50) = happyShift action_27
action_98 (53) = happyShift action_28
action_98 (55) = happyShift action_29
action_98 (7) = happyGoto action_106
action_98 (8) = happyGoto action_5
action_98 (9) = happyGoto action_6
action_98 (10) = happyGoto action_7
action_98 (11) = happyGoto action_8
action_98 (12) = happyGoto action_9
action_98 (13) = happyGoto action_10
action_98 (16) = happyGoto action_11
action_98 (17) = happyGoto action_12
action_98 _ = happyFail

action_99 (25) = happyShift action_13
action_99 (26) = happyShift action_14
action_99 (27) = happyShift action_15
action_99 (29) = happyShift action_16
action_99 (31) = happyShift action_17
action_99 (32) = happyShift action_18
action_99 (33) = happyShift action_19
action_99 (34) = happyShift action_20
action_99 (35) = happyShift action_21
action_99 (36) = happyShift action_22
action_99 (37) = happyShift action_23
action_99 (47) = happyShift action_24
action_99 (48) = happyShift action_25
action_99 (49) = happyShift action_26
action_99 (50) = happyShift action_27
action_99 (53) = happyShift action_28
action_99 (55) = happyShift action_29
action_99 (7) = happyGoto action_105
action_99 (8) = happyGoto action_5
action_99 (9) = happyGoto action_6
action_99 (10) = happyGoto action_7
action_99 (11) = happyGoto action_8
action_99 (12) = happyGoto action_9
action_99 (13) = happyGoto action_10
action_99 (16) = happyGoto action_11
action_99 (17) = happyGoto action_12
action_99 _ = happyFail

action_100 (25) = happyShift action_13
action_100 (26) = happyShift action_14
action_100 (27) = happyShift action_15
action_100 (29) = happyShift action_16
action_100 (31) = happyShift action_17
action_100 (32) = happyShift action_18
action_100 (33) = happyShift action_19
action_100 (34) = happyShift action_20
action_100 (35) = happyShift action_21
action_100 (36) = happyShift action_22
action_100 (37) = happyShift action_23
action_100 (47) = happyShift action_24
action_100 (48) = happyShift action_25
action_100 (49) = happyShift action_26
action_100 (50) = happyShift action_27
action_100 (53) = happyShift action_28
action_100 (55) = happyShift action_29
action_100 (7) = happyGoto action_104
action_100 (8) = happyGoto action_5
action_100 (9) = happyGoto action_6
action_100 (10) = happyGoto action_7
action_100 (11) = happyGoto action_8
action_100 (12) = happyGoto action_9
action_100 (13) = happyGoto action_10
action_100 (16) = happyGoto action_11
action_100 (17) = happyGoto action_12
action_100 _ = happyFail

action_101 _ = happyReduce_48

action_102 (25) = happyShift action_13
action_102 (26) = happyShift action_14
action_102 (27) = happyShift action_15
action_102 (29) = happyShift action_16
action_102 (31) = happyShift action_17
action_102 (32) = happyShift action_18
action_102 (33) = happyShift action_19
action_102 (34) = happyShift action_20
action_102 (35) = happyShift action_21
action_102 (36) = happyShift action_22
action_102 (37) = happyShift action_23
action_102 (47) = happyShift action_24
action_102 (48) = happyShift action_25
action_102 (49) = happyShift action_26
action_102 (50) = happyShift action_27
action_102 (53) = happyShift action_28
action_102 (55) = happyShift action_29
action_102 (7) = happyGoto action_103
action_102 (8) = happyGoto action_5
action_102 (9) = happyGoto action_6
action_102 (10) = happyGoto action_7
action_102 (11) = happyGoto action_8
action_102 (12) = happyGoto action_9
action_102 (13) = happyGoto action_10
action_102 (16) = happyGoto action_11
action_102 (17) = happyGoto action_12
action_102 _ = happyFail

action_103 (56) = happyShift action_107
action_103 _ = happyReduce_5

action_104 _ = happyReduce_15

action_105 (56) = happyShift action_107
action_105 _ = happyFail

action_106 _ = happyReduce_14

action_107 (25) = happyShift action_13
action_107 (26) = happyShift action_14
action_107 (27) = happyShift action_15
action_107 (29) = happyShift action_16
action_107 (31) = happyShift action_17
action_107 (32) = happyShift action_18
action_107 (33) = happyShift action_19
action_107 (34) = happyShift action_20
action_107 (35) = happyShift action_21
action_107 (36) = happyShift action_22
action_107 (37) = happyShift action_23
action_107 (47) = happyShift action_24
action_107 (48) = happyShift action_25
action_107 (49) = happyShift action_26
action_107 (50) = happyShift action_27
action_107 (53) = happyShift action_28
action_107 (55) = happyShift action_29
action_107 (7) = happyGoto action_108
action_107 (8) = happyGoto action_5
action_107 (9) = happyGoto action_6
action_107 (10) = happyGoto action_7
action_107 (11) = happyGoto action_8
action_107 (12) = happyGoto action_9
action_107 (13) = happyGoto action_10
action_107 (16) = happyGoto action_11
action_107 (17) = happyGoto action_12
action_107 _ = happyFail

action_108 _ = happyReduce_16

happyReduce_3 = happySpecReduce_1  6 happyReduction_3
happyReduction_3 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (AnonDec happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 4 6 happyReduction_4
happyReduction_4 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LetDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 6 6 happyReduction_5
happyReduction_5 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_4)) `HappyStk`
	(HappyTerminal (ID happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (LetRec happy_var_3 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  8 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn14  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (BinOpExp happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  9 happyReduction_9
happyReduction_9 (HappyAbsSyn11  happy_var_3)
	(HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (BinOpExp happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  9 happyReduction_10
happyReduction_10 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  10 happyReduction_11
happyReduction_11 (HappyAbsSyn13  happy_var_3)
	(HappyAbsSyn15  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (BinOpExp happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  10 happyReduction_12
happyReduction_12 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happyReduce 4 11 happyReduction_13
happyReduction_13 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (FunExp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 11 happyReduction_14
happyReduction_14 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (IfExp happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 6 11 happyReduction_15
happyReduction_15 ((HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (LetExp happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 8 11 happyReduction_16
happyReduction_16 ((HappyAbsSyn7  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (ID happy_var_4)) `HappyStk`
	(HappyTerminal (ID happy_var_3)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (LetRecExp happy_var_3 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  11 happyReduction_17
happyReduction_17 (HappyAbsSyn7  happy_var_2)
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn11
		 (MonOpExp happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  11 happyReduction_18
happyReduction_18 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_2  12 happyReduction_19
happyReduction_19 (HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (AppExp happy_var_1 happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  13 happyReduction_21
happyReduction_21 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn13
		 (ConstExp happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 (HappyTerminal (ID happy_var_1))
	 =  HappyAbsSyn13
		 (VarExp happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  13 happyReduction_23
happyReduction_23 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (happy_var_2
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  14 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn14
		 (ConsOp
	)

happyReduce_25 = happySpecReduce_1  15 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn15
		 (IntPlusOp
	)

happyReduce_26 = happySpecReduce_1  15 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn15
		 (IntMinusOp
	)

happyReduce_27 = happySpecReduce_1  15 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn15
		 (IntTimesOp
	)

happyReduce_28 = happySpecReduce_1  15 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn15
		 (IntDivOp
	)

happyReduce_29 = happySpecReduce_1  15 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn15
		 (ConcatOp
	)

happyReduce_30 = happySpecReduce_1  15 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn15
		 (CommaOp
	)

happyReduce_31 = happySpecReduce_1  15 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn15
		 (EqOp
	)

happyReduce_32 = happySpecReduce_1  15 happyReduction_32
happyReduction_32 _
	 =  HappyAbsSyn15
		 (GreaterOp
	)

happyReduce_33 = happySpecReduce_1  16 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn16
		 (HdOp
	)

happyReduce_34 = happySpecReduce_1  16 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn16
		 (TlOp
	)

happyReduce_35 = happySpecReduce_1  16 happyReduction_35
happyReduction_35 _
	 =  HappyAbsSyn16
		 (PrintOp
	)

happyReduce_36 = happySpecReduce_1  16 happyReduction_36
happyReduction_36 _
	 =  HappyAbsSyn16
		 (IntNegOp
	)

happyReduce_37 = happySpecReduce_1  16 happyReduction_37
happyReduction_37 _
	 =  HappyAbsSyn16
		 (FstOp
	)

happyReduce_38 = happySpecReduce_1  16 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn16
		 (SndOp
	)

happyReduce_39 = happySpecReduce_1  16 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn16
		 (NotOp
	)

happyReduce_40 = happySpecReduce_1  17 happyReduction_40
happyReduction_40 (HappyTerminal (INT happy_var_1))
	 =  HappyAbsSyn17
		 (IntConst happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_1  17 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn17
		 (BoolConst True
	)

happyReduce_42 = happySpecReduce_1  17 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn17
		 (BoolConst False
	)

happyReduce_43 = happySpecReduce_1  17 happyReduction_43
happyReduction_43 (HappyTerminal (STRING happy_var_1))
	 =  HappyAbsSyn17
		 (StringConst happy_var_1
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  17 happyReduction_44
happyReduction_44 _
	_
	 =  HappyAbsSyn17
		 (NilConst
	)

happyReduce_45 = happySpecReduce_2  17 happyReduction_45
happyReduction_45 _
	_
	 =  HappyAbsSyn17
		 (UnitConst
	)

happyReduce_46 = happySpecReduce_2  18 happyReduction_46
happyReduction_46 _
	_
	 =  HappyAbsSyn18
		 ([]
	)

happyReduce_47 = happyReduce 4 18 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	(HappyAbsSyn20  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (happy_var_2 : happy_var_3
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_3  19 happyReduction_48
happyReduction_48 (HappyAbsSyn19  happy_var_3)
	(HappyAbsSyn20  happy_var_2)
	_
	 =  HappyAbsSyn19
		 (happy_var_2 : happy_var_3
	)
happyReduction_48 _ _ _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_0  19 happyReduction_49
happyReduction_49  =  HappyAbsSyn19
		 ([]
	)

happyReduce_50 = happySpecReduce_3  20 happyReduction_50
happyReduction_50 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn20
		 ((happy_var_1, happy_var_3)
	)
happyReduction_50 _ _ _  = notHappyAtAll 

happyReduce_51 = happySpecReduce_3  21 happyReduction_51
happyReduction_51 (HappyAbsSyn21  happy_var_3)
	_
	(HappyTerminal (INT happy_var_1))
	 =  HappyAbsSyn21
		 (let (l, tau) = happy_var_3 in (happy_var_1:l, tau)
	)
happyReduction_51 _ _ _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_1  21 happyReduction_52
happyReduction_52 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn21
		 (([], happy_var_1)
	)
happyReduction_52 _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_3  22 happyReduction_53
happyReduction_53 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 (pairTy happy_var_1 happy_var_3
	)
happyReduction_53 _ _ _  = notHappyAtAll 

happyReduce_54 = happySpecReduce_3  22 happyReduction_54
happyReduction_54 (HappyAbsSyn22  happy_var_3)
	_
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 (funTy happy_var_1 happy_var_3
	)
happyReduction_54 _ _ _  = notHappyAtAll 

happyReduce_55 = happySpecReduce_1  22 happyReduction_55
happyReduction_55 (HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn22
		 (happy_var_1
	)
happyReduction_55 _  = notHappyAtAll 

happyReduce_56 = happySpecReduce_2  23 happyReduction_56
happyReduction_56 _
	(HappyAbsSyn23  happy_var_1)
	 =  HappyAbsSyn23
		 (listTy happy_var_1
	)
happyReduction_56 _ _  = notHappyAtAll 

happyReduce_57 = happySpecReduce_1  23 happyReduction_57
happyReduction_57 (HappyAbsSyn24  happy_var_1)
	 =  HappyAbsSyn23
		 (happy_var_1
	)
happyReduction_57 _  = notHappyAtAll 

happyReduce_58 = happySpecReduce_1  24 happyReduction_58
happyReduction_58 _
	 =  HappyAbsSyn24
		 (intTy
	)

happyReduce_59 = happySpecReduce_1  24 happyReduction_59
happyReduction_59 _
	 =  HappyAbsSyn24
		 (boolTy
	)

happyReduce_60 = happySpecReduce_1  24 happyReduction_60
happyReduction_60 _
	 =  HappyAbsSyn24
		 (stringTy
	)

happyReduce_61 = happySpecReduce_1  24 happyReduction_61
happyReduction_61 _
	 =  HappyAbsSyn24
		 (unitTy
	)

happyReduce_62 = happySpecReduce_1  24 happyReduction_62
happyReduction_62 (HappyTerminal (INT happy_var_1))
	 =  HappyAbsSyn24
		 (TyVar happy_var_1
	)
happyReduction_62 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 64 64 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TRUE -> cont 25;
	FALSE -> cont 26;
	LBRAC -> cont 27;
	RBRAC -> cont 28;
	LPAREN -> cont 29;
	RPAREN -> cont 30;
	HD -> cont 31;
	TL -> cont 32;
	PRINT -> cont 33;
	NEG -> cont 34;
	FST -> cont 35;
	SND -> cont 36;
	NOT -> cont 37;
	PLUS -> cont 38;
	MINUS -> cont 39;
	TIMES -> cont 40;
	DIV -> cont 41;
	CARAT -> cont 42;
	COMMA -> cont 43;
	DCOLON -> cont 44;
	EQUALS -> cont 45;
	GE -> cont 46;
	ID happy_dollar_dollar -> cont 47;
	INT happy_dollar_dollar -> cont 48;
	STRING happy_dollar_dollar -> cont 49;
	IF -> cont 50;
	THEN -> cont 51;
	ELSE -> cont 52;
	FUN -> cont 53;
	ARROW -> cont 54;
	LET -> cont 55;
	IN -> cont 56;
	REC -> cont 57;
	T_INT -> cont 58;
	T_BOOL -> cont 59;
	T_STRING -> cont 60;
	T_UNIT -> cont 61;
	T_LIST -> cont 62;
	DOT -> cont 63;
	_ -> happyError' (tk:tks)
	}

happyError_ 64 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = return
    (<*>) = ap
instance Monad HappyIdentity where
    return = HappyIdentity
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> HappyIdentity a
happyError' = HappyIdentity . parseError

parse tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn6 z -> happyReturn z; _other -> notHappyAtAll })

parseType tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_1 tks) (\x -> case x of {HappyAbsSyn21 z -> happyReturn z; _other -> notHappyAtAll })

parseEqList tks = happyRunIdentity happySomeParser where
  happySomeParser = happyThen (happyParse action_2 tks) (\x -> case x of {HappyAbsSyn18 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Token =
  TRUE | FALSE | LBRAC | RBRAC | LPAREN | RPAREN
  | HD | TL | PRINT | NEG | FST | SND | NOT
  | PLUS | MINUS | TIMES | DIV | CARAT | COMMA | DCOLON
  | EQUALS | GE | ID String | INT Int | STRING String
  | IF | THEN | ELSE | FUN | ARROW | LET | IN | REC
  | T_INT | T_BOOL | T_STRING | T_UNIT | T_LIST | DOT

lexer :: String -> [Token]
lexer [] = []
lexer (c:cs)
  | isSpace c = lexer cs
  | isAlpha c = lexWord (c:cs)
  | isDigit c = lexInt (c:cs)
lexer ('"':cs) = lexStrConst cs ""
lexer ('[':cs) = LBRAC : lexer cs
lexer (']':cs) = RBRAC : lexer cs
lexer ('(':cs) = LPAREN : lexer cs
lexer (')':cs) = RPAREN : lexer cs
lexer ('~':cs) = NEG : lexer cs
lexer ('+':cs) = PLUS : lexer cs
lexer ('-':'>':cs) = ARROW : lexer cs
lexer ('-':cs) = MINUS : lexer cs
lexer ('*':cs) = TIMES : lexer cs
lexer ('/':cs) = DIV : lexer cs
lexer ('^':cs) = CARAT : lexer cs
lexer (',':cs) = COMMA : lexer cs
lexer (':':':':cs) = DCOLON : lexer cs
lexer ('=':cs) = EQUALS : lexer cs
lexer ('>':cs) = GE : lexer cs
lexer ('.':cs) = DOT : lexer cs
lexer (_:cs) = lexer cs

lexInt cs =
  let (num, cs') = span isDigit cs
    in INT (read num) : lexer cs'

lexWord cs =
  case span isAlpha cs of
    ("true", cs) -> TRUE : lexer cs
    ("false", cs) -> FALSE : lexer cs
    ("hd", cs) -> HD : lexer cs
    ("tl", cs) -> TL : lexer cs
    ("print", cs) -> PRINT : lexer cs
    ("fst", cs) -> FST : lexer cs
    ("snd", cs) -> SND : lexer cs
    ("not", cs) -> NOT : lexer cs
    ("if", cs) -> IF : lexer cs
    ("then", cs) -> THEN : lexer cs
    ("else", cs) -> ELSE : lexer cs
    ("fun", cs) -> FUN : lexer cs
    ("let", cs) -> LET : lexer cs
    ("in", cs) -> IN : lexer cs
    ("rec", cs) -> REC : lexer cs
    ("int", cs) -> T_INT : lexer cs
    ("bool", cs) -> T_BOOL : lexer cs
    ("string", cs) -> T_STRING : lexer cs
    ("unit", cs) -> T_UNIT : lexer cs
    ("list", cs) -> T_LIST : lexer cs
    (id, cs) -> ID id : lexer cs

lexStrConst [] s = [STRING s]
lexStrConst ('"':cs) s = STRING s : lexer cs
lexStrConst (c:cs) s = lexStrConst cs (s ++ [c])
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4










































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}

{-# LINE 46 "templates/GenericTemplate.hs" #-}








{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 155 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 256 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 322 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
