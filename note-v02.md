
[Monolithic vs. Multiple Process](https://xwiki.canoga.com/bin/view/Project%20Everest/Monolithic%20with%20Threads%20Versus%20Multiple%20Process%20With%20Thread)

[Randy's Notes](https://docs.google.com/document/d/1oE85wcPYS5bfBwZ41uVxtzWu3-o2fMJyYU6hKLKACcg/edit)

### Fan Trays, removing
```

system_chassis_fan_cb
system_chassis_fan_level_status_cb



PHL_MAX_FANS_PER_TRAY
fan_tray_id_map, FAN_TRAY_ID_MAP_COUNT
fan_tray_state_map, FAN_TRAY_STATE_MAP_COUNT,
fan_tray_id_map, FAN_TRAY_ID_MAP_COUNT


subscribe



~~fill_cli_debug_fan_unit_information~~
	~~hal_phl_fan_speed_get~~

~~fan_tray_state_to_installed_process~~
~~fan_tray_state_installed_process~~

phl_system_monitor_fan_tray
	fan_tray_state_to_installed_process
	hal_phl_number_of_fans_get
	~~hal_phl_fan_tray_is_present~~
	~~phl_fan_tray_init~~
		~~hal_phl_fan_speed_init~~
phl_fans_init
phl_system_invoke_fan_tray_callbacks
phl_system_is_fan_bad	
	
phl_system.fan_trays.fan_notification_callback_list


#define CANOGA_TSX_CHASSIS_FAN_TRAYS CANOGA_TSX_CHASSIS_FANS_PATH "/fan-trays"
#define CANOGA_TSX_CHASSIS_FAN_PER_TRAYS CANOGA_TSX_CHASSIS_FANS_PATH "/fans-per-trays"
#define CANOGA_TSX_CHASSIS_FAN_TRAY_STATUS_PATH CANOGA_TSX_CHASSIS_FANS_PATH "/fan-tray-status"
#define CANOGA_TSX_CHASSIS_FAN_TRAY_STATUS_KEY "/canoga-tsx-chassis:fans/fan-tray-status[fan-tray-label='%s']"
#define CANOGA_TSX_CHASSIS_FAN_TRAY_LABEL CANOGA_TSX_CHASSIS_FAN_TRAY_STATUS_KEY "/fan-tray-label"
#define CANOGA_TSX_CHASSIS_FAN_TRAY_STATUS CANOGA_TSX_CHASSIS_FAN_TRAY_STATUS_KEY "/fan-tray-status"
#define CANOGA_TSX_CHASSIS_FAN_TRAY_ATTACHMENT_MODE CANOGA_TSX_CHASSIS_FAN_TRAY_STATUS_KEY "/fan-tray-attachement-mode"

	

```

:: -----------------------------------------------------------------------

```
{~~DEBUG__DEBUG_COMMAND__MESSAGE_FAN_TRAY_GET_COMMAND~~,
	~~dbg_cli_phl_fan_tray_get_process~~},

{~~DEBUG__DEBUG_COMMAND__MESSAGE_FAN_TRAY_SET_COMMAND~~,
	~~dbg_cli_phl_fan_tray_set_process~~},

~~fantray_command_get_cb~~
~~fans_per_tray~~


Here bitch:

~~fantray_command_get_cb~~
	~~DEBUG__DEBUG_COMMAND__MESSAGE_FAN_TRAY_GET_COMMAND~~
		~~dbg_cli_phl_fan_tray_get_process~~
			~~fill_cli_debug_fantray_unit_information~~
				hal_phl_fan_tray_is_present
				phl_fan_tray_identity_get
				

	DEBUG__DEBUG_COMMAND__MESSAGE_FAN_TRAY_SET_COMMAND
	FANTRAYSETCOMMAND ~~fan_tray_set_command~~
		~~dbg_cli_phl_fan_tray_set_process~~
			~~hal_phl_fan_tray_presence_set~~

fan_tray_state_to_installed_process
hal_phl_fan_tray_validate
phl_system_monitor_fan_tray

				
			
	DEBUG__DEBUG_RESPONSE__MESSAGE_FAN_TRAY_COMMAND_GET_SET_RESPONSE
	
	
	

DEBUG__DEBUG_RESPONSE__MESSAGE_FAN_TRAY_COMMAND_GET_SET_RESPONSE
~~fill_cli_debug_fantray_unit_information~~

phl_system_monitor_fan_tray
	hal_phl_fan_tray_is_present

#### These are fans, not trays. Fix these.
dbg_cli_phl_fan_unit_get_process
dbg_cli_phl_fan_unit_get_process



dbg_cli_phl_fan_tray_set_process
	fill_cli_debug_fantray_unit_information
		hal_phl_fan_tray_presence_set
		
	
DEBUG__DEBUG_COMMAND__MESSAGE_FAN_TRAY_GET_COMMAND
	~~fan_tray_get_command~~
	FANTRAYGETCOMMAND
		~~dbg_cli_phl_fan_tray_get_process~~

~~process_fantray_command_get_set_response~~



DEBUG__DEBUG_COMMAND__MESSAGE_FAN_TRAY_SET_COMMAND
DEBUG__DEBUG_RESPONSE__MESSAGE_FAN_TRAY_COMMAND_GET_SET_RESPONSE
FANTRAYGETCOMMAND fan_tray_get_command ~~fan_tray_set_command~~
~~fantray_command_get_cb~~

~~process_fantray_command_get_set_response~~
~~fan_tray_command_get_set_response~~
	~~dbg_cli_phl_fan_tray_set_process~~
	~~dbg_cli_phl_fan_tray_get_process~~
		~~fill_cli_debug_fantray_unit_information~~


		
```


:TBD: reg_io_4					
4		led_oob_spd_y_18 out
5		led_oob_spd_g_18 out
6		led_oob_act_y_18 out
7		led_oob_act_g_18 out

:e0 : reg_led_ctrl				
0:00		cfg_led_spd_g_off_oob
1:01		cfg_led_spd_r_off_oob
2:02		cfg_led_spd_g_on_oob
3:03		cfg_led_spd_r_on_oob
4:04		cfg_led_act_g_off_oob
5:05		cfg_led_act_r_off_oob
6:06		cfg_led_act_g_on_oob
7:07		cfg_led_act_r_on_oob

### Fan Message
fan_unit_attr_info_ptr
fan_unit_attr_info_ptr [x]  0 - n_info  MAX:loop_max

### Fan help.
ret_msgs
ret_msgs[x]  0 - return_messages


fan_commands_helptexts
fan_commands_helptexts[x]  0 - msg_idx

fan_commands_helptexts[x]command
fan_commands_helptexts[x]helptexts




find . -name '*.md'   -print   -exec cat {} \; | grep netopeer2-cli ; echo this


this

[Junki](note-v01.md#Start)



```
	SYSTEM_1ST_HALF,
	SYSTEM_2ND_HALF,
	USER_1ST_HALF,	
	USER_2ND_HALF,	
	LM80_1_SENSOR,	
	LM80_2_SENSOR,
	DS75_SENSOR,			
	RTC_DEVICE,				/* DS1337S on 10G R2, M41T65 on 10G R1, not used but still present*/
	CLOCK_CDCE706_DEVICE,	/* CDCE706 */
	FPGA_SENSOR,			/* TMP411 Temperature sensor 10G R2 only */
	FAN_CONTROLLER,			/* MAX31760 Fan Controller 10G R2 Only */
	MAX_I2C_DEVICE_TEST,
```

```

	/*
	*FAN_CONFIG_1_2  Enable Bit 6 1:RPM/0:PWM
	*FAN_COMMAND_1 Absolute speed, RPM or PWM  0x8000
	*STATUS_FANS_1_2 Fault, Warn, Color...
	READ_FAN_SPEED_1
	*MFR_FAN_CONFIG  Freq, Dual, Hys, Ramp, Tacho, Health
	MFR_FAN_LUT
	MFR_READ_FAN_PWM  Read fan PWM
	*/

```

