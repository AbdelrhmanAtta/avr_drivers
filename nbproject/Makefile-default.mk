#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=App/App_Main.c Config/Device_Cfg.c ECUAL/LED/ECUAL_LED.c MCAL/GPIO/MCAL_GPIO.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/App/App_Main.o ${OBJECTDIR}/Config/Device_Cfg.o ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o
POSSIBLE_DEPFILES=${OBJECTDIR}/App/App_Main.o.d ${OBJECTDIR}/Config/Device_Cfg.o.d ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/App/App_Main.o ${OBJECTDIR}/Config/Device_Cfg.o ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o

# Source Files
SOURCEFILES=App/App_Main.c Config/Device_Cfg.c ECUAL/LED/ECUAL_LED.c MCAL/GPIO/MCAL_GPIO.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328P
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/App/App_Main.o: App/App_Main.c  .generated_files/flags/default/4f61150278a7a17fb37310d1d1e7fed27ec72c18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/App" 
	@${RM} ${OBJECTDIR}/App/App_Main.o.d 
	@${RM} ${OBJECTDIR}/App/App_Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/App/App_Main.o.d" -MT "${OBJECTDIR}/App/App_Main.o.d" -MT ${OBJECTDIR}/App/App_Main.o -o ${OBJECTDIR}/App/App_Main.o App/App_Main.c 
	
${OBJECTDIR}/Config/Device_Cfg.o: Config/Device_Cfg.c  .generated_files/flags/default/8bc8dd2b5f2b3d483fc93262d50cedcaa1bd707d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Config" 
	@${RM} ${OBJECTDIR}/Config/Device_Cfg.o.d 
	@${RM} ${OBJECTDIR}/Config/Device_Cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/Config/Device_Cfg.o.d" -MT "${OBJECTDIR}/Config/Device_Cfg.o.d" -MT ${OBJECTDIR}/Config/Device_Cfg.o -o ${OBJECTDIR}/Config/Device_Cfg.o Config/Device_Cfg.c 
	
${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o: ECUAL/LED/ECUAL_LED.c  .generated_files/flags/default/814bf8fa3c8f9e05070733f970f958335e738198 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/LED" 
	@${RM} ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d" -MT "${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d" -MT ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o -o ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o ECUAL/LED/ECUAL_LED.c 
	
${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o: MCAL/GPIO/MCAL_GPIO.c  .generated_files/flags/default/f9931c22f3029a5fdfafd9287b44fa851940306 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d" -MT "${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d" -MT ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o -o ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o MCAL/GPIO/MCAL_GPIO.c 
	
else
${OBJECTDIR}/App/App_Main.o: App/App_Main.c  .generated_files/flags/default/e23ab6b52649c5bd976f4918718105b45384d365 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/App" 
	@${RM} ${OBJECTDIR}/App/App_Main.o.d 
	@${RM} ${OBJECTDIR}/App/App_Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/App/App_Main.o.d" -MT "${OBJECTDIR}/App/App_Main.o.d" -MT ${OBJECTDIR}/App/App_Main.o -o ${OBJECTDIR}/App/App_Main.o App/App_Main.c 
	
${OBJECTDIR}/Config/Device_Cfg.o: Config/Device_Cfg.c  .generated_files/flags/default/23f1baf7a5717995b94106bbade8cd02bc26e877 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/Config" 
	@${RM} ${OBJECTDIR}/Config/Device_Cfg.o.d 
	@${RM} ${OBJECTDIR}/Config/Device_Cfg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/Config/Device_Cfg.o.d" -MT "${OBJECTDIR}/Config/Device_Cfg.o.d" -MT ${OBJECTDIR}/Config/Device_Cfg.o -o ${OBJECTDIR}/Config/Device_Cfg.o Config/Device_Cfg.c 
	
${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o: ECUAL/LED/ECUAL_LED.c  .generated_files/flags/default/b16ed298c735fab2ecfe491ac1605318fd02ef02 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/ECUAL/LED" 
	@${RM} ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d 
	@${RM} ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d" -MT "${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o.d" -MT ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o -o ${OBJECTDIR}/ECUAL/LED/ECUAL_LED.o ECUAL/LED/ECUAL_LED.c 
	
${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o: MCAL/GPIO/MCAL_GPIO.c  .generated_files/flags/default/cb59f1b0eada35d850f76aa9946635534ae5d3c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/MCAL/GPIO" 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d 
	@${RM} ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d" -MT "${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o.d" -MT ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o -o ${OBJECTDIR}/MCAL/GPIO/MCAL_GPIO.o MCAL/GPIO/MCAL_GPIO.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/avr_drivers.X.${IMAGE_TYPE}.hex"
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
