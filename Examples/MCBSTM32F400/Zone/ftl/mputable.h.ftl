<#compress>
<#include "helper.ftlinc"/>
</#compress>
/*
 * MPU Table Header File generated by CMSIS-Zone 
 */

#ifndef MPUTABLE_H

#include "RTE_Components.h"
#include CMSIS_device_header

<#list zone?filter(x -> x.privilege.u == "1") as z>
#define MPUTABLE_${z.name?upper_case?right_pad(20)} ${z?index}u
</#list>

extern const ARM_MPU_Region_t mpuTable[${zone?filter(x -> x.privilege.u == "1")?size}u][8u];

#endif
