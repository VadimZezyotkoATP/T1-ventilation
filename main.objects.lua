--version  = 1
--Eplanner version = 2022.7.8245.20062
--PAC_name = 'T1-Вентиляция'
------------------------------------------------------------------------------
------------------------------------------------------------------------------
init_tech_objects_modes = function()
    return
    {
    [ 1 ] =
        {
        n          = 1,
        tech_type  = 2,
        name       = 'Узел вентиляции и кондиционирования',
        name_eplan = 'USER',
        name_BC    = 'UserObj',
        cooper_param_number = -1,
        base_tech_object = 'user_object',
        attached_objects = '',
        par_float =
            {
            [ 1 ] =
                {
                name = 'Время активной операции',
                value = 0,
                meter = 'мсек',
                oper = { -1 },
                nameLua = 'OPERATION_TIME'
                },
            [ 2 ] =
                {
                name = 'Время активного шага',
                value = 0,
                meter = 'мсек',
                oper = { -1 },
                nameLua = 'STEP_TIME'
                },
            [ 3 ] =
                {
                name = 'Температура нагрева воздуха',
                value = 10,
                meter = 'град.С',
                oper = { 1 },
                nameLua = 'HEAT_TEMPERATURE'
                },
            [ 4 ] =
                {
                name = 'Дельта температуры нагрева',
                value = 1,
                meter = 'град.С',
                oper = { 1 },
                nameLua = 'TE_HEAT_DELTA'
                },
            [ 5 ] =
                {
                name = 'Время стабилизации температуры',
                value = 300,
                meter = 'град.С',
                oper = { 1 },
                nameLua = 'TE_STABILIZATION_TE'
                },
            [ 6 ] =
                {
                name = 'Температура охлаждения воздуха',
                value = 10,
                meter = 'град.С',
                oper = { 1 },
                nameLua = 'COLD_TEMPERATURE'
                },
            [ 7 ] =
                {
                name = 'Дельта температуры охлаждения',
                value = 1,
                meter = 'град.С',
                oper = { 1 },
                nameLua = 'TE_COLD_DELTA'
                },
            },

        modes =
            {
            [ 1 ] =
                {
                name = 'Работа',
                base_operation = '',
                states =
                    {
                    [ 1 ] =
                        {
                        --'Выполнение'
                        steps =
                            {
                            [ 1 ] =
                                {
                                name = 'Работа',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                opened_devices = --Включать
                                    {
                                    'PV1M1', 'PV1M2', 'PV1V1', 'PV1V4'
                                    },
                                },
                            [ 2 ] =
                                {
                                name = 'Ожидание',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                },
                            },
                        },
                    },
                },
            [ 2 ] =
                {
                name = 'Нагрев',
                base_operation = '',
                states =
                    {
                    [ 1 ] =
                        {
                        --'Выполнение'
                        steps =
                            {
                            [ 1 ] =
                                {
                                name = 'Работа',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                wash_data = --Устройства. Совместимость со старой версией
                                 --Группа
                                    {
                                    devices = --Устройства
                                        {
                                        'PV1VC2'
                                        },
                                    },
                                devices_data = --Устройства
                                    {
                                     --Группа
                                        {
                                        devices = --Устройства
                                            {
                                            'PV1VC2'
                                            },
                                        },
                                    },
                                },
                            [ 2 ] =
                                {
                                name = 'Простой',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                },
                            },
                        },
                    },
                },
            [ 3 ] =
                {
                name = 'Охлаждение',
                base_operation = '',
                states =
                    {
                    [ 1 ] =
                        {
                        --'Выполнение'
                        steps =
                            {
                            [ 1 ] =
                                {
                                name = 'Работа',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                wash_data = --Устройства. Совместимость со старой версией
                                 --Группа
                                    {
                                    devices = --Устройства
                                        {
                                        'PV1VC3'
                                        },
                                    },
                                devices_data = --Устройства
                                    {
                                     --Группа
                                        {
                                        devices = --Устройства
                                            {
                                            'PV1VC3'
                                            },
                                        },
                                    },
                                },
                            [ 2 ] =
                                {
                                name = 'Простой',
                                time_param_n = -1,
                                next_step_n = -1,
                                baseStep = '',
                                },
                            },
                        },
                    },
                },
            },
        },
    }
end