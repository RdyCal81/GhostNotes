Start: Tue 08/15/2023 13:55:58.74 VXWORKS-6-4-BUI 
Jenkins_VM_Build.Bat version v2.00 2/16/2022 
Jenkins_VM_Build.Bat v2.00 includes 9145E_ELB for 6.9 
WORKSPACE:c:\windriver\workspace 
Product:E-A10-BA 
GIT-Branch:--branch BRA_E_BIST_APP_R3 
HiRev:81 
LowRev:20 
DebugVal:15 
BUILD_NUMBER:64 
 
USERNAME:VXWORKS-6-4-BUI$ 
COMPUTERNAME:VXWORKS-6-4-BUI 
BUILD_TAG:jenkins-9145E-6.4-64 
BUILD_URL:https://buildserver.everest.canoga.com/job/9145E-6.4/64/ 
 
CVSTag:REV_9145E_A10_0005_0062_BLDN0064_8120_15aug2023 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/9145E_CFM.git -d C:\WindRiver\workspace\9145E_CFM -P 9145E_CFM 
 
 
commit 103aa8b96ba3c6389076899b0839a1b02b136496
Author: msiska <>
Date:   Thu May 24 01:05:41 2012 +0000

    bug 12829:
    Move in Afore 10Gig fix from Bug 12677
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/9145E_COM_AGENT.git -d C:\WindRiver\workspace\9145E_COM_AGENT -P 9145E_COM_AGENT 
 
 
commit 09fe7c09f359c99226883009167ca0b6487a75ec
Author: msiska <>
Date:   Wed May 23 21:35:08 2012 +0000

    bug 12914:
    Move in Afore 10Gig fix from Bug 12579
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/9145E_COM_DKM.git -d C:\WindRiver\workspace\9145E_COM_DKM -P 9145E_COM_DKM 
 
 
commit 87c161cefb8ee1fb894fc0a3398f12f09bc60002
Author: Randy Callaway <rcallaway@canoga.com>
Date:   Tue Aug 15 13:55:39 2023 -0700

    One more..
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/9145E_CP_DKM.git -d C:\WindRiver\workspace\9145E_CP_DKM -P 9145E_CP_DKM 
 
 
commit 7128942b310ec6d6fa3ae81ba48ec4c104bef725
Author: msiska <>
Date:   Tue May 22 17:21:56 2012 +0000

    bug 12893 12895:
    Move in 10Gig fix from Bugs 12775 & 12776
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/9145E_CP_MOCANA.git -d C:\WindRiver\workspace\9145E_CP_MOCANA -P 9145E_CP_MOCANA 
 
 
commit d2fd6531ab115c20f3f2070e6a8c4cfe82eac982
Author: Randy <>
Date:   Tue Dec 8 23:29:32 2009 +0000

    Bug: 6605
    Set the C++ compiler to not include .C
      Set the C compiler to include .C
         Set flags to catch warnings.
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/COMMON_MIBS.git -d C:\WindRiver\workspace\COMMON_MIBS -P COMMON_MIBS 
 
 
commit d7f9ee04aea44f6f25ebd965dbf97b5944ff7bc5
Author: msiska <>
Date:   Mon May 21 22:10:51 2012 +0000

    bug 12857:
    Move in Afore 10Gig fix from Bug 12549
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/BSP_9145E_COM.git -d C:\WindRiver\vxworks-6.4\target\config\BSP_9145E_COM -P BSP_9145E_COM 
 
 
commit ddffbf799b7ef866d1c2fb661e9897e6419ba977
Author: Randy Callaway <rcallaway@canoga.com>
Date:   Tue Oct 4 15:41:15 2022 -0700

    Merge BIST stuff
 
git -c http.sslVerify=false clone --branch BRA_E_BIST_APP_R3 https://engservice:XtT7igHMdAg7hFAWZksU@git.everest.canoga.com:9443/legacy2/afore/9145E_COM_IMAGE.git -d C:\WindRiver\workspace\9145E_COM_IMAGE -P 9145E_COM_IMAGE 
 
 
commit 3fdb4cffad2d9bc858336d83eb6304f3692e3b24
Author: randy <>
Date:   Mon May 10 04:47:49 2010 +0000

    Bug: 7553
    Merge BRA_0301 into trrunk.  This is the result of that merge.
 
BldSpec:PPC603diab 
bldCmd=C:\WindRiver\wrenv.exe -p vxworks-6.4 -o run C:\WindRiver\workbench-2.6\x86-win32\bin\cp_wrws_update.bat -data c:\windriver\workspace 
C:\WindRiver\wrenv.exe -p vxworks-6.4 -o run C:\WindRiver\workbench-2.6\x86-win32\bin\cp_wrws_update.bat -data c:\windriver\workspace -c PPC603diab -l 9145E_COM_AGENT -b clean/rebuild -u DEFINES="-DBLD_9145E" 
 
#define BUILD_NUM 64 
#define CVS_TAG "REV_9145E_A10_0005_0062_BLDN0064_8120_15aug2023" 
#define GIT_BRANCH "--branch BRA_E_BIST_APP_R3" 
#define BLD_FILE_NAME ""9145E-A10(BA0005)-81-20"" 
 
/* Rev File: C:\BuildStuff\RevFiles\Bld_E-A10_0001_8120.Num */ 
/* Jenkins Build: WORKSPACE:c:\windriver\workspace */ 
/* Jenkins Build: BUILD_NUMBER:64 */ 
/* Computer:VXWORKS-6-4-BUI */ 
 
FileName: zipFile="9145E-A10(BA0005)-81-20" 
