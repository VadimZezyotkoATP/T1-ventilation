--version  = 1
--Eplanner version = 2022.7.8245.20062
------------------------------------------------------------------------------
PAC_name = 'T1-Вентиляция'
PAC_id = '26448'
------------------------------------------------------------------------------
--Узлы IO
nodes =
    {
        {
        name    = 'A1',
        ntype   = 201, --AXC F 2152
        n       = 1,
        IP      = '10.0.16.220',
        modules =
            {
            }
        },
        {
        name    = 'A100',
        ntype   = 200, --AXL F BK ETH
        n       = 2,
        IP      = '10.0.16.221',
        modules =
            {
             { 2702072 },        --AXL F AI2 AO2 1H,
             { 2688556 },        --AXL F RTD4 1H,
             { 2688048 },        --AXL F DO16/3 2F,
             { 2688022 },        --AXL F DI16/4 2F,
            }
        },
    }
------------------------------------------------------------------------------
--Устройства
devices =
    {
        {
        name    = 'PV1V1',
        descr   = '',
        dtype   = 0,
        subtype = 1, -- V_DO1
        article = 'FES.8005066',
        DO =
            {
                {
                node          = 1,
                offset        = 100,
                physical_port = 4,
                logical_port  = 5,
                module_offset = 0
                },
            },
        },

        {
        name    = 'PV1V4',
        descr   = '',
        dtype   = 0,
        subtype = 1, -- V_DO1
        article = 'FES.8005066',
        DO =
            {
                {
                node          = 1,
                offset        = 101,
                physical_port = 5,
                logical_port  = 6,
                module_offset = 0
                },
            },
        },

        {
        name    = 'PV1VC2',
        descr   = '',
        dtype   = 1,
        subtype = 1, -- VC
        article = '',
        AO =
            {
                {
                node          = 1,
                offset        = 0,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 0
                },
            },
        },

        {
        name    = 'PV1VC3',
        descr   = '',
        dtype   = 1,
        subtype = 1, -- VC
        article = '',
        AO =
            {
                {
                node          = 1,
                offset        = 1,
                physical_port = 3,
                logical_port  = 4,
                module_offset = 0
                },
            },
        },

        {
        name    = 'PV1M1',
        descr   = 'Вытяжка',
        dtype   = 2,
        subtype = 1, -- M
        article = '',
        DO =
            {
                {
                -- Пуск
                node          = 1,
                offset        = 97,
                physical_port = 1,
                logical_port  = 2,
                module_offset = 0
                },
            },
        DI =
            {
                {
                -- Обратная связь
                node          = 1,
                offset        = 116,
                physical_port = 4,
                logical_port  = 5,
                module_offset = 112
                },
            },
        par = {2000 --[[P_ON_TIME]] }
        },

        {
        name    = 'PV1M2',
        descr   = 'Приточка',
        dtype   = 2,
        subtype = 1, -- M
        article = '',
        DO =
            {
                {
                -- Пуск
                node          = 1,
                offset        = 98,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 0
                },
            },
        DI =
            {
                {
                -- Обратная связь
                node          = 1,
                offset        = 117,
                physical_port = 5,
                logical_port  = 6,
                module_offset = 112
                },
            },
        par = {2000 --[[P_ON_TIME]] }
        },

        {
        name    = 'PV1M3',
        descr   = '',
        dtype   = 2,
        subtype = 1, -- M
        article = '',
        DO =
            {
                {
                -- Пуск
                node          = 1,
                offset        = 96,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 0
                },
            },
        DI =
            {
                {
                -- Обратная связь
                node          = 1,
                offset        = 118,
                physical_port = 6,
                logical_port  = 7,
                module_offset = 112
                },
            },
        par = {2000 --[[P_ON_TIME]] }
        },

        {
        name    = 'PV1TE1',
        descr   = '',
        dtype   = 4,
        subtype = 4, -- TE_ANALOG
        article = 'Sauter ETG346F102',
        AI =
            {
                {
                node          = 1,
                offset        = 2,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 2
                },
            },
        par = {0 --[[P_C0]], 200 --[[P_ERR]], -50 --[[P_MIN_V]], 160 --[[P_MAX_V]] }
        },

        {
        name    = 'PV1TE2',
        descr   = '',
        dtype   = 4,
        subtype = 4, -- TE_ANALOG
        article = 'Sauter ETG346F102',
        AI =
            {
                {
                node          = 1,
                offset        = 3,
                physical_port = 1,
                logical_port  = 2,
                module_offset = 2
                },
            },
        par = {0 --[[P_C0]], 200 --[[P_ERR]], -50 --[[P_MIN_V]], 160 --[[P_MAX_V]] }
        },

        {
        name    = 'PV1TE3',
        descr   = '',
        dtype   = 4,
        subtype = 4, -- TE_ANALOG
        article = 'Sauter ETG346F102',
        AI =
            {
                {
                node          = 1,
                offset        = 4,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 2
                },
            },
        par = {0 --[[P_C0]], 200 --[[P_ERR]], -50 --[[P_MIN_V]], 160 --[[P_MAX_V]] }
        },

        {
        name    = 'PV1TE4',
        descr   = '',
        dtype   = 4,
        subtype = 4, -- TE_ANALOG
        article = 'Sauter ETG346F102',
        AI =
            {
                {
                node          = 1,
                offset        = 5,
                physical_port = 3,
                logical_port  = 4,
                module_offset = 2
                },
            },
        par = {0 --[[P_C0]], 200 --[[P_ERR]], -50 --[[P_MIN_V]], 160 --[[P_MAX_V]] }
        },

        {
        name    = 'PV1SB1',
        descr   = 'Аварийная кнопка. 0=OK',
        dtype   = 12,
        subtype = 1, -- SB
        article = 'XB4BS8445',
        DI =
            {
                {
                node          = 1,
                offset        = 119,
                physical_port = 7,
                logical_port  = 8,
                module_offset = 112
                },
            },
        },

        {
        name    = 'PV1PC1',
        descr   = '',
        dtype   = 20,
        subtype = -1, -- C
        article = '',
        prop = --Дополнительные свойства
            {
            IN_VALUE = 'PV1TE2',
            OUT_VALUE = 'PV1VC2',
            },
        par =
            {
            P_k = 1,
            P_Ti = 8,
            P_Td = 0.2,
            P_dt = 500,
            P_max = 10,
            P_min = 0,
            P_acceleration_time = 30,
            P_is_manual_mode = 0,
            P_U_manual = 65,
            P_k2 = 0,
            P_Ti2 = 0,
            P_Td2 = 0,
            P_out_max = 100,
            P_out_min = 0,
            P_is_reverse = 0,
            P_is_zero_start = 0
            }
        },

        {
        name    = 'PV1PC2',
        descr   = '',
        dtype   = 20,
        subtype = -1, -- C
        article = '',
        prop = --Дополнительные свойства
            {
            IN_VALUE = 'PV1TE3',
            OUT_VALUE = 'PV1VC3',
            },
        par =
            {
            P_k = 1,
            P_Ti = 8,
            P_Td = 0.2,
            P_dt = 500,
            P_max = 10,
            P_min = 0,
            P_acceleration_time = 30,
            P_is_manual_mode = 0,
            P_U_manual = 65,
            P_k2 = 0,
            P_Ti2 = 0,
            P_Td2 = 0,
            P_out_max = 100,
            P_out_min = 0,
            P_is_reverse = 0,
            P_is_zero_start = 0
            }
        },

        {
        name    = 'PV1PDS1',
        descr   = '',
        dtype   = 23,
        subtype = 1, -- PDS
        article = 'FES.8005066',
        DI =
            {
                {
                node          = 1,
                offset        = 113,
                physical_port = 1,
                logical_port  = 2,
                module_offset = 112
                },
            },
        par = {1 --[[P_DT]] }
        },

        {
        name    = 'PV1PDS2',
        descr   = '',
        dtype   = 23,
        subtype = 1, -- PDS
        article = 'FES.8005066',
        DI =
            {
                {
                node          = 1,
                offset        = 114,
                physical_port = 2,
                logical_port  = 3,
                module_offset = 112
                },
            },
        par = {1 --[[P_DT]] }
        },

        {
        name    = 'PV1PDS3',
        descr   = '',
        dtype   = 23,
        subtype = 1, -- PDS
        article = 'FES.8005066',
        DI =
            {
                {
                node          = 1,
                offset        = 115,
                physical_port = 3,
                logical_port  = 4,
                module_offset = 112
                },
            },
        par = {1 --[[P_DT]] }
        },

        {
        name    = 'PV1TS1',
        descr   = '',
        dtype   = 24,
        subtype = 1, -- TS
        article = 'PXC.2966472',
        DI =
            {
                {
                node          = 1,
                offset        = 112,
                physical_port = 0,
                logical_port  = 1,
                module_offset = 112
                },
            },
        par = {1 --[[P_DT]] }
        },

    }
