--version  = 1
--Eplanner version = 2022.5.8160.28802
--PAC_name = 'T1-Вентиляция'
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--Базовая функциональность

-- Основные объекты проекта (объекты, описанные в Eplan).
local prg =
    {
    control_modules =
        {
        PV1V1 = V('PV1V1'),
        PV1V2 = V('PV1V2'),
        PV1VC1 = VC('PV1VC1'),
        PV1VC2 = VC('PV1VC2'),
        PV1VC3 = VC('PV1VC3'),
        PV1M1 = M('PV1M1'),
        PV1M2 = M('PV1M2'),
        PV1M3 = M('PV1M3'),
        PV1TE1 = TE('PV1TE1'),
        PV1TE2 = TE('PV1TE2'),
        PV1TE3 = TE('PV1TE3'),
        PV1TE4 = TE('PV1TE4'),
        PV1TE5 = TE('PV1TE5'),
        PVVR1SB1 = SB('PVVR1SB1'),
        PV1PC1 = C('PV1PC1'),
        PV1PC2 = C('PV1PC2'),
        PV1PC3 = C('PV1PC3'),
        PV1PDS2 = PDS('PV1PDS2'),
        PV1PDS3 = PDS('PV1PDS3'),
        PV1PDS4 = PDS('PV1PDS4'),
        PV1TS1 = TS('PV1TS1'),
    },

    user_object_user1 = OBJECT1,
    }
add_functionality(prg.user_object_user1, basic_user_object)
return prg
