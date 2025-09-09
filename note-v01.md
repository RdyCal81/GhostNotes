# Start

'''
PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]> '
PROMPT_COMMAND='echo -en "\033]0;Telnet.11\a"'


PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]> '
PROMPT_COMMAND='echo -en "\033]0;Cmd\a"'

PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]> '
PROMPT_COMMAND='echo -en "\033]0;Eclipse\a"'

PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]> '
PROMPT_COMMAND='echo -en "\033]0;Test\a"'


PS1='\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[00m\]> '
PROMPT_COMMAND='echo -en "\033]0;Telnet.10G\a"'

'''

[Monolithic vs. Multiple Process](https://xwiki.canoga.com/bin/view/Project%20Everest/Monolithic%20with%20Threads%20Versus%20Multiple%20Process%20With%20Thread)

[Randy's Notes](https://docs.google.com/document/d/1oE85wcPYS5bfBwZ41uVxtzWu3-o2fMJyYU6hKLKACcg/edit)  A Google document.

[Picocom](/home/randy/sandbox/notes/picocom/picocom.md#Start)  .md


#### cat all files......
```
clear; for v in *; do echo $v $(cat $v); done;

find . -iname '*.md' -exec grep -i 'sfp' {} \; -print

```

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

# Note-01
```
This should be enough to get started.  I have asked SIT for Product/Components and I will add them as needed.
```

```
The following two links are referenced within the definitions.
```
[DevOpts ticket 347](https://gitlab.canoga.com/devops/tickets/-/issues/347)

[Bugzilla ISO instruction](http://gatekeeper.canoga.com/iso/1700094.pdf)

## Classification definitions
* SIT-Everest
	- SIT will have to define this as they create their test cases
* ENG-Everest
	- See DevOps Ticket 347 for detailed Product/Component definitions
* SIT-Kilimanjaro
	- SIT will have to define this as they create their test cases
* ENG-Kilimanjaro
	- See DevOps Ticket 347 for detailed Product/Component definitions
* Unclassified
	- This undefined for now, and should be temporary.  May be Undefined/Undefined Product/Component
* 

```
Status as defined in 8.1 Status and 9.0 BUG WORKFLOW STATE DIAGRAM.
  Do not include FPGA_RESOLVED as a Status.

Resolution as defined in 8.2 Resolution
Severity as defined in 8.3 Severity
Priority as defined in 8.4 Priority

Resolution, Severity and Priority have default values defined it the ISO doc.
```



```
SRC/INC/Ports.h
SRC/INC/osMonDebug.h
SRC/MONITOR/MONITOR.C
SRC/MONITOR/OpticGlue.c
SRC/MONITOR/sfp.c
SRC/OS/APP_MAIN.C
SRC/PortInterface/PlugInModule_PortInterface.c
SRC/PortInterface/PortInterface.h
SRC/PortInterface/PortInterface_Ports.c
SRC/SNMP/mib_9145.c
SRC/SYSTEM/osMon_dbg.c
SRC/UI/s_osmon.c
SRC/UI/s_osmon_More2.c
```
char * SFPTranslateConnector(PortDefs port)
char * SFPTranslateWavelength ( PortDefs port )
char * SFPTranslateLinkLength(PortDefs port)


```
Enter Command:
 0xbbf3578   DEADBEEF 0000000D 0000000D 00000000   ................
 0xbbf3588   20343A4F 4B202031 3A31323A 20340000    4:OK  1:12: 4..
 0xbbf3598   20343A52 53492D4F 4B202031 3A313200    4:RSI-OK  1:12.
 0xbbf35a8   20343A56 656E5375 702D4661 6C736500    4:VenSup-False.
 0xbbf35b8   20343A73 70662D43 6F703435 00000000    4:spf-Cop45....
 0xbbf35c8   20343A49 73436F70 70657200 00000000    4:IsCopper.....
 0xbbf35d8   20343A49 73537570 723A3139 3A310000    4:IsSupr:19:1..
 0xbbf35e8   20343A53 46500000 00000000 00000000    4:SFP..........
 0xbbf35f8   20343A53 46504F4B 00000000 00000000    4:SFPOK........
 0xbbf3608   53465030 2D303037 36000000 00000000   SFP0-0076.......
 0xbbf3618   20343A43 6F6D7000 00000000 00000000    4:Comp.........
 0xbbf3628   20343A50 49442020 323A3132 00000000    4:PID  2:12....
 0xbbf3638   20343A43 50202032 3A313200 00000000    4:CP  2:12.....
 0xbbf3648   20343A53 74617475 65547275 65000000    4:StatueTrue...
 0xbbf3658   00000000 00000000 00000000 00000000   ................
```


Bugzilla Bug: Vendor specific Copper SFP info lingers after inserting CP copper SFP

Bugzilla bug: [Bug 36317](https://bugzilla.canoga.com/show_bug.cgi?id=36317)  - (SIT)JMEP-01CU00A10 Probe SFP info lingers after inserting CP Copper SFP

Git target branch:  9145E_EMP_0462


Fixed:

[Issue: 9145E - 1G - 3rd Party SFP Enablement](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/issues/8])

[MR 9145E: - 1G - 3rd Party SFP Compile bug.](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/24)

Additional Merge Requests against same Issue:

[MR: 9145E - 1G - 3rd Party SFP Enablement](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/10)

[MR: 9145E - 1G - 0519 - 3rd Party SFP Enablement](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/16)

### 1E build notes
[Issue 8](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/issues/8)

[Req 10](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/10)  9145E_1G_0519   bug/9145e-1g-3rd-party-sfp-enablement

[MR 16](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/16) 9145E_1G_0519 bug/8-9145e-1g-0519-3rd-party-sfp-enablement

[MR 24](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/24) 9145E_1G_0519 bug/8-9145e-1g-3rd-party-sfp-fix-compile-error

git difftool d950c096e 9145E_1G_0519
git difftool 16adc850d 9145E_1G_0519
git difftool 8cc23adbe 9145E_1G_0519




Bugzilla Bug: Vendor specific Copper SFP info lingers after inserting CP copper SFP

Bugzilla bug: [Bug 36317](https://bugzilla.canoga.com/show_bug.cgi?id=36317) - (SIT)JMEP-01CU00A10 Probe SFP info lingers after inserting CP Copper SFP




9145E-MP, Bugzilla Bug: Vendor specific Copper SFP info lingers after inserting CP copper SFP

Bugzilla bug:

Bug 36317 - (SIT)JMEP-01CU00A10 Probe SFP info lingers after inserting CP Copper SFP

Git target branch: 9145E_EMP_0462



### osmon notes
```
/*
 * typedef enum {
    FPGA_9145E_XILINX_LX60 = 0,     /* Original 9145E FPGA */
    FPGA_9145E_ALTERA_C7,           /* Reduced cost 9145E uses Altera C7 FPGA */
    FPGA_9145E_XILINX_AU15P,        /* New Xilinx R3 AU15P FPGA */
    FPGA_9145E_XILINX_LX220,        /* Original 9145E 10G FPGA */
    FPGA_9145E_XILINX_XCAU25P,      /* New Atrix Ultrascale+ 25P */
    FPGA_NOT_DETERMINED
} FPGA9145E_t;
 *
 enum  CP_FPGA_TYPE {
     CP_FPGA_INVALID_1,
     LX_ALL = '0',
     LX60,
     LX25,
     LX60_H,
     LX25_H,
     LX220_XFP,
     LX220_SFPPLUS,
     GX95,
     GX95_H,
     GX95SB,
     GX95SB_H = 'A',
     GX95LB,
     GX95LB_H,
     LX220_SFPPLUS_H = 'F',
     LX_LAST,
     CP_FPGA_INVALID_2 = 100
     };

 */
 
```

## Build Emails
### 9145E-A40(EB0008)-04-62
The 9145E EMP revision 04.62(EB0008) is available on Jenkins BuildServer.

The file name is 9145E-A40(EB0008)-04-62.Zip
EB Build: [9145E-A40(EB0008)-04-62.Zip](http://buildserver.everest.canoga.com:7080/job/9145E-6.9/194/)

FPGA file: MPN_V2105_rls.Hex

GitLab Product:[9145E EMP](https://gitlab.canoga.com/legacy2/9145e-mp)

One issue:
 ([Bugzilla Bug: Vendor specific Copper SFP info lingers after inserting CP copper SFP](https://gitlab.canoga.com/legacy2/9145e-mp/-/issues/5) [9145E_COM_DKM:18](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/issues/18) [9145E_COM_DKM:MR:28](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/28)



[9145E-MP](https://gitlab.canoga.com/legacy2/9145e-mp)

Issue: [Bugzilla Bug: Vendor specific Copper SFP info lingers after inserting CP copper SFP](https://gitlab.canoga.com/legacy2/9145e-mp/-/issues/5)

[9145E_COM_DKM:18](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/issues/18) and [9145E_COM_DKM:MR:28](https://gitlab.canoga.com/legacy2/afore/9145e_com_dkm/-/merge_requests/28)

BugZilla Bug:
[Bug 36317 - (SIT)JMEP-01CU00A10 Probe SFP info lingers after inserting CP Copper SFP](https://bugzilla.canoga.com/show_bug.cgi?id=36317)




    PassTests[0] = osmonfn("9145E-B00(GA)-02-30.BIN", FPGA_9145E_XILINX_LX220, LX220_XFP, INTEL_FLASH);



:: Get the list of mibObjs
mibDump(0x4000);

:: MIB_KEYS is 14
:: WolfSSH_Keys is 304
cfgReadGrpDump(14, 0);

return 1 if SUCCESS, else -1
int 

get_obj_instant_action

(MIB_OBJ_T* pOBJ, 
  u_short id, 
  ushort num_index, 
  u_short num_instant,
  char* dat_buf, 
  u_short val_len
  
  )
  
  
  id, num_index, num_instant, dat_buf, val_len
  
  
  
return(set_obj_instant_action_and_save(Mib_Obj_VNIDSupport[x], DOSET_YES, NO_ROW, NO_COL, dBuf, SAVE_YES));


set_obj_instant_action_and_save(0xA9BC50, 1, 0, 0, 0x6f05c48, 1);



```
New Key Len:459.
New Key Blob
 0xb641020   00000000 00000001 00000003 00000081   ................
 0xb641030   00FB3B11 B594FFB6 6E586990 2276A707   ..;.....nXi."v..
WolfSSh Key Len:458.
WolfSSH key Blob
 0xb641020   00000000 00000001 00000003 00000081   ................
 0xb641030   00917CD5 24A4E8C5 2403698B F16EA4E5   ..|.$...$.i..n..
Absolute values...
New Key Len:459.
New Key blo
 0x25d2b4c   00000000 00000001 00000003 00000081   ................
 0x25d2b5c   00FB3B11 B594FFB6 6E586990 2276A707   ..;.....nXi."v..
WolfSSH Key Len:458.
WolfSSH Key blo
 0x24551b4   00000000 00000001 00000003 00000081   ................
 0x24551c4   00917CD5 24A4E8C5 2403698B F16EA4E5   ..|.$...$.i..n..
                                                               
value = 0 = 0x0

378 0 .   567   767    45809  376268      0 Keys                         ...


```
####  Find Mid object
cfgReadGrpDump(14, 0);		## 14 is Keys
mDump(addr, 3);
567 is Mib GRP Keys. 4th item is address of mibObjKeys..






set_obj_instant_action_and_save(0xA9BC50, 1, 0, 0, 0x6f05c48, 1);

set_obj_instant_action_and_save(0xA9C194, 1, 0, 0, 0x413aad8, 1);




Get new length.
#define MIB_KEYS_NEW_KEY_LEN			5
#define MIB_KEYS_NEW_KEY_BLOB			6
#define MIB_FILE_ID_KEYS				0x567


get_obj_instant_action(0x00A9BDA8, 5, 0, 0, 0x413b678, 4);

set_obj_instant_action_and_save(0xA9BDA8, 1, 0, 0, 0x413aad8, 1);



```
debugMibKeys(1);

args[0] = 1 0x1
Looking up debugMibKeys in a table of 33631..

Enter Command:
New Key Len:461.
New Key Blob
 0xb5a5168   00000000 00000001 00000003 00000081   ................
 0xb5a5178   00E3EB5A AD3D2283 15124561 FC4C2573   ...Z.="...Ea.L%s
Absolute values...
New Key Len:461.
New Key blo
 0x25d264c   00000000 00000001 00000003 00000081   ................
 0x25d265c   00E3EB5A AD3D2283 15124561 FC4C2573   ...Z.="...Ea.L%s

value = 0 = 0x0

Val = 1
```


```
randy:~/vxdest/9145E_COM_DKM> git diff --name-only 9145E_1G_0550
SRC/INC/MIBDEF.H
SRC/OS/APP_MAIN.C
SRC/SNMP/MIB_GRP.C
SRC/SNMP/MIB_KEYS.C
SRC/SSH/SSH.C
SRC/UI/s_osmon.c
SRC/UI/s_osmon_Log.c
randy:~/vxdest/9145E_COM_DKM> 
```


```
/**
 *  sr_plugin_init_cb - the very first function called by sysrepo-plugind
 * 
 *  @note 
 *  This function name has to be the same as       
 *  SRP_INIT_CB which is a macro string (defined in sysrepo.h) 
 *  that sysrepo-plugin will try to dl-open 
 *  It cannot change, or else the module will never start
 * 
 *  @param[in]  session         sysrepo session
 *  @param[in]  private_data    optional data for cb communication    
 *  @return     int             Error code (::SR_ERR_OK on success)
 */
 
 
 
 
 
 
 
 /**
 *  Network Management Plugin used to modify network interfaces of tsx
 * 
 *  @file cfd_plugins/network_mgmt/src/net-mgr.c
 * 
 *  This shared object is intended to be used with Sysrepo's plugin daemon
 *
 *  @copyright Copyright(c) 2020 Canoga Perkins Corp., as an unpublished work
 *  All rights reserved
 *
 *  Created on: May 13, 2020 
 *      @author Sean <sletzer@canoga.com>
 */

/* include files      */
#include <sysrepo.h>
#include <errno.h>
#include <string.h>

#include "pal-netconf-api.h"
#include "pal-netconf-types.h"
#include "osglue/osglue.h"
#include "osglue/osglue-log-api.h"
#include "cfd/config-database-network-xpath.h"
#include "net-mgr-impl.h"

/* Internal Data declarations */

/**
 *  convenience struct to cast into void* for SR CBs
 */
typedef struct pal_handles_s {
    pal_ncf_connection_t *pal_conn;
    pal_ncf_session_t *pal_sesh;
    pal_ncf_change_subscription_ctx_t* sub_handle;
    management_container_t sub_context;
} pal_handles_t;

/*
 * Prototypes
 */
int sr_plugin_init_cb(sr_session_ctx_t *session, void **private_data);
void sr_plugin_cleanup_cb(sr_session_ctx_t *session, void *private_data);

/**
 *  sr_plugin_init_cb - the very first function called by sysrepo-plugind
 * 
 *  @note 
 *  This function name has to be the same as       
 *  SRP_INIT_CB which is a macro string (defined in sysrepo.h) 
 *  that sysrepo-plugin will try to dl-open 
 *  It cannot change, or else the module will never start
 * 
 *  @param[in]  session         sysrepo session
 *  @param[in]  private_data    optional data for cb communication    
 *  @return     int             Error code (::SR_ERR_OK on success)
 */
int sr_plugin_init_cb(sr_session_ctx_t *session, void **private_data)
{
    UNUSED(session);





/*
 * @author: Randy A. Callaway
 */
 
 
 /**
 *   Print out the initial welcome when the CLI is first started.
 *
 * @param  void
 *
 * @return void
 *
 * @author: Randy A. Callaway
 */

 ```
 


RE:  ZT0154


Dear SIMI VALLEY LITTLE LEAGUE,
 
Gallagher Verify is the company selected by Tri-Counties Regional Center to assist with the collection, processing and tracking of insurance certificates. We would like to take this opportunity to inform you that on this date we do not have your certificate of insurance on file.
 
We would greatly appreciate if you could forward your proof of insurance to us promptly at GSC.COIR.TCRC@ajg.com for processing.

Please do not hesitate to contact us with any questions, comments or concerns regarding the insurance requirements.
 
Sincerely,
 
Gallagher Verify on behalf of Tri-Counties Regional Center
833-862-8432



# EOF
46E0CD0
4815380

4815550
480F0C0  25.7K
4808C38  25736
48027C0  25720
47FC338  25736

47FC858
47F63E8

5.19

4A1FCD8
4A1FE50

4A1FF88
4A1FE50  312
4A1FD28  296
4A1FC00  296
4A1FAD8  296

46C21D8
47FCD18

483F350

483F380
4829770

239712

4080AE0

drwxrwxr-x  4 randy randy 4096 Feb  6 16:49   9145E_BUILD_TARGETS
drwxrwxr-x  6 randy randy 4096 Feb  6 16:52   9145E_CFM
drwxrwxr-x  4 randy randy 4096 Nov 26 13:56   9145E_COM_AGENT
drwxrwxr-x  9 randy randy 4096 Feb  6 17:03   9145E_COM_DKM
drwxrwxr-x 14 randy randy 4096 Nov 25 15:44 9145E_CP_DKM
drwxrwxr-x  4 randy randy 4096 Oct 27  2023 9145E_CP_MOCANA
drwxrwxr-x  4 randy randy 4096 Feb  6 17:10 9145E_DC_DKM
drwxrwxr-x  3 randy randy 4096 Feb  7 08:14 9145E_VX69_COM_IMAGE
drwxrwxr-x  3 randy randy 4096 Feb  6 17:11 9145E_VX69_GNU_COM_IMAGE
drwxrwxr-x  4 randy randy 4096 Jul 29  2024 BSP_VX69_9145E_COM
drwxrwxr-x  3 randy randy 4096 Feb  6 17:06 COMMON_MIBS
-rwxrwxr-x  1 randy randy  775 Feb  7 08:14 sh_emp.sh

# Slack message format.
  I am suggesting a Teams meeting on Tuesday, Feb. 25 at 8:00 AM PST.  This will go over my suggested use of GitLab Issues with the currently defined process.
  Please refer to the Bugzilla work instruction for reference.   [MyCanoga](https://canogaperkins.sharepoint.com/sites/mycanoga) Departments : Quality Systems : Quality System Procedures : Section Work Instructions : 1700094 ... Bugzilla .. Work Instruction.
  Most of it will not be used.  What will be used is::
* 6.12 Version
* 6.13 Target Milestone
* 6.14 Release Target
* 6.5 Status
	- 8.1 Status Definitions
* 6.6 Resolution
	- 8.3 Resolution Definitions
* 6.9 Priority
	- 8.4 Priority Definitions
* 7.3 Creating a Bug (Issue)

We will be following the following flow chart as shown on page 15, 9.0


i2cRead(0, 0x29, 3, 0, 10, 0xcb13e78);

i2cRead(0, 0x28, 3, 0, 10, 0xcb13e78);

i2cWrite(0, 0x29, 3, 0, 10, 0xcb13e78);


i2cRead(0, 0x32, 3, 0, 0x5B, 0xcaf77a0);


https://github.com/analogdevicesinc/linux/blob/main/drivers/hwmon/max31760.c

https://github.com/torvalds/linux/blob/master/include/linux/i2c.h

ZIP
9145E-A60(EB0005)-04-63--vxWorks
9145E-A60(GA)-04-63
15

ZIP
9145E-A10(EB0038)-05-50--vxWorks
9145E-A10(GA)-05-50
15




 Mgmt 10.16.143.131
 Test 10.16.143.141
 
On LEFT, previously used by Moti:
Being used for BIST testing.
Has 10G R2 board attached.  Has camera..





EEprom error, User backup checksum's don't match, 0x7c12 0x7c92

Application I2C 80 - FF checksum error 0x7C12 vs. 0x7C92


Canoga Perkins Ethernet Network Interface Device (V5.50)


Power On Reset Occurred.


->Checksum Test................ PASS
->RAM      Test................ PASS

Active file is in C:\BANK0
Verifying active bank in flash...
Decompressing file, please wait...
Verifying file integrity, please wait...

Host Name: bootHost
User: target
Attaching interface lo0... done
Attached IPv4 interface to mottsec unit 0
usrNetBootConfig: Invalid Argument

Adding 5878 symbols for standalone.
wdbConfig: error configuring WDB communication interface


                VxWorks

Copyright 1984-2006  Wind River Systems, Inc.

             CPU: MPC8347E PBGA
    Runtime Name: VxWorks
 Runtime Version: 6.4
     BSP version: 05.10/Trunk -B
         Created: Mar 12 2025, 16:40:28
ED&R Policy Mode: Deployed
   WDB Comm Type: WDB_COMM_END
             WDB: Agent configuration failed.





 Starting BIST code.. :-)

Init. CDCE706..................................... PASS
Bypassing FPGA programming.
   Good Luck..  :)

->Xilinx.AU25P Init .............................. DONE
 Voltage Supply .................................. PASS
 FPGA R/W Registers .............................. ---- FAIL
 MDIO R/W Bus .................................... ---- FAIL
 Flash ........................................... PASS
 I2C Devices ..................................... PASS
 DDR4 ............................................ ---- FAIL
 Data Test .......................................
 
 
 Hey Razvan,
   The following list of SW GitLab issues are being prioritized.  All of them require FPGA support.   Would you be able to take a look and give me some idea of what we should look at first?   I would need to coordinate the priority with the FPGA group.  The list below may have PCD Rx values from an earlier PCD rev.
* [R64] Limited Packet Capture Tool
* [R62] Bell Support for Token Sharing Tests in Service Activation
* Bug 36353 - (JW)-Bell Summit - PCP and CVID translations from USR to NET
* [R34b] LLQ queue on both USR and NET ports MUST be 8Mbytes
* [R52] Bell ver.   EVC Aware MUST be enabled by default on Release 5.50
* [R54] Support Enhanced bandwidth profiles
* [R63] SAT Enhancements, Policer tolerance
* [R65] CVID based filtering for EVC Aware mode
* [R72] Fix Bug 34522 (DE in outer tag).

Also on the software side. 
* [R4] Release 5.50(GA) firmware MUST run only on 9145E10G R2 NIDs.

My plan is if the NID is R1 and the software is 5.50 the NID will revert back to the opposite bank.  I can see no scenario where both banks have 5.50 (toggeling back and forth between banks).  And yes, log messages will be created.

Hope things are going good for you.  Thanks a lot..

[ToDo .xlsx](https://canogaperkins-my.sharepoint.com/:x:/r/personal/rcallaway_canogaperkins_net/Documents/ToDo-v01.xlsx?d=w214b2d1a329c4c65b5fbcc1bfc642d12&csf=1&web=1&e=tn8R9E)


[Hardware Only Verified](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=opened&not%5Blabel_name%5D%5B%5D=Component%3A%3AFPGA&label_name%5B%5D=Status%3A%3AVerified&first_page_size=100)


# Wed. call
Combined..  [Not FPGA Resolved](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=all&not%5Blabel_name%5D%5B%5D=Component%3A%3AFPGA&or%5Blabel_name%5D%5B%5D=Status%3A%3AVerified&or%5Blabel_name%5D%5B%5D=Status%3A%3AResolved&first_page_size=100)

[Hardware Only Resolved](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=opened&not%5Blabel_name%5D%5B%5D=Component%3A%3AFPGA&label_name%5B%5D=Status%3A%3AResolved&first_page_size=100)

```
To do
Resolved
```
[HW Resolved](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=opened&not%5Blabel_name%5D%5B%5D=Component%3A%3AFPGA&or%5Blabel_name%5D%5B%5D=Status%3A%3AVerified&or%5Blabel_name%5D%5B%5D=Status%3A%3AResolved&first_page_size=20)

[Hardware Open](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=all&not%5Blabel_name%5D%5B%5D=Component%3A%3AFPGA&not%5Blabel_name%5D%5B%5D=Status%3A%3AVerified&not%5Blabel_name%5D%5B%5D=Status%3A%3AResolved&not%5Blabel_name%5D%5B%5D=Status%3A%3AClosed&first_page_size=100)


[FPGA Resolved](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=all&label_name%5B%5D=Component%3A%3AFPGA&or%5Blabel_name%5D%5B%5D=Status%3A%3AResolved&or%5Blabel_name%5D%5B%5D=Status%3A%3AVerified&first_page_size=100)

[FPGA Open](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=all&label_name%5B%5D=Component%3A%3AFPGA&not%5Blabel_name%5D%5B%5D=Status%3A%3AClosed&not%5Blabel_name%5D%5B%5D=Status%3A%3AResolved&not%5Blabel_name%5D%5B%5D=Status%3A%3AVerified&first_page_size=100)


[BASE](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=updated_desc&state=opened&milestone_title=BASE&first_page_size=100)

[Not BASE](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=updated_desc&state=opened&not%5Bmilestone_title%5D=BASE&first_page_size=100)
```
Later
```


[Not Closed](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=closed&not%5Blabel_name%5D%5B%5D=Status%3A%3AClosed&first_page_size=100)

[Closed](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=closed&label_name%5B%5D=Status%3A%3AClosed&first_page_size=100)





[Resolved NO resolution](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=updated_desc&state=opened&or%5Blabel_name%5D%5B%5D=Status%3A%3AResolved&or%5Blabel_name%5D%5B%5D=Status%3A%3AVerified&not%5Blabel_name%5D%5B%5D=Resolution%3A%3AInvalid&not%5Blabel_name%5D%5B%5D=Resolution%3A%3ADuplicate&not%5Blabel_name%5D%5B%5D=Resolution%3A%3AFixed&not%5Blabel_name%5D%5B%5D=Resolution%3A%3ALater&not%5Blabel_name%5D%5B%5D=Resolution%3A%3ANeedsTesting&not%5Blabel_name%5D%5B%5D=Resolution%3A%3ARemind&not%5Blabel_name%5D%5B%5D=Resolution%3A%3AWontFix&not%5Blabel_name%5D%5B%5D=Resolution%3A%3AWorksForMe&first_page_size=100)

[Has NO Severity::](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=updated_desc&state=opened&not%5Blabel_name%5D%5B%5D=Severity%3A%3ATrivial&not%5Blabel_name%5D%5B%5D=Severity%3A%3AMinimal&not%5Blabel_name%5D%5B%5D=Severity%3A%3ANormal&not%5Blabel_name%5D%5B%5D=Severity%3A%3ABlocker&not%5Blabel_name%5D%5B%5D=Severity%3A%3ACritical&not%5Blabel_name%5D%5B%5D=Severity%3A%3AMajor&first_page_size=100)


[Has NO Priority::](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=updated_desc&state=opened&not%5Blabel_name%5D%5B%5D=Priority%3A%3A---&not%5Blabel_name%5D%5B%5D=Priority%3A%3ANone&not%5Blabel_name%5D%5B%5D=Priority%3A%3AP1&not%5Blabel_name%5D%5B%5D=Priority%3A%3AP2&not%5Blabel_name%5D%5B%5D=Priority%3A%3AP3&not%5Blabel_name%5D%5B%5D=Priority%3A%3AP4&not%5Blabel_name%5D%5B%5D=Priority%3A%3AP5&first_page_size=100)

[Priority::---](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/?sort=label_priority&state=all&label_name%5B%5D=Priority%3A%3A---&first_page_size=100)



SRC/UI/s_osmon_Log.c
90-r43-support-enhanced-bandwidth-profiles



```
 FPGA           Kuldeep	
 HW             Sandeep 
 
 Mechanical		
 PCB            Ganesh
 Schematic      Sandeep
 SW				
 
 
 Show non-open
 Show Open - Sort label
 Show Open - Sort Updated
 
 Show Open FPGA
 Show Open Schematic
 Show Open PCB
 Show Open Mechanical
 Show Open NOT(FPGA Schematic PCB Mechanical)
 
 ```
 /invite @Simple Poll 
 
 Update- Owners had shared the ticket numbers as seen below.
* 10G Issue :        Ticket Number 164- Owner Sushil & Kuldeep 
* 1G MPP :           Ticket Number 120- Owner Kuldeep
* 1G OOB :           Ticket Number 133- Owner Arun & Kuldeep 
* Thermal Issue: Ticket Number 143- Owner Eric & Husein 


 I'm finishing up my ASAP submission and it says that I have not provided enough registration information.  I have 0 players, 0 records, 0 coaches, 0 total volunteers..     I googled how to upload my data, but the items it said to choose were not on the site.   I went to submit a question and at the bottom it asks if I contacted my district.   I have exhausted my sources and now, I must go directly to Little League as I am quickly running out of time

   Things to note.  I am using Sports Connect as required.  I am not using the Little League template.  The Little League template, while great for data, requires players to prove where they live, who their siblings are, where they go to school, bla, bla, bla.  And will not let them register if these requirements are not met.   SVLL is 100% Challenger and we have several players from outside Simi Valley and also outside of our county.  I always like to mention my one player whose legal home address was Hong Kong..  :-)     Needless to say, I don't use the Little League template and will do everything I can to never use it.  But, now I understand that Little League has different requirements for Challengers.  I will explore that for next year.  I have contacted Sports Connect and they say I cannot change anything, I would have to create a whole new registration.
  The easy fix is for me to upload or provide a registration file.
     Thanks a lot,
           Randy
           
           25853658

  Every morning and afternoon I have been updating the status of the 10 9145E R2 boards.  The India team is currently 4 of the 5 functioning boards and keeping all them up and running has become a morning thing.  Keeping the station and board status sheets up to date.  (I have been doing that twice a day).
  The software tasks for 10G R2 have recently been in the process of converting from GitLab to tasks within the project plan.  The project plan has needed updating for software tasks in recent weeks.
  As mentioned, 4 of the 5 functioning 10G R2 boards are dedicated to the India team.  I am currently borrowing the board being used by the Thermal group.  I have been focusing on doing as much testing, completing software tasks as I can while I have access to the board.
  Each morning last week I was ensuring boards and stations were running and up to date, testing what I could on my temporary board.  Time doing this would take me past the start of the hardware meetings. While doing developing and testing as much as I could with the only board available and assisting others with various board/station issues I did not get to attend any of the hardware meetings.  I also felt that I would have no valuable input to the hardware meeting.  I attended some of the previous hardware meetings and there was way to much push,pull, ma, kohms, manufacture specs, in/out, trace width/length, fpga banks, all items I know nothing about.
  It was my intention to attend the meetings, but I just got sidetracked with keeping boards and station available and updated for the India teams and utilizing the one board I have for the limited time.



Label :!= ["Component::FPGA"]


lskjdf


[60--- DE bit is cleared in the inner tag, out the network port](https://gitlab.canoga.com/legacy2/9145e-10g-r2/-/issues/60)

[69--- [R72] Fix Bug 34522 (DE in outer tag).](https://gitlab.canoga.com/legacy2/9145e-10g-r2/-/issues/69)

[70--- [R73] TT5585 (SOAM Level issue).](https://gitlab.canoga.com/legacy2/9145e-10g-r2/-/issues/70)

[Bug 35737](https://bugzilla.canoga.com/show_bug.cgi?id=35737) - (MF) SOAM MEG Level Testing issues with running traffic - TT5585

[Bug 34522](https://bugzilla.canoga.com/show_bug.cgi?id=34522) - (SC) EMP DEI Inner tag Issue  - If the traffic is discard eligible the bit is reset to 0 at the far end where Ingress is Net port and Egress Usr port




Throughout the doc change Bug Tracking to Defect Tracking.
3.1.2  Make https://gitlab.canoga.com/engineering/tickets   a link
3.3 Administrator needs to be 3.2.1
Release notes needs to be 3.2.2
Big space gap between 3.5 and 3.6
Clone still applies to Bugzilla.  It is removed.  Should it be there and say if Bugzilla?
3.7  Bug List.  This and the summary all indiates Bugzilla nomenclature.  Should define Issues and listing them also right?
5.2 GitLab Issues documentation 
6.2 Product, the Bugzilla description of Product was removed.  I think it's important for Bugzilla users to know Product is below Classification.
6.4 Component description needs to be indented to 6.3.1
Bug ID needs to be on the next line.
6.12 Version  This description really only applies to NID software.  It should be written such than versions are more generic to accomodate hardware, software, drivers, etc. etc.
6.13, 6.14.  These two have always made no sense to me.  May be "Released" to define when it was released and "Target" to define when it's target release is.
6.15 Blocks, 6.1 Depends on, these descriptions are Bugzilla specific.  GitLab has specific methods to do this.
6.18 This refers to emails lists and is only applicable to Bugzilla.
7.1.2 Make https://gitlab.canoga.com/engineering/tickets/-/issues/new a link.   And each project will have it's own group just below /engineering   (I think that is what we decided)
7.1.6  Version.  We did agree that we need to track the version we found it in, the target version, and the version it was actually fixed in.  For a lot of issues these three labels are way overkill, but for customer found issues, other high visibility things, we should have these.  
7.2.3  Typo, on "the" CC list.   not on th list.
7.3.1 Make it a link.
7.3.2 Not a common link.  We will different groups per project.
7.4  1., .2, .3 ---  I don't like linking issues Tech. bulletins, other procedures, EOs or ECOs.  Can we remove that stuff...???   Rafael?  Malik.
8.6 Bug Type I don't think should be required for GitLab.
9.0 Bug workflow flow chart.   I don't like this.   Way too complicated.
   The simple one after the complicated one is much better.




UINT32 fpga_pktCapt_TimeStamp(void)


BRA_10G_BIST_APPgit 




Randy
  8:30 AM
Hey, can you dig a little deeper on the interweb and find out what "medium" is defined by 10GBASE-ER and/or 10GBASE_EW?   I see wavelength is 1550, length is 40kM, but what is the medium.   50uM, E50uM, 62.5uM.   And I guess there is a  SMF, (Single Mode Fiber).


Jeffrie Jaramilla
  8:45 AM
You got it boss :saluting_face:





Jeffrie Jaramilla
  10:16 AM
The 10GBASE-ER standard is a 10 Gigabit Ethernet physical layer standard that uses single-mode fiber (SMF) and is designed for long-range transmission up to 40 kilometers.
Core size for 10GBASE-ER:
Fiber Type: Single-mode fiber (SMF)
Core Size: Typically around 8 to 10 microns (μm) in diameter
SMF core is much smaller than multimode fiber (which is usually 50 μm or 62.5 μm) and is optimized for long-distance and high-bandwidth data transmission.
10:16
Does this make sense?


Randy
  10:20 AM
Yes, makes perfect sense.   Thanks a lot...


Jeffrie Jaramilla
  10:21 AM
10GBASE-EW Overview:
10GBASE-EW is the WAN-PHY version of 10GBASE-ER.
It's designed to be compatible with SONET/SDH networks, but from an optical perspective, it's nearly identical to 10GBASE-ER.
10:21
uM = microns


Randy
  10:21 AM
Is your descriptions in a .pdf or something that I can save?


Jeffrie Jaramilla
  10:22 AM
ChatGPT
10:22
:slightly_smiling_face: (edited) 

#### PCD
[R.44] In Release 5.50 (GA), Token Sharing Tests for Service Activation MUST be 
supported. The implementation MUST be similar to 9145E, using 10B bandwidth 
parameters. 
[R.45] In Release 5.50 (GA), SAT Enhancements described in Sections 6.9.3 and 6.9.4 
of the Release 5.10 PRD MUST be supported. In particular, Policer tolerance 
parameters and TX/RX Offsets must be supported




#### Cir/Eir Max
SW_FEATURE_TOKEN_SHARING_POLICER
SW_FEATURE_BANDWIDTH_PROFILES

BANDWIDTH_PROFILES bw_profile_db_local[BwProfileLastInstance];
BANDWIDTH_PROFILES nv_bw_profile_db;

   /* Add new items cirMax and eirMax.
      We need to create a new struct to keep the
      existing struct in tact..  (Same size, items)
      RCallaway 5/20/2018 11:24:05 AM */
BANDWIDTH_PROFILES_P2 bw_profile_p2_db_local[BwProfileLastInstance];
BANDWIDTH_PROFILES_P2 nv_bw_profile_p2_db;


   /* Add additional Mib Object "bwProfile_P2_obj##GROUP_NUMBER" to
      Mib Group "Mib_Grp_BwProfile##GROUP_NUMBER"..
      New object will store new items cirMax and eirMax */

nvsBwProfileEntrySet

UI, MIB -- bwProfileSetEntry





[R.15] In Release 5.50, a 9145E10G NID, (both R1 and R2), the restriction of 
supporting only Canoga branded SFPs (based on A2h / bytes 128 to 134) MUST be 
removed. The new functionality for the optics module MUST be as follows:


It is important to note that even after the completion of this project, both the R1 and R2 versions 
of the 9145E10G NID must be built as Verizon will remain on the R1 version until such a time as 
a (potential) follow-on project is undertaken to develop a 10GR2 version for Verizon

GR-3108 





C:/WindRiver/workspace/9145E_BUILD_TARGETS/VXWORKS69/PPC603gnucp/9145E_COM_DKM/Debug/9145E_COM_DKM.o:(.data+0x57e4): undefined reference to `set_SA_TEST_Results_P6_Obj_instant'
ldppc: Dwarf Error: Could not find abbrev number 1.
C:/WindRiver/workspace/9145E_BUILD_TARGETS/VXWORKS69/PPC603gnucp/9145E_COM_DKM/Debug/9145E_COM_DKM.o:(.data+0x57e8): undefined reference to `set_SA_TEST_Results_P6_Obj_default'
make.exe[1]: *** [vxWorks] Error 1
rm ipcom_ipdomain
make.exe[1]: Leaving directory `C:/WindRiver/workspace/9145E_VX69_GNU_COM_IMAGE/default'
C:\WindRiver\utilities-1.0\x86-win32\bin\make.exe: *** [target_vxWorks] Error 2
Build Failed in Project '9145E_VX69_GNU_COM_IMAGE' (Process Exit Value was 2):   2025-05-07 15:12:31   (Elapsed Time: 01:09)


net1_10g_reg  #define NET1_10G_REG (0xa0000)
net_10g_reg   #define NET_10G_REG (0xa1000)



> [!warning] Data deletion
> The following instructions will make your data unrecoverable.
>

Sometimes you want to :monkey: around a bit and add some :star2: to your
:speech_balloon:. Well we have a gift for you: emoji!

You can use it to point out a :bug: or warn about :speak_no_evil: patches.
And if someone improves your really :snail: code, send them some :birthday:.
People :heart: you for that.

If you're new to this, don't be :fearful:. You can join the emoji :family:.
Just look up one of the supported codes.

Hello..

>>> [!note] Things to consider
You should consider the following ramifications:

>> 1. consideration 1
1. consideration 2
>>>



- `#F00`
- `#F00A`
- `#FF0000`
- `#FF0000AA`
- `RGB(0,255,0)`
- `RGB(0%,100%,0%)`
- `RGBA(0,255,0,0.3)`
- `HSL(540,70%,50%)`
- `HSLA(540,70%,50%,0.3)`


```
-------------------------- SA TOKEN SHARING PARAMETERS -------------------------
    SA Test ID : 33     Port : USR    
 1) Rank for the flow :  Rank 3

 2) Rank 3 :       Self    
 3) Ingress CVID : 0             4) Egress CVID :    0   
 5) Ingress PCP  : 0             6) Egress PCP  : 0   7) Egress STag : 0   
 8) Bandwidth profile :      Randy(CIR=5M, CBS=100, EIR=5M, EBS=100)    
 9) Rank 2 :       Enabled 
10) Ingress CVID : 0            11) Egress CVID :    0   
12) Ingress PCP  : 0            13) Egress PCP  : 0  14) Egress STag : 0   
15) Bandwidth profile :      Randy(CIR=5M, CBS=100, EIR=5M, EBS=100)    
16) Rank 1 :       Enabled 
17) Ingress CVID : 0            18) Egress CVID :    0   
19) Ingress PCP  : 0            20) Egress PCP  : 0  21) Egress STag : 0   
22) Bandwidth profile :      Randy(CIR=5M, CBS=100, EIR=5M, EBS=100)    

23) Token Recirculation :   No 
                             Select [1-23, ESC]:

------------------------------------Messages------------------------------------
```


CPOS_VX_STATUS CPOS_VX_taskSuspend(NU_PROC_T * tid);
int tid = taskNameToId(name);

"tLEDBlink"

taskNameToId("tLEDBlink");


CPOS_VX_taskSuspend (0x715dce0); ( lv );
cpSysStatusLED ( lv );

fpga_utp_lnk_act_led (port, color);
fpga_sfp_lnk_act_led

fpga_utp_spd_led
fpga_sfp_spd_led

0x30
0x31
0x32
0x33

0x3B		HW


fpga_utp_lnk_act_led (0, 0x33);
fpga_sfp_lnk_act_led (0, 0x33);
fpga_utp_spd_led     (0, 0x33);
fpga_sfp_spd_led     (0, 0x33);



fpga_utp_lnk_act_led (3, 0x3B);
fpga_utp_spd_led     (3, 0x3B);


fpga_sfp_lnk_act_led (0, 0x30);
fpga_sfp_lnk_act_led (1, 0x30);
fpga_sfp_lnk_act_led (2, 0x30);
fpga_utp_lnk_act_led (2, 0x30);
fpga_utp_lnk_act_led (3, 0x30);
fpga_sfp_spd_led (0, 0x30);
fpga_sfp_spd_led (1, 0x30);
fpga_sfp_spd_led (2, 0x30);
fpga_utp_spd_led (2, 0x30);
fpga_utp_spd_led (3, 0x30);

fpga_sfp_lnk_act_led (0, 0x31);
fpga_sfp_lnk_act_led (1, 0x31);
fpga_sfp_lnk_act_led (2, 0x31);
fpga_utp_lnk_act_led (2, 0x31);
fpga_utp_lnk_act_led (3, 0x31);
fpga_sfp_spd_led (0, 0x31);
fpga_sfp_spd_led (1, 0x31);
fpga_sfp_spd_led (2, 0x31);
fpga_utp_spd_led (2, 0x31);
fpga_utp_spd_led (3, 0x31);

fpga_sfp_lnk_act_led (0, 0x3B);
fpga_sfp_lnk_act_led (1, 0x3B);
fpga_sfp_lnk_act_led (2, 0x3B);
fpga_utp_lnk_act_led (2, 0x3B);
fpga_utp_lnk_act_led (3, 0x3B);
fpga_sfp_spd_led (0, 0x3B);
fpga_sfp_spd_led (1, 0x3B);
fpga_sfp_spd_led (2, 0x3B);
fpga_utp_spd_led (2, 0x3B);
fpga_utp_spd_led (3, 0x3B);

fpga_sfp_lnk_act_led (0, 0x32);
fpga_sfp_lnk_act_led (1, 0x32);
fpga_sfp_lnk_act_led (2, 0x32);
fpga_utp_lnk_act_led (2, 0x32);
fpga_utp_lnk_act_led (3, 0x32);
fpga_sfp_spd_led (0, 0x32);
fpga_sfp_spd_led (1, 0x32);
fpga_sfp_spd_led (2, 0x32);
fpga_utp_spd_led (2, 0x32);
fpga_utp_spd_led (3, 0x32);

fpga_sfp_lnk_act_led (0, 0x33);
fpga_sfp_lnk_act_led (1, 0x33);
fpga_sfp_lnk_act_led (2, 0x33);
fpga_utp_lnk_act_led (2, 0x33);
fpga_utp_lnk_act_led (3, 0x33);
fpga_sfp_spd_led (0, 0x33);
fpga_sfp_spd_led (1, 0x33);
fpga_sfp_spd_led (2, 0x33);
fpga_utp_spd_led (2, 0x33);
fpga_utp_spd_led (3, 0x33);




#define  FPGA_FILE_XILINX_AU25P     "tgn_v370.Hex"  // File name for AU25P
#define  FPGA_VERSION_10G_R2        370 		    // FPGA code version for AU25P
#define  FPGA_XILINX_AU25P_BIT_SIZE 15431239        // Variable size, must match the size of tgn.bit



Test traffic from/to CPU over the 10G user port
Test traffic from/to CPU over the 10G network port
Test traffic from/to CPU over the 1G MPP SFP and UTP
Test traffic from/to CPU over the OOB port at 10/100/1000 speeds
Test traffic with Copper SFP+ on user port and network port
Verify line rate traffic between user and network ports with optical SFP+’s
Verify line rate traffic between user and network ports with copper SFP+’s (Low)
Fix https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/230
Fix https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/228



```
Canoga Perkins Corp.         Ethernet Network Interface Device       04-JAN-1970
9145E10G-527-2-0 V05.50(EB5254)           Remote .31                 18:21:09
-------------------------- LM80 DIAGNOSTICS ------------------------------------
   VoltIn(0)   1.25  Int: No   Up#:   0,  Dn#:   0 Good     1.20 < OK < 1.30
   VoltIn(1)   1.20  Int: No   Up#:   0,  Dn#:   0 Good     1.15 < OK < 1.25
   VoltIn(2)   2.50  Int: No   Up#:   0,  Dn#:   0 Good     2.40 < OK < 2.60
   VoltIn(3)   3.32  Int: No   Up#:   0,  Dn#:   0 Good     3.20 < OK < 3.40
   VoltIn(4)   4.98  Int: No   Up#:   0,  Dn#:   0 Good     4.83 < OK < 5.49
   VoltIn(5)   5.25  Int: No   Up#:   0,  Dn#:   0 Good     4.83 < OK < 5.49
   VoltIn(6)   0.24  Int: Yes  Up#:   1,  Dn#:   0 Fail     4.83 < OK < 5.49

   FanIn(0) 10384Int: No   Up#:   0,  Dn#:   0  5      927     0     0     0
   FanIn(1) 10384Int: No   Up#:   0,  Dn#:   0  5        0     0     0     0
                                                         0     0     0     0
   Temperature 35.0 C  Int: No   Up#:   0,  Dn#:   0     0     0     0     0
                                                     Total LM80 Traps:      1
   Temp Status:  6 Normal   Rising   Normal   
   I2C read time: Temp Status:         0 RetVal:         0
   Abs Int read, 0x0040 0x6040 Time+: 0, Time-: 0    0000 0003
   Abs Chassisled: 0x0009  LM80Debug: 0
   (1: Change a Voltage) (2:Change a Fan Speed) (3: Change the Temperature)
   (S: Set LM80 Debug Mode) (6: View LM80 Device 1):
------------------------------------Messages------------------------------------

         1         2         3         4         5         6         7         8
12345678901234567890123456789012345678901234567890123456789012345678901234567890
  "1:Volt 2:Fan 3:Temp 6:Device 0 S:Debug 0 :")     

```


1) 2.2.2 SFP/XFP lock is removed.
2) 2.2.3 Can see console port when UUT is powered off.
3) 2.2.6 Noise
4) 3.3.1 UI and MIB for XFP/SFP+, commerical - no fans, Industrial Fans, R2 text,  UI - Port information screens.
5) [R.12, R.13]  List of S optics that must work.
6) OOB link at 1G
7) [R.23] LLF on Copper SFP+'s.  
8) [R.24] Correct stuff is displayed for Copper SFP+ on the UI.
9) 



55c40bae3 886a777e7 

93ba1b815 8e5df252f

git difftool 93ba1b815  SRC/UI/s_osmon_Log.c



# High Priority issues.
* [243 -- BIST code on Rev2 boards crashes](https://gitlab.canoga.com/legacy2/hardware/9145e10g-r2/-/issues/243)
	- Any issues with me making this a Priority::P1 - Severity::Blocker ??
	- This issue is a show-stopper.
	



GR-3108 states for Class 1 testing to use the same Class 2 test criteria with some modified temperatures.  Below is the Class 1, our Commercial tests we need to do.  I highlighted the modified temperatures that are different.

Here is what I have for the environment testing of the Class 2, hardened units.   Our chamber can do temperature and humidity.  I will get with Eric next week and set up the chamber.  These procedures were taken from the document Marco provided, ATIS-0600010.01.2020.pdf
   I will have to separate out the hardened units from those currently in the chamber.
  Let me know if you have any concerns. (edited) 
PDF

9145e-r3 channel, Jan, 11 at 12:57.   ATIS-0600010.01.2020.pdf
 
 
 https://www.google.com/search?channel=fs&client=ubuntu&q=GR+standard+for+temperature+touching
 
 
	
When it comes to temperature and touching, especially in the context of safety and equipment, the abbreviation "GR" is often associated with Telcordia Generic Requirements
. 
Specifically, Telcordia GR-63-CORE, and related documents like GR-3108-CORE, cover generic requirements for various telecommunications equipment and installations, including considerations for safe touch temperatures and temperature control for optimal performance and battery life in outdoor cabinets. 
These standards are crucial for preventing hazards like burns from hot surfaces and ensuring that equipment operates reliably within specified temperature ranges. 
Important points about touch temperature standards

    Telcordia GR-63: Focuses on telecommunications appliances and their touch temperatures, according to Electronics Cooling.
    GR-3108-CORE: Deals with generic requirements for network equipment in the outside plant (OSP), specifying a wider temperature range for the internal cabinet temperature but recommending tighter control for batteries and lower-cost equipment, according to Thermal Edge.
    Safety Limits: While OSHA doesn't specify an exact limit, it recommends that surfaces should not exceed 140°F (60°C) to avoid burns from short contact (around 5 seconds).
    Prolonged Contact: For prolonged unprotected contact, a more conservative limit of 38.1°C (around 100.6°F) has been suggested, says ScienceDirect.com.
    Burn Risk: The risk of burn injury increases with higher temperatures and longer contact times, says Johns Manville.
    Other standards: Other organizations like ASTM International also have standards related to surface temperatures and burn injuries. 

In summary, when referring to temperature and touching, especially within the telecommunications and electronics industries, "GR" is most likely referring to Telcordia Generic Requirements which address safety, environmental, and performance aspects related to temperature and human contact. 




https://www.google.com/search?channel=fs&client=ubuntu&q=GR+standard+for+temperature+touching




- Level 1
	- Level 2
		- Level 3



```
debugLogInit();
Log2Init();
debugLog("log entry from CLI");
debugLogDump();


Log2Dump();





```





https://www.intertekinform.com/en-us/standards/gr-63-core-issue-5-1064005_saig_tel_tel_2474795/?srsltid=AfmBOoqcdcYVaU3iwRDIae4dfsS9R-fjhFYCt38WYveyv6ZbzaZHOMIp

Station-1
```
Eng-Flags 0x01080008   10.16.10.20    20250500512                    02-JAN-1970
9145E10G-634-0-0 V05.50(EB0022)                                      01:38:04
-----------------------LAYER 2 ERROR STATISTICS (CURRENT)----------------------

Eng-Flags 0x01080008   10.16.10.20    20250500512                    02-JAN-1970
9145E10G-634-0-0 V05.50(EB0022)                                      01:41:46
-------------------------------MANAGEMENT IP CONFIGURATION----------------------
     In-band Manager MAC Address      00 40 2A 3C FA E0
     Manager MAC Address (In-band)    00 40 2A 3C FA E0
     Manager Port Status              UP
 1)  Manager IP Address               010.016.010.020
     Subnet Mask                      255.255.255.000
     Default Gateway                  000.000.000.000
 2)  Manager Port                     Both User and Net Ports
 3)  Manager VLAN Tagging             Untagged
 4)  Manager C-VLAN ID                0
 5)  Manager T-VLAN ID                0
 6)  Manager S-VLAN ID                0
 7)  Test IP Address                  000.000.000.000
     Test Subnet Mask                 255.255.255.000
 8)  Test Port                        Net Port Only
 9)  Telnet Security                  Disabled
 10) Reply to Broadcast Ping          Disabled
 11) Tunnel Management
 12) Autoprovisioning Details         (Mode: Disabled)
                                  Select [1-12]:
------------------------------------Messages------------------------------------

Eng-Flags 0x01080008   10.16.10.20    20250500512                    02-JAN-1970
9145E10G-634-0-0 V05.50(EB0022)                                      01:43:10
---------------------------FUNCTIONAL CONFIGURATION-----------------------------

  User Port Speed/Duplex          10000M/Full
  Net Port Speed/Duplex           10000M/Full
  MP Port Speed/Duplex (Gig)      Admin Down
  MGMT UTP Port Speed/Duplex      Admin Down

  1) User Port Setting            10000M Full
  2) Net Port Setting             10000M Full
  3) RMTF                         Disabled
  4) LLF                          Disabled
  5) Flow Control                 Disabled
  6) Maximum Frame Size           10000
  7) Interface details

Eng-Flags 0x01080008   10.16.10.20    20250500512                    02-JAN-1970
9145E10G-634-0-0 V05.50(EB0022)                                      01:54:31
---------------------------PROTECTED LINK PERFORMANCE MONITORING----------------
                           Local                     PLPM Partner (Offline)
     State                 Active                    Unavailable
     Manager IP            010.016.010.020           000.000.000.000
     MAC Address           00 40 2A 3C FA E0         Unavailable
     SW/PLCP Version       05.50/2                   Unavailable/????
     User/Network Link     Up/Up                     Unavailable
     LAG/Blocking State    No LACP/Normal            Unavailable
     MPP Link UTP          Down                      Unavailable

     Protocol State        Send Waiting/Rcv Waiting
     Last Test Completed   Unavailable               Unavailable
     PM/SAM State          Disabled/Disabled         Unavailable/Unavailable

      1) PLPM Admin                         Disabled
      2) PLPM Partner Manager IP Address    000.000.000.000
      3) PLPM Protocol Timeout (sec)        3
      4) LACP Failure Detection             Disabled

                             Select [1-4]:
------------------------------------Messages------------------------------------

Eng-Flags 0x01080008   10.16.10.20    20250500512                    02-JAN-1970
9145E10G-634-0-0 V05.50(EB0022)                                      01:57:09
------------------------------- EVC CONFIGURATION ------------------------------



                        1) Configuration mode:   EVC unaware
                        2) EVC Configuration Records
                        3) System TPID Configuration











                                Select [1-3]:

------------------------------------Messages------------------------------------




Station-2
Eng-Flags 0x01080008   10.16.10.11    20250500518                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:03:17
-------------------------------MANAGEMENT IP CONFIGURATION----------------------
     In-band Manager MAC Address      00 40 2A 3C FB 10
     Manager MAC Address (In-band)    00 40 2A 3C FB 10
     Manager Port Status              UP
 1)  Manager IP Address               010.016.010.011
     Subnet Mask                      255.000.000.000
     Default Gateway                  010.016.003.001
 2)  Manager Port                     Both User and Net Ports
 3)  Manager VLAN Tagging             Untagged
 4)  Manager C-VLAN ID                0
 5)  Manager T-VLAN ID                0
 6)  Manager S-VLAN ID                0
 7)  Test IP Address                  000.000.000.000
     Test Subnet Mask                 255.255.255.000
 8)  Test Port                        Net Port Only
 9)  Telnet Security                  Disabled
 10) Reply to Broadcast Ping          Disabled
 11) Tunnel Management
 12) Autoprovisioning Details         (Mode: Disabled)
                                  Select [1-12]:
------------------------------------Messages------------------------------------

Eng-Flags 0x01080008   10.16.10.11    20250500518                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:04:18
---------------------------FUNCTIONAL CONFIGURATION-----------------------------

  User Port Speed/Duplex          10000M/Full
  Net Port Speed/Duplex           10000M/Full
  MP Port Speed/Duplex (Gig)      1000M/Full
  MGMT UTP Port Speed/Duplex      Admin Down

  1) User Port Setting            10000M Full
  2) Net Port Setting             10000M Full
  3) RMTF                         Disabled
  4) LLF                          Disabled
  5) Flow Control                 Disabled
  6) Maximum Frame Size           10000
  7) Interface details





                                  Select [1-7]:
------------------------------------Messages------------------------------------

Eng-Flags 0x01080008   10.16.10.11    20250500518                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:12:04
---------------------------PROTECTED LINK PERFORMANCE MONITORING----------------
                           Local                     PLPM Partner (Offline)
     State                 Active                    Unavailable
     Manager IP            010.016.010.011           010.016.010.111
     MAC Address           00 40 2A 3C FB 10         Unavailable
     SW/PLCP Version       05.50/2                   Unavailable/????
     User/Network Link     Up/Up                     Unavailable
     LAG/Blocking State    No LACP/Normal            Unavailable
     MPP Link UTP/SFP      Up/Up                     Unavailable

     Protocol State        Send Connect/Rcv Listening
     Last Test Completed   Unavailable               Unavailable
     PM/SAM State          Disabled/Disabled         Unavailable/Unavailable

      1) PLPM Admin                         Enabled
      2) PLPM Partner Manager IP Address    010.016.010.111
      3) PLPM Protocol Timeout (sec)        3
      4) LACP Failure Detection             Disabled

                             Select [1-4]:
------------------------------------Messages------------------------------------

Eng-Flags 0x01080008   10.16.10.11    20250500518                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:14:36
------------------------------- EVC CONFIGURATION ------------------------------



                        1) Configuration mode:   EVC aware
                        2) EVC Configuration Records
                        3) System TPID Configuration











                                Select [1-3]:

------------------------------------Messages------------------------------------

Eng-Flags 0x01080008   10.16.10.10    20250500514                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:10:43
-------------------------------MANAGEMENT IP CONFIGURATION----------------------
     In-band Manager MAC Address      00 40 2A 3C FA F0
     Manager MAC Address (MGMT UTP)   00 40 2A 3C FA F2
     Manager Port Status              UP
 1)  Manager IP Address               010.016.010.010
     Subnet Mask                      255.000.000.000
     Default Gateway                  000.000.000.000
 2)  Manager Port                     MGMT UTP Port Only
 3)  Manager VLAN Tagging             Untagged
 4)  Manager C-VLAN ID                200
 5)  Manager T-VLAN ID                0
 6)  Manager S-VLAN ID                100
 7)  Test IP Address                  010.016.010.099
     Test Subnet Mask                 255.255.255.000
 8)  Test Port                        Net Port Only
 9)  Telnet Security                  Disabled
 10) Reply to Broadcast Ping          Disabled
 11) Tunnel Management
 12) Autoprovisioning Details         (Mode: Disabled)
                                  Select [1-12]:
------------------------------------Messages------------------------------------


Eng-Flags 0x01080008   10.16.10.10    20250500514                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:11:51
---------------------------FUNCTIONAL CONFIGURATION-----------------------------

  User Port Speed/Duplex          10000M/Full
  Net Port Speed/Duplex           10000M/Full
  MP Port Speed/Duplex (Gig)      1000M/Full
  MGMT UTP Port Speed/Duplex      1000M/Full

  1) User Port Setting            10000M Full
  2) Net Port Setting             10000M Full
  3) RMTF                         Disabled
  4) LLF                          Disabled
  5) Flow Control                 Disabled
  6) Maximum Frame Size           10000
  7) Interface details





                                  Select [1-7]:
------------------------------------Messages------------------------------------

ng-Flags 0x01080008   10.16.10.10    20250500514                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:13:39
---------------------------PROTECTED LINK PERFORMANCE MONITORING----------------
                           Local                     PLPM Partner (Offline)
     State                 Active                    Unavailable
     Manager IP            010.016.010.010           010.016.010.030
     MAC Address           00 40 2A 3C FA F0         Unavailable
     SW/PLCP Version       05.50/2                   Unavailable/????
     User/Network Link     Up/Up                     Unavailable
     LAG/Blocking State    No LACP/Normal            Unavailable
     MPP Link UTP/SFP      Up/Up                     Unavailable

     Protocol State        Send Connect/Rcv Listening
     Last Test Completed   Unavailable               Unavailable
     PM/SAM State          Disabled/Disabled         Unavailable/Unavailable

      1) PLPM Admin                         Enabled
      2) PLPM Partner Manager IP Address    010.016.010.030
      3) PLPM Protocol Timeout (sec)        3
      4) LACP Failure Detection             Disabled

                             Select [1-4]:
------------------------------------Messages------------------------------------


Eng-Flags 0x01080008   10.16.10.10    20250500514                    01-JAN-1970
9145E10G-634-0-0 V05.50(EB3056)                                      02:20:01
------------------------------- EVC CONFIGURATION ------------------------------



                        1) Configuration mode:   EVC aware
                        2) EVC Configuration Records
                        3) System TPID Configuration











                                Select [1-3]:

------------------------------------Messages------------------------------------


```


# 1G Industrial testing.  8/22/25
## Unit 1
```
 NID Model Number          9145E-304-1-0
 NID Hardware Rev.         2E (R3)
 NID Serial Number         20230100022
9145E-304-1-0 V07.00(EB3008)                                         00:52:32
------------------------- SYSTEM DIAGNOSTICS -----------------------------------

   sysModel: MPC8347E PBGA        CPU Speed: 400Mhz
   vxPvrGet: 0x80830031   RTC:       3152
   vxSvrGet: 0x80540030
```


## Unit 2
```
 Model Number: 9145E-304-1-0
Serial Number: 20220902526
Hardware Revision: 1E


                VxWorks

Copyright 1984-2006  Wind River Systems, Inc.

             CPU: MPC8347E PBGA
    Runtime Name: VxWorks
 Runtime Version: 6.4
     BSP version: 05.10/Trunk -B
         Created: Jan 18 2023, 16:50:10
ED&R Policy Mode: Deployed
   WDB Comm Type: WDB_COMM_END
             WDB: Agent configuration failed. 
```


## Unit 3 8/22/25
```
  Read on the CPU: MPC8347ECVRAGDB
  
```


2.293v



* Brd#15, BIST vxWorks6.9
* Industrial temperature CPU.
* Cycling power every 5 and a half minutes.
* We don't know what the Crawl bit does, but it definitely affects the resetting.
* The vRef affects the resetting. ===================================================
	* R89: 51.1kΩ, R90: 49.9kΩ
* 8.5k → VREF = 1.165 V




Randy
  10:36 AM  Sept. 3rd
Hey José,
I'm bring over a board, Brd#18.  It has a thermal thing stuck to is so it needs a little bit more attention.  I put a post-in on it with the following.
Do rework Item 7:  Change R158 and R163 to 1K.
Change the vRef resistors to the last option:  R89: 21.0kΩ, R90: 19.6kΩ
Thanks a lot.. (edited) 

