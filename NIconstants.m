% Purpose: Define the same constants as listed in NIDAQmx.h, the include
%          file for your installed NI-DAQmx library.
%          To translate the definitions in Matlab, the file NIDAQmx.h was
%          stripped of the C function definitions and the syntax replaced
%          with Matlab's.
%          In particular, C's shift operator a << b was replaced by
%          multiplication with the appropriate power of 2: a * 2^b.
%
% Copyright National Instruments 2003-2023.
%
% SPDX-FileCopyrightText: 2005 Jens Roesner, 2023 Johannes Keyser
%
% SPDX-License-Identifier: GPL-3.0-or-later

% *************************************************************************
% *** NI-DAQmx Attributes *************************************************
% *************************************************************************

%********** Buffer Attributes **********
DAQmx_Buf_Input_BufSize       =                                  0x186C;  % Specifies the number of samples the input buffer can hold for each channel in the task. Zero indicates to allocate no buffer. Use a buffer size of 0 to perform a hardware-timed operation without using a buffer. Setting this property overrides the automatic input buffer allocation that NI-DAQmx performs.
DAQmx_Buf_Input_OnbrdBufSize  =                                  0x230A;  % Indicates in samples per channel the size of the onboard input buffer of the device.
DAQmx_Buf_Output_BufSize      =                                  0x186D;  % Specifies the number of samples the output buffer can hold for each channel in the task. Zero indicates to allocate no buffer. Use a buffer size of 0 to perform a hardware-timed operation without using a buffer. Setting this property overrides the automatic output buffer allocation that NI-DAQmx performs.
DAQmx_Buf_Output_OnbrdBufSize =                                  0x230B;  % Specifies in samples per channel the size of the onboard output buffer of the device.

%********** Calibration Info Attributes **********
DAQmx_SelfCal_Supported                      =                   0x1860;  % Indicates whether the device supports self-calibration.
DAQmx_SelfCal_LastTemp                       =                   0x1864;  % Indicates in degrees Celsius the temperature of the device at the time of the last self-calibration. Compare this temperature to the current onboard temperature to determine if you should perform another calibration.
DAQmx_ExtCal_RecommendedInterval             =                   0x1868;  % Indicates in months the National Instruments recommended interval between each external calibration of the device.
DAQmx_ExtCal_LastTemp                        =                   0x1867;  % Indicates in degrees Celsius the temperature of the device at the time of the last external calibration. Compare this temperature to the current onboard temperature to determine if you should perform another calibration.
DAQmx_Cal_UserDefinedInfo                    =                   0x1861;  % Specifies a string that contains arbitrary, user-defined information. This number of characters in this string can be no more than Max Size.
DAQmx_Cal_UserDefinedInfo_MaxSize            =                   0x191C;  % Indicates the maximum length in characters of Information.
DAQmx_Cal_DevTemp                            =                   0x223B;  % Indicates in degrees Celsius the current temperature of the device.
DAQmx_Cal_AccConnectionCount                 =                   0x2FEB;  % Specifies the number of times a particular connection that results in tangible wear and tear of onboard components has been made on the accessory. This connection count is useful for tracking accessory life and usage.
DAQmx_Cal_RecommendedAccConnectionCountLimit =                   0x2FEC;  % Indicates the recommended connection count limit for an accessory. If the accessory connection count exceeds this limit, the accessory could require maintenance.

%********** Channel Attributes **********
DAQmx_AI_Max                                          =          0x17DD;  % Specifies the maximum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced maximum value that the device can measure with the current settings.
DAQmx_AI_Min                                          =          0x17DE;  % Specifies the minimum value you expect to measure. This value is in the units you specify with a units property.  When you query this property, it returns the coerced minimum value that the device can measure with the current settings.
DAQmx_AI_CustomScaleName                              =          0x17E0;  % Specifies the name of a custom scale for the channel.
DAQmx_AI_MeasType                                     =          0x0695;  % Indicates the measurement to take with the analog input channel and in some cases, such as for temperature measurements, the sensor to use.
DAQmx_AI_Voltage_Units                                =          0x1094;  % Specifies the units to use to return voltage measurements from the channel.
DAQmx_AI_Voltage_dBRef                                =          0x29B0;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes.
DAQmx_AI_Voltage_ACRMS_Units                          =          0x17E2;  % Specifies the units to use to return voltage RMS measurements from the channel.
DAQmx_AI_Temp_Units                                   =          0x1033;  % Specifies the units to use to return temperature measurements from the channel.
DAQmx_AI_Thrmcpl_Type                                 =          0x1050;  % Specifies the type of thermocouple connected to the channel. Thermocouple types differ in composition and measurement range.
DAQmx_AI_Thrmcpl_ScaleType                            =          0x29D0;  % Specifies the method or equation form that the thermocouple scale uses.
DAQmx_AI_Thrmcpl_CJCSrc                               =          0x1035;  % Indicates the source of cold-junction compensation.
DAQmx_AI_Thrmcpl_CJCVal                               =          0x1036;  % Specifies the temperature of the cold junction if CJC Source is DAQmx_Val_ConstVal. Specify this value in the units of the measurement.
DAQmx_AI_Thrmcpl_CJCChan                              =          0x1034;  % Indicates the channel that acquires the temperature of the cold junction if CJC Source is DAQmx_Val_Chan. If the channel is a temperature channel, NI-DAQmx acquires the temperature in the correct units. Other channel types, such as a resistance channel with a custom sensor, must use a custom scale to scale values to degrees Celsius.
DAQmx_AI_RTD_Type                                     =          0x1032;  % Specifies the type of RTD connected to the channel.
DAQmx_AI_RTD_R0                                       =          0x1030;  % Specifies in ohms the sensor resistance at 0 deg C. The Callendar-Van Dusen equation requires this value. Refer to the sensor documentation to determine this value.
DAQmx_AI_RTD_A                                        =          0x1010;  % Specifies the 'A' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
DAQmx_AI_RTD_B                                        =          0x1011;  % Specifies the 'B' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
DAQmx_AI_RTD_C                                        =          0x1013;  % Specifies the 'C' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
DAQmx_AI_Thrmstr_A                                    =          0x18C9;  % Specifies the 'A' constant of the Steinhart-Hart thermistor equation.
DAQmx_AI_Thrmstr_B                                    =          0x18CB;  % Specifies the 'B' constant of the Steinhart-Hart thermistor equation.
DAQmx_AI_Thrmstr_C                                    =          0x18CA;  % Specifies the 'C' constant of the Steinhart-Hart thermistor equation.
DAQmx_AI_Thrmstr_R1                                   =          0x1061;  % Specifies in ohms the value of the reference resistor for the thermistor if you use voltage excitation. NI-DAQmx ignores this value for current excitation.
DAQmx_AI_ForceReadFromChan                            =          0x18F8;  % Specifies whether to read from the channel if it is a cold-junction compensation channel. By default, an NI-DAQmx Read function does not return data from cold-junction compensation channels.  Setting this property to TRUE forces read operations to return the cold-junction compensation channel data with the other channels in the task.
DAQmx_AI_Current_Units                                =          0x0701;  % Specifies the units to use to return current measurements from the channel.
DAQmx_AI_Current_ACRMS_Units                          =          0x17E3;  % Specifies the units to use to return current RMS measurements from the channel.
DAQmx_AI_Strain_Units                                 =          0x0981;  % Specifies the units to use to return strain measurements from the channel.
DAQmx_AI_StrainGage_ForceReadFromChan                 =          0x2FFA;  % Specifies whether the data is returned by an NI-DAQmx Read function when set on a raw strain channel that is part of a rosette configuration.
DAQmx_AI_StrainGage_GageFactor                        =          0x0994;  % Specifies the sensitivity of the strain gage.  Gage factor relates the change in electrical resistance to the change in strain. Refer to the sensor documentation for this value.
DAQmx_AI_StrainGage_PoissonRatio                      =          0x0998;  % Specifies the ratio of lateral strain to axial strain in the material you are measuring.
DAQmx_AI_StrainGage_Cfg                               =          0x0982;  % Specifies the bridge configuration of the strain gages.
DAQmx_AI_RosetteStrainGage_RosetteType                =          0x2FFE;  % Indicates the type of rosette gage.
DAQmx_AI_RosetteStrainGage_Orientation                =          0x2FFC;  % Specifies gage orientation in degrees with respect to the X axis.
DAQmx_AI_RosetteStrainGage_StrainChans                =          0x2FFB;  % Indicates the raw strain channels that comprise the strain rosette.
DAQmx_AI_RosetteStrainGage_RosetteMeasType            =          0x2FFD;  % Specifies the type of rosette measurement.
DAQmx_AI_Resistance_Units                             =          0x0955;  % Specifies the units to use to return resistance measurements.
DAQmx_AI_Freq_Units                                   =          0x0806;  % Specifies the units to use to return frequency measurements from the channel.
DAQmx_AI_Freq_ThreshVoltage                           =          0x0815;  % Specifies the voltage level at which to recognize waveform repetitions. You should select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx_AI_Freq_Hyst                                    =          0x0814;  % Specifies in volts a window below Threshold Level. The input voltage must pass below Threshold Level minus this value before NI-DAQmx recognizes a waveform repetition at Threshold Level. Hysteresis can improve the measurement accuracy when the signal contains noise or jitter.
DAQmx_AI_LVDT_Units                                   =          0x0910;  % Specifies the units to use to return linear position measurements from the channel.
DAQmx_AI_LVDT_Sensitivity                             =          0x0939;  % Specifies the sensitivity of the LVDT. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx_AI_LVDT_SensitivityUnits                        =          0x219A;  % Specifies the units of Sensitivity.
DAQmx_AI_RVDT_Units                                   =          0x0877;  % Specifies the units to use to return angular position measurements from the channel.
DAQmx_AI_RVDT_Sensitivity                             =          0x0903;  % Specifies the sensitivity of the RVDT. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx_AI_RVDT_SensitivityUnits                        =          0x219B;  % Specifies the units of Sensitivity.
DAQmx_AI_EddyCurrentProxProbe_Units                   =          0x2AC0;  % Specifies the units to use to return proximity measurements from the channel.
DAQmx_AI_EddyCurrentProxProbe_Sensitivity             =          0x2ABE;  % Specifies the sensitivity of the eddy current proximity probe . This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx_AI_EddyCurrentProxProbe_SensitivityUnits        =          0x2ABF;  % Specifies the units of Sensitivity.
DAQmx_AI_SoundPressure_MaxSoundPressureLvl            =          0x223A;  % Specifies the maximum instantaneous sound pressure level you expect to measure. This value is in decibels, referenced to 20 micropascals. NI-DAQmx uses the maximum sound pressure level to calculate values in pascals for Maximum Value and Minimum Value for the channel.
DAQmx_AI_SoundPressure_Units                          =          0x1528;  % Specifies the units to use to return sound pressure measurements from the channel.
DAQmx_AI_SoundPressure_dBRef                          =          0x29B1;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes. NI-DAQmx also uses the decibel reference level when converting Maximum Sound Pressure Level to a voltage level.
DAQmx_AI_Microphone_Sensitivity                       =          0x1536;  % Specifies the sensitivity of the microphone. This value is in mV/Pa. Refer to the sensor documentation to determine this value.
DAQmx_AI_Accel_Units                                  =          0x0673;  % Specifies the units to use to return acceleration measurements from the channel.
DAQmx_AI_Accel_dBRef                                  =          0x29B2;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes.
DAQmx_AI_Accel_4WireDCVoltage_Sensitivity             =          0x3115;  % Specifies the sensitivity of the 4 wire DC voltage acceleration sensor connected to the channel. This value is the units you specify with AI.Accel.4WireDCVoltage.SensitivityUnits. Refer to the sensor documentation to determine this value.
DAQmx_AI_Accel_4WireDCVoltage_SensitivityUnits        =          0x3116;  % Specifies the units of AI.Accel.4WireDCVoltage.Sensitivity.
DAQmx_AI_Accel_Sensitivity                            =          0x0692;  % Specifies the sensitivity of the accelerometer. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx_AI_Accel_SensitivityUnits                       =          0x219C;  % Specifies the units of Sensitivity.
DAQmx_AI_Accel_Charge_Sensitivity                     =          0x3113;  % Specifies the sensitivity of the charge acceleration sensor connected to the channel. This value is the units you specify with AI.Accel.Charge.SensitivityUnits. Refer to the sensor documentation to determine this value.
DAQmx_AI_Accel_Charge_SensitivityUnits                =          0x3114;  % Specifies the units of AI.Accel.Charge.Sensitivity.
DAQmx_AI_Velocity_Units                               =          0x2FF4;  % Specifies in which unit to return velocity measurements from the channel.
DAQmx_AI_Velocity_IEPESensor_dBRef                    =          0x2FF5;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes.
DAQmx_AI_Velocity_IEPESensor_Sensitivity              =          0x2FF6;  % Specifies the sensitivity of the IEPE velocity sensor connected to the channel. Specify this value in the unit indicated by Sensitivity Units.
DAQmx_AI_Velocity_IEPESensor_SensitivityUnits         =          0x2FF7;  % Specifies the units for Sensitivity.
DAQmx_AI_Force_Units                                  =          0x2F75;  % Specifies in which unit to return force or load measurements from the channel.
DAQmx_AI_Force_IEPESensor_Sensitivity                 =          0x2F81;  % Specifies the sensitivity of the IEPE force sensor connected to the channel. Specify this value in the unit indicated by Sensitivity Units.
DAQmx_AI_Force_IEPESensor_SensitivityUnits            =          0x2F82;  % Specifies the units for Sensitivity.
DAQmx_AI_Pressure_Units                               =          0x2F76;  % Specifies  in which unit to return pressure measurements from the channel.
DAQmx_AI_Torque_Units                                 =          0x2F77;  % Specifies in which unit to return torque measurements from the channel.
DAQmx_AI_Bridge_Units                                 =          0x2F92;  % Specifies in which unit to return voltage ratios from the channel.
DAQmx_AI_Bridge_ElectricalUnits                       =          0x2F87;  % Specifies from which electrical unit to scale data. Select  the same unit that the sensor data sheet or calibration certificate uses for electrical values.
DAQmx_AI_Bridge_PhysicalUnits                         =          0x2F88;  % Specifies to which physical unit to scale electrical data. Select the same unit that the sensor data sheet or calibration certificate uses for physical values.
DAQmx_AI_Bridge_ScaleType                             =          0x2F89;  % Specifies the scaling type to use when scaling electrical values from the sensor to physical units.
DAQmx_AI_Bridge_TwoPointLin_First_ElectricalVal       =          0x2F8A;  % Specifies the first electrical value, corresponding to Physical Value. Specify this value in the unit indicated by Electrical Units.
DAQmx_AI_Bridge_TwoPointLin_First_PhysicalVal         =          0x2F8B;  % Specifies the first physical value, corresponding to Electrical Value. Specify this value in the unit indicated by Physical Units.
DAQmx_AI_Bridge_TwoPointLin_Second_ElectricalVal      =          0x2F8C;  % Specifies the second electrical value, corresponding to Physical Value. Specify this value in the unit indicated by Electrical Units.
DAQmx_AI_Bridge_TwoPointLin_Second_PhysicalVal        =          0x2F8D;  % Specifies the second physical value, corresponding to Electrical Value. Specify this value in the unit indicated by Physical Units.
DAQmx_AI_Bridge_Table_ElectricalVals                  =          0x2F8E;  % Specifies the array of electrical values that map to the values in Physical Values. Specify this value in the unit indicated by Electrical Units.
DAQmx_AI_Bridge_Table_PhysicalVals                    =          0x2F8F;  % Specifies the array of physical values that map to the values in Electrical Values. Specify this value in the unit indicated by Physical Units.
DAQmx_AI_Bridge_Poly_ForwardCoeff                     =          0x2F90;  % Specifies an array of coefficients for the polynomial that converts electrical values to physical values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
DAQmx_AI_Bridge_Poly_ReverseCoeff                     =          0x2F91;  % Specifies an array of coefficients for the polynomial that converts physical values to electrical values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
DAQmx_AI_Charge_Units                                 =          0x3112;  % Specifies the units to use to return charge measurements from the channel.
DAQmx_AI_Is_TEDS                                      =          0x2983;  % Indicates if the virtual channel was initialized using a TEDS bitstream from the corresponding physical channel.
DAQmx_AI_TEDS_Units                                   =          0x21E0;  % Indicates the units defined by TEDS information associated with the channel.
DAQmx_AI_Coupling                                     =          0x0064;  % Specifies the coupling for the channel.
DAQmx_AI_Impedance                                    =          0x0062;  % Specifies the input impedance of the channel.
DAQmx_AI_TermCfg                                      =          0x1097;  % Specifies the terminal configuration for the channel.
DAQmx_AI_InputSrc                                     =          0x2198;  % Specifies the source of the channel. You can use the signal from the I/O connector or one of several calibration signals. Certain devices have a single calibration signal bus. For these devices, you must specify the same calibration signal for all channels you connect to a calibration signal.
DAQmx_AI_ResistanceCfg                                =          0x1881;  % Specifies the resistance configuration for the channel. NI-DAQmx uses this value for any resistance-based measurements, including temperature measurement using a thermistor or RTD.
DAQmx_AI_LeadWireResistance                           =          0x17EE;  % Specifies in ohms the resistance of the wires that lead to the sensor.
DAQmx_AI_Bridge_Cfg                                   =          0x0087;  % Specifies the type of Wheatstone bridge connected to the channel.
DAQmx_AI_Bridge_NomResistance                         =          0x17EC;  % Specifies in ohms the resistance of the bridge while not under load.
DAQmx_AI_Bridge_InitialVoltage                        =          0x17ED;  % Specifies in volts the output voltage of the bridge while not under load. NI-DAQmx subtracts this value from any measurements before applying scaling equations.  If you set Initial Bridge Ratio, NI-DAQmx coerces this property to Initial Bridge Ratio times Actual Excitation Value. This property is set by DAQmx Perform Bridge Offset Nulling Calibration. If you set this property, NI-DAQmx coerces Initial Bridge Ratio...
DAQmx_AI_Bridge_InitialRatio                          =          0x2F86;  % Specifies in volts per volt the ratio of output voltage from the bridge to excitation voltage supplied to the bridge while not under load. NI-DAQmx subtracts this value from any measurements before applying scaling equations. If you set Initial Bridge Voltage, NI-DAQmx coerces this property  to Initial Bridge Voltage divided by Actual Excitation Value. If you set this property, NI-DAQmx coerces Initial Bridge Volt...
DAQmx_AI_Bridge_ShuntCal_Enable                       =          0x0094;  % Specifies whether to enable a shunt calibration switch. Use Shunt Cal Select to select the switch(es) to enable.
DAQmx_AI_Bridge_ShuntCal_Select                       =          0x21D5;  % Specifies which shunt calibration switch(es) to enable.  Use Shunt Cal Enable to enable the switch(es) you specify with this property.
DAQmx_AI_Bridge_ShuntCal_ShuntCalASrc                 =          0x30CA;  % Specifies whether to use internal or external shunt when Shunt Cal A is selected.
DAQmx_AI_Bridge_ShuntCal_GainAdjust                   =          0x193F;  % Specifies the result of a shunt calibration. This property is set by DAQmx Perform Shunt Calibration. NI-DAQmx multiplies data read from the channel by the value of this property. This value should be close to 1.0.
DAQmx_AI_Bridge_ShuntCal_ShuntCalAResistance          =          0x2F78;  % Specifies in ohms the desired value of the internal shunt calibration A resistor.
DAQmx_AI_Bridge_ShuntCal_ShuntCalAActualResistance    =          0x2F79;  % Specifies in ohms the actual value of the internal shunt calibration A resistor.
DAQmx_AI_Bridge_ShuntCal_ShuntCalBResistance          =          0x2F7A;  % Specifies in ohms the desired value of the internal shunt calibration B resistor.
DAQmx_AI_Bridge_ShuntCal_ShuntCalBActualResistance    =          0x2F7B;  % Specifies in ohms the actual value of the internal shunt calibration B resistor.
DAQmx_AI_Bridge_Balance_CoarsePot                     =          0x17F1;  % Specifies by how much to compensate for offset in the signal. This value can be between 0 and 127.
DAQmx_AI_Bridge_Balance_FinePot                       =          0x18F4;  % Specifies by how much to compensate for offset in the signal. This value can be between 0 and 4095.
DAQmx_AI_CurrentShunt_Loc                             =          0x17F2;  % Specifies the shunt resistor location for current measurements.
DAQmx_AI_CurrentShunt_Resistance                      =          0x17F3;  % Specifies in ohms the external shunt resistance for current measurements.
DAQmx_AI_Excit_Sense                                  =          0x30FD;  % Specifies whether to use local or remote sense to sense excitation.
DAQmx_AI_Excit_Src                                    =          0x17F4;  % Specifies the source of excitation.
DAQmx_AI_Excit_Val                                    =          0x17F5;  % Specifies the amount of excitation that the sensor requires. If Voltage or Current is  DAQmx_Val_Voltage, this value is in volts. If Voltage or Current is  DAQmx_Val_Current, this value is in amperes.
DAQmx_AI_Excit_UseForScaling                          =          0x17FC;  % Specifies if NI-DAQmx divides the measurement by the excitation. You should typically set this property to TRUE for ratiometric transducers. If you set this property to TRUE, set Maximum Value and Minimum Value to reflect the scaling.
DAQmx_AI_Excit_UseMultiplexed                         =          0x2180;  % Specifies if the SCXI-1122 multiplexes the excitation to the upper half of the channels as it advances through the scan list.
DAQmx_AI_Excit_ActualVal                              =          0x1883;  % Specifies the actual amount of excitation supplied by an internal excitation source.  If you read an internal excitation source more precisely with an external device, set this property to the value you read.  NI-DAQmx ignores this value for external excitation. When performing shunt calibration, some devices set this property automatically.
DAQmx_AI_Excit_DCorAC                                 =          0x17FB;  % Specifies if the excitation supply is DC or AC.
DAQmx_AI_Excit_VoltageOrCurrent                       =          0x17F6;  % Specifies if the channel uses current or voltage excitation.
DAQmx_AI_Excit_IdleOutputBehavior                     =          0x30B8;  % Specifies whether this channel will disable excitation after the task is uncommitted. Setting this to Zero Volts or Amps disables excitation after task uncommit. Setting this attribute to Maintain Existing Value leaves the excitation on after task uncommit.
DAQmx_AI_ACExcit_Freq                                 =          0x0101;  % Specifies the AC excitation frequency in Hertz.
DAQmx_AI_ACExcit_SyncEnable                           =          0x0102;  % Specifies whether to synchronize the AC excitation source of the channel to that of another channel. Synchronize the excitation sources of multiple channels to use multichannel sensors. Set this property to FALSE for the master channel and to TRUE for the slave channels.
DAQmx_AI_ACExcit_WireMode                             =          0x18CD;  % Specifies the number of leads on the LVDT or RVDT. Some sensors require you to tie leads together to create a four- or five- wire sensor. Refer to the sensor documentation for more information.
DAQmx_AI_SensorPower_Voltage                          =          0x3169;  % Specifies the voltage level for the sensor's power supply.
DAQmx_AI_SensorPower_Cfg                              =          0x316A;  % Specifies whether to turn on the sensor's power supply or to leave the configuration unchanged.
DAQmx_AI_SensorPower_Type                             =          0x316B;  % Specifies the type of power supplied to the sensor.
DAQmx_AI_OpenThrmcplDetectEnable                      =          0x2F72;  % Specifies whether to apply the open thermocouple detection bias voltage to the channel. Changing the value of this property on a channel may require settling time before the data returned is valid. To compensate for this settling time, discard unsettled data or add a delay between committing and starting the task. Refer to your device specifications for the required settling time. When open thermocouple detection ...
DAQmx_AI_Thrmcpl_LeadOffsetVoltage                    =          0x2FB8;  % Specifies the lead offset nulling voltage to subtract from measurements on a device. This property is ignored if open thermocouple detection is disabled.
DAQmx_AI_Atten                                        =          0x1801;  % Specifies the amount of attenuation to use.
DAQmx_AI_ProbeAtten                                   =          0x2A88;  % Specifies the amount of attenuation provided by the probe connected to the channel. Specify this attenuation as a ratio.
DAQmx_AI_Lowpass_Enable                               =          0x1802;  % Specifies whether to enable the lowpass filter of the channel.
DAQmx_AI_Lowpass_CutoffFreq                           =          0x1803;  % Specifies the frequency in Hertz that corresponds to the -3dB cutoff of the filter.
DAQmx_AI_Lowpass_SwitchCap_ClkSrc                     =          0x1884;  % Specifies the source of the filter clock. If you need a higher resolution for the filter, you can supply an external clock to increase the resolution. Refer to the SCXI-1141/1142/1143 User Manual for more information.
DAQmx_AI_Lowpass_SwitchCap_ExtClkFreq                 =          0x1885;  % Specifies the frequency of the external clock when you set Clock Source to DAQmx_Val_External.  NI-DAQmx uses this frequency to set the pre- and post- filters on the SCXI-1141, SCXI-1142, and SCXI-1143. On those devices, NI-DAQmx determines the filter cutoff by using the equation f/(100*n), where f is the external frequency, and n is the external clock divisor. Refer to the SCXI-1141/1142/1143 User Manual for more...
DAQmx_AI_Lowpass_SwitchCap_ExtClkDiv                  =          0x1886;  % Specifies the divisor for the external clock when you set Clock Source to DAQmx_Val_External. On the SCXI-1141, SCXI-1142, and SCXI-1143, NI-DAQmx determines the filter cutoff by using the equation f/(100*n), where f is the external frequency, and n is the external clock divisor. Refer to the SCXI-1141/1142/1143 User Manual for more information.
DAQmx_AI_Lowpass_SwitchCap_OutClkDiv                  =          0x1887;  % Specifies the divisor for the output clock.  NI-DAQmx uses the cutoff frequency to determine the output clock frequency. Refer to the SCXI-1141/1142/1143 User Manual for more information.
DAQmx_AI_DigFltr_Enable                               =          0x30BD;  % Specifies whether the digital filter is enabled or disabled.
DAQmx_AI_DigFltr_Type                                 =          0x30BE;  % Specifies the digital filter type.
DAQmx_AI_DigFltr_Response                             =          0x30BF;  % Specifies the digital filter response.
DAQmx_AI_DigFltr_Order                                =          0x30C0;  % Specifies the order of the digital filter.
DAQmx_AI_DigFltr_Lowpass_CutoffFreq                   =          0x30C1;  % Specifies the lowpass cutoff frequency of the digital filter.
DAQmx_AI_DigFltr_Highpass_CutoffFreq                  =          0x30C2;  % Specifies the highpass cutoff frequency of the digital filter.
DAQmx_AI_DigFltr_Bandpass_CenterFreq                  =          0x30C3;  % Specifies the center frequency of the passband for the digital filter.
DAQmx_AI_DigFltr_Bandpass_Width                       =          0x30C4;  % Specifies the width of the passband centered around the center frequency for the digital filter.
DAQmx_AI_DigFltr_Notch_CenterFreq                     =          0x30C5;  % Specifies the center frequency of the stopband for the digital filter.
DAQmx_AI_DigFltr_Notch_Width                          =          0x30C6;  % Specifies the width of the stopband centered around the center frequency for the digital filter.
DAQmx_AI_DigFltr_Coeff                                =          0x30C7;  % Specifies the digital filter coefficients.
DAQmx_AI_Filter_Enable                                =          0x3173;  % Specifies the corresponding filter enable/disable state.
DAQmx_AI_Filter_Freq                                  =          0x3174;  % Specifies the corresponding filter frequency (cutoff or center) of the filter response.
DAQmx_AI_Filter_Response                              =          0x3175;  % Specifies the corresponding filter response and defines the shape of the filter response.
DAQmx_AI_Filter_Order                                 =          0x3176;  % Specifies the corresponding filter order and defines the slope of the filter response.
DAQmx_AI_FilterDelay                                  =          0x2FED;  % Indicates the amount of time between when the ADC samples data and when the sample is read by the host device. This value is in the units you specify with Filter Delay Units. You can adjust this amount of time using Filter Delay Adjustment.
DAQmx_AI_FilterDelayUnits                             =          0x3071;  % Specifies the units of Filter Delay and Filter Delay Adjustment.
DAQmx_AI_RemoveFilterDelay                            =          0x2FBD;  % Specifies if filter delay removal is enabled on the device.
DAQmx_AI_FilterDelayAdjustment                        =          0x3074;  % Specifies the amount of filter delay that gets removed if Remove Filter Delay is enabled. This delay adjustment is in addition to the value indicated by Filter Delay. This delay adjustment is in the units you specify with Filter Delay Units.
DAQmx_AI_AveragingWinSize                             =          0x2FEE;  % Specifies the number of samples to average while acquiring data. Increasing the number of samples to average reduces noise in your measurement.
DAQmx_AI_ResolutionUnits                              =          0x1764;  % Indicates the units of Resolution Value.
DAQmx_AI_Resolution                                   =          0x1765;  % Indicates the resolution of the analog-to-digital converter of the channel. This value is in the units you specify with Resolution Units.
DAQmx_AI_RawSampSize                                  =          0x22DA;  % Indicates in bits the size of a raw sample from the device.
DAQmx_AI_RawSampJustification                         =          0x0050;  % Indicates the justification of a raw sample from the device.
DAQmx_AI_ADCTimingMode                                =          0x29F9;  % Specifies the ADC timing mode, controlling the tradeoff between speed and effective resolution. Some ADC timing modes provide increased powerline noise rejection. On devices that have an AI Convert clock, this setting affects both the maximum and default values for Rate. You must use the same ADC timing mode for all channels on a device, but you can use different ADC timing modes for different devices in the same ...
DAQmx_AI_ADCCustomTimingMode                          =          0x2F6B;  % Specifies the timing mode of the ADC when Timing Mode is DAQmx_Val_Custom.
DAQmx_AI_Dither_Enable                                =          0x0068;  % Specifies whether to enable dithering.  Dithering adds Gaussian noise to the input signal. You can use dithering to achieve higher resolution measurements by over sampling the input signal and averaging the results.
DAQmx_AI_ChanCal_HasValidCalInfo                      =          0x2297;  % Indicates if the channel has calibration information.
DAQmx_AI_ChanCal_EnableCal                            =          0x2298;  % Specifies whether to enable the channel calibration associated with the channel.
DAQmx_AI_ChanCal_ApplyCalIfExp                        =          0x2299;  % Specifies whether to apply the channel calibration to the channel after the expiration date has passed.
DAQmx_AI_ChanCal_ScaleType                            =          0x229C;  % Specifies the method or equation form that the calibration scale uses.
DAQmx_AI_ChanCal_Table_PreScaledVals                  =          0x229D;  % Specifies the reference values collected when calibrating the channel.
DAQmx_AI_ChanCal_Table_ScaledVals                     =          0x229E;  % Specifies the acquired values collected when calibrating the channel.
DAQmx_AI_ChanCal_Poly_ForwardCoeff                    =          0x229F;  % Specifies the forward polynomial values used for calibrating the channel.
DAQmx_AI_ChanCal_Poly_ReverseCoeff                    =          0x22A0;  % Specifies the reverse polynomial values used for calibrating the channel.
DAQmx_AI_ChanCal_OperatorName                         =          0x22A3;  % Specifies the name of the operator who performed the channel calibration.
DAQmx_AI_ChanCal_Desc                                 =          0x22A4;  % Specifies the description entered for the calibration of the channel.
DAQmx_AI_ChanCal_Verif_RefVals                        =          0x22A1;  % Specifies the reference values collected when verifying the calibration. NI-DAQmx stores these values as a record of calibration accuracy and does not use them in the scaling process.
DAQmx_AI_ChanCal_Verif_AcqVals                        =          0x22A2;  % Specifies the acquired values collected when verifying the calibration. NI-DAQmx stores these values as a record of calibration accuracy and does not use them in the scaling process.
DAQmx_AI_Rng_High                                     =          0x1815;  % Specifies the upper limit of the input range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx_AI_Rng_Low                                      =          0x1816;  % Specifies the lower limit of the input range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx_AI_DCOffset                                     =          0x2A89;  % Specifies the DC value to add to the input range of the device. Use High and Low to specify the input range. This offset is in the native units of the device .
DAQmx_AI_Gain                                         =          0x1818;  % Specifies a gain factor to apply to the channel.
DAQmx_AI_SampAndHold_Enable                           =          0x181A;  % Specifies whether to enable the sample and hold circuitry of the device. When you disable sample and hold circuitry, a small voltage offset might be introduced into the signal.  You can eliminate this offset by using Auto Zero Mode to perform an auto zero on the channel.
DAQmx_AI_AutoZeroMode                                 =          0x1760;  % Specifies how often to measure ground. NI-DAQmx subtracts the measured ground voltage from every sample.
DAQmx_AI_ChopEnable                                   =          0x3143;  % Specifies whether the device will chop its inputs. Chopping removes offset voltages and other low frequency errors.
DAQmx_AI_DataXferMaxRate                              =          0x3117;  % Specifies the rate in B/s to transfer data from the device. If this value is not set, then the device will transfer data at a rate based on the bus detected. Modify this value to affect performance under different combinations of operating system, configuration, and device.
DAQmx_AI_DataXferMech                                 =          0x1821;  % Specifies the data transfer mode for the device.
DAQmx_AI_DataXferReqCond                              =          0x188B;  % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
DAQmx_AI_DataXferCustomThreshold                      =          0x230C;  % Specifies the number of samples that must be in the FIFO to transfer data from the device if Data Transfer Request Condition is DAQmx_Val_OnbrdMemCustomThreshold.
DAQmx_AI_UsbXferReqSize                               =          0x2A8E;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_AI_UsbXferReqCount                              =          0x3000;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_AI_MemMapEnable                                 =          0x188C;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx_AI_RawDataCompressionType                       =          0x22D8;  % Specifies the type of compression to apply to raw samples returned from the device.
DAQmx_AI_LossyLSBRemoval_CompressedSampSize           =          0x22D9;  % Specifies the number of bits to return in a raw sample when Raw Data Compression Type is set to DAQmx_Val_LossyLSBRemoval.
DAQmx_AI_DevScalingCoeff                              =          0x1930;  % Indicates the coefficients of a polynomial equation that NI-DAQmx uses to scale values from the native format of the device to volts. Each element of the array corresponds to a term of the equation. For example, if index two of the array is 4, the third term of the equation is 4x^2. Scaling coefficients do not account for any custom scales or sensors contained by the channel.
DAQmx_AI_EnhancedAliasRejectionEnable                 =          0x2294;  % Specifies whether to enable enhanced alias rejection. Leave this property set to the default value for most applications.
DAQmx_AI_OpenChanDetectEnable                         =          0x30FF;  % Specifies whether to enable open channel detection.
DAQmx_AI_InputLimitsFaultDetect_UpperLimit            =          0x318C;  % Specifies the level of the upper limit for input limits detection. An input sample outside the upper and lower bounds causes a fault. Note: Fault detection applies to both positive and negative inputs. For instance, if you specify a lower limit of 2 mA and an upper limit of 12 mA, NI-DAQmx detects a fault at 15 mA and -15 mA, but not at -6 mA because it is in the range of -12 mA to -2 mA.
DAQmx_AI_InputLimitsFaultDetect_LowerLimit            =          0x318D;  % Specifies the level of the lower limit for input limits detection. An input sample outside the upper and lower bounds causes a fault. Note: Fault detection applies to both positive and negative inputs. For instance, if you specify a lower limit of 2 mA and an upper limit of 12 mA, NI-DAQmx detects a fault at 15 mA and -15 mA, but not at -6 mA because it is in the range of -12 mA to -2 mA.
DAQmx_AI_InputLimitsFaultDetectEnable                 =          0x318E;  % Specifies whether to enable input limits fault detection.
DAQmx_AI_PowerSupplyFaultDetectEnable                 =          0x3191;  % Specifies whether to enable power supply fault detection.
DAQmx_AI_OvercurrentDetectEnable                      =          0x3194;  % Specifies whether to enable overcurrent detection.
DAQmx_AO_Max                                          =          0x1186;  % Specifies the maximum value you expect to generate. The value is in the units you specify with a units property. If you try to write a value larger than the maximum value, NI-DAQmx generates an error. NI-DAQmx might coerce this value to a smaller value if other task settings restrict the device from generating the desired maximum.
DAQmx_AO_Min                                          =          0x1187;  % Specifies the minimum value you expect to generate. The value is in the units you specify with a units property. If you try to write a value smaller than the minimum value, NI-DAQmx generates an error. NI-DAQmx might coerce this value to a larger value if other task settings restrict the device from generating the desired minimum.
DAQmx_AO_CustomScaleName                              =          0x1188;  % Specifies the name of a custom scale for the channel.
DAQmx_AO_OutputType                                   =          0x1108;  % Indicates whether the channel generates voltage,  current, or a waveform.
DAQmx_AO_Voltage_Units                                =          0x1184;  % Specifies in what units to generate voltage on the channel. Write data to the channel in the units you select.
DAQmx_AO_Voltage_CurrentLimit                         =          0x2A1D;  % Specifies the current limit, in amperes, for the voltage channel.
DAQmx_AO_Current_Units                                =          0x1109;  % Specifies in what units to generate current on the channel. Write data to the channel in the units you select.
DAQmx_AO_FuncGen_Type                                 =          0x2A18;  % Specifies the kind of the waveform to generate.
DAQmx_AO_FuncGen_Freq                                 =          0x2A19;  % Specifies the frequency of the waveform to generate in hertz.
DAQmx_AO_FuncGen_Amplitude                            =          0x2A1A;  % Specifies the zero-to-peak amplitude of the waveform to generate in volts. Zero and negative values are valid.
DAQmx_AO_FuncGen_Offset                               =          0x2A1B;  % Specifies the voltage offset of the waveform to generate.
DAQmx_AO_FuncGen_StartPhase                           =          0x31C4;  % Specifies the starting phase in degrees of the waveform to generate.
DAQmx_AO_FuncGen_Square_DutyCycle                     =          0x2A1C;  % Specifies the square wave duty cycle of the waveform to generate.
DAQmx_AO_FuncGen_ModulationType                       =          0x2A22;  % Specifies if the device generates a modulated version of the waveform using the original waveform as a carrier and input from an external terminal as the signal.
DAQmx_AO_FuncGen_FMDeviation                          =          0x2A23;  % Specifies the FM deviation in hertz per volt when Type is DAQmx_Val_FM.
DAQmx_AO_OutputImpedance                              =          0x1490;  % Specifies in ohms the impedance of the analog output stage of the device.
DAQmx_AO_LoadImpedance                                =          0x0121;  % Specifies in ohms the load impedance connected to the analog output channel.
DAQmx_AO_IdleOutputBehavior                           =          0x2240;  % Specifies the state of the channel when no generation is in progress.
DAQmx_AO_TermCfg                                      =          0x188E;  % Specifies the terminal configuration of the channel.
DAQmx_AO_Common_Mode_Offset                           =          0x31CC;  % Specifies the common-mode offset of the AO channel. Use the property only when Terminal Configuration is set to Differential.
DAQmx_AO_ResolutionUnits                              =          0x182B;  % Specifies the units of Resolution Value.
DAQmx_AO_Resolution                                   =          0x182C;  % Indicates the resolution of the digital-to-analog converter of the channel. This value is in the units you specify with Resolution Units.
DAQmx_AO_DAC_Rng_High                                 =          0x182E;  % Specifies the upper limit of the output range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx_AO_DAC_Rng_Low                                  =          0x182D;  % Specifies the lower limit of the output range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx_AO_DAC_Ref_ConnToGnd                            =          0x0130;  % Specifies whether to ground the internal DAC reference. Grounding the internal DAC reference has the effect of grounding all analog output channels and stopping waveform generation across all analog output channels regardless of whether the channels belong to the current task. You can ground the internal DAC reference only when Source is DAQmx_Val_Internal and Allow Connecting DAC Reference to Ground at Runtime is...
DAQmx_AO_DAC_Ref_AllowConnToGnd                       =          0x1830;  % Specifies whether to allow grounding the internal DAC reference at run time. You must set this property to TRUE and set Source to DAQmx_Val_Internal before you can set Connect DAC Reference to Ground to TRUE.
DAQmx_AO_DAC_Ref_Src                                  =          0x0132;  % Specifies the source of the DAC reference voltage. The value of this voltage source determines the full-scale value of the DAC.
DAQmx_AO_DAC_Ref_ExtSrc                               =          0x2252;  % Specifies the source of the DAC reference voltage if Source is DAQmx_Val_External. The valid sources for this signal vary by device.
DAQmx_AO_DAC_Ref_Val                                  =          0x1832;  % Specifies in volts the value of the DAC reference voltage. This voltage determines the full-scale range of the DAC. Smaller reference voltages result in smaller ranges, but increased resolution.
DAQmx_AO_DAC_Offset_Src                               =          0x2253;  % Specifies the source of the DAC offset voltage. The value of this voltage source determines the full-scale value of the DAC.
DAQmx_AO_DAC_Offset_ExtSrc                            =          0x2254;  % Specifies the source of the DAC offset voltage if Source is DAQmx_Val_External. The valid sources for this signal vary by device.
DAQmx_AO_DAC_Offset_Val                               =          0x2255;  % Specifies in volts the value of the DAC offset voltage. To achieve best accuracy, the DAC offset value should be hand calibrated.
DAQmx_AO_ReglitchEnable                               =          0x0133;  % Specifies whether to enable reglitching.  The output of a DAC normally glitches whenever the DAC is updated with a new value. The amount of glitching differs from code to code and is generally largest at major code transitions.  Reglitching generates uniform glitch energy at each code transition and provides for more uniform glitches.  Uniform glitch energy makes it easier to filter out the noise introduced from g...
DAQmx_AO_FilterDelay                                  =          0x3075;  % Specifies the amount of time between when the sample is written by the host device and when the sample is output by the DAC. This value is in the units you specify with Filter Delay Units.
DAQmx_AO_FilterDelayUnits                             =          0x3076;  % Specifies the units of Filter Delay and Filter Delay Adjustment.
DAQmx_AO_FilterDelayAdjustment                        =          0x3072;  % Specifies an additional amount of time to wait between when the sample is written by the host device and when the sample is output by the DAC. This delay adjustment is in addition to the value indicated by Filter Delay. This delay adjustment is in the units you specify with Filter Delay Units.
DAQmx_AO_Gain                                         =          0x0118;  % Specifies in decibels the gain factor to apply to the channel.
DAQmx_AO_UseOnlyOnBrdMem                              =          0x183A;  % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory directly after you start the task. Onboard memory includes data FIFOs.
DAQmx_AO_DataXferMech                                 =          0x0134;  % Specifies the data transfer mode for the device.
DAQmx_AO_DataXferReqCond                              =          0x183C;  % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
DAQmx_AO_UsbXferReqSize                               =          0x2A8F;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_AO_UsbXferReqCount                              =          0x3001;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_AO_MemMapEnable                                 =          0x188F;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx_AO_DevScalingCoeff                              =          0x1931;  % Indicates the coefficients of a linear equation that NI-DAQmx uses to scale values from a voltage to the native format of the device. Each element of the array corresponds to a term of the equation. The first element of the array corresponds to the y-intercept, and the second element corresponds to the slope. Scaling coefficients do not account for any custom scales that may be applied to the channel.
DAQmx_AO_EnhancedImageRejectionEnable                 =          0x2241;  % Specifies whether to enable the DAC interpolation filter. Disable the interpolation filter to improve DAC signal-to-noise ratio at the expense of degraded image rejection.
DAQmx_DI_InvertLines                                  =          0x0793;  % Specifies whether to invert the lines in the channel. If you set this property to TRUE, the lines are at high logic when off and at low logic when on.
DAQmx_DI_NumLines                                     =          0x2178;  % Indicates the number of digital lines in the channel.
DAQmx_DI_DigFltr_Enable                               =          0x21D6;  % Specifies whether to enable the digital filter for the line(s) or port(s). You can enable the filter on a line-by-line basis. You do not have to enable the filter for all lines in a channel.
DAQmx_DI_DigFltr_MinPulseWidth                        =          0x21D7;  % Specifies in seconds the minimum pulse width the filter recognizes as a valid high or low state transition.
DAQmx_DI_DigFltr_EnableBusMode                        =          0x2EFE;  % Specifies whether to enable bus mode for digital filtering. If you set this property to TRUE, NI-DAQmx treats all lines that use common filtering settings as a bus. If any line in the bus has jitter, all lines in the bus hold state until the entire bus stabilizes, or until 2 times the minimum pulse width elapses. If you set this property to FALSE, NI-DAQmx filters all lines individually. Jitter in one line does no...
DAQmx_DI_DigFltr_TimebaseSrc                          =          0x2ED4;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_DI_DigFltr_TimebaseRate                         =          0x2ED5;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_DI_DigSync_Enable                               =          0x2ED6;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_DI_Tristate                                     =          0x1890;  % Specifies whether to tristate the lines in the channel. If you set this property to TRUE, NI-DAQmx tristates the lines in the channel. If you set this property to FALSE, NI-DAQmx does not modify the configuration of the lines even if the lines were previously tristated. Set this property to FALSE to read lines in other tasks or to read output-only lines.
DAQmx_DI_LogicFamily                                  =          0x296D;  % Specifies the logic family to use for acquisition. A logic family corresponds to voltage thresholds that are compatible with a group of voltage standards. Refer to the device documentation for information on the logic high and logic low voltages for these logic families.
DAQmx_DI_DataXferMech                                 =          0x2263;  % Specifies the data transfer mode for the device.
DAQmx_DI_DataXferReqCond                              =          0x2264;  % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
DAQmx_DI_UsbXferReqSize                               =          0x2A90;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_DI_UsbXferReqCount                              =          0x3002;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_DI_MemMapEnable                                 =          0x296A;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx_DI_AcquireOn                                    =          0x2966;  % Specifies on which edge of the sample clock to acquire samples.
DAQmx_DO_OutputDriveType                              =          0x1137;  % Specifies the drive type for digital output channels.
DAQmx_DO_InvertLines                                  =          0x1133;  % Specifies whether to invert the lines in the channel. If you set this property to TRUE, the lines are at high logic when off and at low logic when on.
DAQmx_DO_NumLines                                     =          0x2179;  % Indicates the number of digital lines in the channel.
DAQmx_DO_Tristate                                     =          0x18F3;  % Specifies whether to stop driving the channel and set it to a high-impedance state. You must commit the task for this setting to take effect.
DAQmx_DO_LineStates_StartState                        =          0x2972;  % Specifies the state of the lines in a digital output task when the task starts.
DAQmx_DO_LineStates_PausedState                       =          0x2967;  % Specifies the state of the lines in a digital output task when the task pauses.
DAQmx_DO_LineStates_DoneState                         =          0x2968;  % Specifies the state of the lines in a digital output task when the task completes execution.
DAQmx_DO_LogicFamily                                  =          0x296E;  % Specifies the logic family to use for generation. A logic family corresponds to voltage thresholds that are compatible with a group of voltage standards. Refer to the device documentation for information on the logic high and logic low voltages for these logic families.
DAQmx_DO_Overcurrent_Limit                            =          0x2A85;  % Specifies the current threshold in Amperes for the channel. A value of 0 means the channel observes no limit. Devices can monitor only a finite number of current thresholds simultaneously. If you attempt to monitor additional thresholds, NI-DAQmx returns an error.
DAQmx_DO_Overcurrent_AutoReenable                     =          0x2A86;  % Specifies whether to automatically reenable channels after they no longer exceed the current limit specified by Current Limit.
DAQmx_DO_Overcurrent_ReenablePeriod                   =          0x2A87;  % Specifies the delay in seconds between the time a channel no longer exceeds the current limit and the reactivation of that channel, if Automatic Re-enable is TRUE.
DAQmx_DO_UseOnlyOnBrdMem                              =          0x2265;  % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory after you start the task. Onboard memory includes data FIFOs.
DAQmx_DO_DataXferMech                                 =          0x2266;  % Specifies the data transfer mode for the device.
DAQmx_DO_DataXferReqCond                              =          0x2267;  % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
DAQmx_DO_UsbXferReqSize                               =          0x2A91;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_DO_UsbXferReqCount                              =          0x3003;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_DO_MemMapEnable                                 =          0x296B;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx_DO_GenerateOn                                   =          0x2969;  % Specifies on which edge of the sample clock to generate samples.
DAQmx_CI_Max                                          =          0x189C;  % Specifies the maximum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced maximum value that the hardware can measure with the current settings.
DAQmx_CI_Min                                          =          0x189D;  % Specifies the minimum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced minimum value that the hardware can measure with the current settings.
DAQmx_CI_CustomScaleName                              =          0x189E;  % Specifies the name of a custom scale for the channel.
DAQmx_CI_MeasType                                     =          0x18A0;  % Indicates the measurement to take with the channel.
DAQmx_CI_Freq_Units                                   =          0x18A1;  % Specifies the units to use to return frequency measurements.
DAQmx_CI_Freq_Term                                    =          0x18A2;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_Freq_TermCfg                                 =          0x3097;  % Specifies the input terminal configuration.
DAQmx_CI_Freq_LogicLvlBehavior                        =          0x3098;  % Specifies the logic level behavior on the input line.
DAQmx_CI_Freq_ThreshVoltage                           =          0x31AB;  % Specifies the voltage level at which to recognize waveform repetitions. Select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx_CI_Freq_Hyst                                    =          0x31AC;  % Specifies a hysteresis level to apply to Threshold Level. When Starting Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Starting Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx_CI_Freq_DigFltr_Enable                          =          0x21E7;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Freq_DigFltr_MinPulseWidth                   =          0x21E8;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Freq_DigFltr_TimebaseSrc                     =          0x21E9;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Freq_DigFltr_TimebaseRate                    =          0x21EA;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Freq_DigSync_Enable                          =          0x21EB;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Freq_StartingEdge                            =          0x0799;  % Specifies between which edges to measure the frequency of the signal.
DAQmx_CI_Freq_MeasMeth                                =          0x0144;  % Specifies the method to use to measure the frequency of the signal.
DAQmx_CI_Freq_EnableAveraging                         =          0x2ED0;  % Specifies whether to enable averaging mode for Sample Clock-timed frequency measurements.
DAQmx_CI_Freq_MeasTime                                =          0x0145;  % Specifies in seconds the length of time to measure the frequency of the signal if Method is DAQmx_Val_HighFreq2Ctr. Measurement accuracy increases with increased measurement time and with increased signal frequency. If you measure a high-frequency signal for too long, however, the count register could roll over, which results in an incorrect measurement.
DAQmx_CI_Freq_Div                                     =          0x0147;  % Specifies the value by which to divide the input signal if  Method is DAQmx_Val_LargeRng2Ctr. The larger the divisor, the more accurate the measurement. However, too large a value could cause the count register to roll over, which results in an incorrect measurement.
DAQmx_CI_Period_Units                                 =          0x18A3;  % Specifies the unit to use to return period measurements.
DAQmx_CI_Period_Term                                  =          0x18A4;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_Period_TermCfg                               =          0x3099;  % Specifies the input terminal configuration.
DAQmx_CI_Period_LogicLvlBehavior                      =          0x309A;  % Specifies the logic level behavior on the input line.
DAQmx_CI_Period_ThreshVoltage                         =          0x31AD;  % Specifies the voltage level at which to recognize waveform repetitions. Select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx_CI_Period_Hyst                                  =          0x31AE;  % Specifies a hysteresis level to apply to Threshold Level. When Starting Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Starting Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx_CI_Period_DigFltr_Enable                        =          0x21EC;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Period_DigFltr_MinPulseWidth                 =          0x21ED;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Period_DigFltr_TimebaseSrc                   =          0x21EE;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Period_DigFltr_TimebaseRate                  =          0x21EF;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Period_DigSync_Enable                        =          0x21F0;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Period_StartingEdge                          =          0x0852;  % Specifies between which edges to measure the period of the signal.
DAQmx_CI_Period_MeasMeth                              =          0x192C;  % Specifies the method to use to measure the period of the signal.
DAQmx_CI_Period_EnableAveraging                       =          0x2ED1;  % Specifies whether to enable averaging mode for Sample Clock-timed period measurements.
DAQmx_CI_Period_MeasTime                              =          0x192D;  % Specifies in seconds the length of time to measure the period of the signal if Method is DAQmx_Val_HighFreq2Ctr. Measurement accuracy increases with increased measurement time and with increased signal frequency. If you measure a high-frequency signal for too long, however, the count register could roll over, which results in an incorrect measurement.
DAQmx_CI_Period_Div                                   =          0x192E;  % Specifies the value by which to divide the input signal if Method is DAQmx_Val_LargeRng2Ctr. The larger the divisor, the more accurate the measurement. However, too large a value could cause the count register to roll over, which results in an incorrect measurement.
DAQmx_CI_CountEdges_Term                              =          0x18C7;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_CountEdges_TermCfg                           =          0x309B;  % Specifies the input terminal configuration.
DAQmx_CI_CountEdges_LogicLvlBehavior                  =          0x309C;  % Specifies the logic level behavior on the input line.
DAQmx_CI_CountEdges_ThreshVoltage                     =          0x31AF;  % Specifies the voltage level at which to recognize waveform repetitions. Select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx_CI_CountEdges_Hyst                              =          0x31B0;  % Specifies a hysteresis level to apply to Threshold Level. When Active Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Active Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx_CI_CountEdges_DigFltr_Enable                    =          0x21F6;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_CountEdges_DigFltr_MinPulseWidth             =          0x21F7;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_CountEdges_DigFltr_TimebaseSrc               =          0x21F8;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_CountEdges_DigFltr_TimebaseRate              =          0x21F9;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_CountEdges_DigSync_Enable                    =          0x21FA;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_CountEdges_Dir                               =          0x0696;  % Specifies whether to increment or decrement the counter on each edge.
DAQmx_CI_CountEdges_DirTerm                           =          0x21E1;  % Specifies the source terminal of the digital signal that controls the count direction if Direction is DAQmx_Val_ExtControlled.
DAQmx_CI_CountEdges_CountDir_TermCfg                  =          0x309D;  % Specifies the input terminal configuration.
DAQmx_CI_CountEdges_CountDir_LogicLvlBehavior         =          0x309E;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_CountEdges_CountDir_ThreshVoltage            =          0x31B1;  % Specifies the voltage level applied to the Count Direction terminal. When the signal is above this threshold, the counter counts up. When the signal is below this threshold, the counter counts down.
DAQmx_CI_CountEdges_CountDir_Hyst                     =          0x31B2;  % Specifies a hysteresis level applied to the Threshold Level. The source signal must fall below Threshold Level minus the hysteresis before a change in count direction occurs.
DAQmx_CI_CountEdges_CountDir_DigFltr_Enable           =          0x21F1;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_CountEdges_CountDir_DigFltr_MinPulseWidth    =          0x21F2;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_CountEdges_CountDir_DigFltr_TimebaseSrc      =          0x21F3;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_CountEdges_CountDir_DigFltr_TimebaseRate     =          0x21F4;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_CountEdges_CountDir_DigSync_Enable           =          0x21F5;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_CountEdges_InitialCnt                        =          0x0698;  % Specifies the starting value from which to count.
DAQmx_CI_CountEdges_ActiveEdge                        =          0x0697;  % Specifies on which edges to increment or decrement the counter.
DAQmx_CI_CountEdges_CountReset_Enable                 =          0x2FAF;  % Specifies whether to reset the count on the active edge specified with Terminal.
DAQmx_CI_CountEdges_CountReset_ResetCount             =          0x2FB0;  % Specifies the value to reset the count to.
DAQmx_CI_CountEdges_CountReset_Term                   =          0x2FB1;  % Specifies the input terminal of the signal to reset the count.
DAQmx_CI_CountEdges_CountReset_TermCfg                =          0x309F;  % Specifies the input terminal configuration.
DAQmx_CI_CountEdges_CountReset_LogicLvlBehavior       =          0x30A0;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_CountEdges_CountReset_ThreshVoltage          =          0x31B3;  % Specifies the voltage level at which to recognize the counter reset event.
DAQmx_CI_CountEdges_CountReset_Hyst                   =          0x31B4;  % Specifies a hysteresis level applied to Threshold Level. When Active Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Active Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx_CI_CountEdges_CountReset_DigFltr_Enable         =          0x2FB3;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_CountEdges_CountReset_DigFltr_MinPulseWidth  =          0x2FB4;  % Specifies the minimum pulse width the filter recognizes.
DAQmx_CI_CountEdges_CountReset_DigFltr_TimebaseSrc    =          0x2FB5;  % Specifies the input of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_CountEdges_CountReset_DigFltr_TimebaseRate   =          0x2FB6;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_CountEdges_CountReset_DigSync_Enable         =          0x2FB7;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_CountEdges_CountReset_ActiveEdge             =          0x2FB2;  % Specifies on which edge of the signal to reset the count.
DAQmx_CI_CountEdges_Gate_Enable                       =          0x30ED;  % Specifies whether to enable the functionality to gate the counter input signal for a count edges measurement.
DAQmx_CI_CountEdges_Gate_Term                         =          0x30EE;  % Specifies the gate terminal.
DAQmx_CI_CountEdges_Gate_TermCfg                      =          0x30EF;  % Specifies the gate terminal configuration.
DAQmx_CI_CountEdges_Gate_LogicLvlBehavior             =          0x30F0;  % Specifies the logic level behavior on the gate input line.
DAQmx_CI_CountEdges_Gate_ThreshVoltage                =          0x31B5;  % Specifies the voltage level at which to recognize the counter gate signal.
DAQmx_CI_CountEdges_Gate_Hyst                         =          0x31B6;  % Specifies a hysteresis level applied to the Threshold Level. When Pause When is High, the source signal must fall below Threshold Level minus the hysteresis before the counter resumes counting. When Pause When is Low, the source signal must rise above Threshold Level plus the hysteresis before the counter resumes counting.
DAQmx_CI_CountEdges_Gate_DigFltrEnable                =          0x30F1;  % Specifies whether to apply the pulse width filter to the gate input signal.
DAQmx_CI_CountEdges_Gate_DigFltrMinPulseWidth         =          0x30F2;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx_CI_CountEdges_Gate_DigFltrTimebaseSrc           =          0x30F3;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_CountEdges_Gate_DigFltrTimebaseRate          =          0x30F4;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_CountEdges_GateWhen                          =          0x30F5;  % Specifies whether the counter gates input pulses while the signal is high or low.
DAQmx_CI_DutyCycle_Term                               =          0x308D;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_DutyCycle_TermCfg                            =          0x30A1;  % Specifies the input terminal configuration.
DAQmx_CI_DutyCycle_LogicLvlBehavior                   =          0x30A2;  % Specifies the logic level behavior on the input line.
DAQmx_CI_DutyCycle_DigFltr_Enable                     =          0x308E;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_DutyCycle_DigFltr_MinPulseWidth              =          0x308F;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx_CI_DutyCycle_DigFltr_TimebaseSrc                =          0x3090;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_DutyCycle_DigFltr_TimebaseRate               =          0x3091;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_DutyCycle_StartingEdge                       =          0x3092;  % Specifies which edge of the input signal to begin the duty cycle measurement.
DAQmx_CI_AngEncoder_Units                             =          0x18A6;  % Specifies the units to use to return angular position measurements from the channel.
DAQmx_CI_AngEncoder_PulsesPerRev                      =          0x0875;  % Specifies the number of pulses the encoder generates per revolution. This value is the number of pulses on either signal A or signal B, not the total number of pulses on both signal A and signal B.
DAQmx_CI_AngEncoder_InitialAngle                      =          0x0881;  % Specifies the starting angle of the encoder. This value is in the units you specify with Units.
DAQmx_CI_LinEncoder_Units                             =          0x18A9;  % Specifies the units to use to return linear encoder measurements from the channel.
DAQmx_CI_LinEncoder_DistPerPulse                      =          0x0911;  % Specifies the distance to measure for each pulse the encoder generates on signal A or signal B. This value is in the units you specify with Units.
DAQmx_CI_LinEncoder_InitialPos                        =          0x0915;  % Specifies the position of the encoder when the measurement begins. This value is in the units you specify with Units.
DAQmx_CI_Encoder_DecodingType                         =          0x21E6;  % Specifies how to count and interpret the pulses the encoder generates on signal A and signal B. DAQmx_Val_X1, DAQmx_Val_X2, and DAQmx_Val_X4 are valid for quadrature encoders only. DAQmx_Val_TwoPulseCounting is valid for two-pulse encoders only.
DAQmx_CI_Encoder_AInputTerm                           =          0x219D;  % Specifies the terminal to which signal A is connected.
DAQmx_CI_Encoder_AInputTermCfg                        =          0x30A3;  % Specifies the input terminal configuration.
DAQmx_CI_Encoder_AInputLogicLvlBehavior               =          0x30A4;  % Specifies the logic level behavior on the input line.
DAQmx_CI_Encoder_AInput_DigFltr_Enable                =          0x21FB;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Encoder_AInput_DigFltr_MinPulseWidth         =          0x21FC;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Encoder_AInput_DigFltr_TimebaseSrc           =          0x21FD;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Encoder_AInput_DigFltr_TimebaseRate          =          0x21FE;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Encoder_AInput_DigSync_Enable                =          0x21FF;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Encoder_BInputTerm                           =          0x219E;  % Specifies the terminal to which signal B is connected.
DAQmx_CI_Encoder_BInputTermCfg                        =          0x30A5;  % Specifies the input terminal configuration.
DAQmx_CI_Encoder_BInputLogicLvlBehavior               =          0x30A6;  % Specifies the logic level behavior on the input line.
DAQmx_CI_Encoder_BInput_DigFltr_Enable                =          0x2200;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Encoder_BInput_DigFltr_MinPulseWidth         =          0x2201;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Encoder_BInput_DigFltr_TimebaseSrc           =          0x2202;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Encoder_BInput_DigFltr_TimebaseRate          =          0x2203;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Encoder_BInput_DigSync_Enable                =          0x2204;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Encoder_ZInputTerm                           =          0x219F;  % Specifies the terminal to which signal Z is connected.
DAQmx_CI_Encoder_ZInputTermCfg                        =          0x30A7;  % Specifies the input terminal configuration.
DAQmx_CI_Encoder_ZInputLogicLvlBehavior               =          0x30A8;  % Specifies the logic level behavior on the input line.
DAQmx_CI_Encoder_ZInput_DigFltr_Enable                =          0x2205;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Encoder_ZInput_DigFltr_MinPulseWidth         =          0x2206;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Encoder_ZInput_DigFltr_TimebaseSrc           =          0x2207;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Encoder_ZInput_DigFltr_TimebaseRate          =          0x2208;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Encoder_ZInput_DigSync_Enable                =          0x2209;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Encoder_ZIndexEnable                         =          0x0890;  % Specifies whether to use Z indexing for the channel.
DAQmx_CI_Encoder_ZIndexVal                            =          0x0888;  % Specifies the value to which to reset the measurement when signal Z is high and signal A and signal B are at the states you specify with Z Index Phase. Specify this value in the units of the measurement.
DAQmx_CI_Encoder_ZIndexPhase                          =          0x0889;  % Specifies the states at which signal A and signal B must be while signal Z is high for NI-DAQmx to reset the measurement. If signal Z is never high while signal A and signal B are high, for example, you must choose a phase other than DAQmx_Val_AHighBHigh.
DAQmx_CI_PulseWidth_Units                             =          0x0823;  % Specifies the units to use to return pulse width measurements.
DAQmx_CI_PulseWidth_Term                              =          0x18AA;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_PulseWidth_TermCfg                           =          0x30A9;  % Specifies the input terminal configuration.
DAQmx_CI_PulseWidth_LogicLvlBehavior                  =          0x30AA;  % Specifies the logic level behavior on the input line.
DAQmx_CI_PulseWidth_DigFltr_Enable                    =          0x220A;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_PulseWidth_DigFltr_MinPulseWidth             =          0x220B;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_PulseWidth_DigFltr_TimebaseSrc               =          0x220C;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_PulseWidth_DigFltr_TimebaseRate              =          0x220D;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_PulseWidth_DigSync_Enable                    =          0x220E;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_PulseWidth_StartingEdge                      =          0x0825;  % Specifies on which edge of the input signal to begin each pulse width measurement.
DAQmx_CI_Timestamp_Units                              =          0x22B3;  % Specifies the units to use to return timestamp measurements.
DAQmx_CI_Timestamp_InitialSeconds                     =          0x22B4;  % Specifies the number of seconds that elapsed since the beginning of the current year. This value is ignored if  Synchronization Method is DAQmx_Val_IRIGB.
DAQmx_CI_GPS_SyncMethod                               =          0x1092;  % Specifies the method to use to synchronize the counter to a GPS receiver.
DAQmx_CI_GPS_SyncSrc                                  =          0x1093;  % Specifies the terminal to which the GPS synchronization signal is connected.
DAQmx_CI_Velocity_AngEncoder_Units                    =          0x30D8;  % Specifies the units to use to return angular velocity counter measurements.
DAQmx_CI_Velocity_AngEncoder_PulsesPerRev             =          0x30D9;  % Specifies the number of pulses the encoder generates per revolution. This value is the number of pulses on either signal A or signal B, not the total number of pulses on both signal A and signal B.
DAQmx_CI_Velocity_LinEncoder_Units                    =          0x30DA;  % Specifies the units to use to return linear encoder velocity measurements from the channel.
DAQmx_CI_Velocity_LinEncoder_DistPerPulse             =          0x30DB;  % Specifies the distance to measure for each pulse the encoder generates on signal A or signal B. This value is in the units you specify in CI.Velocity.LinEncoder.DistUnits.
DAQmx_CI_Velocity_Encoder_DecodingType                =          0x30DC;  % Specifies how to count and interpret the pulses the encoder generates on signal A and signal B. X1, X2, and X4 are valid for quadrature encoders only. Two Pulse Counting is valid for two-pulse encoders only.
DAQmx_CI_Velocity_Encoder_AInputTerm                  =          0x30DD;  % Specifies the terminal to which signal A is connected.
DAQmx_CI_Velocity_Encoder_AInputTermCfg               =          0x30DE;  % Specifies the input terminal configuration.
DAQmx_CI_Velocity_Encoder_AInputLogicLvlBehavior      =          0x30DF;  % Specifies the logic level behavior of the input terminal.
DAQmx_CI_Velocity_Encoder_AInputDigFltr_Enable        =          0x30E0;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Velocity_Encoder_AInputDigFltr_MinPulseWidth =          0x30E1;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx_CI_Velocity_Encoder_AInputDigFltr_TimebaseSrc   =          0x30E2;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Velocity_Encoder_AInputDigFltr_TimebaseRate  =          0x30E3;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Velocity_Encoder_BInputTerm                  =          0x30E4;  % Specifies the terminal to which signal B is connected.
DAQmx_CI_Velocity_Encoder_BInputTermCfg               =          0x30E5;  % Specifies the input terminal configuration.
DAQmx_CI_Velocity_Encoder_BInputLogicLvlBehavior      =          0x30E6;  % Specifies the logic level behavior of the input terminal.
DAQmx_CI_Velocity_Encoder_BInputDigFltr_Enable        =          0x30E7;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_Velocity_Encoder_BInputDigFltr_MinPulseWidth =          0x30E8;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx_CI_Velocity_Encoder_BInputDigFltr_TimebaseSrc   =          0x30E9;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_Velocity_Encoder_BInputDigFltr_TimebaseRate  =          0x30EA;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Velocity_MeasTime                            =          0x30EB;  % Specifies in seconds the length of time to measure the velocity of the signal.
DAQmx_CI_Velocity_Div                                 =          0x30EC;  % Specifies the value by which to divide the input signal.
DAQmx_CI_TwoEdgeSep_Units                             =          0x18AC;  % Specifies the units to use to return two-edge separation measurements from the channel.
DAQmx_CI_TwoEdgeSep_FirstTerm                         =          0x18AD;  % Specifies the source terminal of the digital signal that starts each measurement.
DAQmx_CI_TwoEdgeSep_FirstTermCfg                      =          0x30AB;  % Specifies the input terminal configuration.
DAQmx_CI_TwoEdgeSep_FirstLogicLvlBehavior             =          0x30AC;  % Specifies the logic level behavior on the input line.
DAQmx_CI_TwoEdgeSep_First_DigFltr_Enable              =          0x220F;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_TwoEdgeSep_First_DigFltr_MinPulseWidth       =          0x2210;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_TwoEdgeSep_First_DigFltr_TimebaseSrc         =          0x2211;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_TwoEdgeSep_First_DigFltr_TimebaseRate        =          0x2212;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_TwoEdgeSep_First_DigSync_Enable              =          0x2213;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_TwoEdgeSep_FirstEdge                         =          0x0833;  % Specifies on which edge of the first signal to start each measurement.
DAQmx_CI_TwoEdgeSep_SecondTerm                        =          0x18AE;  % Specifies the source terminal of the digital signal that stops each measurement.
DAQmx_CI_TwoEdgeSep_SecondTermCfg                     =          0x30AD;  % Specifies the input terminal configuration.
DAQmx_CI_TwoEdgeSep_SecondLogicLvlBehavior            =          0x30AE;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_TwoEdgeSep_Second_DigFltr_Enable             =          0x2214;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_TwoEdgeSep_Second_DigFltr_MinPulseWidth      =          0x2215;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_TwoEdgeSep_Second_DigFltr_TimebaseSrc        =          0x2216;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_TwoEdgeSep_Second_DigFltr_TimebaseRate       =          0x2217;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_TwoEdgeSep_Second_DigSync_Enable             =          0x2218;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_TwoEdgeSep_SecondEdge                        =          0x0834;  % Specifies on which edge of the second signal to stop each measurement.
DAQmx_CI_SemiPeriod_Units                             =          0x18AF;  % Specifies the units to use to return semi-period measurements.
DAQmx_CI_SemiPeriod_Term                              =          0x18B0;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_SemiPeriod_TermCfg                           =          0x30AF;  % Specifies the input terminal configuration.
DAQmx_CI_SemiPeriod_LogicLvlBehavior                  =          0x30B0;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_SemiPeriod_DigFltr_Enable                    =          0x2219;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_SemiPeriod_DigFltr_MinPulseWidth             =          0x221A;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_SemiPeriod_DigFltr_TimebaseSrc               =          0x221B;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_SemiPeriod_DigFltr_TimebaseRate              =          0x221C;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_SemiPeriod_DigSync_Enable                    =          0x221D;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_SemiPeriod_StartingEdge                      =          0x22FE;  % Specifies on which edge of the input signal to begin semi-period measurement. Semi-period measurements alternate between high time and low time, starting on this edge.
DAQmx_CI_Pulse_Freq_Units                             =          0x2F0B;  % Specifies the units to use to return pulse specifications in terms of frequency.
DAQmx_CI_Pulse_Freq_Term                              =          0x2F04;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_Pulse_Freq_TermCfg                           =          0x30B1;  % Specifies the input terminal configuration.
DAQmx_CI_Pulse_Freq_LogicLvlBehavior                  =          0x30B2;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_Pulse_Freq_DigFltr_Enable                    =          0x2F06;  % Specifies whether to apply a digital filter to the signal to measure.
DAQmx_CI_Pulse_Freq_DigFltr_MinPulseWidth             =          0x2F07;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Pulse_Freq_DigFltr_TimebaseSrc               =          0x2F08;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_CI_Pulse_Freq_DigFltr_TimebaseRate              =          0x2F09;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Pulse_Freq_DigSync_Enable                    =          0x2F0A;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Pulse_Freq_Start_Edge                        =          0x2F05;  % Specifies on which edge of the input signal to begin pulse measurement.
DAQmx_CI_Pulse_Time_Units                             =          0x2F13;  % Specifies the units to use to return pulse specifications in terms of high time and low time.
DAQmx_CI_Pulse_Time_Term                              =          0x2F0C;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_Pulse_Time_TermCfg                           =          0x30B3;  % Specifies the input terminal configuration.
DAQmx_CI_Pulse_Time_LogicLvlBehavior                  =          0x30B4;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_Pulse_Time_DigFltr_Enable                    =          0x2F0E;  % Specifies whether to apply a digital filter to the signal to measure.
DAQmx_CI_Pulse_Time_DigFltr_MinPulseWidth             =          0x2F0F;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Pulse_Time_DigFltr_TimebaseSrc               =          0x2F10;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_CI_Pulse_Time_DigFltr_TimebaseRate              =          0x2F11;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Pulse_Time_DigSync_Enable                    =          0x2F12;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Pulse_Time_StartEdge                         =          0x2F0D;  % Specifies on which edge of the input signal to begin pulse measurement.
DAQmx_CI_Pulse_Ticks_Term                             =          0x2F14;  % Specifies the input terminal of the signal to measure.
DAQmx_CI_Pulse_Ticks_TermCfg                          =          0x30B5;  % Specifies the input terminal configuration.
DAQmx_CI_Pulse_Ticks_LogicLvlBehavior                 =          0x30B6;  % Specifies the logic level behavior on the count reset line.
DAQmx_CI_Pulse_Ticks_DigFltr_Enable                   =          0x2F16;  % Specifies whether to apply a digital filter to the signal to measure.
DAQmx_CI_Pulse_Ticks_DigFltr_MinPulseWidth            =          0x2F17;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_Pulse_Ticks_DigFltr_TimebaseSrc              =          0x2F18;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_CI_Pulse_Ticks_DigFltr_TimebaseRate             =          0x2F19;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_Pulse_Ticks_DigSync_Enable                   =          0x2F1A;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_Pulse_Ticks_StartEdge                        =          0x2F15;  % Specifies on which edge of the input signal to begin pulse measurement.
DAQmx_CI_CtrTimebaseSrc                               =          0x0143;  % Specifies the terminal of the timebase to use for the counter.
DAQmx_CI_CtrTimebaseRate                              =          0x18B2;  % Specifies in Hertz the frequency of the counter timebase. Specifying the rate of a counter timebase allows you to take measurements in terms of time or frequency rather than in ticks of the timebase. If you use an external timebase and do not specify the rate, you can take measurements only in terms of ticks of the timebase.
DAQmx_CI_CtrTimebaseActiveEdge                        =          0x0142;  % Specifies whether a timebase cycle is from rising edge to rising edge or from falling edge to falling edge.
DAQmx_CI_CtrTimebase_DigFltr_Enable                   =          0x2271;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CI_CtrTimebase_DigFltr_MinPulseWidth            =          0x2272;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CI_CtrTimebase_DigFltr_TimebaseSrc              =          0x2273;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CI_CtrTimebase_DigFltr_TimebaseRate             =          0x2274;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CI_CtrTimebase_DigSync_Enable                   =          0x2275;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CI_ThreshVoltage                                =          0x30B7;  % Specifies the digital threshold value in Volts for high and low input transitions. Some devices do not support this for differential channels.
DAQmx_CI_Filter_Enable                                =          0x31B7;  % Specifies the corresponding filter enable/disable state.
DAQmx_CI_Filter_Freq                                  =          0x31B8;  % Specifies the corresponding filter frequency (cutoff or center) of the filter response.
DAQmx_CI_Filter_Response                              =          0x31B9;  % Specifies the corresponding filter response and defines the shape of the filter response.
DAQmx_CI_Filter_Order                                 =          0x31BA;  % Specifies the corresponding filter order and defines the slope of the filter response.
DAQmx_CI_FilterDelay                                  =          0x31BB;  % Indicates the amount of time between when the input signal transitions and when the filtered sample is read by the host device. This value is in the units specified with Filter Delay Units.
DAQmx_CI_FilterDelayUnits                             =          0x31BC;  % Specifies the units of Filter Delay.
DAQmx_CI_Count                                        =          0x0148;  % Indicates the current value of the count register.
DAQmx_CI_OutputState                                  =          0x0149;  % Indicates the current state of the out terminal of the counter.
DAQmx_CI_TCReached                                    =          0x0150;  % Indicates whether the counter rolled over. When you query this property, NI-DAQmx resets it to FALSE.
DAQmx_CI_CtrTimebaseMasterTimebaseDiv                 =          0x18B3;  % Specifies the divisor for an external counter timebase. You can divide the counter timebase in order to measure slower signals without causing the count register to roll over.
DAQmx_CI_SampClkOverrunBehavior                       =          0x3093;  % Specifies the counter behavior when data is read but a new value was not detected during a sample clock.
DAQmx_CI_SampClkOverrunSentinelVal                    =          0x3094;  % Specifies the sentinel value returned when the No New Sample Behavior is set to Sentinel Value.
DAQmx_CI_DataXferMech                                 =          0x0200;  % Specifies the data transfer mode for the channel.
DAQmx_CI_DataXferReqCond                              =          0x2EFB;  % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
DAQmx_CI_UsbXferReqSize                               =          0x2A92;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_CI_UsbXferReqCount                              =          0x3004;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_CI_MemMapEnable                                 =          0x2ED2;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx_CI_NumPossiblyInvalidSamps                      =          0x193C;  % Indicates the number of samples that the device might have overwritten before it could transfer them to the buffer.
DAQmx_CI_DupCountPrevent                              =          0x21AC;  % Specifies whether to enable duplicate count prevention for the channel. Duplicate count prevention is enabled by default. Setting  Prescaler disables duplicate count prevention unless you explicitly enable it.
DAQmx_CI_Prescaler                                    =          0x2239;  % Specifies the divisor to apply to the signal you connect to the counter source terminal. Scaled data that you read takes this setting into account. You should use a prescaler only when you connect an external signal to the counter source terminal and when that signal has a higher frequency than the fastest onboard timebase. Setting this value disables duplicate count prevention unless you explicitly set Duplicate ...
DAQmx_CI_MaxMeasPeriod                                =          0x3095;  % Specifies the maximum period (in seconds) in which the device will recognize signals. For frequency measurements, a signal with a higher period than the one set in this property will return 0 Hz. For duty cycle, the device will return 0 or 1 depending on the state of the line during the max defined period of time. Period measurements will return NaN. Pulse width measurement will return zero.
DAQmx_CO_OutputType                                   =          0x18B5;  % Indicates how to define pulses generated on the channel.
DAQmx_CO_Pulse_IdleState                              =          0x1170;  % Specifies the resting state of the output terminal.
DAQmx_CO_Pulse_Term                                   =          0x18E1;  % Specifies on which terminal to generate pulses.
DAQmx_CO_Pulse_Time_Units                             =          0x18D6;  % Specifies the units in which to define high and low pulse time.
DAQmx_CO_Pulse_HighTime                               =          0x18BA;  % Specifies the amount of time that the pulse is at a high voltage. This value is in the units you specify with Units or when you create the channel.
DAQmx_CO_Pulse_LowTime                                =          0x18BB;  % Specifies the amount of time that the pulse is at a low voltage. This value is in the units you specify with Units or when you create the channel.
DAQmx_CO_Pulse_Time_InitialDelay                      =          0x18BC;  % Specifies in seconds the amount of time to wait before generating the first pulse.
DAQmx_CO_Pulse_DutyCyc                                =          0x1176;  % Specifies the duty cycle of the pulses. The duty cycle of a signal is the width of the pulse divided by period. NI-DAQmx uses this ratio and the pulse frequency to determine the width of the pulses and the delay between pulses.
DAQmx_CO_Pulse_Freq_Units                             =          0x18D5;  % Specifies the units in which to define pulse frequency.
DAQmx_CO_Pulse_Freq                                   =          0x1178;  % Specifies the frequency of the pulses to generate. This value is in the units you specify with Units or when you create the channel.
DAQmx_CO_Pulse_Freq_InitialDelay                      =          0x0299;  % Specifies in seconds the amount of time to wait before generating the first pulse.
DAQmx_CO_Pulse_HighTicks                              =          0x1169;  % Specifies the number of ticks the pulse is high.
DAQmx_CO_Pulse_LowTicks                               =          0x1171;  % Specifies the number of ticks the pulse is low.
DAQmx_CO_Pulse_Ticks_InitialDelay                     =          0x0298;  % Specifies the number of ticks to wait before generating the first pulse.
DAQmx_CO_CtrTimebaseSrc                               =          0x0339;  % Specifies the terminal of the timebase to use for the counter. Typically, NI-DAQmx uses one of the internal counter timebases when generating pulses. Use this property to specify an external timebase and produce custom pulse widths that are not possible using the internal timebases.
DAQmx_CO_CtrTimebaseRate                              =          0x18C2;  % Specifies in Hertz the frequency of the counter timebase. Specifying the rate of a counter timebase allows you to define output pulses in seconds rather than in ticks of the timebase. If you use an external timebase and do not specify the rate, you can define output pulses only in ticks of the timebase.
DAQmx_CO_CtrTimebaseActiveEdge                        =          0x0341;  % Specifies whether a timebase cycle is from rising edge to rising edge or from falling edge to falling edge.
DAQmx_CO_CtrTimebase_DigFltr_Enable                   =          0x2276;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_CO_CtrTimebase_DigFltr_MinPulseWidth            =          0x2277;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_CO_CtrTimebase_DigFltr_TimebaseSrc              =          0x2278;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_CO_CtrTimebase_DigFltr_TimebaseRate             =          0x2279;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_CO_CtrTimebase_DigSync_Enable                   =          0x227A;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_CO_Count                                        =          0x0293;  % Indicates the current value of the count register.
DAQmx_CO_OutputState                                  =          0x0294;  % Indicates the current state of the output terminal of the counter.
DAQmx_CO_AutoIncrCnt                                  =          0x0295;  % Specifies a number of timebase ticks by which to increase the time spent in the idle state for each successive pulse.
DAQmx_CO_CtrTimebaseMasterTimebaseDiv                 =          0x18C3;  % Specifies the divisor for an external counter timebase. You can divide the counter timebase in order to generate slower signals without causing the count register to roll over.
DAQmx_CO_PulseDone                                    =          0x190E;  % Indicates if the task completed pulse generation. Use this value for retriggerable pulse generation when you need to determine if the device generated the current pulse. For retriggerable tasks, when you query this property, NI-DAQmx resets it to FALSE.
DAQmx_CO_EnableInitialDelayOnRetrigger                =          0x2EC9;  % Specifies whether to apply the initial delay to retriggered pulse trains.
DAQmx_CO_ConstrainedGenMode                           =          0x29F2;  % Specifies constraints to apply when the counter generates pulses. Constraining the counter reduces the device resources required for counter operation. Constraining the counter can also allow additional analog or counter tasks on the device to run concurrently. For continuous counter tasks, NI-DAQmx consumes no device resources when the counter is constrained. For finite counter tasks, resource use increases with ...
DAQmx_CO_UseOnlyOnBrdMem                              =          0x2ECB;  % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory directly after you start the task. Onboard memory includes data FIFOs.
DAQmx_CO_DataXferMech                                 =          0x2ECC;  % Specifies the data transfer mode for the device. For buffered operations, use DMA or USB Bulk. For non-buffered operations, use Polled.
DAQmx_CO_DataXferReqCond                              =          0x2ECD;  % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
DAQmx_CO_UsbXferReqSize                               =          0x2A93;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_CO_UsbXferReqCount                              =          0x3005;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx_CO_MemMapEnable                                 =          0x2ED3;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx_CO_Prescaler                                    =          0x226D;  % Specifies the divisor to apply to the signal you connect to the counter source terminal. Pulse generations defined by frequency or time take this setting into account, but pulse generations defined by ticks do not. You should use a prescaler only when you connect an external signal to the counter source terminal and when that signal has a higher frequency than the fastest onboard timebase.
DAQmx_CO_RdyForNewVal                                 =          0x22FF;  % Indicates whether the counter is ready for new continuous pulse train values.
DAQmx_Pwr_Voltage_Setpoint                            =          0x31D4;  % Specifies the constant output voltage, in volts. Can be set while a task is running. Can be read at any time during a task.
DAQmx_Pwr_Voltage_DevScalingCoeff                     =          0x31D9;  % Indicates the coefficients of the polynomial equation that NI-DAQmx uses to scale values from the native format of the device to volts. Can be read at any time during a task.
DAQmx_Pwr_Current_Setpoint                            =          0x31D5;  % Specifies the output current, in amperes. If the load draws current greater than the specified value, the device will operate in Constant Current mode.
DAQmx_Pwr_Current_DevScalingCoeff                     =          0x31DA;  % Indicates the coefficients of the polynomial equation that NI-DAQmx uses to scale values from the native format of the device to amperes. Can be read at any time during a task.
DAQmx_Pwr_OutputEnable                                =          0x31D6;  % Specifies whether to enable or disable power module output. Can be set while a task is running. Can be read at any time during a task. When a task is running, the output is enabled immediately. Otherwise, the output is not enabled until the task enters the Committed state.
DAQmx_Pwr_OutputState                                 =          0x31D7;  % Indicates power channel operating state. Can be read at any time during a task.
DAQmx_Pwr_IdleOutputBehavior                          =          0x31D8;  % Specifies whether to disable the output or maintain the existing value after the task is uncommitted.
DAQmx_Pwr_RemoteSense                                 =          0x31DB;  % Specifies whether to use local or remote sense to sense the output voltage. DAQmx Read (Power) will return remote or local voltage based on the Remote Sense attribute value. Reading this property will return the user-defined value.
DAQmx_ChanType                                        =          0x187F;  % Indicates the type of the virtual channel.
DAQmx_PhysicalChanName                                =          0x18F5;  % Specifies the name of the physical channel upon which this virtual channel is based.
DAQmx_ChanDescr                                       =          0x1926;  % Specifies a user-defined description for the channel.
DAQmx_ChanIsGlobal                                    =          0x2304;  % Indicates whether the channel is a global channel.
DAQmx_Chan_SyncUnlockBehavior                         =          0x313C;  % Specifies the action to take if the target loses its synchronization to the grand master.

%********** Device Attributes **********
DAQmx_Dev_IsSimulated                              =             0x22CA;  % Indicates if the device is a simulated device.
DAQmx_Dev_ProductCategory                          =             0x29A9;  % Indicates the product category of the device. This category corresponds to the category displayed in MAX when creating NI-DAQmx simulated devices.
DAQmx_Dev_ProductType                              =             0x0631;  % Indicates the product name of the device.
DAQmx_Dev_ProductNum                               =             0x231D;  % Indicates the unique hardware identification number for the device.
DAQmx_Dev_SerialNum                                =             0x0632;  % Indicates the serial number of the device. This value is zero if the device does not have a serial number.
DAQmx_Dev_Accessory_ProductTypes                   =             0x2F6D;  % Indicates the model names of accessories connected to the device. Each array element corresponds to a connector. For example, index 0 corresponds to connector 0. The array contains an empty string for each connector with no accessory connected.
DAQmx_Dev_Accessory_ProductNums                    =             0x2F6E;  % Indicates the unique hardware identification number for accessories connected to the device. Each array element corresponds to a connector. For example, index 0 corresponds to connector 0. The array contains 0 for each connector with no accessory connected.
DAQmx_Dev_Accessory_SerialNums                     =             0x2F6F;  % Indicates the serial number for accessories connected to the device. Each array element corresponds to a connector. For example, index 0 corresponds to connector 0. The array contains 0 for each connector with no accessory connected.
DAQmx_Carrier_SerialNum                            =             0x2A8A;  % Indicates the serial number of the device carrier. This value is zero if the carrier does not have a serial number.
DAQmx_FieldDAQ_DevName                             =             0x3171;  % Indicates the parent device which this bank is located in.
DAQmx_FieldDAQ_BankDevNames                        =             0x3178;  % Indicates an array containing the names of the banks in the FieldDAQ.
DAQmx_Dev_Chassis_ModuleDevNames                   =             0x29B6;  % Indicates an array containing the names of the modules in the chassis.
DAQmx_Dev_AnlgTrigSupported                        =             0x2984;  % Indicates if the device supports analog triggering.
DAQmx_Dev_DigTrigSupported                         =             0x2985;  % Indicates if the device supports digital triggering.
DAQmx_Dev_TimeTrigSupported                        =             0x301F;  % Indicates whether the device supports time triggering.
DAQmx_Dev_AI_PhysicalChans                         =             0x231E;  % Indicates an array containing the names of the analog input physical channels available on the device.
DAQmx_Dev_AI_SupportedMeasTypes                    =             0x2FD2;  % Indicates the measurement types supported by the physical channels of the device. Refer to Measurement Types for information on specific channels.
DAQmx_Dev_AI_MaxSingleChanRate                     =             0x298C;  % Indicates the maximum rate for an analog input task if the task contains only a single channel from this device.
DAQmx_Dev_AI_MaxMultiChanRate                      =             0x298D;  % Indicates the maximum sampling rate for an analog input task from this device. To find the maximum rate for the task, take the minimum of Maximum Single Channel Rate or the indicated sampling rate of this device divided by the number of channels to acquire data from (including cold-junction compensation and autozero channels).
DAQmx_Dev_AI_MinRate                               =             0x298E;  % Indicates the minimum rate for an analog input task on this device. NI-DAQmx returns a warning or error if you attempt to sample at a slower rate.
DAQmx_Dev_AI_SimultaneousSamplingSupported         =             0x298F;  % Indicates if the device supports simultaneous sampling.
DAQmx_Dev_AI_NumSampTimingEngines                  =             0x3163;  % Indicates the number of Analog Input sample timing engines supported by the device.
DAQmx_Dev_AI_SampModes                             =             0x2FDC;  % Indicates sample modes supported by devices that support sample clocked analog input.
DAQmx_Dev_AI_NumSyncPulseSrcs                      =             0x3164;  % Indicates the number of Analog Input synchronization pulse sources supported by the device.
DAQmx_Dev_AI_TrigUsage                             =             0x2986;  % Indicates the triggers supported by this device for an analog input task.
DAQmx_Dev_AI_VoltageRngs                           =             0x2990;  % Indicates pairs of input voltage ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx_Dev_AI_VoltageIntExcitDiscreteVals           =             0x29C9;  % Indicates the set of discrete internal voltage excitation values supported by this device. If the device supports ranges of internal excitation values, use Range Values to determine supported excitation values.
DAQmx_Dev_AI_VoltageIntExcitRangeVals              =             0x29CA;  % Indicates pairs of internal voltage excitation ranges supported by this device. Each pair consists of the low value, followed by the high value. If the device supports a set of discrete internal excitation values, use Discrete Values to determine the supported excitation values.
DAQmx_Dev_AI_ChargeRngs                            =             0x3111;  % Indicates in coulombs pairs of input charge ranges for the device. Each pair consists of the low value followed by the high value.
DAQmx_Dev_AI_CurrentRngs                           =             0x2991;  % Indicates the pairs of current input ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx_Dev_AI_CurrentIntExcitDiscreteVals           =             0x29CB;  % Indicates the set of discrete internal current excitation values supported by this device.
DAQmx_Dev_AI_BridgeRngs                            =             0x2FD0;  % Indicates pairs of input voltage ratio ranges, in volts per volt, supported by devices that acquire using ratiometric measurements. Each pair consists of the low value followed by the high value.
DAQmx_Dev_AI_ResistanceRngs                        =             0x2A15;  % Indicates pairs of input resistance ranges, in ohms, supported by devices that have the necessary signal conditioning to measure resistances. Each pair consists of the low value followed by the high value.
DAQmx_Dev_AI_FreqRngs                              =             0x2992;  % Indicates the pairs of frequency input ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx_Dev_AI_Gains                                 =             0x2993;  % Indicates the input gain settings supported by this device.
DAQmx_Dev_AI_Couplings                             =             0x2994;  % Indicates the coupling types supported by this device.
DAQmx_Dev_AI_LowpassCutoffFreqDiscreteVals         =             0x2995;  % Indicates the set of discrete lowpass cutoff frequencies supported by this device. If the device supports ranges of lowpass cutoff frequencies, use Range Values to determine supported frequencies.
DAQmx_Dev_AI_LowpassCutoffFreqRangeVals            =             0x29CF;  % Indicates pairs of lowpass cutoff frequency ranges supported by this device. Each pair consists of the low value, followed by the high value. If the device supports a set of discrete lowpass cutoff frequencies, use Discrete Values to determine the supported  frequencies.
DAQmx_AI_DigFltr_Types                             =             0x3107;  % Indicates the AI digital filter types supported by the device.
DAQmx_Dev_AI_DigFltr_LowpassCutoffFreqDiscreteVals =             0x30C8;  % Indicates the set of discrete lowpass cutoff frequencies supported by this device. If the device supports ranges of lowpass cutoff frequencies, use AI.DigFltr.Lowpass.CutoffFreq.RangeVals to determine supported frequencies.
DAQmx_Dev_AI_DigFltr_LowpassCutoffFreqRangeVals    =             0x30C9;  % Indicates pairs of lowpass cutoff frequency ranges supported by this device. Each pair consists of the low value, followed by the high value. If the device supports a set of discrete lowpass cutoff frequencies, use AI.DigFltr.Lowpass.CutoffFreq.DiscreteVals to determine the supported frequencies.
DAQmx_Dev_AO_PhysicalChans                         =             0x231F;  % Indicates an array containing the names of the analog output physical channels available on the device.
DAQmx_Dev_AO_SupportedOutputTypes                  =             0x2FD3;  % Indicates the generation types supported by the physical channels of the device. Refer to Output Types for information on specific channels.
DAQmx_Dev_AO_MaxRate                               =             0x2997;  % Indicates the maximum analog output rate of the device.
DAQmx_Dev_AO_MinRate                               =             0x2998;  % Indicates the minimum analog output rate of the device.
DAQmx_Dev_AO_SampClkSupported                      =             0x2996;  % Indicates if the device supports the sample clock timing  type for analog output tasks.
DAQmx_Dev_AO_NumSampTimingEngines                  =             0x3165;  % Indicates the number of Analog Output sample timing engines supported by the device.
DAQmx_Dev_AO_SampModes                             =             0x2FDD;  % Indicates sample modes supported by devices that support sample clocked analog output.
DAQmx_Dev_AO_NumSyncPulseSrcs                      =             0x3166;  % Indicates the number of Analog Output synchronization pulse sources supported by the device.
DAQmx_Dev_AO_TrigUsage                             =             0x2987;  % Indicates the triggers supported by this device for analog output tasks.
DAQmx_Dev_AO_VoltageRngs                           =             0x299B;  % Indicates pairs of output voltage ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx_Dev_AO_CurrentRngs                           =             0x299C;  % Indicates pairs of output current ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx_Dev_AO_Gains                                 =             0x299D;  % Indicates the output gain settings supported by this device.
DAQmx_Dev_DI_Lines                                 =             0x2320;  % Indicates an array containing the names of the digital input lines available on the device.
DAQmx_Dev_DI_Ports                                 =             0x2321;  % Indicates an array containing the names of the digital input ports available on the device.
DAQmx_Dev_DI_MaxRate                               =             0x2999;  % Indicates the maximum digital input rate of the device.
DAQmx_Dev_DI_NumSampTimingEngines                  =             0x3167;  % Indicates the number of Digital Input sample timing engines supported by the device.
DAQmx_Dev_DI_TrigUsage                             =             0x2988;  % Indicates the triggers supported by this device for digital input tasks.
DAQmx_Dev_DO_Lines                                 =             0x2322;  % Indicates an array containing the names of the digital output lines available on the device.
DAQmx_Dev_DO_Ports                                 =             0x2323;  % Indicates an array containing the names of the digital output ports available on the device.
DAQmx_Dev_DO_MaxRate                               =             0x299A;  % Indicates the maximum digital output rate of the device.
DAQmx_Dev_DO_NumSampTimingEngines                  =             0x3168;  % Indicates the number of Digital Output synchronization pulse sources supported by the device.
DAQmx_Dev_DO_TrigUsage                             =             0x2989;  % Indicates the triggers supported by this device for digital output tasks.
DAQmx_Dev_CI_PhysicalChans                         =             0x2324;  % Indicates an array containing the names of the counter input physical channels available on the device.
DAQmx_Dev_CI_SupportedMeasTypes                    =             0x2FD4;  % Indicates the measurement types supported by the physical channels of the device. Refer to Measurement Types for information on specific channels.
DAQmx_Dev_CI_TrigUsage                             =             0x298A;  % Indicates the triggers supported by this device for counter input tasks.
DAQmx_Dev_CI_SampClkSupported                      =             0x299E;  % Indicates if the device supports the sample clock timing type for counter input tasks.
DAQmx_Dev_CI_SampModes                             =             0x2FDE;  % Indicates sample modes supported by devices that support sample clocked counter input.
DAQmx_Dev_CI_MaxSize                               =             0x299F;  % Indicates in bits the size of the counters on the device.
DAQmx_Dev_CI_MaxTimebase                           =             0x29A0;  % Indicates in hertz the maximum counter timebase frequency.
DAQmx_Dev_CO_PhysicalChans                         =             0x2325;  % Indicates an array containing the names of the counter output physical channels available on the device.
DAQmx_Dev_CO_SupportedOutputTypes                  =             0x2FD5;  % Indicates the generation types supported by the physical channels of the device. Refer to Output Types for information on specific channels.
DAQmx_Dev_CO_SampClkSupported                      =             0x2F5B;  % Indicates if the device supports Sample Clock timing for counter output tasks.
DAQmx_Dev_CO_SampModes                             =             0x2FDF;  % Indicates sample modes supported by devices that support sample clocked counter output.
DAQmx_Dev_CO_TrigUsage                             =             0x298B;  % Indicates the triggers supported by this device for counter output tasks.
DAQmx_Dev_CO_MaxSize                               =             0x29A1;  % Indicates in bits the size of the counters on the device.
DAQmx_Dev_CO_MaxTimebase                           =             0x29A2;  % Indicates in hertz the maximum counter timebase frequency.
DAQmx_Dev_TEDS_HWTEDSSupported                     =             0x2FD6;  % Indicates whether the device supports hardware TEDS.
DAQmx_Dev_NumDMAChans                              =             0x233C;  % Indicates the number of DMA channels on the device.
DAQmx_Dev_BusType                                  =             0x2326;  % Indicates the bus type of the device.
DAQmx_Dev_PCI_BusNum                               =             0x2327;  % Indicates the PCI bus number of the device.
DAQmx_Dev_PCI_DevNum                               =             0x2328;  % Indicates the PCI slot number of the device.
DAQmx_Dev_PXI_ChassisNum                           =             0x2329;  % Indicates the PXI chassis number of the device, as identified in MAX.
DAQmx_Dev_PXI_SlotNum                              =             0x232A;  % Indicates the PXI slot number of the device.
DAQmx_Dev_CompactDAQ_ChassisDevName                =             0x29B7;  % Indicates the name of the CompactDAQ chassis that contains this module.
DAQmx_Dev_CompactDAQ_SlotNum                       =             0x29B8;  % Indicates the slot number in which this module is located in the CompactDAQ chassis.
DAQmx_Dev_CompactRIO_ChassisDevName                =             0x3161;  % Indicates the name of the CompactRIO chassis that contains this module.
DAQmx_Dev_CompactRIO_SlotNum                       =             0x3162;  % Indicates the slot number of the CompactRIO chassis where this module is located.
DAQmx_Dev_TCPIP_Hostname                           =             0x2A8B;  % Indicates the IPv4 hostname of the device.
DAQmx_Dev_TCPIP_EthernetIP                         =             0x2A8C;  % Indicates the IPv4 address of the Ethernet interface in dotted decimal format. This property returns 0.0.0.0 if the Ethernet interface cannot acquire an address.
DAQmx_Dev_TCPIP_WirelessIP                         =             0x2A8D;  % Indicates the IPv4 address of the 802.11 wireless interface in dotted decimal format. This property returns 0.0.0.0 if the wireless interface cannot acquire an address.
DAQmx_Dev_Terminals                                =             0x2A40;  % Indicates a list of all terminals on the device.
DAQmx_Dev_NumTimeTrigs                             =             0x3141;  % Indicates the number of time triggers available on the device.
DAQmx_Dev_NumTimestampEngines                      =             0x3142;  % Indicates the number of timestamp engines available on the device.

%********** Export Signal Attributes **********
DAQmx_Exported_AIConvClk_OutputTerm                        =     0x1687;  % Specifies the terminal to which to route the AI Convert Clock.
DAQmx_Exported_AIConvClk_Pulse_Polarity                    =     0x1688;  % Indicates the polarity of the exported AI Convert Clock. The polarity is fixed and independent of the active edge of the source of the AI Convert Clock.
DAQmx_Exported_10MHzRefClk_OutputTerm                      =     0x226E;  % Specifies the terminal to which to route the 10MHz Clock.
DAQmx_Exported_20MHzTimebase_OutputTerm                    =     0x1657;  % Specifies the terminal to which to route the 20MHz Timebase.
DAQmx_Exported_SampClk_OutputBehavior                      =     0x186B;  % Specifies whether the exported Sample Clock issues a pulse at the beginning of a sample or changes to a high state for the duration of the sample.
DAQmx_Exported_SampClk_OutputTerm                          =     0x1663;  % Specifies the terminal to which to route the Sample Clock.
DAQmx_Exported_SampClk_DelayOffset                         =     0x21C4;  % Specifies in seconds the amount of time to offset the exported Sample clock.  Refer to timing diagrams for generation applications in the device documentation for more information about this value.
DAQmx_Exported_SampClk_Pulse_Polarity                      =     0x1664;  % Specifies the polarity of the exported Sample Clock if Output Behavior is DAQmx_Val_Pulse.
DAQmx_Exported_SampClkTimebase_OutputTerm                  =     0x18F9;  % Specifies the terminal to which to route the Sample Clock Timebase.
DAQmx_Exported_DividedSampClkTimebase_OutputTerm           =     0x21A1;  % Specifies the terminal to which to route the Divided Sample Clock Timebase.
DAQmx_Exported_AdvTrig_OutputTerm                          =     0x1645;  % Specifies the terminal to which to route the Advance Trigger.
DAQmx_Exported_AdvTrig_Pulse_Polarity                      =     0x1646;  % Indicates the polarity of the exported Advance Trigger.
DAQmx_Exported_AdvTrig_Pulse_WidthUnits                    =     0x1647;  % Specifies the units of Width Value.
DAQmx_Exported_AdvTrig_Pulse_Width                         =     0x1648;  % Specifies the width of an exported Advance Trigger pulse. Specify this value in the units you specify with Width Units.
DAQmx_Exported_PauseTrig_OutputTerm                        =     0x1615;  % Specifies the terminal to which to route the Pause Trigger.
DAQmx_Exported_PauseTrig_Lvl_ActiveLvl                     =     0x1616;  % Specifies the active level of the exported Pause Trigger.
DAQmx_Exported_RefTrig_OutputTerm                          =     0x0590;  % Specifies the terminal to which to route the Reference Trigger.
DAQmx_Exported_RefTrig_Pulse_Polarity                      =     0x0591;  % Specifies the polarity of the exported Reference Trigger.
DAQmx_Exported_StartTrig_OutputTerm                        =     0x0584;  % Specifies the terminal to which to route the Start Trigger.
DAQmx_Exported_StartTrig_Pulse_Polarity                    =     0x0585;  % Specifies the polarity of the exported Start Trigger.
DAQmx_Exported_AdvCmpltEvent_OutputTerm                    =     0x1651;  % Specifies the terminal to which to route the Advance Complete Event.
DAQmx_Exported_AdvCmpltEvent_Delay                         =     0x1757;  % Specifies the output signal delay in periods of the sample clock.
DAQmx_Exported_AdvCmpltEvent_Pulse_Polarity                =     0x1652;  % Specifies the polarity of the exported Advance Complete Event.
DAQmx_Exported_AdvCmpltEvent_Pulse_Width                   =     0x1654;  % Specifies the width of the exported Advance Complete Event pulse.
DAQmx_Exported_AIHoldCmpltEvent_OutputTerm                 =     0x18ED;  % Specifies the terminal to which to route the AI Hold Complete Event.
DAQmx_Exported_AIHoldCmpltEvent_PulsePolarity              =     0x18EE;  % Specifies the polarity of an exported AI Hold Complete Event pulse.
DAQmx_Exported_ChangeDetectEvent_OutputTerm                =     0x2197;  % Specifies the terminal to which to route the Change Detection Event.
DAQmx_Exported_ChangeDetectEvent_Pulse_Polarity            =     0x2303;  % Specifies the polarity of an exported Change Detection Event pulse.
DAQmx_Exported_CtrOutEvent_OutputTerm                      =     0x1717;  % Specifies the terminal to which to route the Counter Output Event.
DAQmx_Exported_CtrOutEvent_OutputBehavior                  =     0x174F;  % Specifies whether the exported Counter Output Event pulses or changes from one state to the other when the counter reaches terminal count.
DAQmx_Exported_CtrOutEvent_Pulse_Polarity                  =     0x1718;  % Specifies the polarity of the pulses at the output terminal of the counter when Output Behavior is DAQmx_Val_Pulse. NI-DAQmx ignores this property if Output Behavior is DAQmx_Val_Toggle.
DAQmx_Exported_CtrOutEvent_Toggle_IdleState                =     0x186A;  % Specifies the initial state of the output terminal of the counter when Output Behavior is DAQmx_Val_Toggle. The terminal enters this state when NI-DAQmx commits the task.
DAQmx_Exported_HshkEvent_OutputTerm                        =     0x22BA;  % Specifies the terminal to which to route the Handshake Event.
DAQmx_Exported_HshkEvent_OutputBehavior                    =     0x22BB;  % Specifies the output behavior of the Handshake Event.
DAQmx_Exported_HshkEvent_Delay                             =     0x22BC;  % Specifies the number of seconds to delay after the Handshake Trigger deasserts before asserting the Handshake Event.
DAQmx_Exported_HshkEvent_Interlocked_AssertedLvl           =     0x22BD;  % Specifies the asserted level of the exported Handshake Event if Output Behavior is DAQmx_Val_Interlocked.
DAQmx_Exported_HshkEvent_Interlocked_AssertOnStart         =     0x22BE;  % Specifies to assert the Handshake Event when the task starts if Output Behavior is DAQmx_Val_Interlocked.
DAQmx_Exported_HshkEvent_Interlocked_DeassertDelay         =     0x22BF;  % Specifies in seconds the amount of time to wait after the Handshake Trigger asserts before deasserting the Handshake Event if Output Behavior is DAQmx_Val_Interlocked.
DAQmx_Exported_HshkEvent_Pulse_Polarity                    =     0x22C0;  % Specifies the polarity of the exported Handshake Event if Output Behavior is DAQmx_Val_Pulse.
DAQmx_Exported_HshkEvent_Pulse_Width                       =     0x22C1;  % Specifies in seconds the pulse width of the exported Handshake Event if Output Behavior is DAQmx_Val_Pulse.
DAQmx_Exported_RdyForXferEvent_OutputTerm                  =     0x22B5;  % Specifies the terminal to which to route the Ready for Transfer Event.
DAQmx_Exported_RdyForXferEvent_Lvl_ActiveLvl               =     0x22B6;  % Specifies the active level of the exported Ready for Transfer Event.
DAQmx_Exported_RdyForXferEvent_DeassertCond                =     0x2963;  % Specifies when the ready for transfer event deasserts.
DAQmx_Exported_RdyForXferEvent_DeassertCondCustomThreshold =     0x2964;  % Specifies in samples the threshold below which the Ready for Transfer Event deasserts. This threshold is an amount of space available in the onboard memory of the device. Deassert Condition must be DAQmx_Val_OnbrdMemCustomThreshold to use a custom threshold.
DAQmx_Exported_DataActiveEvent_OutputTerm                  =     0x1633;  % Specifies the terminal to which to export the Data Active Event.
DAQmx_Exported_DataActiveEvent_Lvl_ActiveLvl               =     0x1634;  % Specifies the polarity of the exported Data Active Event.
DAQmx_Exported_RdyForStartEvent_OutputTerm                 =     0x1609;  % Specifies the terminal to which to route the Ready for Start Event.
DAQmx_Exported_RdyForStartEvent_Lvl_ActiveLvl              =     0x1751;  % Specifies the polarity of the exported Ready for Start Event.
DAQmx_Exported_SyncPulseEvent_OutputTerm                   =     0x223C;  % Specifies the terminal to which to route the Synchronization Pulse Event.
DAQmx_Exported_WatchdogExpiredEvent_OutputTerm             =     0x21AA;  % Specifies the terminal  to which to route the Watchdog Timer Expired Event.

%********** Persisted Channel Attributes **********
DAQmx_PersistedChan_Author                   =                   0x22D0;  % Indicates the author of the global channel.
DAQmx_PersistedChan_AllowInteractiveEditing  =                   0x22D1;  % Indicates whether the global channel can be edited in the DAQ Assistant.
DAQmx_PersistedChan_AllowInteractiveDeletion =                   0x22D2;  % Indicates whether the global channel can be deleted through MAX.

%********** Persisted Scale Attributes **********
DAQmx_PersistedScale_Author                   =                  0x22D4;  % Indicates the author of the custom scale.
DAQmx_PersistedScale_AllowInteractiveEditing  =                  0x22D5;  % Indicates whether the custom scale can be edited in the DAQ Assistant.
DAQmx_PersistedScale_AllowInteractiveDeletion =                  0x22D6;  % Indicates whether the custom scale can be deleted through MAX.

%********** Persisted Task Attributes **********
DAQmx_PersistedTask_Author                   =                   0x22CC;  % Indicates the author of the task.
DAQmx_PersistedTask_AllowInteractiveEditing  =                   0x22CD;  % Indicates whether the task can be edited in the DAQ Assistant.
DAQmx_PersistedTask_AllowInteractiveDeletion =                   0x22CE;  % Indicates whether the task can be deleted through MAX.

%********** Physical Channel Attributes **********
DAQmx_PhysicalChan_AI_SupportedMeasTypes           =             0x2FD7;  % Indicates the measurement types supported by the channel.
DAQmx_PhysicalChan_AI_TermCfgs                     =             0x2342;  % Indicates the list of terminal configurations supported by the channel.
DAQmx_PhysicalChan_AI_InputSrcs                    =             0x2FD8;  % Indicates the list of input sources supported by the channel. Channels may support using the signal from the I/O connector or one of several calibration signals.
DAQmx_PhysicalChan_AI_SensorPower_Types            =             0x3179;  % Indicates the types of power supplied to the sensor supported by this channel.
DAQmx_PhysicalChan_AI_SensorPower_VoltageRangeVals =             0x317A;  % Indicates pairs of sensor power voltage ranges supported by this channel. Each pair consists of the low value followed by the high value.
DAQmx_PhysicalChan_AI_PowerControl_Voltage         =             0x316C;  % Specifies the voltage level for the sensor's power supply.
DAQmx_PhysicalChan_AI_PowerControl_Enable          =             0x316D;  % Specifies whether to turn on the sensor's power supply.
DAQmx_PhysicalChan_AI_PowerControl_Type            =             0x316E;  % Specifies the type of power supplied to the sensor.
DAQmx_PhysicalChan_AI_SensorPower_OpenChan         =             0x317C;  % Indicates whether there is an open channel or undercurrent condition on the channel.
DAQmx_PhysicalChan_AI_SensorPower_Overcurrent      =             0x317D;  % Indicates whether there is an overcurrent condition on the channel.
DAQmx_PhysicalChan_AO_SupportedOutputTypes         =             0x2FD9;  % Indicates the output types supported by the channel.
DAQmx_PhysicalChan_AO_SupportedPowerUpOutputTypes  =             0x304E;  % Indicates the power up output types supported by the channel.
DAQmx_PhysicalChan_AO_TermCfgs                     =             0x29A3;  % Indicates the list of terminal configurations supported by the channel.
DAQmx_PhysicalChan_AO_ManualControlEnable          =             0x2A1E;  % Specifies if you can control the physical channel externally via a manual control located on the device. You cannot simultaneously control a channel manually and with NI-DAQmx.
DAQmx_PhysicalChan_AO_ManualControl_ShortDetected  =             0x2EC3;  % Indicates whether the physical channel is currently disabled due to a short detected on the channel.
DAQmx_PhysicalChan_AO_ManualControlAmplitude       =             0x2A1F;  % Indicates the current value of the front panel amplitude control for the physical channel in volts.
DAQmx_PhysicalChan_AO_ManualControlFreq            =             0x2A20;  % Indicates the current value of the front panel frequency control for the physical channel in hertz.
DAQmx_AO_PowerAmp_ChannelEnable                    =             0x3062;  % Specifies whether to enable or disable a channel for amplification. This property can also be used to check if a channel is enabled.
DAQmx_AO_PowerAmp_ScalingCoeff                     =             0x3063;  % Indicates the coefficients of a polynomial equation used to scale from pre-amplified values.
DAQmx_AO_PowerAmp_Overcurrent                      =             0x3064;  % Indicates if the channel detected an overcurrent condition.
DAQmx_AO_PowerAmp_Gain                             =             0x3065;  % Indicates the calibrated gain of the channel.
DAQmx_AO_PowerAmp_Offset                           =             0x3066;  % Indicates the calibrated offset of the channel in volts.
DAQmx_PhysicalChan_DI_PortWidth                    =             0x29A4;  % Indicates in bits the width of digital input port.
DAQmx_PhysicalChan_DI_SampClkSupported             =             0x29A5;  % Indicates if the sample clock timing type is supported for the digital input physical channel.
DAQmx_PhysicalChan_DI_SampModes                    =             0x2FE0;  % Indicates the sample modes supported by devices that support sample clocked digital input.
DAQmx_PhysicalChan_DI_ChangeDetectSupported        =             0x29A6;  % Indicates if the change detection timing type is supported for the digital input physical channel.
DAQmx_PhysicalChan_DO_PortWidth                    =             0x29A7;  % Indicates in bits the width of digital output port.
DAQmx_PhysicalChan_DO_SampClkSupported             =             0x29A8;  % Indicates if the sample clock timing type is supported for the digital output physical channel.
DAQmx_PhysicalChan_DO_SampModes                    =             0x2FE1;  % Indicates the sample modes supported by devices that support sample clocked digital output.
DAQmx_PhysicalChan_CI_SupportedMeasTypes           =             0x2FDA;  % Indicates the measurement types supported by the channel.
DAQmx_PhysicalChan_CO_SupportedOutputTypes         =             0x2FDB;  % Indicates the output types supported by the channel.
DAQmx_PhysicalChan_TEDS_MfgID                      =             0x21DA;  % Indicates the manufacturer ID of the sensor.
DAQmx_PhysicalChan_TEDS_ModelNum                   =             0x21DB;  % Indicates the model number of the sensor.
DAQmx_PhysicalChan_TEDS_SerialNum                  =             0x21DC;  % Indicates the serial number of the sensor.
DAQmx_PhysicalChan_TEDS_VersionNum                 =             0x21DD;  % Indicates the version number of the sensor.
DAQmx_PhysicalChan_TEDS_VersionLetter              =             0x21DE;  % Indicates the version letter of the sensor.
DAQmx_PhysicalChan_TEDS_BitStream                  =             0x21DF;  % Indicates the TEDS binary bitstream without checksums.
DAQmx_PhysicalChan_TEDS_TemplateIDs                =             0x228F;  % Indicates the IDs of the templates in the bitstream in BitStream.

%********** Read Attributes **********
DAQmx_Read_RelativeTo                           =                0x190A;  % Specifies the point in the buffer at which to begin a read operation. If you also specify an offset with Offset, the read operation begins at that offset relative to the point you select with this property. The default value is DAQmx_Val_CurrReadPos unless you configure a Reference Trigger for the task. If you configure a Reference Trigger, the default value is DAQmx_Val_FirstPretrigSamp.
DAQmx_Read_Offset                               =                0x190B;  % Specifies an offset in samples per channel at which to begin a read operation. This offset is relative to the location you specify with RelativeTo.
DAQmx_Read_ChannelsToRead                       =                0x1823;  % Specifies a subset of channels in the task from which to read.
DAQmx_Read_ReadAllAvailSamp                     =                0x1215;  % Specifies whether subsequent read operations read all samples currently available in the buffer or wait for the buffer to become full before reading. NI-DAQmx uses this setting for finite acquisitions and only when the number of samples to read is -1. For continuous acquisitions when the number of samples to read is -1, a read operation always reads all samples currently available in the buffer.
DAQmx_Read_AutoStart                            =                0x1826;  % Specifies if an NI-DAQmx Read function automatically starts the task  if you did not start the task explicitly by using DAQmxStartTask(). The default value is TRUE. When  an NI-DAQmx Read function starts a finite acquisition task, it also stops the task after reading the last sample.
DAQmx_Read_OverWrite                            =                0x1211;  % Specifies whether to overwrite samples in the buffer that you have not yet read.
DAQmx_Logging_FilePath                          =                0x2EC4;  % Specifies the path to the TDMS file to which you want to log data.  If the file path is changed while the task is running, this takes effect on the next sample interval (if Logging.SampsPerFile has been set) or when DAQmx Start New File is called. New file paths can be specified by ending with "\" or "/". Files created after specifying a new file path retain the same name and numbering sequence.
DAQmx_Logging_Mode                              =                0x2EC5;  % Specifies whether to enable logging and whether to allow reading data while logging. Log mode allows for the best performance. However, you cannot read data while logging if you specify this mode. If you want to read data while logging, specify Log and Read mode.
DAQmx_Logging_TDMS_GroupName                    =                0x2EC6;  % Specifies the name of the group to create within the TDMS file for data from this task. If you append data to an existing file and the specified group already exists, NI-DAQmx appends a number symbol and a number to the group name, incrementing that number until finding a group name that does not exist. For example, if you specify a group name of Voltage Task, and that group already exists, NI-DAQmx assigns the gr...
DAQmx_Logging_TDMS_Operation                    =                0x2EC7;  % Specifies how to open the TDMS file.
DAQmx_Logging_Pause                             =                0x2FE3;  % Specifies whether logging is paused while a task is executing. If Mode is set to Log and Read mode, this value is taken into consideration on the next call to DAQmx Read, where data is written to disk. If Mode is set to Log Only mode, this value is taken into consideration the next time that data is written to disk. A new TDMS group is written when logging is resumed from a paused state.
DAQmx_Logging_SampsPerFile                      =                0x2FE4;  % Specifies how many samples to write to each file. When the file reaches the number of samples specified, a new file is created with the naming convention of &#60;filename&#62;_####.tdms, where #### starts at 0001 and increments automatically with each new file. For example, if the file specified is C:\data.tdms, the next file name used is C:\data_0001.tdms. To disable file spanning behavior, set this attribute to ...
DAQmx_Logging_FileWriteSize                     =                0x2FC3;  % Specifies the size, in samples, in which data will be written to disk.  The size must be evenly divisible by the volume sector size, in bytes.
DAQmx_Logging_FilePreallocationSize             =                0x2FC6;  % Specifies a size in samples to be used to pre-allocate space on disk.  Pre-allocation can improve file I/O performance, especially in situations where multiple files are being written to disk.  For finite tasks, the default behavior is to pre-allocate the file based on the number of samples you configure the task to acquire.
DAQmx_Read_CurrReadPos                          =                0x1221;  % Indicates in samples per channel the current position in the buffer.
DAQmx_Read_AvailSampPerChan                     =                0x1223;  % Indicates the number of samples available to read per channel. This value is the same for all channels in the task.
DAQmx_Read_TotalSampPerChanAcquired             =                0x192A;  % Indicates the total number of samples acquired by each channel. NI-DAQmx returns a single value because this value is the same for all channels. For retriggered acquisitions, this value is the cumulative number of samples across all retriggered acquisitions.
DAQmx_Read_CommonModeRangeErrorChansExist       =                0x2A98;  % Indicates if the device(s) detected a common mode range violation for any virtual channel in the task. Common mode range violation occurs when the voltage of either the positive terminal or negative terminal to ground are out of range. Reading this property clears the common mode range violation status for all channels in the task. You must read this property before you read Common Mode Range Error Channels. Other...
DAQmx_Read_CommonModeRangeErrorChans            =                0x2A99;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected a common mode range violation. You must read Common Mode Range Error Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_ExcitFaultChansExist                 =                0x3088;  % Indicates if the device(s) detected an excitation fault condition for any virtual channel in the task. Reading this property clears the excitation fault status for all channels in the task. You must read this property before you read Excitation Fault Channels. Otherwise, you will receive an error.
DAQmx_Read_ExcitFaultChans                      =                0x3089;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an excitation fault condition. You must read Excitation Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_OvercurrentChansExist                =                0x29E6;  % Indicates if the device(s) detected an overcurrent condition for any virtual channel in the task. Reading this property clears the overcurrent status for all channels in the task. You must read this property before you read Overcurrent Channels. Otherwise, you will receive an error.
DAQmx_Read_OvercurrentChans                     =                0x29E7;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an overcurrent condition. You must read Overcurrent Channels Exist before you read this property. Otherwise, you will receive an error. On some devices, you must restart the task for all overcurrent channels to recover.
DAQmx_Read_OvertemperatureChansExist            =                0x3081;  % Indicates if the device(s) detected an overtemperature condition in any virtual channel in the task. Reading this property clears the overtemperature status for all channels in the task. You must read this property before you read Overtemperature Channels. Otherwise, you will receive an error.
DAQmx_Read_OvertemperatureChans                 =                0x3082;  % Indicates a list of names of any overtemperature virtual channels. You must read Overtemperature Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_OpenChansExist                       =                0x3100;  % Indicates if the device or devices detected an open channel condition in any virtual channel in the task. Reading this property clears the open channel status for all channels in this task. You must read this property before you read Open Channels. Otherwise, you will receive an error.
DAQmx_Read_OpenChans                            =                0x3101;  % Indicates a list of names of any open virtual channels. You must read Open Channels Exist before you read this property. Otherwise you will receive an error.
DAQmx_Read_OpenChansDetails                     =                0x3102;  % Indicates a list of details of any open virtual channels. You must read Open Channels Exist before you read this property. Otherwise you will receive an error.
DAQmx_Read_OpenCurrentLoopChansExist            =                0x2A09;  % Indicates if the device(s) detected an open current loop for any virtual channel in the task. Reading this property clears the open current loop status for all channels in the task. You must read this property before you read Open Current Loop Channels. Otherwise, you will receive an error.
DAQmx_Read_OpenCurrentLoopChans                 =                0x2A0A;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an open current loop. You must read Open Current Loop Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_OpenThrmcplChansExist                =                0x2A96;  % Indicates if the device(s) detected an open thermocouple connected to any virtual channel in the task. Reading this property clears the open thermocouple status for all channels in the task. You must read this property before you read Open Thermocouple Channels. Otherwise, you will receive an error.
DAQmx_Read_OpenThrmcplChans                     =                0x2A97;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an open thermcouple. You must read Open Thermocouple Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_OverloadedChansExist                 =                0x2174;  % Indicates if the device(s) detected an overload in any virtual channel in the task. Reading this property clears the overload status for all channels in the task. You must read this property before you read Overloaded Channels. Otherwise, you will receive an error.
DAQmx_Read_OverloadedChans                      =                0x2175;  % Indicates a list of names of any overloaded virtual channels in the task. You must read Overloaded Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_InputLimitsFaultChansExist           =                0x318F;  % Indicates if the device or devices detected a sample that was outside the upper or lower limits configured for each channel in the task. Reading this property clears the input limits fault channel status for all channels in the task. You must read this property before you read Input Limits Fault Channels. Otherwise, you will receive an error. Note: Fault detection applies to both positive and negative inputs. For ...
DAQmx_Read_InputLimitsFaultChans                =                0x3190;  % Indicates the virtual channels that have detected samples outside the upper or lower limits configured for each channel in the task. You must read Input Limits Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_PLL_UnlockedChansExist               =                0x3118;  % Indicates whether the PLL is currently locked, or whether it became unlocked during the previous acquisition. Devices may report PLL Unlock either during acquisition or after acquisition.
DAQmx_Read_PLL_UnlockedChans                    =                0x3119;  % Indicates the channels that had their PLLs unlock.
DAQmx_Read_PowerSupplyFaultChansExist           =                0x3192;  % Indicates if the device or devices detected a power supply fault condition in any virtual channel in the task. Reading this property clears the power supply fault status for all channels in this task. You must read this property before you read Power Supply Fault Channels. Otherwise, you will receive an error.
DAQmx_Read_PowerSupplyFaultChans                =                0x3193;  % Indicates the virtual channels that have detected a power supply fault. You must read Power Supply Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Read_Sync_UnlockedChansExist              =                0x313D;  % Indicates whether the target is currently locked to the grand master. Devices may report PLL Unlock either during acquisition or after acquisition.
DAQmx_Read_Sync_UnlockedChans                   =                0x313E;  % Indicates the channels from devices in an unlocked target.
DAQmx_Read_AccessoryInsertionOrRemovalDetected  =                0x2F70;  % Indicates if any device(s) in the task detected the insertion or removal of an accessory since the task started. Reading this property clears the accessory change status for all channels in the task. You must read this property before you read Devices with Inserted or Removed Accessories. Otherwise, you will receive an error.
DAQmx_Read_DevsWithInsertedOrRemovedAccessories =                0x2F71;  % Indicates the names of any devices that detected the insertion or removal of an accessory since the task started. You must read Accessory Insertion or Removal Detected before you read this property. Otherwise, you will receive an error.
DAQmx_RemoteSenseErrorChansExist                =                0x31DD;  % Indicates if the device(s) detected an error condition of the remote sense connection for any channel in the task. You must disable the output and resolve the hardware connection issue to clear the error condition. You must read this property before you read the Remote Sense Error Channels property. Otherwise, you will receive an error.
DAQmx_RemoteSenseErrorChans                     =                0x31DE;  % Indicates a list of names of any virtual channels in the task for which a remote sense connection error condition has been detected. You must read Remote Sense Error Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_AuxPowerErrorChansExist                   =                0x31DF;  % Indicates if the device(s) detected an auxiliary power supply error condition for any channel in the task. Reading this property clears the error condition status for all channels in the task. You must read this property before you read the Aux Power Error Channels property. Otherwise, you will receive an error.
DAQmx_AuxPowerErrorChans                        =                0x31E0;  % Indicates a list of names of any virtual channels in the task for which an auxiliary power supply error condition has been detected. You must read the Aux Power Error Channels Exist property before you read this property. Otherwise, you will receive an error.
DAQmx_ReverseVoltageErrorChansExist             =                0x31E6;  % Indicates if the device(s) detected reverse voltage error for any of the channels in the task. Reverse voltage error occurs if the local voltage is equal to the negative saturated voltage. Reading this property clears the error condition status for all channels in the task. You must read this property before you read the Reverse Voltage Error Channels property. Otherwise, you will receive an error.
DAQmx_ReverseVoltageErrorChans                  =                0x31E7;  % Indicates a list of names of all virtual channels in the task for which reverse voltage error condition has been detected. You must read the Reverse Voltage Error Channels Exist property before you read this property. Otherwise, you will receive an error.
DAQmx_Read_ChangeDetect_HasOverflowed           =                0x2194;  % Indicates if samples were missed because change detection events occurred faster than the device could handle them. Some devices detect overflows differently than others.
DAQmx_Read_RawDataWidth                         =                0x217A;  % Indicates in bytes the size of a raw sample from the task.
DAQmx_Read_NumChans                             =                0x217B;  % Indicates the number of channels that an NI-DAQmx Read function reads from the task. This value is the number of channels in the task or the number of channels you specify with Channels to Read.
DAQmx_Read_DigitalLines_BytesPerChan            =                0x217C;  % Indicates the number of bytes per channel that NI-DAQmx returns in a sample for line-based reads. If a channel has fewer lines than this number, the extra bytes are FALSE.
DAQmx_Read_WaitMode                             =                0x2232;  % Specifies how an NI-DAQmx Read function waits for samples to become available.
DAQmx_Read_SleepTime                            =                0x22B0;  % Specifies in seconds the amount of time to sleep after checking for available samples if Wait Mode is DAQmx_Val_Sleep.

%********** Real-Time Attributes **********
DAQmx_RealTime_ConvLateErrorsToWarnings   =                      0x22EE;  % Specifies if DAQmxWaitForNextSampleClock(), an NI-DAQmx Read function, and an NI-DAQmx Write function convert late errors to warnings. NI-DAQmx returns no late warnings or errors until the number of warmup iterations you specify with Number Of Warmup Iterations execute.
DAQmx_RealTime_NumOfWarmupIters           =                      0x22ED;  % Specifies the number of loop iterations that must occur before DAQmxWaitForNextSampleClock() and an NI-DAQmx Read function return any late warnings or errors. The system needs a number of iterations to stabilize. During this period, a large amount of jitter occurs, potentially causing reads and writes to be late. The default number of warmup iterations is 100. Specify a larger number if needed to stabilize the sys...
DAQmx_RealTime_WaitForNextSampClkWaitMode =                      0x22EF;  % Specifies how DAQmxWaitForNextSampleClock() waits for the next Sample Clock pulse.
DAQmx_RealTime_ReportMissedSamp           =                      0x2319;  % Specifies whether an NI-DAQmx Read function returns lateness errors or warnings when it detects missed Sample Clock pulses. This setting does not affect DAQmxWaitForNextSampleClock(). Set this property to TRUE for applications that need to detect lateness without using DAQmxWaitForNextSampleClock().
DAQmx_RealTime_WriteRecoveryMode          =                      0x231A;  % Specifies how NI-DAQmx attempts to recover after missing a Sample Clock pulse when performing counter writes.

%********** Scale Attributes **********
DAQmx_Scale_Descr               =                                0x1226;  % Specifies a description for the scale.
DAQmx_Scale_ScaledUnits         =                                0x191B;  % Specifies the units to use for scaled values. You can use an arbitrary string.
DAQmx_Scale_PreScaledUnits      =                                0x18F7;  % Specifies the units of the values that you want to scale.
DAQmx_Scale_Type                =                                0x1929;  % Indicates the method or equation form that the custom scale uses.
DAQmx_Scale_Lin_Slope           =                                0x1227;  % Specifies the slope, m, in the equation y=mx+b.
DAQmx_Scale_Lin_YIntercept      =                                0x1228;  % Specifies the y-intercept, b, in the equation y=mx+b.
DAQmx_Scale_Map_ScaledMax       =                                0x1229;  % Specifies the largest value in the range of scaled values. NI-DAQmx maps this value to Pre-Scaled Maximum Value. Reads coerce samples that are larger than this value to match this value. Writes generate errors for samples that are larger than this value.
DAQmx_Scale_Map_PreScaledMax    =                                0x1231;  % Specifies the largest value in the range of pre-scaled values. NI-DAQmx maps this value to Scaled Maximum Value.
DAQmx_Scale_Map_ScaledMin       =                                0x1230;  % Specifies the smallest value in the range of scaled values. NI-DAQmx maps this value to Pre-Scaled Minimum Value. Reads coerce samples that are smaller than this value to match this value. Writes generate errors for samples that are smaller than this value.
DAQmx_Scale_Map_PreScaledMin    =                                0x1232;  % Specifies the smallest value in the range of pre-scaled values. NI-DAQmx maps this value to Scaled Minimum Value.
DAQmx_Scale_Poly_ForwardCoeff   =                                0x1234;  % Specifies an array of coefficients for the polynomial that converts pre-scaled values to scaled values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
DAQmx_Scale_Poly_ReverseCoeff   =                                0x1235;  % Specifies an array of coefficients for the polynomial that converts scaled values to pre-scaled values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9y^3.
DAQmx_Scale_Table_ScaledVals    =                                0x1236;  % Specifies an array of scaled values. These values map directly to the values in Pre-Scaled Values.
DAQmx_Scale_Table_PreScaledVals =                                0x1237;  % Specifies an array of pre-scaled values. These values map directly to the values in Scaled Values.

%********** Switch Channel Attributes **********
DAQmx_SwitchChan_Usage                =                          0x18E4;  % (Deprecated) Specifies how you can use the channel. Using this property acts as a safety mechanism to prevent you from connecting two source channels, for example.
DAQmx_SwitchChan_AnlgBusSharingEnable =                          0x2F9E;  % (Deprecated) Specifies whether to enable sharing of an analog bus line so that multiple switch devices can connect to it simultaneously. For each device that will share the analog bus line, set this property to TRUE to enable sharing on the channel that connects to the analog bus line. Analog bus sharing is disabled by default.
DAQmx_SwitchChan_MaxACCarryCurrent    =                          0x0648;  % (Deprecated) Indicates in amperes the maximum AC current that the device can carry.
DAQmx_SwitchChan_MaxACSwitchCurrent   =                          0x0646;  % (Deprecated) Indicates in amperes the maximum AC current that the device can switch. This current is always against an RMS voltage level.
DAQmx_SwitchChan_MaxACCarryPwr        =                          0x0642;  % (Deprecated) Indicates in watts the maximum AC power that the device can carry.
DAQmx_SwitchChan_MaxACSwitchPwr       =                          0x0644;  % (Deprecated) Indicates in watts the maximum AC power that the device can switch.
DAQmx_SwitchChan_MaxDCCarryCurrent    =                          0x0647;  % (Deprecated) Indicates in amperes the maximum DC current that the device can carry.
DAQmx_SwitchChan_MaxDCSwitchCurrent   =                          0x0645;  % (Deprecated) Indicates in amperes the maximum DC current that the device can switch. This current is always against a DC voltage level.
DAQmx_SwitchChan_MaxDCCarryPwr        =                          0x0643;  % (Deprecated) Indicates in watts the maximum DC power that the device can carry.
DAQmx_SwitchChan_MaxDCSwitchPwr       =                          0x0649;  % (Deprecated) Indicates in watts the maximum DC power that the device can switch.
DAQmx_SwitchChan_MaxACVoltage         =                          0x0651;  % (Deprecated) Indicates in volts the maximum AC RMS voltage that the device can switch.
DAQmx_SwitchChan_MaxDCVoltage         =                          0x0650;  % (Deprecated) Indicates in volts the maximum DC voltage that the device can switch.
DAQmx_SwitchChan_WireMode             =                          0x18E5;  % (Deprecated) Indicates the number of wires that the channel switches.
DAQmx_SwitchChan_Bandwidth            =                          0x0640;  % (Deprecated) Indicates in Hertz the maximum frequency of a signal that can pass through the switch without significant deterioration.
DAQmx_SwitchChan_Impedance            =                          0x0641;  % (Deprecated) Indicates in ohms the switch impedance. This value is important in the RF domain and should match the impedance of the sources and loads.

%********** Switch Device Attributes **********
DAQmx_SwitchDev_SettlingTime                    =                0x1244;  % (Deprecated) Specifies in seconds the amount of time to wait for the switch to settle (or debounce). NI-DAQmx adds this time to the settling time of the motherboard. Modify this property only if the switch does not settle within the settling time of the motherboard. Refer to device documentation for supported settling times.
DAQmx_SwitchDev_AutoConnAnlgBus                 =                0x17DA;  % (Deprecated) Specifies if NI-DAQmx routes multiplexed channels to the analog bus backplane. Only the SCXI-1127 and SCXI-1128 support this property.
DAQmx_SwitchDev_PwrDownLatchRelaysAfterSettling =                0x22DB;  % (Deprecated) Specifies if DAQmxSwitchWaitForSettling() powers down latching relays after waiting for the device to settle.
DAQmx_SwitchDev_Settled                         =                0x1243;  % (Deprecated) Indicates when Settling Time expires.
DAQmx_SwitchDev_RelayList                       =                0x17DC;  % (Deprecated) Indicates a comma-delimited list of relay names.
DAQmx_SwitchDev_NumRelays                       =                0x18E6;  % (Deprecated) Indicates the number of relays on the device. This value matches the number of relay names in Relay List.
DAQmx_SwitchDev_SwitchChanList                  =                0x18E7;  % (Deprecated) Indicates a comma-delimited list of channel names for the current topology of the device.
DAQmx_SwitchDev_NumSwitchChans                  =                0x18E8;  % (Deprecated) Indicates the number of switch channels for the current topology of the device. This value matches the number of channel names in Switch Channel List.
DAQmx_SwitchDev_NumRows                         =                0x18E9;  % (Deprecated) Indicates the number of rows on a device in a matrix switch topology. Indicates the number of multiplexed channels on a device in a mux topology.
DAQmx_SwitchDev_NumColumns                      =                0x18EA;  % (Deprecated) Indicates the number of columns on a device in a matrix switch topology. This value is always 1 if the device is in a mux topology.
DAQmx_SwitchDev_Topology                        =                0x193D;  % (Deprecated) Indicates the current topology of the device. This value is one of the topology options in DAQmxSwitchSetTopologyAndReset().
DAQmx_SwitchDev_Temperature                     =                0x301A;  % (Deprecated) Indicates the current temperature as read by the Switch module in degrees Celsius. Refer to your device documentation for more information.

%********** Switch Scan Attributes **********
DAQmx_SwitchScan_BreakMode     =                                 0x1247;  % (Deprecated) Specifies the action to take between each entry in a scan list.
DAQmx_SwitchScan_RepeatMode    =                                 0x1248;  % (Deprecated) Specifies if the task advances through the scan list multiple times.
DAQmx_SwitchScan_WaitingForAdv =                                 0x17D9;  % (Deprecated) Indicates if the switch hardware is waiting for an  Advance Trigger. If the hardware is waiting, it completed the previous entry in the scan list.

%********** System Attributes **********
DAQmx_Sys_GlobalChans        =                                   0x1265;  % Indicates an array that contains the names of all global channels saved on the system.
DAQmx_Sys_Scales             =                                   0x1266;  % Indicates an array that contains the names of all custom scales saved on the system.
DAQmx_Sys_Tasks              =                                   0x1267;  % Indicates an array that contains the names of all tasks saved on the system.
DAQmx_Sys_DevNames           =                                   0x193B;  % Indicates the names of all devices installed in the system.
DAQmx_Sys_NIDAQMajorVersion  =                                   0x1272;  % Indicates the major portion of the installed version of NI-DAQmx, such as 7 for version 7.0.
DAQmx_Sys_NIDAQMinorVersion  =                                   0x1923;  % Indicates the minor portion of the installed version of NI-DAQmx, such as 0 for version 7.0.
DAQmx_Sys_NIDAQUpdateVersion =                                   0x2F22;  % Indicates the update portion of the installed version of NI-DAQmx, such as 1 for version 9.0.1.

%********** Task Attributes **********
DAQmx_Task_Name       =                                          0x1276;  % Indicates the name of the task.
DAQmx_Task_Channels   =                                          0x1273;  % Indicates the names of all virtual channels in the task.
DAQmx_Task_NumChans   =                                          0x2181;  % Indicates the number of virtual channels in the task.
DAQmx_Task_Devices    =                                          0x230E;  % Indicates an array containing the names of all devices in the task.
DAQmx_Task_NumDevices =                                          0x29BA;  % Indicates the number of devices in the task.
DAQmx_Task_Complete   =                                          0x1274;  % Indicates whether the task completed execution.

%********** Timing Attributes **********
DAQmx_SampQuant_SampMode                       =                 0x1300;  % Specifies if a task acquires or generates a finite number of samples or if it continuously acquires or generates samples.
DAQmx_SampQuant_SampPerChan                    =                 0x1310;  % Specifies the number of samples to acquire or generate for each channel if Sample Mode is DAQmx_Val_FiniteSamps. If Sample Mode is DAQmx_Val_ContSamps, NI-DAQmx uses this value to determine the buffer size.
DAQmx_SampTimingType                           =                 0x1347;  % Specifies the type of sample timing to use for the task.
DAQmx_SampClk_Rate                             =                 0x1344;  % Specifies the sampling rate in samples per channel per second. If you use an external source for the Sample Clock, set this input to the maximum expected rate of that clock.
DAQmx_SampClk_MaxRate                          =                 0x22C8;  % Indicates the maximum Sample Clock rate supported by the task, based on other timing settings. For output tasks, the maximum Sample Clock rate is the maximum rate of the DAC. For input tasks, NI-DAQmx calculates the maximum sampling rate differently for multiplexed devices than simultaneous sampling devices.
DAQmx_SampClk_Src                              =                 0x1852;  % Specifies the terminal of the signal to use as the Sample Clock.
DAQmx_SampClk_ActiveEdge                       =                 0x1301;  % Specifies on which edge of a clock pulse sampling takes place. This property is useful primarily when the signal you use as the Sample Clock is not a periodic clock.
DAQmx_SampClk_OverrunBehavior                  =                 0x2EFC;  % Specifies the action to take if Sample Clock edges occur faster than the device can handle them.
DAQmx_SampClk_UnderflowBehavior                =                 0x2961;  % Specifies the action to take when the onboard memory of the device becomes empty. In either case, the sample clock does not stop.
DAQmx_SampClk_TimebaseDiv                      =                 0x18EB;  % Specifies the number of Sample Clock Timebase pulses needed to produce a single Sample Clock pulse.
DAQmx_SampClk_Term                             =                 0x2F1B;  % Indicates the name of the internal Sample Clock terminal for the task. This property does not return the name of the Sample Clock source terminal specified with Source.
DAQmx_SampClk_Timebase_Rate                    =                 0x1303;  % Specifies the rate of the Sample Clock Timebase. Some applications require that you specify a rate when you use any signal other than the onboard Sample Clock Timebase. NI-DAQmx requires this rate to calculate other timing parameters.
DAQmx_SampClk_Timebase_Src                     =                 0x1308;  % Specifies the terminal of the signal to use as the Sample Clock Timebase.
DAQmx_SampClk_Timebase_ActiveEdge              =                 0x18EC;  % Specifies on which edge to recognize a Sample Clock Timebase pulse. This property is useful primarily when the signal you use as the Sample Clock Timebase is not a periodic clock.
DAQmx_SampClk_Timebase_MasterTimebaseDiv       =                 0x1305;  % Specifies the number of pulses of the Master Timebase needed to produce a single pulse of the Sample Clock Timebase.
DAQmx_SampClkTimebase_Term                     =                 0x2F1C;  % Indicates the name of the internal Sample Clock Timebase terminal for the task. This property does not return the name of the Sample Clock Timebase source terminal specified with Source.
DAQmx_SampClk_DigFltr_Enable                   =                 0x221E;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_SampClk_DigFltr_MinPulseWidth            =                 0x221F;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_SampClk_DigFltr_TimebaseSrc              =                 0x2220;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_SampClk_DigFltr_TimebaseRate             =                 0x2221;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_SampClk_DigSync_Enable                   =                 0x2222;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_SampClk_WriteWfm_UseInitialWfmDT         =                 0x30FC;  % Specifies that the value of Rate will be determined by the dt component of the initial DAQmx Write waveform input for Output tasks.
DAQmx_Hshk_DelayAfterXfer                      =                 0x22C2;  % Specifies the number of seconds to wait after a handshake cycle before starting a new handshake cycle.
DAQmx_Hshk_StartCond                           =                 0x22C3;  % Specifies the point in the handshake cycle that the device is in when the task starts.
DAQmx_Hshk_SampleInputDataWhen                 =                 0x22C4;  % Specifies on which edge of the Handshake Trigger an input task latches the data from the peripheral device.
DAQmx_ChangeDetect_DI_RisingEdgePhysicalChans  =                 0x2195;  % Specifies the names of the digital lines or ports on which to detect rising edges. The lines or ports must be used by virtual channels in the task. You also can specify a string that contains a list or range of digital lines or ports.
DAQmx_ChangeDetect_DI_FallingEdgePhysicalChans =                 0x2196;  % Specifies the names of the digital lines or ports on which to detect falling edges. The lines or ports must be used by virtual channels in the task. You also can specify a string that contains a list or range of digital lines or ports.
DAQmx_ChangeDetect_DI_Tristate                 =                 0x2EFA;  % Specifies whether to tristate lines specified with Rising Edge Physical Channels and Falling Edge Physical Channels that are not in a virtual channel in the task. If you set this property to TRUE, NI-DAQmx tristates rising/falling edge lines that are not in a virtual channel in the task. If you set this property to FALSE, NI-DAQmx does not modify the configuration of rising/falling edge lines that are not in a vir...
DAQmx_OnDemand_SimultaneousAOEnable            =                 0x21A0;  % Specifies whether to update all channels in the task simultaneously, rather than updating channels independently when you write a sample to that channel.
DAQmx_Implicit_UnderflowBehavior               =                 0x2EFD;  % Specifies the action to take when the onboard memory of the device becomes empty.
DAQmx_AIConv_Rate                              =                 0x1848;  % Specifies in Hertz the rate at which to clock the analog-to-digital converter. This clock is specific to the analog input section of multiplexed devices.
DAQmx_AIConv_MaxRate                           =                 0x22C9;  % Indicates the maximum convert rate supported by the task, given the current devices and channel count.
DAQmx_AIConv_Src                               =                 0x1502;  % Specifies the terminal of the signal to use as the AI Convert Clock.
DAQmx_AIConv_ActiveEdge                        =                 0x1853;  % Specifies on which edge of the clock pulse an analog-to-digital conversion takes place.
DAQmx_AIConv_TimebaseDiv                       =                 0x1335;  % Specifies the number of AI Convert Clock Timebase pulses needed to produce a single AI Convert Clock pulse.
DAQmx_AIConv_Timebase_Src                      =                 0x1339;  % Specifies the terminal  of the signal to use as the AI Convert Clock Timebase.
DAQmx_DelayFromSampClk_DelayUnits              =                 0x1304;  % Specifies the units of Delay.
DAQmx_DelayFromSampClk_Delay                   =                 0x1317;  % Specifies the amount of time to wait after receiving a Sample Clock edge before beginning to acquire the sample. This value is in the units you specify with Delay Units.
DAQmx_AIConv_DigFltr_Enable                    =                 0x2EDC;  % Specifies whether to apply a digital filter to the AI Convert Clock.
DAQmx_AIConv_DigFltr_MinPulseWidth             =                 0x2EDD;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_AIConv_DigFltr_TimebaseSrc               =                 0x2EDE;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AIConv_DigFltr_TimebaseRate              =                 0x2EDF;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AIConv_DigSync_Enable                    =                 0x2EE0;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_MasterTimebase_Rate                      =                 0x1495;  % Specifies the rate of the Master Timebase.
DAQmx_MasterTimebase_Src                       =                 0x1343;  % Specifies the terminal of the signal to use as the Master Timebase. On an E Series device, you can choose only between the onboard 20MHz Timebase or the RTSI7 terminal.
DAQmx_RefClk_Rate                              =                 0x1315;  % Specifies the frequency of the Reference Clock.
DAQmx_RefClk_Src                               =                 0x1316;  % Specifies the terminal of the signal to use as the Reference Clock.
DAQmx_SyncPulse_Type                           =                 0x3136;  % Specifies the type of sync pulse used in the task.
DAQmx_SyncPulse_Src                            =                 0x223D;  % Specifies the terminal of the signal to use as the synchronization pulse. The synchronization pulse resets the clock dividers and the ADCs/DACs on the device.
DAQmx_SyncPulse_Time_When                      =                 0x3137;  % Specifies the start time of the sync pulse.
DAQmx_SyncPulse_Time_Timescale                 =                 0x3138;  % Specifies the timescale to be used for timestamps for a sync pulse.
DAQmx_SyncPulse_SyncTime                       =                 0x223E;  % Indicates in seconds the delay required to reset the ADCs/DACs after the device receives the synchronization pulse.
DAQmx_SyncPulse_MinDelayToStart                =                 0x223F;  % Specifies in seconds the amount of time that elapses after the master device issues the synchronization pulse before the task starts.
DAQmx_SyncPulse_ResetTime                      =                 0x2F7C;  % Indicates in seconds the amount of time required for the ADCs or DACs on the device to reset. When synchronizing devices, query this property on all devices and note the largest reset time. Then, for each device, subtract the value of this property from the largest reset time and set Reset Delay to the resulting value.
DAQmx_SyncPulse_ResetDelay                     =                 0x2F7D;  % Specifies in seconds the amount of time to wait after the Synchronization Pulse before resetting the ADCs or DACs on the device. When synchronizing devices, query Reset Time on all devices and note the largest reset time. Then, for each device, subtract the reset time from the largest reset time and set this property to the resulting value.
DAQmx_SyncPulse_Term                           =                 0x2F85;  % Indicates the name of the internal Synchronization Pulse terminal for the task. This property does not return the name of the source terminal.
DAQmx_SyncClk_Interval                         =                 0x2F7E;  % Specifies the interval, in Sample Clock periods, between each internal Synchronization Clock pulse. NI-DAQmx uses this pulse for synchronization of triggers between multiple devices at different rates. Refer to device documentation for information about how to calculate this value.
DAQmx_SampTimingEngine                         =                 0x2A26;  % Specifies which timing engine to use for the task.
DAQmx_FirstSampTimestamp_Enable                =                 0x3139;  % Specifies whether to enable the first sample timestamp.
DAQmx_FirstSampTimestamp_Timescale             =                 0x313B;  % Specifies the timescale to be used for the first sample timestamp.
DAQmx_FirstSampTimestamp_Val                   =                 0x313A;  % Indicates the timestamp of the first sample.
DAQmx_FirstSampClk_When                        =                 0x3182;  % Specifies the time of the first sample clock pulse.
DAQmx_FirstSampClk_Timescale                   =                 0x3183;  % Specifies the timescale to be used for the value of When.
DAQmx_FirstSampClk_Offset                      =                 0x31AA;  % Specifies, in seconds, the offset to apply to the When value. This offset modifies when the first sample clock occurs and is used to account for known delays in the signal path.

%********** Trigger Attributes **********
DAQmx_StartTrig_Type                             =               0x1393;  % Specifies the type of trigger to use to start a task.
DAQmx_StartTrig_Term                             =               0x2F1E;  % Indicates the name of the internal Start Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx_DigEdge_StartTrig_Src                      =               0x1407;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Start Trigger.
DAQmx_DigEdge_StartTrig_Edge                     =               0x1404;  % Specifies on which edge of a digital pulse to start acquiring or generating samples.
DAQmx_DigEdge_StartTrig_DigFltr_Enable           =               0x2223;  % Specifies whether to apply a digital filter to the trigger signal.
DAQmx_DigEdge_StartTrig_DigFltr_MinPulseWidth    =               0x2224;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_DigEdge_StartTrig_DigFltr_TimebaseSrc      =               0x2225;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_DigEdge_StartTrig_DigFltr_TimebaseRate     =               0x2226;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_DigEdge_StartTrig_DigSync_Enable           =               0x2227;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device. If you set this property to TRUE, the device does not recognize and act upon the trigger until the next pulse of the internal timebase.
DAQmx_DigPattern_StartTrig_Src                   =               0x1410;  % Specifies the physical channels to use for pattern matching. The order of the physical channels determines the order of the pattern. If a port is included, the order of the physical channels within the port is in ascending order.
DAQmx_DigPattern_StartTrig_Pattern               =               0x2186;  % Specifies the digital pattern that must be met for the Start Trigger to occur.
DAQmx_DigPattern_StartTrig_When                  =               0x1411;  % Specifies whether the Start Trigger occurs when the physical channels specified with Source match or differ from the digital pattern specified with Pattern.
DAQmx_AnlgEdge_StartTrig_Src                     =               0x1398;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Start Trigger.
DAQmx_AnlgEdge_StartTrig_Slope                   =               0x1397;  % Specifies on which slope of the trigger signal to start acquiring or generating samples.
DAQmx_AnlgEdge_StartTrig_Lvl                     =               0x1396;  % Specifies at what threshold in the units of the measurement or generation to start acquiring or generating samples. Use Slope to specify on which slope to trigger on this threshold.
DAQmx_AnlgEdge_StartTrig_Hyst                    =               0x1395;  % Specifies a hysteresis level in the units of the measurement or generation. If Slope is DAQmx_Val_RisingSlope, the trigger does not deassert until the source signal passes below  Level minus the hysteresis. If Slope is DAQmx_Val_FallingSlope, the trigger does not deassert until the source signal passes above Level plus the hysteresis. Hysteresis is always enabled. Set this property to a non-zero value to use hyste...
DAQmx_AnlgEdge_StartTrig_Coupling                =               0x2233;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx_AnlgEdge_StartTrig_DigFltr_Enable          =               0x2EE1;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay above or below the trigger level for the minimum pulse width before being recognized. Use filtering  for noisy trigger signals that transition in and out of the hysteresis window rapidly.
DAQmx_AnlgEdge_StartTrig_DigFltr_MinPulseWidth   =               0x2EE2;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_AnlgEdge_StartTrig_DigFltr_TimebaseSrc     =               0x2EE3;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AnlgEdge_StartTrig_DigFltr_TimebaseRate    =               0x2EE4;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AnlgEdge_StartTrig_DigSync_Enable          =               0x2EE5;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_AnlgMultiEdge_StartTrig_Srcs               =               0x3121;  % Specifies a list and/or range of analog sources that are going to be used for Analog triggering. Each source corresponds to an element in each of the Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgMultiEdge_StartTrig_Slopes             =               0x3122;  % Specifies an array of slopes on which to trigger task to start generating or acquiring samples. Each element of the array corresponds to a source in Start.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgMultiEdge_StartTrig_Lvls               =               0x3123;  % Specifies an array of thresholds in the units of the measurement or generation to start acquiring or generating samples. Each element of the array corresponds to a source in Start.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgMultiEdge_StartTrig_Hysts              =               0x3124;  % Specifies an array of hysteresis levels in the units of the measurement or generation. If the corresponding element of Start.AnlgMultiEdge.Slopes is Rising, the trigger does not deassert until the source signal passes below the corresponding element of Start.AnlgMultiEdge.Lvls minus the hysteresis. If Start.AnlgEdge.Slope is Falling, the trigger does not deassert until the source signal passes above Start.AnlgEdge...
DAQmx_AnlgMultiEdge_StartTrig_Couplings          =               0x3125;  % Specifies an array that describes the couplings for the corresponding source signal of the trigger if the source is a terminal rather than a virtual channel. Each element of the array corresponds to a source in Start.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgWin_StartTrig_Src                      =               0x1400;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Start Trigger.
DAQmx_AnlgWin_StartTrig_When                     =               0x1401;  % Specifies whether the task starts acquiring or generating samples when the signal enters or leaves the window you specify with Bottom and Top.
DAQmx_AnlgWin_StartTrig_Top                      =               0x1403;  % Specifies the upper limit of the window. Specify this value in the units of the measurement or generation.
DAQmx_AnlgWin_StartTrig_Btm                      =               0x1402;  % Specifies the lower limit of the window. Specify this value in the units of the measurement or generation.
DAQmx_AnlgWin_StartTrig_Coupling                 =               0x2234;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx_AnlgWin_StartTrig_DigFltr_Enable           =               0x2EFF;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay within the trigger window for the minimum pulse width before being recognized. Use filtering for noisy trigger signals that transition in and out of the window rapidly.
DAQmx_AnlgWin_StartTrig_DigFltr_MinPulseWidth    =               0x2F00;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_AnlgWin_StartTrig_DigFltr_TimebaseSrc      =               0x2F01;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AnlgWin_StartTrig_DigFltr_TimebaseRate     =               0x2F02;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AnlgWin_StartTrig_DigSync_Enable           =               0x2F03;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_StartTrig_TrigWhen                         =               0x304D;  % Specifies when to trigger the start trigger.
DAQmx_StartTrig_Timescale                        =               0x3036;  % Specifies the timescale to be used for timestamps used in a time trigger.
DAQmx_StartTrig_TimestampEnable                  =               0x314A;  % Specifies whether the start trigger timestamp is enabled. If the timestamp is enabled but no resources are available, an error will be returned at run time.
DAQmx_StartTrig_TimestampTimescale               =               0x312D;  % Specifies the start trigger timestamp timescale.
DAQmx_StartTrig_TimestampVal                     =               0x314B;  % Indicates the start trigger timestamp value.
DAQmx_StartTrig_Delay                            =               0x1856;  % Specifies an amount of time to wait after the Start Trigger is received before acquiring or generating the first sample. This value is in the units you specify with Delay Units.
DAQmx_StartTrig_DelayUnits                       =               0x18C8;  % Specifies the units of Delay.
DAQmx_StartTrig_Retriggerable                    =               0x190F;  % Specifies whether a finite task resets and waits for another Start Trigger after the task completes. When you set this property to TRUE, the device performs a finite acquisition or generation each time the Start Trigger occurs until the task stops. The device ignores a trigger if it is in the process of acquiring or generating signals.
DAQmx_StartTrig_TrigWin                          =               0x311A;  % Specifies the period of time in seconds after the task starts during which the device may trigger. Once the window has expired, the device stops detecting triggers, and the task will finish after the device finishes acquiring post-trigger samples for any triggers detected. If no triggers are detected during the entire period, then no data will be returned. Ensure the period of time specified covers the entire time...
DAQmx_StartTrig_RetriggerWin                     =               0x311B;  % Specifies the period of time in seconds after each trigger during which the device may trigger. Once the window has expired, the device stops detecting triggers, and the task will finish after the device finishes acquiring post-trigger samples that it already started. Ensure the period of time specified covers the entire time span desired for retrigger detection to avoid missed triggers. Specifying a Retrigger Win...
DAQmx_StartTrig_MaxNumTrigsToDetect              =               0x311C;  % Specifies the maximum number of times the task will detect a start trigger during the task. The number of times a trigger is detected and acted upon by the module may be less than the specified amount if the task stops early because of trigger/retrigger window expiration. Specifying the Maximum Number of Triggers to Detect to be 0 causes the driver to automatically set this value to the maximum possible number of ...
DAQmx_RefTrig_Type                               =               0x1419;  % Specifies the type of trigger to use to mark a reference point for the measurement.
DAQmx_RefTrig_PretrigSamples                     =               0x1445;  % Specifies the minimum number of pretrigger samples to acquire from each channel before recognizing the reference trigger. Post-trigger samples per channel are equal to Samples Per Channel minus the number of pretrigger samples per channel.
DAQmx_RefTrig_Term                               =               0x2F1F;  % Indicates the name of the internal Reference Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx_DigEdge_RefTrig_Src                        =               0x1434;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Reference Trigger.
DAQmx_DigEdge_RefTrig_Edge                       =               0x1430;  % Specifies on what edge of a digital pulse the Reference Trigger occurs.
DAQmx_DigEdge_RefTrig_DigFltr_Enable             =               0x2ED7;  % Specifies whether to apply a digital filter to the trigger signal.
DAQmx_DigEdge_RefTrig_DigFltr_MinPulseWidth      =               0x2ED8;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_DigEdge_RefTrig_DigFltr_TimebaseSrc        =               0x2ED9;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_DigEdge_RefTrig_DigFltr_TimebaseRate       =               0x2EDA;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_DigEdge_RefTrig_DigSync_Enable             =               0x2EDB;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_DigPattern_RefTrig_Src                     =               0x1437;  % Specifies the physical channels to use for pattern matching. The order of the physical channels determines the order of the pattern. If a port is included, the order of the physical channels within the port is in ascending order.
DAQmx_DigPattern_RefTrig_Pattern                 =               0x2187;  % Specifies the digital pattern that must be met for the Reference Trigger to occur.
DAQmx_DigPattern_RefTrig_When                    =               0x1438;  % Specifies whether the Reference Trigger occurs when the physical channels specified with Source match or differ from the digital pattern specified with Pattern.
DAQmx_AnlgEdge_RefTrig_Src                       =               0x1424;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Reference Trigger.
DAQmx_AnlgEdge_RefTrig_Slope                     =               0x1423;  % Specifies on which slope of the source signal the Reference Trigger occurs.
DAQmx_AnlgEdge_RefTrig_Lvl                       =               0x1422;  % Specifies in the units of the measurement the threshold at which the Reference Trigger occurs.  Use Slope to specify on which slope to trigger at this threshold.
DAQmx_AnlgEdge_RefTrig_Hyst                      =               0x1421;  % Specifies a hysteresis level in the units of the measurement. If Slope is DAQmx_Val_RisingSlope, the trigger does not deassert until the source signal passes below Level minus the hysteresis. If Slope is DAQmx_Val_FallingSlope, the trigger does not deassert until the source signal passes above Level plus the hysteresis. Hysteresis is always enabled. Set this property to a non-zero value to use hysteresis.
DAQmx_AnlgEdge_RefTrig_Coupling                  =               0x2235;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx_AnlgEdge_RefTrig_DigFltr_Enable            =               0x2EE6;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay above or below the trigger level for the minimum pulse width before being recognized. Use filtering  for noisy trigger signals that transition in and out of the hysteresis window rapidly.
DAQmx_AnlgEdge_RefTrig_DigFltr_MinPulseWidth     =               0x2EE7;  % Specifies in seconds the minimum pulse width thefilter recognizes.
DAQmx_AnlgEdge_RefTrig_DigFltr_TimebaseSrc       =               0x2EE8;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AnlgEdge_RefTrig_DigFltr_TimebaseRate      =               0x2EE9;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AnlgEdge_RefTrig_DigSync_Enable            =               0x2EEA;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_AnlgMultiEdge_RefTrig_Srcs                 =               0x3126;  % Specifies a List and/or range of analog sources that are going to be used for Analog triggering. Each source corresponds to an element in each of the Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgMultiEdge_RefTrig_Slopes               =               0x3127;  % Specifies an array of slopes on which to trigger task to start generating or acquiring samples. Each element of the array corresponds to a source in Ref.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgMultiEdge_RefTrig_Lvls                 =               0x3128;  % Specifies an array of thresholds in the units of the measurement or generation to start acquiring or generating samples. Each element of the array corresponds to a source in Ref.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgMultiEdge_RefTrig_Hysts                =               0x3129;  % Specifies an array of hysteresis levels in the units of the measurement or generation. If the corresponding element of Ref.AnlgMultiEdge.Slopes is Rising, the trigger does not deassert until the source signal passes below the corresponding element of Ref.AnlgMultiEdge.Lvls minus the hysteresis. If Ref.AnlgEdge.Slope is Falling, the trigger does not deassert until the source signal passes above Ref.AnlgEdge.Lvl plu...
DAQmx_AnlgMultiEdge_RefTrig_Couplings            =               0x312A;  % Specifies an array that describes the couplings for the corresponding source signal of the trigger if the source is a terminal rather than a virtual channel. Each element of the array corresponds to a source in Ref.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx_AnlgWin_RefTrig_Src                        =               0x1426;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Reference Trigger.
DAQmx_AnlgWin_RefTrig_When                       =               0x1427;  % Specifies whether the Reference Trigger occurs when the source signal enters the window or when it leaves the window. Use Bottom and Top to specify the window.
DAQmx_AnlgWin_RefTrig_Top                        =               0x1429;  % Specifies the upper limit of the window. Specify this value in the units of the measurement.
DAQmx_AnlgWin_RefTrig_Btm                        =               0x1428;  % Specifies the lower limit of the window. Specify this value in the units of the measurement.
DAQmx_AnlgWin_RefTrig_Coupling                   =               0x1857;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx_AnlgWin_RefTrig_DigFltr_Enable             =               0x2EEB;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay within the trigger window for the minimum pulse width before being recognized. Use filtering for noisy trigger signals that transition in and out of the window rapidly.
DAQmx_AnlgWin_RefTrig_DigFltr_MinPulseWidth      =               0x2EEC;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_AnlgWin_RefTrig_DigFltr_TimebaseSrc        =               0x2EED;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AnlgWin_RefTrig_DigFltr_TimebaseRate       =               0x2EEE;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AnlgWin_RefTrig_DigSync_Enable             =               0x2EEF;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_RefTrig_AutoTrigEnable                     =               0x2EC1;  % Specifies whether to send a software trigger to the device when a hardware trigger is no longer active in order to prevent a timeout.
DAQmx_RefTrig_AutoTriggered                      =               0x2EC2;  % Indicates whether a completed acquisition was triggered by the auto trigger. If an acquisition has not completed after the task starts, this property returns FALSE. This property is only applicable when Enable  is TRUE.
DAQmx_RefTrig_TimestampEnable                    =               0x312E;  % Specifies whether the reference trigger timestamp is enabled. If the timestamp is enabled but no resources are available, an error will be returned at run time.
DAQmx_RefTrig_TimestampTimescale                 =               0x3130;  % Specifies the reference trigger timestamp timescale.
DAQmx_RefTrig_TimestampVal                       =               0x312F;  % Indicates the reference trigger timestamp value.
DAQmx_RefTrig_Delay                              =               0x1483;  % Specifies in seconds the time to wait after the device receives the Reference Trigger before switching from pretrigger to posttrigger samples.
DAQmx_RefTrig_Retriggerable                      =               0x311D;  % Specifies whether a finite task resets, acquires pretrigger samples, and waits for another Reference Trigger after the task completes. When you set this property to TRUE, the device will acquire post-trigger samples, reset, and acquire pretrigger samples each time the Reference Trigger occurs until the task stops. The device ignores a trigger if it is in the process of acquiring signals.
DAQmx_RefTrig_TrigWin                            =               0x311E;  % Specifies the duration in seconds after the task starts during which the device may trigger. Once the window has passed, the device stops detecting triggers, and the task will stop after the device finishes acquiring post-trigger samples that it already started. If no triggers are detected during the entire period, then no data will be returned. Specifying a Trigger Window of -1 causes the window to be infinite.
DAQmx_RefTrig_RetriggerWin                       =               0x311F;  % Specifies the duration in seconds after each trigger during which the device may trigger. Once the window has passed, the device stops detecting triggers, and the task will stop after the device finishes acquiring post-trigger samples that it already started. Specifying a Retrigger Window of -1 causes the window to be infinite.
DAQmx_RefTrig_MaxNumTrigsToDetect                =               0x3120;  % Specifies the maximum number of times the task will detect a reference trigger during the task. The number of times a trigger is detected and acted upon by the module may be less than the specified amount if the task stops early because of trigger/retrigger window expiration. Specifying the Maximum Number of Triggers to Detect to be 0 causes the driver to automatically set this value to the maximum possible number...
DAQmx_AdvTrig_Type                               =               0x1365;  % (Deprecated) Specifies the type of trigger to use to advance to the next entry in a switch scan list.
DAQmx_DigEdge_AdvTrig_Src                        =               0x1362;  % (Deprecated) Specifies the name of a terminal where there is a digital signal to use as the source of the Advance Trigger.
DAQmx_DigEdge_AdvTrig_Edge                       =               0x1360;  % (Deprecated) Specifies on which edge of a digital signal to advance to the next entry in a scan list.
DAQmx_DigEdge_AdvTrig_DigFltr_Enable             =               0x2238;  % (Deprecated) Specifies whether to apply the pulse width filter to the signal.
DAQmx_HshkTrig_Type                              =               0x22B7;  % Specifies the type of Handshake Trigger to use.
DAQmx_Interlocked_HshkTrig_Src                   =               0x22B8;  % Specifies the source terminal of the Handshake Trigger.
DAQmx_Interlocked_HshkTrig_AssertedLvl           =               0x22B9;  % Specifies the asserted level of the Handshake Trigger.
DAQmx_PauseTrig_Type                             =               0x1366;  % Specifies the type of trigger to use to pause a task.
DAQmx_PauseTrig_Term                             =               0x2F20;  % Indicates the name of the internal Pause Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx_AnlgLvl_PauseTrig_Src                      =               0x1370;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the trigger.
DAQmx_AnlgLvl_PauseTrig_When                     =               0x1371;  % Specifies whether the task pauses above or below the threshold you specify with Level.
DAQmx_AnlgLvl_PauseTrig_Lvl                      =               0x1369;  % Specifies the threshold at which to pause the task. Specify this value in the units of the measurement or generation. Use Pause When to specify whether the task pauses above or below this threshold.
DAQmx_AnlgLvl_PauseTrig_Hyst                     =               0x1368;  % Specifies a hysteresis level in the units of the measurement or generation. If Pause When is DAQmx_Val_AboveLvl, the trigger does not deassert until the source signal passes below Level minus the hysteresis. If Pause When is DAQmx_Val_BelowLvl, the trigger does not deassert until the source signal passes above Level plus the hysteresis. Hysteresis is always enabled. Set this property to a non-zero value to use hys...
DAQmx_AnlgLvl_PauseTrig_Coupling                 =               0x2236;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx_AnlgLvl_PauseTrig_DigFltr_Enable           =               0x2EF0;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay above or below the trigger level for the minimum pulse width before being recognized. Use filtering  for noisy trigger signals that transition in and out of the hysteresis window rapidly.
DAQmx_AnlgLvl_PauseTrig_DigFltr_MinPulseWidth    =               0x2EF1;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_AnlgLvl_PauseTrig_DigFltr_TimebaseSrc      =               0x2EF2;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AnlgLvl_PauseTrig_DigFltr_TimebaseRate     =               0x2EF3;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AnlgLvl_PauseTrig_DigSync_Enable           =               0x2EF4;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_AnlgWin_PauseTrig_Src                      =               0x1373;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the trigger.
DAQmx_AnlgWin_PauseTrig_When                     =               0x1374;  % Specifies whether the task pauses while the trigger signal is inside or outside the window you specify with Bottom and Top.
DAQmx_AnlgWin_PauseTrig_Top                      =               0x1376;  % Specifies the upper limit of the window. Specify this value in the units of the measurement or generation.
DAQmx_AnlgWin_PauseTrig_Btm                      =               0x1375;  % Specifies the lower limit of the window. Specify this value in the units of the measurement or generation.
DAQmx_AnlgWin_PauseTrig_Coupling                 =               0x2237;  % Specifies the coupling for the source signal of the terminal if the source is a terminal rather than a virtual channel.
DAQmx_AnlgWin_PauseTrig_DigFltr_Enable           =               0x2EF5;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay within the trigger window for the minimum pulse width before being recognized. Use filtering for noisy trigger signals that transition in and out of the window rapidly.
DAQmx_AnlgWin_PauseTrig_DigFltr_MinPulseWidth    =               0x2EF6;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_AnlgWin_PauseTrig_DigFltr_TimebaseSrc      =               0x2EF7;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx_AnlgWin_PauseTrig_DigFltr_TimebaseRate     =               0x2EF8;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_AnlgWin_PauseTrig_DigSync_Enable           =               0x2EF9;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_DigLvl_PauseTrig_Src                       =               0x1379;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Pause Trigger.
DAQmx_DigLvl_PauseTrig_When                      =               0x1380;  % Specifies whether the task pauses while the signal is high or low.
DAQmx_DigLvl_PauseTrig_DigFltr_Enable            =               0x2228;  % Specifies whether to apply a digital filter to the trigger signal.
DAQmx_DigLvl_PauseTrig_DigFltr_MinPulseWidth     =               0x2229;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_DigLvl_PauseTrig_DigFltr_TimebaseSrc       =               0x222A;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_DigLvl_PauseTrig_DigFltr_TimebaseRate      =               0x222B;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_DigLvl_PauseTrig_DigSync_Enable            =               0x222C;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_DigPattern_PauseTrig_Src                   =               0x216F;  % Specifies the physical channels to use for pattern matching. The order of the physical channels determines the order of the pattern. If a port is included, the lines within the port are in ascending order.
DAQmx_DigPattern_PauseTrig_Pattern               =               0x2188;  % Specifies the digital pattern that must be met for the Pause Trigger to occur.
DAQmx_DigPattern_PauseTrig_When                  =               0x2170;  % Specifies if the Pause Trigger occurs when the physical channels specified with Source match or differ from the digital pattern specified with Pattern.
DAQmx_ArmStartTrig_Type                          =               0x1414;  % Specifies the type of trigger to use to arm the task for a Start Trigger. If you configure an Arm Start Trigger, the task does not respond to a Start Trigger until the device receives the Arm Start Trigger.
DAQmx_ArmStart_Term                              =               0x2F7F;  % Indicates the name of the internal Arm Start Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx_DigEdge_ArmStartTrig_Src                   =               0x1417;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Arm Start Trigger.
DAQmx_DigEdge_ArmStartTrig_Edge                  =               0x1415;  % Specifies on which edge of a digital signal to arm the task for a Start Trigger.
DAQmx_DigEdge_ArmStartTrig_DigFltr_Enable        =               0x222D;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx_DigEdge_ArmStartTrig_DigFltr_MinPulseWidth =               0x222E;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx_DigEdge_ArmStartTrig_DigFltr_TimebaseSrc   =               0x222F;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx_DigEdge_ArmStartTrig_DigFltr_TimebaseRate  =               0x2230;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx_DigEdge_ArmStartTrig_DigSync_Enable        =               0x2231;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx_ArmStartTrig_TrigWhen                      =               0x3131;  % Specifies when to trigger the arm start trigger.
DAQmx_ArmStartTrig_Timescale                     =               0x3132;  % Specifies the timescale to be used for timestamps used in an arm start time trigger.
DAQmx_ArmStartTrig_TimestampEnable               =               0x3133;  % Specifies whether the arm start trigger timestamp is enabled. If the timestamp is enabled but no resources are available, an error will be returned at run time.
DAQmx_ArmStartTrig_TimestampTimescale            =               0x3135;  % Specifies the arm start trigger timestamp timescale.
DAQmx_ArmStartTrig_TimestampVal                  =               0x3134;  % Indicates the arm start trigger timestamp value.
DAQmx_Trigger_SyncType                           =               0x2F80;  % Specifies the role of the device in a synchronized system. Setting this value to  DAQmx_Val_Master or  DAQmx_Val_Slave enables trigger skew correction. If you enable trigger skew correction, set this property to DAQmx_Val_Master on only one device, and set this property to DAQmx_Val_Slave on the other devices.

%********** Watchdog Attributes **********
DAQmx_Watchdog_Timeout                        =                  0x21A9;  % Specifies in seconds the amount of time until the watchdog timer expires. A value of -1 means the internal timer never expires. Set this input to -1 if you use an Expiration Trigger to expire the watchdog task.
DAQmx_WatchdogExpirTrig_Type                  =                  0x21A3;  % Specifies the type of trigger to use to expire a watchdog task.
DAQmx_WatchdogExpirTrig_TrigOnNetworkConnLoss =                  0x305D;  % Specifies the watchdog timer behavior when the network connection is lost between the host and the chassis. If set to true, the watchdog timer expires when the chassis detects the loss of network connection.
DAQmx_DigEdge_WatchdogExpirTrig_Src           =                  0x21A4;  % Specifies the name of a terminal where a digital signal exists to use as the source of the Expiration Trigger.
DAQmx_DigEdge_WatchdogExpirTrig_Edge          =                  0x21A5;  % Specifies on which edge of a digital signal to expire the watchdog task.
DAQmx_Watchdog_DO_ExpirState                  =                  0x21A7;  % Specifies the state to which to set the digital physical channels when the watchdog task expires.  You cannot modify the expiration state of dedicated digital input physical channels.
DAQmx_Watchdog_AO_OutputType                  =                  0x305E;  % Specifies the output type of the analog output physical channels when the watchdog task expires.
DAQmx_Watchdog_AO_ExpirState                  =                  0x305F;  % Specifies the state to set the analog output physical channels when the watchdog task expires.
DAQmx_Watchdog_CO_ExpirState                  =                  0x3060;  % Specifies the state to set the counter output channel terminal when the watchdog task expires.
DAQmx_Watchdog_HasExpired                     =                  0x21A8;  % Indicates if the watchdog timer expired. You can read this property only while the task is running.

%********** Write Attributes **********
DAQmx_Write_RelativeTo                           =               0x190C;  % Specifies the point in the buffer at which to write data. If you also specify an offset with Offset, the write operation begins at that offset relative to this point you select with this property.
DAQmx_Write_Offset                               =               0x190D;  % Specifies in samples per channel an offset at which a write operation begins. This offset is relative to the location you specify with Relative To.
DAQmx_Write_RegenMode                            =               0x1453;  % Specifies whether to allow NI-DAQmx to generate the same data multiple times.
DAQmx_Write_CurrWritePos                         =               0x1458;  % Indicates the position in the buffer of the next sample to generate. This value is identical for all channels in the task.
DAQmx_Write_OvercurrentChansExist                =               0x29E8;  % Indicates if the device(s) detected an overcurrent condition for any channel in the task. Reading this property clears the overcurrent status for all channels in the task. You must read this property before you read Overcurrent Channels. Otherwise, you will receive an error.
DAQmx_Write_OvercurrentChans                     =               0x29E9;  % Indicates a list of names of any virtual channels in the task for which an overcurrent condition has been detected. You must read Overcurrent Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Write_OvertemperatureChansExist            =               0x2A84;  % Indicates if the device(s) detected an overtemperature condition in any virtual channel in the task. Reading this property clears the overtemperature status for all channels in the task. You must read this property before you read Overtemperature Channels. Otherwise, you will receive an error.
DAQmx_Write_OvertemperatureChans                 =               0x3083;  % Indicates a list of names of any overtemperature virtual channels. You must read Overtemperature Channels Exist before you read this property. Otherwise, you will receive an error. The list of names may be empty if the device cannot determine the source of the overtemperature.
DAQmx_Write_ExternalOvervoltageChansExist        =               0x30BB;  % Indicates if the device(s) detected an External Overvoltage condition for any channel in the task. Reading this property clears the External Overvoltage status for all channels in the task. You must read this property before you read External OvervoltageChans. Otherwise, you will receive an error.
DAQmx_Write_ExternalOvervoltageChans             =               0x30BC;  % Indicates a list of names of any virtual channels in the task for which an External Overvoltage condition has been detected. You must read External OvervoltageChansExist before you read this property. Otherwise, you will receive an error.
DAQmx_Write_OverloadedChansExist                 =               0x3084;  % Indicates if the device(s) detected an overload in any virtual channel in the task. Reading this property clears the overload status for all channels in the task. You must read this property before you read Overloaded Channels. Otherwise, you will receive an error.
DAQmx_Write_OverloadedChans                      =               0x3085;  % Indicates a list of names of any overloaded virtual channels in the task. You must read Overloaded Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Write_OpenCurrentLoopChansExist            =               0x29EA;  % Indicates if the device(s) detected an open current loop for any channel in the task. Reading this property clears the open current loop status for all channels in the task. You must read this property before you read Open Current Loop Channels. Otherwise, you will receive an error.
DAQmx_Write_OpenCurrentLoopChans                 =               0x29EB;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an open current loop. You must read Open Current Loop Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Write_PowerSupplyFaultChansExist           =               0x29EC;  % Indicates if the device(s) detected a power supply fault for any channel in the task. Reading this property clears the power supply fault status for all channels in the task. You must read this property before you read Power Supply Fault Channels. Otherwise, you will receive an error.
DAQmx_Write_PowerSupplyFaultChans                =               0x29ED;  % Indicates a list of names of any virtual channels in the task that have a power supply fault. You must read Power Supply Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx_Write_Sync_UnlockedChansExist              =               0x313F;  % Indicates whether the target is currently locked to the grand master. Devices may report PLL Unlock either during acquisition or after acquisition.
DAQmx_Write_Sync_UnlockedChans                   =               0x3140;  % Indicates the channels from devices in an unlocked target.
DAQmx_Write_SpaceAvail                           =               0x1460;  % Indicates in samples per channel the amount of available space in the buffer.
DAQmx_Write_TotalSampPerChanGenerated            =               0x192B;  % Indicates the total number of samples generated by each channel in the task. This value is identical for all channels in the task.
DAQmx_Write_AccessoryInsertionOrRemovalDetected  =               0x3053;  % Indicates if any devices in the task detected the insertion or removal of an accessory since the task started. Reading this property clears the accessory change status for all channels in the task. You must read this property before you read Devices with Inserted or Removed Accessories. Otherwise, you will receive an error.
DAQmx_Write_DevsWithInsertedOrRemovedAccessories =               0x3054;  % Indicates the names of any devices that detected the insertion or removal of an accessory since the task started. You must read Accessory Insertion or Removal Detected before you read this property. Otherwise, you will receive an error.
DAQmx_Write_RawDataWidth                         =               0x217D;  % Indicates in bytes the required size of a raw sample to write to the task.
DAQmx_Write_NumChans                             =               0x217E;  % Indicates the number of channels that an NI-DAQmx Write function writes to the task. This value is the number of channels in the task.
DAQmx_Write_WaitMode                             =               0x22B1;  % Specifies how an NI-DAQmx Write function waits for space to become available in the buffer.
DAQmx_Write_SleepTime                            =               0x22B2;  % Specifies in seconds the amount of time to sleep after checking for available buffer space if Wait Mode is DAQmx_Val_Sleep.
DAQmx_Write_DigitalLines_BytesPerChan            =               0x217F;  % Indicates the number of Boolean values expected per channel in a sample for line-based writes. This property is determined by the channel in the task with the most digital lines. If a channel has fewer lines than this number, NI-DAQmx ignores the extra Boolean values.


% For backwards compatibility, the DAQmx_ReadWaitMode has to be defined because this was the original spelling
% that has been later on corrected.
DAQmx_ReadWaitMode = DAQmx_Read_WaitMode;

% *************************************************************************
% *** NI-DAQmx Values *****************************************************
% *************************************************************************

% ******************************************************
% ***    Non-Attribute Function Parameter Values     ***
% ******************************************************

%*** Values for the Mode parameter of DAQmxTaskControl ***
DAQmx_Val_Task_Start     =                                        0;  % Start
DAQmx_Val_Task_Stop      =                                        1;  % Stop
DAQmx_Val_Task_Verify    =                                        2;  % Verify
DAQmx_Val_Task_Commit    =                                        3;  % Commit
DAQmx_Val_Task_Reserve   =                                        4;  % Reserve
DAQmx_Val_Task_Unreserve =                                        5;  % Unreserve
DAQmx_Val_Task_Abort     =                                        6;  % Abort

%*** Values for the Options parameter of the event registration functions
DAQmx_Val_SynchronousEventCallbacks =                       1 * 2^0; % (1<<0)  % Synchronous callbacks

%*** Values for the everyNsamplesEventType parameter of DAQmxRegisterEveryNSamplesEvent ***
DAQmx_Val_Acquired_Into_Buffer    =                               1;  % Acquired Into Buffer
DAQmx_Val_Transferred_From_Buffer =                               2;  % Transferred From Buffer


%*** Values for the Action parameter of DAQmxControlWatchdogTask ***
DAQmx_Val_ResetTimer      =                                       0;  % Reset Timer
DAQmx_Val_ClearExpiration =                                       1;  % Clear Expiration

%*** Values for the Line Grouping parameter of DAQmxCreateDIChan and DAQmxCreateDOChan ***
DAQmx_Val_ChanPerLine     =                                       0;  % One Channel For Each Line
DAQmx_Val_ChanForAllLines =                                       1;  % One Channel For All Lines

%*** Values for the Fill Mode parameter of DAQmxReadAnalogF64, DAQmxReadBinaryI16, DAQmxReadBinaryU16, DAQmxReadBinaryI32, DAQmxReadBinaryU32,
%    DAQmxReadDigitalU8, DAQmxReadDigitalU32, DAQmxReadDigitalLines ***
%*** Values for the Data Layout parameter of DAQmxWriteAnalogF64, DAQmxWriteBinaryI16, DAQmxWriteDigitalU8, DAQmxWriteDigitalU32, DAQmxWriteDigitalLines ***
DAQmx_Val_GroupByChannel    =                                     0;  % Group by Channel
DAQmx_Val_GroupByScanNumber =                                     1;  % Group by Scan Number

%*** Values for the Signal Modifiers parameter of DAQmxConnectTerms ***/
DAQmx_Val_DoNotInvertPolarity =                                   0;  % Do not invert polarity
DAQmx_Val_InvertPolarity      =                                   1;  % Invert polarity

%*** Values for the Action paramter of DAQmxCloseExtCal ***
DAQmx_Val_Action_Commit =                                         0;  % Commit
DAQmx_Val_Action_Cancel =                                         1;  % Cancel

%*** Values for the Trigger ID parameter of DAQmxSendSoftwareTrigger ***
DAQmx_Val_AdvanceTrigger =                                        12488;  % Advance Trigger

%*** Value set for the ActiveEdge parameter of DAQmxCfgSampClkTiming and DAQmxCfgPipelinedSampClkTiming ***
DAQmx_Val_Rising  =                                               10280;  % Rising
DAQmx_Val_Falling =                                               10171;  % Falling

%*** Value set SwitchPathType ***
%*** Value set for the output Path Status parameter of DAQmxSwitchFindPath ***
DAQmx_Val_PathStatus_Available                 =                  10431;  % Path Available
DAQmx_Val_PathStatus_AlreadyExists             =                  10432;  % Path Already Exists
DAQmx_Val_PathStatus_Unsupported               =                  10433;  % Path Unsupported
DAQmx_Val_PathStatus_ChannelInUse              =                  10434;  % Channel In Use
DAQmx_Val_PathStatus_SourceChannelConflict     =                  10435;  % Channel Source Conflict
DAQmx_Val_PathStatus_ChannelReservedForRouting =                  10436;  % Channel Reserved for Routing

%*** Value set for the Units parameter of DAQmxCreateAIThrmcplChan, DAQmxCreateAIRTDChan, DAQmxCreateAIThrmstrChanIex, DAQmxCreateAIThrmstrChanVex and DAQmxCreateAITempBuiltInSensorChan ***
DAQmx_Val_DegC    =                                               10143;  % Deg C
DAQmx_Val_DegF    =                                               10144;  % Deg F
DAQmx_Val_Kelvins =                                               10325;  % Kelvins
DAQmx_Val_DegR    =                                               10145;  % Deg R

%*** Value set for the state parameter of DAQmxSetDigitalPowerUpStates ***
DAQmx_Val_High     =                                              10192;  % High
DAQmx_Val_Low      =                                              10214;  % Low
DAQmx_Val_Tristate =                                              10310;  % Tristate

%*** Value set for the state parameter of DAQmxSetDigitalPullUpPullDownStates ***
DAQmx_Val_PullUp   =                                              15950;  % Pull Up
DAQmx_Val_PullDown =                                              15951;  % Pull Down

%*** Value set for the channelType parameter of DAQmxSetAnalogPowerUpStates & DAQmxGetAnalogPowerUpStates ***
DAQmx_Val_ChannelVoltage       =                                  0;  % Voltage Channel
DAQmx_Val_ChannelCurrent       =                                  1;  % Current Channel
DAQmx_Val_ChannelHighImpedance =                                  2;  % High-Impedance Channel

%*** Value set RelayPos ***
%*** Value set for the state parameter of DAQmxSwitchGetSingleRelayPos and DAQmxSwitchGetMultiRelayPos ***
DAQmx_Val_Open   =                                                10437;  % Open
DAQmx_Val_Closed =                                                10438;  % Closed


%*** Value set for the inputCalSource parameter of DAQmxAdjust1540Cal ***
DAQmx_Val_Loopback0   =                                           0;  % Loopback 0 degree shift
DAQmx_Val_Loopback180 =                                           1;  % Loopback 180 degree shift
DAQmx_Val_Ground      =                                           2;  % Ground

%*** Value set for calibration mode for 4339 Calibration functions ***
DAQmx_Val_Voltage =                                               10322;  % Voltage
DAQmx_Val_Bridge  =                                               15908;  % Bridge

%*** Value set for output type for 4322 Calibration functions ***
DAQmx_Val_Voltage =                                               10322;  % Voltage
DAQmx_Val_Current =                                               10134;  % Current

%*** Value set for terminal configuration for 4463 calibration functions ***
DAQmx_Val_Diff       =                                            10106;  % Differential
DAQmx_Val_PseudoDiff =                                            12529;  % Pseudodifferential

%*** Value set for the calibration mode for the 4480 Calibration functions ***
DAQmx_Val_Voltage =                                               10322;  % Voltage
DAQmx_Val_Charge  =                                               16105;  % Charge

%*** Value set for the calibration type for the 15200 Calibration functions ***
DAQmx_Val_PowerCalibrationType_RemoteVoltage =                    15100;  % Remote Voltage
DAQmx_Val_PowerCalibrationType_LocalVoltage  =                    15101;  % Local Voltage
DAQmx_Val_PowerCalibrationType_Current       =                    15102;  % Current

%*** Value set for shunt resistor select for Strain and Bridge Shunt Calibration functions ***
DAQmx_Val_A =                                                     12513;  % A
DAQmx_Val_B =                                                     12514;  % B

%*** Value set for Force IEPE functions ***
DAQmx_Val_Newtons         =                                       15875;  % Newtons
DAQmx_Val_Pounds          =                                       15876;  % Pounds
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Value set for DAQmxWaitForValidTimestamp ***
DAQmx_Val_StartTrigger         =                                  12491;  % Start Trigger
DAQmx_Val_ReferenceTrigger     =                                  12490;  % Reference Trigger
DAQmx_Val_ArmStartTrigger      =                                  14641;  % Arm Start Trigger
DAQmx_Val_FirstSampleTimestamp =                                  16130;  % First Sample Timestamp

%*** Value for the Terminal Config parameter of DAQmxCreateAIVoltageChan, DAQmxCreateAICurrentChan and DAQmxCreateAIVoltageChanWithExcit ***
DAQmx_Val_Cfg_Default =                                           -1;  % Default
%*** Value for the Shunt Resistor Location parameter of DAQmxCreateAICurrentChan ***
DAQmx_Val_Default =                                               -1;  % Default

%*** Value for the Timeout parameter of DAQmxWaitUntilTaskDone
DAQmx_Val_WaitInfinitely =                                        -1;

%*** Value for the Number of Samples per Channel parameter of DAQmxReadAnalogF64, DAQmxReadBinaryI16, DAQmxReadBinaryU16,
%    DAQmxReadBinaryI32, DAQmxReadBinaryU32, DAQmxReadDigitalU8, DAQmxReadDigitalU32,
%    DAQmxReadDigitalLines, DAQmxReadCounterF64, DAQmxReadCounterU32 and DAQmxReadRaw ***
DAQmx_Val_Auto =                                                  -1;

% Value set for the Options parameter of DAQmxSaveTask, DAQmxSaveGlobalChan and DAQmxSaveScale
DAQmx_Val_Save_Overwrite                =                        1 * 2^0;  % 1<<0
DAQmx_Val_Save_AllowInteractiveEditing  =                        1 * 2^1;  % 1<<1
DAQmx_Val_Save_AllowInteractiveDeletion =                        1 * 2^2;  % 1<<2

%*** Values for the Trigger Usage parameter - set of trigger types a device may support
%*** Values for TriggerUsageTypeBits
DAQmx_Val_Bit_TriggerUsageTypes_Advance   =                      1 * 2^0;  % 1<<0  % Device supports advance triggers
DAQmx_Val_Bit_TriggerUsageTypes_Pause     =                      1 * 2^1;  % 1<<1  % Device supports pause triggers
DAQmx_Val_Bit_TriggerUsageTypes_Reference =                      1 * 2^2;  % 1<<2  % Device supports reference triggers
DAQmx_Val_Bit_TriggerUsageTypes_Start     =                      1 * 2^3;  % 1<<3  % Device supports start triggers
DAQmx_Val_Bit_TriggerUsageTypes_Handshake =                      1 * 2^4;  % 1<<4  % Device supports handshake triggers
DAQmx_Val_Bit_TriggerUsageTypes_ArmStart  =                      1 * 2^5;  % 1<<5  % Device supports arm start triggers

%*** Values for the Coupling Types parameter - set of coupling types a device may support
%*** Values for CouplingTypeBits
DAQmx_Val_Bit_CouplingTypes_AC          =                        1 * 2^0;  % 1<<0  % Device supports AC coupling
DAQmx_Val_Bit_CouplingTypes_DC          =                        1 * 2^1;  % 1<<1  % Device supports DC coupling
DAQmx_Val_Bit_CouplingTypes_Ground      =                        1 * 2^2;  % 1<<2  % Device supports ground coupling
DAQmx_Val_Bit_CouplingTypes_HFReject    =                        1 * 2^3;  % 1<<3  % Device supports High Frequency Reject coupling
DAQmx_Val_Bit_CouplingTypes_LFReject    =                        1 * 2^4;  % 1<<4  % Device supports Low Frequency Reject coupling
DAQmx_Val_Bit_CouplingTypes_NoiseReject =                        1 * 2^5;  % 1<<5  % Device supports Noise Reject coupling

%*** Values for DAQmx_PhysicalChan_AI_TermCfgs and DAQmx_PhysicalChan_AO_TermCfgs
%*** Value set TerminalConfigurationBits ***
DAQmx_Val_Bit_TermCfg_RSE        =                               1 * 2^0;  % 1<<0  % RSE terminal configuration
DAQmx_Val_Bit_TermCfg_NRSE       =                               1 * 2^1;  % 1<<1  % NRSE terminal configuration
DAQmx_Val_Bit_TermCfg_Diff       =                               1 * 2^2;  % 1<<2  % Differential terminal configuration
DAQmx_Val_Bit_TermCfg_PseudoDIFF =                               1 * 2^3;  % 1<<3  % Pseudodifferential terminal configuration


% ******************************************************
% ***              Attribute Values                  ***
% ******************************************************

%*** Values for DAQmx_AI_ACExcit_WireMode ***
%*** Value set ACExcitWireMode ***
DAQmx_Val_4Wire =                                                     4;  % 4-Wire
DAQmx_Val_5Wire =                                                     5;  % 5-Wire
DAQmx_Val_6Wire =                                                     6;  % 6-Wire

%*** Values for DAQmx_AI_ADCTimingMode ***
%*** Value set ADCTimingMode ***
DAQmx_Val_Automatic         =                                     16097;  % Automatic
DAQmx_Val_HighResolution    =                                     10195;  % High Resolution
DAQmx_Val_HighSpeed         =                                     14712;  % High Speed
DAQmx_Val_Best50HzRejection =                                     14713;  % Best 50 Hz Rejection
DAQmx_Val_Best60HzRejection =                                     14714;  % Best 60 Hz Rejection
DAQmx_Val_Custom            =                                     10137;  % Custom

%*** Values for DAQmx_AI_MeasType ***
%*** Values for DAQmx_Dev_AI_SupportedMeasTypes ***
%*** Values for DAQmx_PhysicalChan_AI_SupportedMeasTypes ***
%*** Value set AIMeasurementType ***
DAQmx_Val_Voltage                            =                    10322;  % Voltage
DAQmx_Val_VoltageRMS                         =                    10350;  % Voltage RMS
DAQmx_Val_Current                            =                    10134;  % Current
DAQmx_Val_CurrentRMS                         =                    10351;  % Current RMS
DAQmx_Val_Voltage_CustomWithExcitation       =                    10323;  % More:Voltage:Custom with Excitation
DAQmx_Val_Bridge                             =                    15908;  % More:Bridge (V/V)
DAQmx_Val_Freq_Voltage                       =                    10181;  % Frequency
DAQmx_Val_Resistance                         =                    10278;  % Resistance
DAQmx_Val_Temp_TC                            =                    10303;  % Temperature:Thermocouple
DAQmx_Val_Temp_Thrmstr                       =                    10302;  % Temperature:Thermistor
DAQmx_Val_Temp_RTD                           =                    10301;  % Temperature:RTD
DAQmx_Val_Temp_BuiltInSensor                 =                    10311;  % Temperature:Built-in Sensor
DAQmx_Val_Strain_Gage                        =                    10300;  % Strain Gage
DAQmx_Val_Rosette_Strain_Gage                =                    15980;  % Rosette Strain Gage
DAQmx_Val_Position_LVDT                      =                    10352;  % Position:LVDT
DAQmx_Val_Position_RVDT                      =                    10353;  % Position:RVDT
DAQmx_Val_Position_EddyCurrentProximityProbe =                    14835;  % Position:Eddy Current Proximity Probe
DAQmx_Val_Accelerometer                      =                    10356;  % Accelerometer
DAQmx_Val_Acceleration_Charge                =                    16104;  % Acceleration:Charge
DAQmx_Val_Acceleration_4WireDCVoltage        =                    16106;  % Acceleration:4 Wire DC Voltage
DAQmx_Val_Velocity_IEPESensor                =                    15966;  % Velocity:IEPE Sensor
DAQmx_Val_Force_Bridge                       =                    15899;  % Force:Bridge
DAQmx_Val_Force_IEPESensor                   =                    15895;  % Force:IEPE Sensor
DAQmx_Val_Pressure_Bridge                    =                    15902;  % Pressure:Bridge
DAQmx_Val_SoundPressure_Microphone           =                    10354;  % Sound Pressure:Microphone
DAQmx_Val_Torque_Bridge                      =                    15905;  % Torque:Bridge
DAQmx_Val_TEDS_Sensor                        =                    12531;  % TEDS Sensor
DAQmx_Val_Charge                             =                    16105;  % Charge
DAQmx_Val_Power                              =                    16201;  % Power

%*** Values for DAQmx_AO_IdleOutputBehavior ***
%*** Value set AOIdleOutputBehavior ***
DAQmx_Val_ZeroVolts             =                                 12526;  % Zero Volts
DAQmx_Val_HighImpedance         =                                 12527;  % High-Impedance
DAQmx_Val_MaintainExistingValue =                                 12528;  % Maintain Existing Value

%*** Values for DAQmx_AO_OutputType ***
%*** Values for DAQmx_Dev_AO_SupportedOutputTypes ***
%*** Values for DAQmx_PhysicalChan_AO_SupportedOutputTypes ***
%*** Value set AOOutputChannelType ***
DAQmx_Val_Voltage =                                               10322;  % Voltage
DAQmx_Val_Current =                                               10134;  % Current
DAQmx_Val_FuncGen =                                               14750;  % Function Generation

%*** Values for DAQmx_PhysicalChan_AO_SupportedPowerUpOutputTypes ***
%*** Value set AOPowerUpOutputBehavior ***
DAQmx_Val_Voltage       =                                         10322;  % Voltage
DAQmx_Val_Current       =                                         10134;  % Current
DAQmx_Val_HighImpedance =                                         12527;  % High-Impedance

%*** Values for DAQmx_AI_Accel_Charge_SensitivityUnits ***
%*** Value set AccelChargeSensitivityUnits ***
DAQmx_Val_PicoCoulombsPerG                      =                 16099;  % PicoCoulombs per g
DAQmx_Val_PicoCoulombsPerMetersPerSecondSquared =                 16100;  % PicoCoulombs per m/s^2
DAQmx_Val_PicoCoulombsPerInchesPerSecondSquared =                 16101;  % PicoCoulombs per in/s^2

%*** Values for DAQmx_AI_Accel_4WireDCVoltage_SensitivityUnits ***
%*** Values for DAQmx_AI_Accel_SensitivityUnits ***
%*** Value set AccelSensitivityUnits1 ***
DAQmx_Val_mVoltsPerG =                                            12509;  % mVolts/g
DAQmx_Val_VoltsPerG  =                                            12510;  % Volts/g

%*** Values for DAQmx_AI_Accel_Units ***
%*** Value set AccelUnits2 ***
DAQmx_Val_AccelUnit_g            =                                10186;  % g
DAQmx_Val_MetersPerSecondSquared =                                12470;  % m/s^2
DAQmx_Val_InchesPerSecondSquared =                                12471;  % in/s^2
DAQmx_Val_FromCustomScale        =                                10065;  % From Custom Scale

%*** Values for DAQmx_Dev_AI_SampModes ***
%*** Values for DAQmx_Dev_AO_SampModes ***
%*** Values for DAQmx_Dev_CI_SampModes ***
%*** Values for DAQmx_Dev_CO_SampModes ***
%*** Values for DAQmx_PhysicalChan_DI_SampModes ***
%*** Values for DAQmx_PhysicalChan_DO_SampModes ***
%*** Values for DAQmx_SampQuant_SampMode ***
%*** Value set AcquisitionType ***
DAQmx_Val_FiniteSamps        =                                    10178;  % Finite Samples
DAQmx_Val_ContSamps          =                                    10123;  % Continuous Samples
DAQmx_Val_HWTimedSinglePoint =                                    12522;  % Hardware Timed Single Point

%*** Values for DAQmx_AnlgLvl_PauseTrig_When ***
%*** Value set ActiveLevel ***
DAQmx_Val_AboveLvl =                                              10093;  % Above Level
DAQmx_Val_BelowLvl =                                              10107;  % Below Level

%*** Values for DAQmx_AI_RVDT_Units ***
%*** Value set AngleUnits1 ***
DAQmx_Val_Degrees         =                                       10146;  % Degrees
DAQmx_Val_Radians         =                                       10273;  % Radians
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_CI_AngEncoder_Units ***
%*** Value set AngleUnits2 ***
DAQmx_Val_Degrees         =                                       10146;  % Degrees
DAQmx_Val_Radians         =                                       10273;  % Radians
DAQmx_Val_Ticks           =                                       10304;  % Ticks
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_CI_Velocity_AngEncoder_Units ***
%*** Value set AngularVelocityUnits ***
DAQmx_Val_RPM              =                                      16080;  % RPM
DAQmx_Val_RadiansPerSecond =                                      16081;  % Radians/s
DAQmx_Val_DegreesPerSecond =                                      16082;  % Degrees/s
DAQmx_Val_FromCustomScale  =                                      10065;  % From Custom Scale

%*** Values for DAQmx_AI_AutoZeroMode ***
%*** Value set AutoZeroType1 ***
DAQmx_Val_None        =                                           10230;  % None
DAQmx_Val_Once        =                                           10244;  % Once
DAQmx_Val_EverySample =                                           10164;  % Every Sample

%*** Values for DAQmx_SwitchScan_BreakMode ***
%*** Value set BreakMode ***
DAQmx_Val_NoAction        =                                       10227;  % No Action
DAQmx_Val_BreakBeforeMake =                                       10110;  % Break Before Make

%*** Values for DAQmx_AI_Bridge_Cfg ***
%*** Value set BridgeConfiguration1 ***
DAQmx_Val_FullBridge    =                                         10182;  % Full Bridge
DAQmx_Val_HalfBridge    =                                         10187;  % Half Bridge
DAQmx_Val_QuarterBridge =                                         10270;  % Quarter Bridge
DAQmx_Val_NoBridge      =                                         10228;  % No Bridge

%*** Values for DAQmx_AI_Bridge_ElectricalUnits ***
%*** Value set BridgeElectricalUnits ***
DAQmx_Val_VoltsPerVolt  =                                         15896;  % Volts/Volt
DAQmx_Val_mVoltsPerVolt =                                         15897;  % mVolts/Volt

%*** Values for DAQmx_AI_Bridge_PhysicalUnits ***
%*** Value set BridgePhysicalUnits ***
DAQmx_Val_Newtons             =                                   15875;  % Newtons
DAQmx_Val_Pounds              =                                   15876;  % Pounds
DAQmx_Val_KilogramForce       =                                   15877;  % kgf
DAQmx_Val_Pascals             =                                   10081;  % Pascals
DAQmx_Val_PoundsPerSquareInch =                                   15879;  % psi
DAQmx_Val_Bar                 =                                   15880;  % bar
DAQmx_Val_NewtonMeters        =                                   15881;  % Nm
DAQmx_Val_InchOunces          =                                   15882;  % oz-in
DAQmx_Val_InchPounds          =                                   15883;  % lb-in
DAQmx_Val_FootPounds          =                                   15884;  % lb-ft

%*** Values for DAQmx_AI_Bridge_Units ***
%*** Value set BridgeUnits ***
DAQmx_Val_VoltsPerVolt    =                                       15896;  % Volts/Volt
DAQmx_Val_mVoltsPerVolt   =                                       15897;  % mVolts/Volt
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale
DAQmx_Val_FromTEDS        =                                       12516;  % From TEDS

%*** Values for DAQmx_Dev_BusType ***
%*** Value set BusType ***
DAQmx_Val_PCI         =                                           12582;  % PCI
DAQmx_Val_PCIe        =                                           13612;  % PCIe
DAQmx_Val_PXI         =                                           12583;  % PXI
DAQmx_Val_PXIe        =                                           14706;  % PXIe
DAQmx_Val_SCXI        =                                           12584;  % SCXI
DAQmx_Val_SCC         =                                           14707;  % SCC
DAQmx_Val_PCCard      =                                           12585;  % PCCard
DAQmx_Val_USB         =                                           12586;  % USB
DAQmx_Val_CompactDAQ  =                                           14637;  % CompactDAQ
DAQmx_Val_CompactRIO  =                                           16143;  % CompactRIO
DAQmx_Val_TCPIP       =                                           14828;  % TCP/IP
DAQmx_Val_Unknown     =                                           12588;  % Unknown
DAQmx_Val_SwitchBlock =                                           15870;  % SwitchBlock

%*** Values for DAQmx_CI_MeasType ***
%*** Values for DAQmx_Dev_CI_SupportedMeasTypes ***
%*** Values for DAQmx_PhysicalChan_CI_SupportedMeasTypes ***
%*** Value set CIMeasurementType ***
DAQmx_Val_CountEdges          =                                   10125;  % Count Edges
DAQmx_Val_Freq                =                                   10179;  % Frequency
DAQmx_Val_Period              =                                   10256;  % Period
DAQmx_Val_PulseWidth          =                                   10359;  % Pulse Width
DAQmx_Val_SemiPeriod          =                                   10289;  % Semi Period
DAQmx_Val_PulseFrequency      =                                   15864;  % Pulse Frequency
DAQmx_Val_PulseTime           =                                   15865;  % Pulse Time
DAQmx_Val_PulseTicks          =                                   15866;  % Pulse Ticks
DAQmx_Val_DutyCycle           =                                   16070;  % Duty Cycle
DAQmx_Val_Position_AngEncoder =                                   10360;  % Position:Angular Encoder
DAQmx_Val_Position_LinEncoder =                                   10361;  % Position:Linear Encoder
DAQmx_Val_Velocity_AngEncoder =                                   16078;  % Velocity:Angular Encoder
DAQmx_Val_Velocity_LinEncoder =                                   16079;  % Velocity:Linear Encoder
DAQmx_Val_TwoEdgeSep          =                                   10267;  % Two Edge Separation
DAQmx_Val_GPS_Timestamp       =                                   10362;  % GPS Timestamp

%*** Values for DAQmx_AI_Thrmcpl_CJCSrc ***
%*** Value set CJCSource1 ***
DAQmx_Val_BuiltIn  =                                              10200;  % Built-In
DAQmx_Val_ConstVal =                                              10116;  % Constant Value
DAQmx_Val_Chan     =                                              10113;  % Channel

%*** Values for DAQmx_CO_OutputType ***
%*** Values for DAQmx_Dev_CO_SupportedOutputTypes ***
%*** Values for DAQmx_PhysicalChan_CO_SupportedOutputTypes ***
%*** Value set COOutputType ***
DAQmx_Val_Pulse_Time  =                                           10269;  % Pulse:Time
DAQmx_Val_Pulse_Freq  =                                           10119;  % Pulse:Frequency
DAQmx_Val_Pulse_Ticks =                                           10268;  % Pulse:Ticks

%*** Values for DAQmx_ChanType ***
%*** Value set ChannelType ***
DAQmx_Val_AI =                                                    10100;  % Analog Input
DAQmx_Val_AO =                                                    10102;  % Analog Output
DAQmx_Val_DI =                                                    10151;  % Digital Input
DAQmx_Val_DO =                                                    10153;  % Digital Output
DAQmx_Val_CI =                                                    10131;  % Counter Input
DAQmx_Val_CO =                                                    10132;  % Counter Output

%*** Values for DAQmx_CO_ConstrainedGenMode ***
%*** Value set ConstrainedGenMode ***
DAQmx_Val_Unconstrained           =                               14708;  % Unconstrained
DAQmx_Val_FixedHighFreq           =                               14709;  % Fixed High Frequency
DAQmx_Val_FixedLowFreq            =                               14710;  % Fixed Low Frequency
DAQmx_Val_Fixed50PercentDutyCycle =                               14711;  % Fixed 50 Percent Duty Cycle

%*** Values for DAQmx_CI_CountEdges_Dir ***
%*** Value set CountDirection1 ***
DAQmx_Val_CountUp       =                                         10128;  % Count Up
DAQmx_Val_CountDown     =                                         10124;  % Count Down
DAQmx_Val_ExtControlled =                                         10326;  % Externally Controlled

%*** Values for DAQmx_CI_Freq_MeasMeth ***
%*** Values for DAQmx_CI_Period_MeasMeth ***
%*** Value set CounterFrequencyMethod ***
DAQmx_Val_LowFreq1Ctr  =                                          10105;  % Low Frequency with 1 Counter
DAQmx_Val_HighFreq2Ctr =                                          10157;  % High Frequency with 2 Counters
DAQmx_Val_LargeRng2Ctr =                                          10205;  % Large Range with 2 Counters
DAQmx_Val_DynAvg       =                                          16065;  % Dynamic Averaging

%*** Values for DAQmx_AI_Coupling ***
%*** Value set Coupling1 ***
DAQmx_Val_AC  =                                                   10045; % AC
DAQmx_Val_DC  =                                                   10050; % DC
DAQmx_Val_GND =                                                   10066; % GND

%*** Values for DAQmx_AnlgEdge_StartTrig_Coupling ***
%*** Values for DAQmx_AnlgMultiEdge_StartTrig_Couplings ***
%*** Values for DAQmx_AnlgWin_StartTrig_Coupling ***
%*** Values for DAQmx_AnlgEdge_RefTrig_Coupling ***
%*** Values for DAQmx_AnlgMultiEdge_RefTrig_Couplings ***
%*** Values for DAQmx_AnlgWin_RefTrig_Coupling ***
%*** Values for DAQmx_AnlgLvl_PauseTrig_Coupling ***
%*** Values for DAQmx_AnlgWin_PauseTrig_Coupling ***
%*** Value set Coupling2 ***
DAQmx_Val_AC =                                                    10045;  % AC
DAQmx_Val_DC =                                                    10050;  % DC

%*** Values for DAQmx_AI_CurrentShunt_Loc ***
%*** Value set CurrentShuntResistorLocation1 ***
DAQmx_Val_Internal =                                              10200;  % Internal
DAQmx_Val_External =                                              10167;  % External

%*** Values for DAQmx_AI_Bridge_ShuntCal_ShuntCalASrc ***
%*** Value set BridgeShuntCalSource ***
DAQmx_Val_BuiltIn      =                                          10200;  % Built-In
DAQmx_Val_UserProvided =                                          10167;  % User Provided

%*** Values for DAQmx_AI_Charge_Units ***
%*** Value set ChargeUnits ***
DAQmx_Val_Coulombs        =                                       16102;  % Coulombs
DAQmx_Val_PicoCoulombs    =                                       16103;  % PicoCoulombs
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_Current_Units ***
%*** Values for DAQmx_AI_Current_ACRMS_Units ***
%*** Values for DAQmx_AO_Current_Units ***
%*** Value set CurrentUnits1 ***
DAQmx_Val_Amps            =                                       10342;  % Amps
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale
DAQmx_Val_FromTEDS        =                                       12516;  % From TEDS

%*** Value set CurrentUnits2 ***
DAQmx_Val_Amps            =                                       10342;  % Amps
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_RawSampJustification ***
%*** Value set DataJustification1 ***
DAQmx_Val_RightJustified =                                        10279;  % Right-Justified
DAQmx_Val_LeftJustified  =                                        10209;  % Left-Justified

%*** Values for DAQmx_AI_DataXferMech ***
%*** Values for DAQmx_AO_DataXferMech ***
%*** Values for DAQmx_DI_DataXferMech ***
%*** Values for DAQmx_DO_DataXferMech ***
%*** Values for DAQmx_CI_DataXferMech ***
%*** Values for DAQmx_CO_DataXferMech ***
%*** Value set DataTransferMechanism ***
DAQmx_Val_DMA          =                                          10054;  % DMA
DAQmx_Val_Interrupts   =                                          10204;  % Interrupts
DAQmx_Val_ProgrammedIO =                                          10264;  % Programmed I/O
DAQmx_Val_USBbulk      =                                          12590;  % USB Bulk

%*** Values for DAQmx_Exported_RdyForXferEvent_DeassertCond ***
%*** Value set DeassertCondition ***
DAQmx_Val_OnbrdMemMoreThanHalfFull =                              10237;  % Onboard Memory More than Half Full
DAQmx_Val_OnbrdMemFull             =                              10236;  % Onboard Memory Full
DAQmx_Val_OnbrdMemCustomThreshold  =                              12577;  % Onboard Memory Custom Threshold

%*** Values for DAQmx_DO_OutputDriveType ***
%*** Value set DigitalDriveType ***
DAQmx_Val_ActiveDrive   =                                         12573;  % Active Drive
DAQmx_Val_OpenCollector =                                         12574;  % Open Collector

%*** Values for DAQmx_DO_LineStates_StartState ***
%*** Values for DAQmx_DO_LineStates_PausedState ***
%*** Values for DAQmx_DO_LineStates_DoneState ***
%*** Values for DAQmx_Watchdog_DO_ExpirState ***
%*** Value set DigitalLineState ***
DAQmx_Val_High     =                                              10192;  % High
DAQmx_Val_Low      =                                              10214;  % Low
DAQmx_Val_Tristate =                                              10310;  % Tristate
DAQmx_Val_NoChange =                                              10160;  % No Change

%*** Values for DAQmx_DigPattern_StartTrig_When ***
%*** Values for DAQmx_DigPattern_RefTrig_When ***
%*** Values for DAQmx_DigPattern_PauseTrig_When ***
%*** Value set DigitalPatternCondition1 ***
DAQmx_Val_PatternMatches      =                                   10254;  % Pattern Matches
DAQmx_Val_PatternDoesNotMatch =                                   10253;  % Pattern Does Not Match

%*** Values for DAQmx_StartTrig_DelayUnits ***
%*** Value set DigitalWidthUnits1 ***
DAQmx_Val_SampClkPeriods =                                        10286;  % Sample Clock Periods
DAQmx_Val_Seconds        =                                        10364;  % Seconds
DAQmx_Val_Ticks          =                                        10304;  % Ticks

%*** Values for DAQmx_DelayFromSampClk_DelayUnits ***
%*** Value set DigitalWidthUnits2 ***
DAQmx_Val_Seconds =                                               10364;  % Seconds
DAQmx_Val_Ticks   =                                               10304;  % Ticks

%*** Values for DAQmx_Exported_AdvTrig_Pulse_WidthUnits ***
%*** Value set DigitalWidthUnits3 ***
DAQmx_Val_Seconds =                                               10364; % Seconds

%*** Values for DAQmx_AI_FilterDelayUnits ***
%*** Values for DAQmx_AO_FilterDelayUnits ***
%*** Values for DAQmx_CI_FilterDelayUnits ***
%*** Value set DigitalWidthUnits4 ***
DAQmx_Val_Seconds          =                                      10364;  % Seconds
DAQmx_Val_SampleClkPeriods =                                      10286;  % Sample Clock Periods

%*** Values for DAQmx_AI_EddyCurrentProxProbe_SensitivityUnits ***
%*** Value set EddyCurrentProxProbeSensitivityUnits ***
DAQmx_Val_mVoltsPerMil        =                                   14836;  % mVolts/mil
DAQmx_Val_VoltsPerMil         =                                   14837;  % Volts/mil
DAQmx_Val_mVoltsPerMillimeter =                                   14838;  % mVolts/mMeter
DAQmx_Val_VoltsPerMillimeter  =                                   14839;  % Volts/mMeter
DAQmx_Val_mVoltsPerMicron     =                                   14840;  % mVolts/micron

%*** Values for DAQmx_CI_Freq_StartingEdge ***
%*** Values for DAQmx_CI_Period_StartingEdge ***
%*** Values for DAQmx_CI_CountEdges_ActiveEdge ***
%*** Values for DAQmx_CI_CountEdges_CountReset_ActiveEdge ***
%*** Values for DAQmx_CI_DutyCycle_StartingEdge ***
%*** Values for DAQmx_CI_PulseWidth_StartingEdge ***
%*** Values for DAQmx_CI_TwoEdgeSep_FirstEdge ***
%*** Values for DAQmx_CI_TwoEdgeSep_SecondEdge ***
%*** Values for DAQmx_CI_SemiPeriod_StartingEdge ***
%*** Values for DAQmx_CI_Pulse_Freq_Start_Edge ***
%*** Values for DAQmx_CI_Pulse_Time_StartEdge ***
%*** Values for DAQmx_CI_Pulse_Ticks_StartEdge ***
%*** Values for DAQmx_CI_CtrTimebaseActiveEdge ***
%*** Values for DAQmx_CO_CtrTimebaseActiveEdge ***
%*** Values for DAQmx_SampClk_ActiveEdge ***
%*** Values for DAQmx_SampClk_Timebase_ActiveEdge ***
%*** Values for DAQmx_AIConv_ActiveEdge ***
%*** Values for DAQmx_DigEdge_StartTrig_Edge ***
%*** Values for DAQmx_DigEdge_RefTrig_Edge ***
%*** Values for DAQmx_DigEdge_AdvTrig_Edge ***
%*** Values for DAQmx_DigEdge_ArmStartTrig_Edge ***
%*** Values for DAQmx_DigEdge_WatchdogExpirTrig_Edge ***
%*** Value set Edge1 ***
DAQmx_Val_Rising  =                                               10280;  % Rising
DAQmx_Val_Falling =                                               10171;  % Falling

%*** Values for DAQmx_CI_Encoder_DecodingType ***
%*** Values for DAQmx_CI_Velocity_Encoder_DecodingType ***
%*** Value set EncoderType2 ***
DAQmx_Val_X1               =                                      10090;  % X1
DAQmx_Val_X2               =                                      10091;  % X2
DAQmx_Val_X4               =                                      10092;  % X4
DAQmx_Val_TwoPulseCounting =                                      10313;  % Two Pulse Counting

%*** Values for DAQmx_CI_Encoder_ZIndexPhase ***
%*** Value set EncoderZIndexPhase1 ***
DAQmx_Val_AHighBHigh =                                            10040;  % A High B High
DAQmx_Val_AHighBLow  =                                            10041;  % A High B Low
DAQmx_Val_ALowBHigh  =                                            10042;  % A Low B High
DAQmx_Val_ALowBLow   =                                            10043;  % A Low B Low

%*** Values for DAQmx_AI_Excit_DCorAC ***
%*** Value set ExcitationDCorAC ***
DAQmx_Val_DC =                                                    10050;  % DC
DAQmx_Val_AC =                                                    10045;  % AC

%*** Values for DAQmx_AI_Excit_Src ***
%*** Value set ExcitationSource ***
DAQmx_Val_Internal =                                              10200;  % Internal
DAQmx_Val_External =                                              10167;  % External
DAQmx_Val_None     =                                              10230;  % None

%*** Values for DAQmx_AI_Excit_VoltageOrCurrent ***
%*** Value set ExcitationVoltageOrCurrent ***
DAQmx_Val_Voltage =                                               10322;  % Voltage
DAQmx_Val_Current =                                               10134;  % Current

%*** Values for DAQmx_Exported_CtrOutEvent_OutputBehavior ***
%*** Value set ExportActions2 ***
DAQmx_Val_Pulse  =                                                10265;  % Pulse
DAQmx_Val_Toggle =                                                10307;  % Toggle

%*** Values for DAQmx_Exported_SampClk_OutputBehavior ***
%*** Value set ExportActions3 ***
DAQmx_Val_Pulse =                                                 10265;  % Pulse
DAQmx_Val_Lvl   =                                                 10210;  % Level

%*** Values for DAQmx_Exported_HshkEvent_OutputBehavior ***
%*** Value set ExportActions5 ***
DAQmx_Val_Interlocked =                                           12549;  % Interlocked
DAQmx_Val_Pulse       =                                           10265;  % Pulse

%*** Values for DAQmx_AI_DigFltr_Type ***
%*** Values for DAQmx_AI_DigFltr_Types ***
%*** Value set FilterType2 ***
DAQmx_Val_Lowpass  =                                              16071;  % Lowpass
DAQmx_Val_Highpass =                                              16072;  % Highpass
DAQmx_Val_Bandpass =                                              16073;  % Bandpass
DAQmx_Val_Notch    =                                              16074;  % Notch
DAQmx_Val_Custom   =                                              10137;  % Custom

%*** Values for DAQmx_AI_DigFltr_Response ***
%*** Value set FilterResponse ***
DAQmx_Val_ConstantGroupDelay =                                    16075;  % Constant Group Delay
DAQmx_Val_Butterworth        =                                    16076;  % Butterworth
DAQmx_Val_Elliptical         =                                    16077;  % Elliptical
DAQmx_Val_HardwareDefined    =                                    10191;  % Hardware Defined

%*** Values for DAQmx_AI_Filter_Response ***
%*** Values for DAQmx_CI_Filter_Response ***
%*** Value set FilterResponse1 ***
DAQmx_Val_Comb        =                                           16152;  % Comb
DAQmx_Val_Bessel      =                                           16153;  % Bessel
DAQmx_Val_Brickwall   =                                           16155;  % Brickwall
DAQmx_Val_Butterworth =                                           16076;  % Butterworth

%*** Values for DAQmx_AI_Force_IEPESensor_SensitivityUnits ***
%*** Value set ForceIEPESensorSensitivityUnits ***
DAQmx_Val_mVoltsPerNewton =                                       15891;  % mVolts/N
DAQmx_Val_mVoltsPerPound  =                                       15892;  % mVolts/lb

%*** Values for DAQmx_AI_Force_Units ***
%*** Value set ForceUnits ***
DAQmx_Val_Newtons         =                                       15875;  % Newtons
DAQmx_Val_Pounds          =                                       15876;  % Pounds
DAQmx_Val_KilogramForce   =                                       15877;  % kgf
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_Freq_Units ***
%*** Value set FrequencyUnits ***
DAQmx_Val_Hz              =                                       10373;  % Hz
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_CI_Pulse_Freq_Units ***
%*** Values for DAQmx_CO_Pulse_Freq_Units ***
%*** Value set FrequencyUnits2 ***
DAQmx_Val_Hz =                                                    10373;  % Hz

%*** Values for DAQmx_CI_Freq_Units ***
%*** Value set FrequencyUnits3 ***
DAQmx_Val_Hz              =                                       10373;  % Hz
DAQmx_Val_Ticks           =                                       10304;  % Ticks
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AO_FuncGen_Type ***
%*** Value set FuncGenType ***
DAQmx_Val_Sine     =                                              14751;  % Sine
DAQmx_Val_Triangle =                                              14752;  % Triangle
DAQmx_Val_Square   =                                              14753;  % Square
DAQmx_Val_Sawtooth =                                              14754;  % Sawtooth

%*** Values for DAQmx_CI_GPS_SyncMethod ***
%*** Value set GpsSignalType1 ***
DAQmx_Val_IRIGB =                                                 10070;  % IRIG-B
DAQmx_Val_PPS   =                                                 10080;  % PPS
DAQmx_Val_None  =                                                 10230;  % None

%*** Values for DAQmx_Hshk_StartCond ***
%*** Value set HandshakeStartCondition ***
DAQmx_Val_Immediate                       =                       10198;  % Immediate
DAQmx_Val_WaitForHandshakeTriggerAssert   =                       12550;  % Wait For Handshake Trigger Assert
DAQmx_Val_WaitForHandshakeTriggerDeassert =                       12551;  % Wait For Handshake Trigger Deassert


%*** Values for DAQmx_AI_DataXferReqCond ***
%*** Values for DAQmx_DI_DataXferReqCond ***
%*** Values for DAQmx_CI_DataXferReqCond ***
%*** Value set InputDataTransferCondition ***
DAQmx_Val_OnBrdMemMoreThanHalfFull =                              10237;  % Onboard Memory More than Half Full
DAQmx_Val_OnBrdMemNotEmpty         =                              10241;  % Onboard Memory Not Empty
DAQmx_Val_OnbrdMemCustomThreshold  =                              12577;  % Onboard Memory Custom Threshold
DAQmx_Val_WhenAcqComplete          =                              12546;  % When Acquisition Complete

%*** Values for DAQmx_AI_TermCfg ***
%*** Value set InputTermCfg ***
DAQmx_Val_RSE        =                                            10083;  % RSE
DAQmx_Val_NRSE       =                                            10078;  % NRSE
DAQmx_Val_Diff       =                                            10106;  % Differential
DAQmx_Val_PseudoDiff =                                            12529;  % Pseudodifferential

%*** Values for DAQmx_CI_Freq_TermCfg ***
%*** Values for DAQmx_CI_Period_TermCfg ***
%*** Values for DAQmx_CI_CountEdges_TermCfg ***
%*** Values for DAQmx_CI_CountEdges_CountDir_TermCfg ***
%*** Values for DAQmx_CI_CountEdges_CountReset_TermCfg ***
%*** Values for DAQmx_CI_CountEdges_Gate_TermCfg ***
%*** Values for DAQmx_CI_DutyCycle_TermCfg ***
%*** Values for DAQmx_CI_Encoder_AInputTermCfg ***
%*** Values for DAQmx_CI_Encoder_BInputTermCfg ***
%*** Values for DAQmx_CI_Encoder_ZInputTermCfg ***
%*** Values for DAQmx_CI_PulseWidth_TermCfg ***
%*** Values for DAQmx_CI_Velocity_Encoder_AInputTermCfg ***
%*** Values for DAQmx_CI_Velocity_Encoder_BInputTermCfg ***
%*** Values for DAQmx_CI_TwoEdgeSep_FirstTermCfg ***
%*** Values for DAQmx_CI_TwoEdgeSep_SecondTermCfg ***
%*** Values for DAQmx_CI_SemiPeriod_TermCfg ***
%*** Values for DAQmx_CI_Pulse_Freq_TermCfg ***
%*** Values for DAQmx_CI_Pulse_Time_TermCfg ***
%*** Values for DAQmx_CI_Pulse_Ticks_TermCfg ***
%*** Value set InputTermCfg2 ***
DAQmx_Val_Diff =                                                  10106;  % Differential
DAQmx_Val_RSE  =                                                  10083;  % RSE

%*** Values for DAQmx_AI_LVDT_SensitivityUnits ***
%*** Value set LVDTSensitivityUnits1 ***
DAQmx_Val_mVoltsPerVoltPerMillimeter =                            12506;  % mVolts/Volt/mMeter
DAQmx_Val_mVoltsPerVoltPerMilliInch  =                            12505;  % mVolts/Volt/0.001 Inch

%*** Values for DAQmx_AI_LVDT_Units ***
%*** Values for DAQmx_AI_EddyCurrentProxProbe_Units ***
%*** Value set LengthUnits2 ***
DAQmx_Val_Meters          =                                       10219;  % Meters
DAQmx_Val_Inches          =                                       10379;  % Inches
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_CI_LinEncoder_Units ***
%*** Value set LengthUnits3 ***
DAQmx_Val_Meters          =                                       10219;  % Meters
DAQmx_Val_Inches          =                                       10379;  % Inches
DAQmx_Val_Ticks           =                                       10304;  % Ticks
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_CI_CountEdges_GateWhen ***
%*** Values for DAQmx_CI_OutputState ***
%*** Values for DAQmx_CO_Pulse_IdleState ***
%*** Values for DAQmx_CO_OutputState ***
%*** Values for DAQmx_Exported_CtrOutEvent_Toggle_IdleState ***
%*** Values for DAQmx_Exported_HshkEvent_Interlocked_AssertedLvl ***
%*** Values for DAQmx_Interlocked_HshkTrig_AssertedLvl ***
%*** Values for DAQmx_DigLvl_PauseTrig_When ***
%*** Value set Level1 ***
DAQmx_Val_High =                                                  10192;  % High
DAQmx_Val_Low  =                                                  10214;  % Low

%*** Values for DAQmx_Logging_Mode ***
%*** Value set LoggingMode ***
DAQmx_Val_Off        =                                            10231;  % Off
DAQmx_Val_Log        =                                            15844;  % Log
DAQmx_Val_LogAndRead =                                            15842;  % Log and Read

%*** Values for DAQmx_Logging_TDMS_Operation ***
%*** Value set LoggingOperation ***
DAQmx_Val_Open            =                                       10437;  % Open
DAQmx_Val_OpenOrCreate    =                                       15846;  % Open or Create
DAQmx_Val_CreateOrReplace =                                       15847;  % Create or Replace
DAQmx_Val_Create          =                                       15848;  % Create

%*** Values for DAQmx_DI_LogicFamily ***
%*** Values for DAQmx_DO_LogicFamily ***
%*** Value set LogicFamily ***
DAQmx_Val_2point5V =                                              14620;  % 2.5 V
DAQmx_Val_3point3V =                                              14621;  % 3.3 V
DAQmx_Val_5V       =                                              14619;  % 5.0 V

%*** Values for DAQmx_AIConv_Timebase_Src ***
%*** Value set MIOAIConvertTbSrc ***
DAQmx_Val_SameAsSampTimebase   =                                  10284;  % Same as Sample Timebase
DAQmx_Val_SameAsMasterTimebase =                                  10282;  % Same as Master Timebase
DAQmx_Val_100MHzTimebase       =                                  15857;  % 100 MHz Timebase
DAQmx_Val_80MHzTimebase        =                                  14636;  % 80 MHz Timebase
DAQmx_Val_20MHzTimebase        =                                  12537;  % 20 MHz Timebase
DAQmx_Val_8MHzTimebase         =                                  16023;  % 8 MHz Timebase

%*** Values for DAQmx_AO_FuncGen_ModulationType ***
%*** Value set ModulationType ***
DAQmx_Val_AM   =                                                  14756;  % AM
DAQmx_Val_FM   =                                                  14757;  % FM
DAQmx_Val_None =                                                  10230;  % None

%*** Values for DAQmx_AO_DataXferReqCond ***
%*** Values for DAQmx_DO_DataXferReqCond ***
%*** Values for DAQmx_CO_DataXferReqCond ***
%*** Value set OutputDataTransferCondition ***
DAQmx_Val_OnBrdMemEmpty          =                                10235;  % Onboard Memory Empty
DAQmx_Val_OnBrdMemHalfFullOrLess =                                10239;  % Onboard Memory Half Full or Less
DAQmx_Val_OnBrdMemNotFull        =                                10242;  % Onboard Memory Less than Full

%*** Values for DAQmx_AO_TermCfg ***
%*** Value set OutputTermCfg ***
DAQmx_Val_RSE        =                                            10083;  % RSE
DAQmx_Val_Diff       =                                            10106;  % Differential
DAQmx_Val_PseudoDiff =                                            12529;  % Pseudodifferential

%*** Values for DAQmx_SampClk_OverrunBehavior ***
%*** Value set OverflowBehavior ***
DAQmx_Val_StopTaskAndError =                                      15862;  % Stop Task And Error
DAQmx_Val_IgnoreOverruns   =                                      15863;  % Ignore Overruns

%*** Values for DAQmx_Read_OverWrite ***
%*** Value set OverwriteMode1 ***
DAQmx_Val_OverwriteUnreadSamps      =                             10252;  % Overwrite Unread Samples
DAQmx_Val_DoNotOverwriteUnreadSamps =                             10159;  % Do Not Overwrite Unread Samples

%*** Values for DAQmx_Exported_AIConvClk_Pulse_Polarity ***
%*** Values for DAQmx_Exported_SampClk_Pulse_Polarity ***
%*** Values for DAQmx_Exported_AdvTrig_Pulse_Polarity ***
%*** Values for DAQmx_Exported_PauseTrig_Lvl_ActiveLvl ***
%*** Values for DAQmx_Exported_RefTrig_Pulse_Polarity ***
%*** Values for DAQmx_Exported_StartTrig_Pulse_Polarity ***
%*** Values for DAQmx_Exported_AdvCmpltEvent_Pulse_Polarity ***
%*** Values for DAQmx_Exported_AIHoldCmpltEvent_PulsePolarity ***
%*** Values for DAQmx_Exported_ChangeDetectEvent_Pulse_Polarity ***
%*** Values for DAQmx_Exported_CtrOutEvent_Pulse_Polarity ***
%*** Values for DAQmx_Exported_HshkEvent_Pulse_Polarity ***
%*** Values for DAQmx_Exported_RdyForXferEvent_Lvl_ActiveLvl ***
%*** Values for DAQmx_Exported_DataActiveEvent_Lvl_ActiveLvl ***
%*** Values for DAQmx_Exported_RdyForStartEvent_Lvl_ActiveLvl ***
%*** Value set Polarity2 ***
DAQmx_Val_ActiveHigh =                                            10095;  % Active High
DAQmx_Val_ActiveLow  =                                            10096;  % Active Low

%*** Values for DAQmx_Pwr_IdleOutputBehavior ***
%*** Value set PowerIdleOutputBehavior ***
DAQmx_Val_OutputDisabled        =                                 15503;  % Output Disabled
DAQmx_Val_MaintainExistingValue =                                 12528;  % Maintain Existing Value

%*** Values for DAQmx_Pwr_OutputState ***
%*** Value set PowerOutputState ***
DAQmx_Val_ConstantVoltage =                                       15500;  % Constant Voltage
DAQmx_Val_ConstantCurrent =                                       15501;  % Constant Current
DAQmx_Val_Overvoltage     =                                       15502;  % Overvoltage
DAQmx_Val_OutputDisabled  =                                       15503;  % Output Disabled

%*** Values for DAQmx_AI_Pressure_Units ***
%*** Value set PressureUnits ***
DAQmx_Val_Pascals             =                                   10081;  % Pascals
DAQmx_Val_PoundsPerSquareInch =                                   15879;  % psi
DAQmx_Val_Bar                 =                                   15880;  % bar
DAQmx_Val_FromCustomScale     =                                   10065;  % From Custom Scale

%*** Values for DAQmx_Dev_ProductCategory ***
%*** Value set ProductCategory ***
DAQmx_Val_MSeriesDAQ               =                              14643;  % M Series DAQ
DAQmx_Val_XSeriesDAQ               =                              15858;  % X Series DAQ
DAQmx_Val_ESeriesDAQ               =                              14642;  % E Series DAQ
DAQmx_Val_SSeriesDAQ               =                              14644;  % S Series DAQ
DAQmx_Val_BSeriesDAQ               =                              14662;  % B Series DAQ
DAQmx_Val_SCSeriesDAQ              =                              14645;  % SC Series DAQ
DAQmx_Val_USBDAQ                   =                              14646;  % USB DAQ
DAQmx_Val_AOSeries                 =                              14647;  % AO Series
DAQmx_Val_DigitalIO                =                              14648;  % Digital I/O
DAQmx_Val_TIOSeries                =                              14661;  % TIO Series
DAQmx_Val_DynamicSignalAcquisition =                              14649;  % Dynamic Signal Acquisition
DAQmx_Val_Switches                 =                              14650;  % Switches
DAQmx_Val_CompactDAQChassis        =                              14658;  % CompactDAQ Chassis
DAQmx_Val_CompactRIOChassis        =                              16144;  % CompactRIO Chassis
DAQmx_Val_CSeriesModule            =                              14659;  % C Series Module
DAQmx_Val_SCXIModule               =                              14660;  % SCXI Module
DAQmx_Val_SCCConnectorBlock        =                              14704;  % SCC Connector Block
DAQmx_Val_SCCModule                =                              14705;  % SCC Module
DAQmx_Val_NIELVIS                  =                              14755;  % NI ELVIS
DAQmx_Val_NetworkDAQ               =                              14829;  % Network DAQ
DAQmx_Val_SCExpress                =                              15886;  % SC Express
DAQmx_Val_FieldDAQ                 =                              16151;  % FieldDAQ
DAQmx_Val_TestScaleChassis         =                              16180;  % TestScale Chassis
DAQmx_Val_TestScaleModule          =                              16181;  % TestScale Module
DAQmx_Val_Unknown                  =                              12588;  % Unknown

%*** Values for DAQmx_AI_RTD_Type ***
%*** Value set RTDType1 ***
DAQmx_Val_Pt3750 =                                                12481;  % Pt3750
DAQmx_Val_Pt3851 =                                                10071;  % Pt3851
DAQmx_Val_Pt3911 =                                                12482;  % Pt3911
DAQmx_Val_Pt3916 =                                                10069;  % Pt3916
DAQmx_Val_Pt3920 =                                                10053;  % Pt3920
DAQmx_Val_Pt3928 =                                                12483;  % Pt3928
DAQmx_Val_Custom =                                                10137;  % Custom

%*** Values for DAQmx_AI_RVDT_SensitivityUnits ***
%*** Value set RVDTSensitivityUnits1 ***
DAQmx_Val_mVoltsPerVoltPerDegree =                                12507;  % mVolts/Volt/Degree
DAQmx_Val_mVoltsPerVoltPerRadian =                                12508;  % mVolts/Volt/Radian

%*** Values for DAQmx_AI_RawDataCompressionType ***
%*** Value set RawDataCompressionType ***
DAQmx_Val_None            =                                       10230;  % None
DAQmx_Val_LosslessPacking =                                       12555;  % Lossless Packing
DAQmx_Val_LossyLSBRemoval =                                       12556;  % Lossy LSB Removal

%*** Values for DAQmx_Read_RelativeTo ***
%*** Value set ReadRelativeTo ***
DAQmx_Val_FirstSample      =                                      10424;  % First Sample
DAQmx_Val_CurrReadPos      =                                      10425;  % Current Read Position
DAQmx_Val_RefTrig          =                                      10426;  % Reference Trigger
DAQmx_Val_FirstPretrigSamp =                                      10427;  % First Pretrigger Sample
DAQmx_Val_MostRecentSamp   =                                      10428;  % Most Recent Sample

%*** Values for DAQmx_Write_RegenMode ***
%*** Value set RegenerationMode1 ***
DAQmx_Val_AllowRegen      =                                       10097;  % Allow Regeneration
DAQmx_Val_DoNotAllowRegen =                                       10158;  % Do Not Allow Regeneration

%*** Values for DAQmx_AI_ResistanceCfg ***
%*** Value set ResistanceConfiguration ***
DAQmx_Val_2Wire =                                                     2;  % 2-Wire
DAQmx_Val_3Wire =                                                     3;  % 3-Wire
DAQmx_Val_4Wire =                                                     4;  % 4-Wire

%*** Values for DAQmx_AI_Resistance_Units ***
%*** Value set ResistanceUnits1 ***
DAQmx_Val_Ohms            =                                       10384;  % Ohms
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale
DAQmx_Val_FromTEDS        =                                       12516;  % From TEDS

%*** Value set ResistanceUnits2 ***
DAQmx_Val_Ohms            =                                       10384;  % Ohms
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_ResolutionUnits ***
%*** Values for DAQmx_AO_ResolutionUnits ***
%*** Value set ResolutionType1 ***
DAQmx_Val_Bits =                                                  10109;  % Bits

%*** Value set SCXI1124Range ***
DAQmx_Val_SCXI1124Range0to1V      =                               14629;  % 0V to 1V
DAQmx_Val_SCXI1124Range0to5V      =                               14630;  % 0V to 5V
DAQmx_Val_SCXI1124Range0to10V     =                               14631;  % 0V to 10V
DAQmx_Val_SCXI1124RangeNeg1to1V   =                               14632;  % -1V to 1V
DAQmx_Val_SCXI1124RangeNeg5to5V   =                               14633;  % -5V to 5V
DAQmx_Val_SCXI1124RangeNeg10to10V =                               14634;  % -10V to 10V
DAQmx_Val_SCXI1124Range0to20mA    =                               14635;  % 0mA to 20mA

%*** Values for DAQmx_DI_AcquireOn ***
%*** Values for DAQmx_DO_GenerateOn ***
%*** Value set SampleClockActiveOrInactiveEdgeSelection ***
DAQmx_Val_SampClkActiveEdge   =                                   14617;  % Sample Clock Active Edge
DAQmx_Val_SampClkInactiveEdge =                                   14618;  % Sample Clock Inactive Edge

%*** Values for DAQmx_Hshk_SampleInputDataWhen ***
%*** Value set SampleInputDataWhen ***
DAQmx_Val_HandshakeTriggerAsserts   =                             12552;  % Handshake Trigger Asserts
DAQmx_Val_HandshakeTriggerDeasserts =                             12553;  % Handshake Trigger Deasserts

%*** Values for DAQmx_SampTimingType ***
%*** Value set SampleTimingType ***
DAQmx_Val_SampClk          =                                      10388;  % Sample Clock
DAQmx_Val_BurstHandshake   =                                      12548;  % Burst Handshake
DAQmx_Val_Handshake        =                                      10389;  % Handshake
DAQmx_Val_Implicit         =                                      10451;  % Implicit
DAQmx_Val_OnDemand         =                                      10390;  % On Demand
DAQmx_Val_ChangeDetection  =                                      12504;  % Change Detection
DAQmx_Val_PipelinedSampClk =                                      14668;  % Pipelined Sample Clock

%*** Values for DAQmx_Scale_Type ***
%*** Value set ScaleType ***
DAQmx_Val_Linear     =                                            10447;  % Linear
DAQmx_Val_MapRanges  =                                            10448;  % Map Ranges
DAQmx_Val_Polynomial =                                            10449;  % Polynomial
DAQmx_Val_Table      =                                            10450;  % Table

%*** Values for DAQmx_AI_Thrmcpl_ScaleType ***
%*** Value set ScaleType2 ***
DAQmx_Val_Polynomial =                                            10449;  % Polynomial
DAQmx_Val_Table      =                                            10450;  % Table

%*** Values for DAQmx_AI_ChanCal_ScaleType ***
%*** Value set ScaleType3 ***
DAQmx_Val_Polynomial =                                            10449;  % Polynomial
DAQmx_Val_Table      =                                            10450;  % Table
DAQmx_Val_None       =                                            10230;  % None

%*** Values for DAQmx_AI_Bridge_ScaleType ***
%*** Value set ScaleType4 ***
DAQmx_Val_None           =                                        10230;  % None
DAQmx_Val_TwoPointLinear =                                        15898;  % Two-Point Linear
DAQmx_Val_Table          =                                        10450;  % Table
DAQmx_Val_Polynomial     =                                        10449;  % Polynomial

%*** Values for DAQmx_AI_SensorPower_Cfg ***
%*** Value set SensorPowerCfg ***
DAQmx_Val_NoChange =                                              10160;  % No Change
DAQmx_Val_Enabled  =                                              16145;  % Enabled
DAQmx_Val_Disabled =                                              16146;  % Disabled

%*** Values for DAQmx_AI_SensorPower_Type ***
%*** Values for DAQmx_PhysicalChan_AI_SensorPower_Types ***
%*** Values for DAQmx_PhysicalChan_AI_PowerControl_Type ***
%*** Value set SensorPowerType ***
DAQmx_Val_DC        =                                             10050;  % DC
DAQmx_Val_AC        =                                             10045;  % AC
DAQmx_Val_BipolarDC =                                             16147;  % BipolarDC

%*** Values for DAQmx_AI_Bridge_ShuntCal_Select ***
%*** Value set ShuntCalSelect ***
DAQmx_Val_A     =                                                 12513;  % A
DAQmx_Val_B     =                                                 12514;  % B
DAQmx_Val_AandB =                                                 12515;  % A and B

%*** Value set ShuntElementLocation ***
DAQmx_Val_R1   =                                                  12465;  % R1
DAQmx_Val_R2   =                                                  12466;  % R2
DAQmx_Val_R3   =                                                  12467;  % R3
DAQmx_Val_R4   =                                                  14813;  % R4
DAQmx_Val_None =                                                  10230;  % None

%*** Value set Signal ***
DAQmx_Val_AIConvertClock       =                                  12484;  % AI Convert Clock
DAQmx_Val_10MHzRefClock        =                                  12536;  % 10MHz Reference Clock
DAQmx_Val_20MHzTimebaseClock   =                                  12486;  % 20MHz Timebase Clock
DAQmx_Val_SampleClock          =                                  12487;  % Sample Clock
DAQmx_Val_AdvanceTrigger       =                                  12488;  % Advance Trigger
DAQmx_Val_ReferenceTrigger     =                                  12490;  % Reference Trigger
DAQmx_Val_StartTrigger         =                                  12491;  % Start Trigger
DAQmx_Val_AdvCmpltEvent        =                                  12492;  % Advance Complete Event
DAQmx_Val_AIHoldCmpltEvent     =                                  12493;  % AI Hold Complete Event
DAQmx_Val_CounterOutputEvent   =                                  12494;  % Counter Output Event
DAQmx_Val_ChangeDetectionEvent =                                  12511;  % Change Detection Event
DAQmx_Val_WDTExpiredEvent      =                                  12512;  % Watchdog Timer Expired Event

%*** Value set Signal2 ***
DAQmx_Val_SampleCompleteEvent  =                                  12530;  % Sample Complete Event
DAQmx_Val_CounterOutputEvent   =                                  12494;  % Counter Output Event
DAQmx_Val_ChangeDetectionEvent =                                  12511;  % Change Detection Event
DAQmx_Val_SampleClock          =                                  12487;  % Sample Clock

%*** Values for DAQmx_AnlgEdge_StartTrig_Slope ***
%*** Values for DAQmx_AnlgMultiEdge_StartTrig_Slopes ***
%*** Values for DAQmx_AnlgEdge_RefTrig_Slope ***
%*** Values for DAQmx_AnlgMultiEdge_RefTrig_Slopes ***
%*** Value set Slope1 ***
DAQmx_Val_RisingSlope  =                                          10280;  % Rising
DAQmx_Val_FallingSlope =                                          10171;  % Falling

%*** Values for DAQmx_AI_SoundPressure_Units ***
%*** Value set SoundPressureUnits1 ***
DAQmx_Val_Pascals         =                                       10081;  % Pascals
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_Lowpass_SwitchCap_ClkSrc ***
%*** Values for DAQmx_AO_DAC_Ref_Src ***
%*** Values for DAQmx_AO_DAC_Offset_Src ***
%*** Value set SourceSelection ***
DAQmx_Val_Internal =                                              10200;  % Internal
DAQmx_Val_External =                                              10167;  % External

%*** Values for DAQmx_AI_StrainGage_Cfg ***
%*** Value set StrainGageBridgeType1 ***
DAQmx_Val_FullBridgeI     =                                       10183;  % Full Bridge I
DAQmx_Val_FullBridgeII    =                                       10184;  % Full Bridge II
DAQmx_Val_FullBridgeIII   =                                       10185;  % Full Bridge III
DAQmx_Val_HalfBridgeI     =                                       10188;  % Half Bridge I
DAQmx_Val_HalfBridgeII    =                                       10189;  % Half Bridge II
DAQmx_Val_QuarterBridgeI  =                                       10271;  % Quarter Bridge I
DAQmx_Val_QuarterBridgeII =                                       10272;  % Quarter Bridge II

%*** Values for DAQmx_AI_RosetteStrainGage_RosetteType ***
%*** Value set StrainGageRosetteType ***
DAQmx_Val_RectangularRosette =                                    15968;  % Rectangular Rosette
DAQmx_Val_DeltaRosette       =                                    15969;  % Delta Rosette
DAQmx_Val_TeeRosette         =                                    15970;  % Tee Rosette

%*** Values for DAQmx_AI_RosetteStrainGage_RosetteMeasType ***
%*** Value set StrainGageRosetteMeasurementType ***
DAQmx_Val_PrincipalStrain1       =                                15971;  % Principal Strain 1
DAQmx_Val_PrincipalStrain2       =                                15972;  % Principal Strain 2
DAQmx_Val_PrincipalStrainAngle   =                                15973;  % Principal Strain Angle
DAQmx_Val_CartesianStrainX       =                                15974;  % Cartesian Strain X
DAQmx_Val_CartesianStrainY       =                                15975;  % Cartesian Strain Y
DAQmx_Val_CartesianShearStrainXY =                                15976;  % Cartesian Shear Strain XY
DAQmx_Val_MaxShearStrain         =                                15977;  % Maximum Shear Strain
DAQmx_Val_MaxShearStrainAngle    =                                15978;  % Maximum Shear Strain Angle

%*** Values for DAQmx_AI_Strain_Units ***
%*** Value set StrainUnits1 ***
DAQmx_Val_Strain          =                                       10299;  % Strain
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_SwitchScan_RepeatMode ***
%*** Value set SwitchScanRepeatMode ***
DAQmx_Val_Finite =                                                10172;  % Finite
DAQmx_Val_Cont   =                                                10117;  % Continuous

%*** Values for DAQmx_SwitchChan_Usage ***
%*** Value set SwitchUsageTypes ***
DAQmx_Val_Source             =                                    10439;  % Source
DAQmx_Val_Load               =                                    10440;  % Load
DAQmx_Val_ReservedForRouting =                                    10441;  % Reserved for Routing

%*** Values for DAQmx_SyncPulse_Type ***
%*** Value set SyncPulseType ***
DAQmx_Val_Onboard =                                               16128;  % Onboard
DAQmx_Val_DigEdge =                                               10150;  % Digital Edge
DAQmx_Val_Time    =                                               15996;  % Time

%*** Values for DAQmx_Trigger_SyncType ***
%*** Value set SyncType ***
DAQmx_Val_None   =                                                10230;  % None
DAQmx_Val_Master =                                                15888;  % Master
DAQmx_Val_Slave  =                                                15889;  % Slave

%*** Values for DAQmx_Chan_SyncUnlockBehavior ***
%*** Value set SyncUnlockBehavior ***
DAQmx_Val_StopTaskAndError   =                                    15862;  % Stop Task and Error
DAQmx_Val_IgnoreLostSyncLock =                                    16129;  % Ignore Lost Sync Lock

%*** Value set TEDSUnits ***
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale
DAQmx_Val_FromTEDS        =                                       12516;  % From TEDS

%*** Values for DAQmx_AI_Temp_Units ***
%*** Value set TemperatureUnits1 ***
DAQmx_Val_DegC            =                                       10143;  % Deg C
DAQmx_Val_DegF            =                                       10144;  % Deg F
DAQmx_Val_Kelvins         =                                       10325;  % Kelvins
DAQmx_Val_DegR            =                                       10145;  % Deg R
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_Thrmcpl_Type ***
%*** Value set ThermocoupleType1 ***
DAQmx_Val_J_Type_TC =                                             10072;  % J
DAQmx_Val_K_Type_TC =                                             10073;  % K
DAQmx_Val_N_Type_TC =                                             10077;  % N
DAQmx_Val_R_Type_TC =                                             10082;  % R
DAQmx_Val_S_Type_TC =                                             10085;  % S
DAQmx_Val_T_Type_TC =                                             10086;  % T
DAQmx_Val_B_Type_TC =                                             10047;  % B
DAQmx_Val_E_Type_TC =                                             10055;  % E

%*** Values for DAQmx_SyncPulse_Time_Timescale ***
%*** Values for DAQmx_FirstSampTimestamp_Timescale ***
%*** Values for DAQmx_FirstSampClk_Timescale ***
%*** Values for DAQmx_StartTrig_Timescale ***
%*** Values for DAQmx_StartTrig_TimestampTimescale ***
%*** Values for DAQmx_RefTrig_TimestampTimescale ***
%*** Values for DAQmx_ArmStartTrig_Timescale ***
%*** Values for DAQmx_ArmStartTrig_TimestampTimescale ***
%*** Value set Timescale2 ***
DAQmx_Val_HostTime     =                                          16126;  % Host Time
DAQmx_Val_IODeviceTime =                                          16127;  % I/O Device Time

%*** Values for DAQmx_CI_Timestamp_Units ***
%*** Value set TimeUnits ***
DAQmx_Val_Seconds         =                                       10364;  % Seconds
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_CI_Pulse_Time_Units ***
%*** Values for DAQmx_CO_Pulse_Time_Units ***
%*** Value set TimeUnits2 ***
DAQmx_Val_Seconds =                                               10364;  % Seconds

%*** Values for DAQmx_CI_Period_Units ***
%*** Values for DAQmx_CI_PulseWidth_Units ***
%*** Values for DAQmx_CI_TwoEdgeSep_Units ***
%*** Values for DAQmx_CI_SemiPeriod_Units ***
%*** Value set TimeUnits3 ***
DAQmx_Val_Seconds         =                                       10364;  % Seconds
DAQmx_Val_Ticks           =                                       10304;  % Ticks
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Value set TimingResponseMode ***
DAQmx_Val_SingleCycle =                                           14613;  % Single-cycle
DAQmx_Val_Multicycle  =                                           14614;  % Multicycle

%*** Values for DAQmx_AI_Torque_Units ***
%*** Value set TorqueUnits ***
DAQmx_Val_NewtonMeters    =                                       15881;  % Nm
DAQmx_Val_InchOunces      =                                       15882;  % oz-in
DAQmx_Val_InchPounds      =                                       15883;  % lb-in
DAQmx_Val_FootPounds      =                                       15884;  % lb-ft
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_ArmStartTrig_Type ***
%*** Values for DAQmx_WatchdogExpirTrig_Type ***
%*** Value set TriggerType4 ***
DAQmx_Val_DigEdge =                                               10150;  % Digital Edge
DAQmx_Val_Time    =                                               15996;  % Time
DAQmx_Val_None    =                                               10230;  % None

%*** Values for DAQmx_AdvTrig_Type ***
%*** Value set TriggerType5 ***
DAQmx_Val_DigEdge  =                                              10150;  % Digital Edge
DAQmx_Val_Software =                                              10292;  % Software
DAQmx_Val_None     =                                              10230;  % None

%*** Values for DAQmx_PauseTrig_Type ***
%*** Value set TriggerType6 ***
DAQmx_Val_AnlgLvl    =                                            10101;  % Analog Level
DAQmx_Val_AnlgWin    =                                            10103;  % Analog Window
DAQmx_Val_DigLvl     =                                            10152;  % Digital Level
DAQmx_Val_DigPattern =                                            10398;  % Digital Pattern
DAQmx_Val_None       =                                            10230;  % None

%*** Values for DAQmx_RefTrig_Type ***
%*** Value set TriggerType8 ***
DAQmx_Val_AnlgEdge      =                                         10099;  % Analog Edge
DAQmx_Val_AnlgMultiEdge =                                         16108;  % Analog Multi Edge
DAQmx_Val_DigEdge       =                                         10150;  % Digital Edge
DAQmx_Val_DigPattern    =                                         10398;  % Digital Pattern
DAQmx_Val_AnlgWin       =                                         10103;  % Analog Window
DAQmx_Val_Time          =                                         15996;  % Time
DAQmx_Val_None          =                                         10230;  % None

%*** Values for DAQmx_HshkTrig_Type ***
%*** Value set TriggerType9 ***
DAQmx_Val_Interlocked =                                           12549;  % Interlocked
DAQmx_Val_None        =                                           10230;  % None

%*** Values for DAQmx_StartTrig_Type ***
%*** Value set TriggerType10 ***
DAQmx_Val_AnlgEdge      =                                         10099;  % Analog Edge
DAQmx_Val_AnlgMultiEdge =                                         16108;  % Analog Multi Edge
DAQmx_Val_DigEdge       =                                         10150;  % Digital Edge
DAQmx_Val_DigPattern    =                                         10398;  % Digital Pattern
DAQmx_Val_AnlgWin       =                                         10103;  % Analog Window
DAQmx_Val_Time          =                                         15996;  % Time
DAQmx_Val_None          =                                         10230;  % None

%*** Values for DAQmx_SampClk_UnderflowBehavior ***
%*** Values for DAQmx_Implicit_UnderflowBehavior ***
%*** Value set UnderflowBehavior ***
DAQmx_Val_HaltOutputAndError      =                               14615;  % Halt Output and Error
DAQmx_Val_PauseUntilDataAvailable =                               14616;  % Pause until Data Available

%*** Values for DAQmx_Scale_PreScaledUnits ***
%*** Value set UnitsPreScaled ***
DAQmx_Val_Volts                  =                                10348;  % Volts
DAQmx_Val_Amps                   =                                10342;  % Amps
DAQmx_Val_DegF                   =                                10144;  % Deg F
DAQmx_Val_DegC                   =                                10143;  % Deg C
DAQmx_Val_DegR                   =                                10145;  % Deg R
DAQmx_Val_Kelvins                =                                10325;  % Kelvins
DAQmx_Val_Strain                 =                                10299;  % Strain
DAQmx_Val_Ohms                   =                                10384;  % Ohms
DAQmx_Val_Hz                     =                                10373;  % Hz
DAQmx_Val_Seconds                =                                10364;  % Seconds
DAQmx_Val_Meters                 =                                10219;  % Meters
DAQmx_Val_Inches                 =                                10379;  % Inches
DAQmx_Val_Degrees                =                                10146;  % Degrees
DAQmx_Val_Radians                =                                10273;  % Radians
DAQmx_Val_Ticks                  =                                10304;  % Ticks
DAQmx_Val_RPM                    =                                16080;  % RPM
DAQmx_Val_RadiansPerSecond       =                                16081;  % Radians/s
DAQmx_Val_DegreesPerSecond       =                                16082;  % Degrees/s
DAQmx_Val_g                      =                                10186;  % g
DAQmx_Val_MetersPerSecondSquared =                                12470;  % m/s^2
DAQmx_Val_InchesPerSecondSquared =                                12471;  % in/s^2
DAQmx_Val_MetersPerSecond        =                                15959;  % m/s
DAQmx_Val_InchesPerSecond        =                                15960;  % in/s
DAQmx_Val_Pascals                =                                10081;  % Pascals
DAQmx_Val_Newtons                =                                15875;  % Newtons
DAQmx_Val_Pounds                 =                                15876;  % Pounds
DAQmx_Val_KilogramForce          =                                15877;  % kgf
DAQmx_Val_PoundsPerSquareInch    =                                15879;  % psi
DAQmx_Val_Bar                    =                                15880;  % bar
DAQmx_Val_NewtonMeters           =                                15881;  % Nm
DAQmx_Val_InchOunces             =                                15882;  % oz-in
DAQmx_Val_InchPounds             =                                15883;  % lb-in
DAQmx_Val_FootPounds             =                                15884;  % lb-ft
DAQmx_Val_VoltsPerVolt           =                                15896;  % Volts/Volt
DAQmx_Val_mVoltsPerVolt          =                                15897;  % mVolts/Volt
DAQmx_Val_Coulombs               =                                16102;  % Coulombs
DAQmx_Val_PicoCoulombs           =                                16103;  % PicoCoulombs
DAQmx_Val_FromTEDS               =                                12516;  % From TEDS

%*** Values for DAQmx_AI_Velocity_IEPESensor_SensitivityUnits ***
%*** Value set VelocityIEPESensorSensitivityUnits ***
DAQmx_Val_MillivoltsPerMillimeterPerSecond =                      15963;  % mVolts/mm/s
DAQmx_Val_MilliVoltsPerInchPerSecond       =                      15964;  % mVolts/in/s

%*** Values for DAQmx_AI_Velocity_Units ***
%*** Values for DAQmx_CI_Velocity_LinEncoder_Units ***
%*** Value set VelocityUnits ***
DAQmx_Val_MetersPerSecond =                                       15959;  % m/s
DAQmx_Val_InchesPerSecond =                                       15960;  % in/s
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_AI_Voltage_Units ***
%*** Values for DAQmx_AI_Voltage_ACRMS_Units ***
%*** Value set VoltageUnits1 ***
DAQmx_Val_Volts           =                                       10348;  % Volts
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale
DAQmx_Val_FromTEDS        =                                       12516;  % From TEDS

%*** Values for DAQmx_AO_Voltage_Units ***
%*** Value set VoltageUnits2 ***
DAQmx_Val_Volts           =                                       10348;  % Volts
DAQmx_Val_FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx_Read_WaitMode ***
%*** Value set WaitMode ***
DAQmx_Val_WaitForInterrupt =                                      12523;  % Wait For Interrupt
DAQmx_Val_Poll             =                                      12524;  % Poll
DAQmx_Val_Yield            =                                      12525;  % Yield
DAQmx_Val_Sleep            =                                      12547;  % Sleep

%*** Values for DAQmx_Write_WaitMode ***
%*** Value set WaitMode2 ***
DAQmx_Val_Poll  =                                                 12524;  % Poll
DAQmx_Val_Yield =                                                 12525;  % Yield
DAQmx_Val_Sleep =                                                 12547;  % Sleep

%*** Values for DAQmx_RealTime_WaitForNextSampClkWaitMode ***
%*** Value set WaitMode3 ***
DAQmx_Val_WaitForInterrupt =                                      12523;  % Wait For Interrupt
DAQmx_Val_Poll             =                                      12524;  % Poll

%*** Values for DAQmx_RealTime_WriteRecoveryMode ***
%*** Value set WaitMode4 ***
DAQmx_Val_WaitForInterrupt =                                      12523;  % Wait For Interrupt
DAQmx_Val_Poll             =                                      12524;  % Poll

%*** Values for DAQmx_Watchdog_AO_OutputType ***
%*** Value set WatchdogAOExpirState ***
DAQmx_Val_Voltage  =                                              10322;  % Voltage
DAQmx_Val_Current  =                                              10134;  % Current
DAQmx_Val_NoChange =                                              10160;  % No Change

%*** Values for DAQmx_Watchdog_CO_ExpirState ***
%*** Value set WatchdogCOExpirState ***
DAQmx_Val_Low      =                                              10214;  % Low
DAQmx_Val_High     =                                              10192;  % High
DAQmx_Val_NoChange =                                              10160;  % No Change

%*** Values for DAQmx_AnlgWin_StartTrig_When ***
%*** Values for DAQmx_AnlgWin_RefTrig_When ***
%*** Value set WindowTriggerCondition1 ***
DAQmx_Val_EnteringWin =                                           10163;  % Entering Window
DAQmx_Val_LeavingWin  =                                           10208;  % Leaving Window

%*** Values for DAQmx_AnlgWin_PauseTrig_When ***
%*** Value set WindowTriggerCondition2 ***
DAQmx_Val_InsideWin  =                                            10199;  % Inside Window
DAQmx_Val_OutsideWin =                                            10251;  % Outside Window

%*** Value set WriteBasicTEDSOptions ***
DAQmx_Val_WriteToEEPROM =                                         12538;  % Write To EEPROM
DAQmx_Val_WriteToPROM   =                                         12539;  % Write To PROM Once
DAQmx_Val_DoNotWrite    =                                         12540;  % Do Not Write

%*** Values for DAQmx_Write_RelativeTo ***
%*** Value set WriteRelativeTo ***
DAQmx_Val_FirstSample  =                                          10424;  % First Sample
DAQmx_Val_CurrWritePos =                                          10430;  % Current Write Position

%*** Values for DAQmx_AI_Excit_IdleOutputBehavior ***
%*** Value set ExcitationIdleOutputBehavior ***
DAQmx_Val_ZeroVoltsOrAmps       =                                 12526;  % Zero Volts or Amps
DAQmx_Val_MaintainExistingValue =                                 12528;  % Maintain Existing Value

%*** Values for DAQmx_CI_SampClkOverrunBehavior ***
%*** Value set SampClkOverrunBehavior ***
DAQmx_Val_RepeatedData  =                                         16062;  % Repeated Data
DAQmx_Val_SentinelValue =                                         16063;  % Sentinel Value

%*** Value set LogicLvlBehavior ***
DAQmx_Val_LogicLevelPullUp =                                      16064;  % Logic Level Pull-up
DAQmx_Val_None             =                                      10230;  % None

%*** Value set Sense ***
DAQmx_Val_Local  =                                                16095;  % Local
DAQmx_Val_Remote =                                                16096;  % Remote


% *************************************************************************
% *** NI-DAQmx Error Codes ************************************************
% *************************************************************************

DAQmxSuccess =                                                                  0;

% Error and Warning Codes
DAQmxErrorRemoteSense                                                        =  -209888;
DAQmxErrorOverTemperatureProtectionActivated                                 =  -209887;
DAQmxErrorMultiTaskCfgSampRateNotSupportedWithPropSet                        =  -209886;
DAQmxErrorMultiTaskCfgSampRateConflictingProp                                =  -209885;
DAQmxErrorNoCommonSampRateFoundNoRepeatSamps                                 =  -209884;
DAQmxErrorNoCommonSampRateFound                                              =  -209883;
DAQmxErrorMultiTaskCfgDoesNotSupportMultiDevTask                             =  -209882;
DAQmxErrorMultiTaskSampRateCfgNotSupported                                   =  -209881;
DAQmxErrorDebugSessionNotAllowedTimingSourceRegistered                       =  -209880;
DAQmxErrorDebugSessionNotAllowedWhenLogging                                  =  -209879;
DAQmxErrorDebugSessionNotAllowedEventRegistered                              =  -209878;
DAQmxErrorInvalidTargetTaskForDebugSession                                   =  -209877;
DAQmxErrorFunctionNotSupportedForDevice                                      =  -209876;
DAQmxErrorMultipleTargetTasksFoundForDebugSession                            =  -209875;
DAQmxErrorTargetTaskNotFoundForDebugSession                                  =  -209874;
DAQmxErrorOperationNotSupportedInDebugSession                                =  -209873;
DAQmxErrorOperationNotPermittedInMonitorModeForDebugSession                  =  -209872;
DAQmxErrorGetActiveDevPrptyFailedDueToDifftVals                              =  -209871;
DAQmxErrorTaskAlreadyRegisteredATimingSource                                 =  -209870;
DAQmxErrorFilterNotSupportedOnHWRev                                          =  -209869;
DAQmxErrorSensorPowerSupplyVoltageLevel                                      =  -209868;
DAQmxErrorSensorPowerSupply                                                  =  -209867;
DAQmxErrorInvalidScanlist                                                    =  -209866;
DAQmxErrorTimeResourceCannotBeRouted                                         =  -209865;
DAQmxErrorInvalidResetDelayRequested                                         =  -209864;
DAQmxErrorExceededTotalTimetriggersAvailable                                 =  -209863;
DAQmxErrorExceededTotalTimestampsAvailable                                   =  -209862;
DAQmxErrorNoSynchronizationProtocolRunning                                   =  -209861;
DAQmxErrorConflictingCoherencyRequirements                                   =  -209860;
DAQmxErrorNoSharedTimescale                                                  =  -209859;
DAQmxErrorInvalidFieldDAQBankName                                            =  -209858;
DAQmxErrorDeviceDoesNotSupportHWTSP                                          =  -209857;
DAQmxErrorBankTypeDoesNotMatchBankTypeInDestination                          =  -209856;
DAQmxErrorInvalidFieldDAQBankNumberSpecd                                     =  -209855;
DAQmxErrorUnsupportedSimulatedBankForSimulatedFieldDAQ                       =  -209854;
DAQmxErrorFieldDAQBankSimMustMatchFieldDAQSim                                =  -209853;
DAQmxErrorDevNoLongerSupportedWithinDAQmxAPI                                 =  -209852;
DAQmxErrorTimingEngineDoesNotSupportOnBoardMemory                            =  -209851;
DAQmxErrorDuplicateTaskCrossProject                                          =  -209850;
DAQmxErrorTimeStartTriggerBeforeArmStartTrigger                              =  -209849;
DAQmxErrorTimeTriggerCannotBeSet                                             =  -209848;
DAQmxErrorInvalidTriggerWindowValue                                          =  -209847;
DAQmxErrorCannotQueryPropertyBeforeOrDuringAcquisition                       =  -209846;
DAQmxErrorSampleClockTimebaseNotSupported                                    =  -209845;
DAQmxErrorTimestampNotYetReceived                                            =  -209844;
DAQmxErrorTimeTriggerNotSupported                                            =  -209843;
DAQmxErrorTimestampNotEnabled                                                =  -209842;
DAQmxErrorTimeTriggersInconsistent                                           =  -209841;
DAQmxErrorTriggerConfiguredIsInThePast                                       =  -209840;
DAQmxErrorTriggerConfiguredIsTooFarFromCurrentTime                           =  -209839;
DAQmxErrorSynchronizationLockLost                                            =  -209838;
DAQmxErrorInconsistentTimescales                                             =  -209837;
DAQmxErrorCannotSynchronizeDevices                                           =  -209836;
DAQmxErrorAssociatedChansHaveAttributeConflictWithMultipleMaxMinRanges       =  -209835;
DAQmxErrorSampleRateNumChansOrAttributeValues                                =  -209834;
DAQmxErrorWaitForValidTimestampNotSupported                                  =  -209833;
DAQmxErrorTrigWinTimeoutExpired                                              =  -209832;
DAQmxErrorInvalidTriggerCfgForDevice                                         =  -209831;
DAQmxErrorInvalidDataTransferMechanismForDevice                              =  -209830;
DAQmxErrorInputFIFOOverflow3                                                 =  -209829;
DAQmxErrorTooManyDevicesForAnalogMultiEdgeTrigCDAQ                           =  -209828;
DAQmxErrorTooManyTriggersTypesSpecifiedInTask                                =  -209827;
DAQmxErrorMismatchedMultiTriggerConfigValues                                 =  -209826;
DAQmxErrorInconsistentAODACRangeAcrossTasks                                  =  -209825;
DAQmxErrorInconsistentDTToWrite                                              =  -209824;
DAQmxErrorFunctionObsolete                                                   =  -209823;
DAQmxErrorNegativeDurationNotSupported                                       =  -209822;
DAQmxErrorDurationTooSmall                                                   =  -209821;
DAQmxErrorDurationTooLong                                                    =  -209820;
DAQmxErrorDurationBasedNotSupportedForSpecifiedTimingMode                    =  -209819;
DAQmxErrorInvalidLEDState                                                    =  -209818;
DAQmxErrorWatchdogStatesNotUniform                                           =  -209817;
DAQmxErrorSelfTestFailedPowerSupplyOutOfTolerance                            =  -209816;
DAQmxErrorHWTSPMultiSampleWrite                                              =  -209815;
DAQmxErrorOnboardRegenExceedsChannelLimit                                    =  -209814;
DAQmxErrorWatchdogChannelExpirationStateNotSpecified                         =  -209813;
DAQmxErrorInvalidShuntSourceForCalibration                                   =  -209812;
DAQmxErrorInvalidShuntSelectForCalibration                                   =  -209811;
DAQmxErrorInvalidShuntCalibrationConfiguration                               =  -209810;
DAQmxErrorBufferedOperationsNotSupportedOnChannelStandalone                  =  -209809;
DAQmxErrorFeatureNotAvailableOnAccessory                                     =  -209808;
DAQmxErrorInconsistentThreshVoltageAcrossTerminals                           =  -209807;
DAQmxErrorDAQmxIsNotInstalledOnTarget                                        =  -209806;
DAQmxErrorCOCannotKeepUpInHWTimedSinglePoint                                 =  -209805;
DAQmxErrorWaitForNextSampClkDetected3OrMoreSampClks                          =  -209803;
DAQmxErrorWaitForNextSampClkDetectedMissedSampClk                            =  -209802;
DAQmxErrorWriteNotCompleteBeforeSampClk                                      =  -209801;
DAQmxErrorReadNotCompleteBeforeSampClk                                       =  -209800;
DAQmxErrorInconsistentDigitalFilteringAcrossTerminals                        =  -201510;
DAQmxErrorInconsistentPullUpCfgAcrossTerminals                               =  -201509;
DAQmxErrorInconsistentTermCfgAcrossTerminals                                 =  -201508;
DAQmxErrorVCXODCMBecameUnlocked                                              =  -201507;
DAQmxErrorPLLDACUpdateFailed                                                 =  -201506;
DAQmxErrorNoCabledDevice                                                     =  -201505;
DAQmxErrorLostRefClk                                                         =  -201504;
DAQmxErrorCantUseAITimingEngineWithCounters                                  =  -201503;
DAQmxErrorDACOffsetValNotSet                                                 =  -201502;
DAQmxErrorCalAdjustRefValOutOfRange                                          =  -201501;
DAQmxErrorChansForCalAdjustMustPerformSetContext                             =  -201500;
DAQmxErrorGetCalDataInvalidForCalMode                                        =  -201499;
DAQmxErrorNoIEPEWithACNotAllowed                                             =  -201498;
DAQmxErrorSetupCalNeededBeforeGetCalDataPoints                               =  -201497;
DAQmxErrorVoltageNotCalibrated                                               =  -201496;
DAQmxErrorMissingRangeForCalibration                                         =  -201495;
DAQmxErrorMultipleChansNotSupportedDuringCalAdjust                           =  -201494;
DAQmxErrorShuntCalFailedOutOfRange                                           =  -201493;
DAQmxErrorOperationNotSupportedOnSimulatedDevice                             =  -201492;
DAQmxErrorFirmwareVersionSameAsInstalledVersion                              =  -201491;
DAQmxErrorFirmwareVersionOlderThanInstalledVersion                           =  -201490;
DAQmxErrorFirmwareUpdateInvalidState                                         =  -201489;
DAQmxErrorFirmwareUpdateInvalidID                                            =  -201488;
DAQmxErrorFirmwareUpdateAutomaticManagementEnabled                           =  -201487;
DAQmxErrorSetupCalibrationNotCalled                                          =  -201486;
DAQmxErrorCalMeasuredDataSizeVsActualDataSizeMismatch                        =  -201485;
DAQmxErrorCDAQMissingDSAMasterForChanExpansion                               =  -201484;
DAQmxErrorCDAQMasterNotFoundForChanExpansion                                 =  -201483;
DAQmxErrorAllChansShouldBeProvidedForCalibration                             =  -201482;
DAQmxErrorMustSpecifyExpirationStateForAllLinesInRange                       =  -201481;
DAQmxErrorOpenSessionExists                                                  =  -201480;
DAQmxErrorCannotQueryTerminalForSWArmStart                                   =  -201479;
DAQmxErrorChassisWatchdogTimerExpired                                        =  -201478;
DAQmxErrorCantReserveWatchdogTaskWhileOtherTasksReserved                     =  -201477;
DAQmxErrorCantReserveTaskWhileWatchdogTaskReserving                          =  -201476;
DAQmxErrorAuxPowerSourceRequired                                             =  -201475;
DAQmxErrorDeviceNotSupportedOnLocalSystem                                    =  -201474;
DAQmxErrorOneTimestampChannelRequiredForCombinedNavigationRead               =  -201472;
DAQmxErrorMultDevsMultPhysChans                                              =  -201471;
DAQmxErrorInvalidCalAdjustmentPointValues                                    =  -201470;
DAQmxErrorDifferentDigitizerFromCommunicator                                 =  -201469;
DAQmxErrorCDAQSyncMasterClockNotPresent                                      =  -201468;
DAQmxErrorAssociatedChansHaveConflictingProps                                =  -201467;
DAQmxErrorAutoConfigBetweenMultipleDeviceStatesInvalid                       =  -201466;
DAQmxErrorAutoConfigOfOfflineDevicesInvalid                                  =  -201465;
DAQmxErrorExternalFIFOFault                                                  =  -201464;
DAQmxErrorConnectionsNotReciprocal                                           =  -201463;
DAQmxErrorInvalidOutputToInputCDAQSyncConnection                             =  -201462;
DAQmxErrorReferenceClockNotPresent                                           =  -201461;
DAQmxErrorBlankStringExpansionFoundNoSupportedCDAQSyncConnectionDevices      =  -201460;
DAQmxErrorNoDevicesSupportCDAQSyncConnections                                =  -201459;
DAQmxErrorInvalidCDAQSyncTimeoutValue                                        =  -201458;
DAQmxErrorCDAQSyncConnectionToSamePort                                       =  -201457;
DAQmxErrorDevsWithoutCommonSyncConnectionStrategy                            =  -201456;
DAQmxErrorNoCDAQSyncBetweenPhysAndSimulatedDevs                              =  -201455;
DAQmxErrorUnableToContainCards                                               =  -201454;
DAQmxErrorFindDisconnectedBetweenPhysAndSimDeviceStatesInvalid               =  -201453;
DAQmxErrorOperationAborted                                                   =  -201452;
DAQmxErrorTwoPortsRequired                                                   =  -201451;
DAQmxErrorDeviceDoesNotSupportCDAQSyncConnections                            =  -201450;
DAQmxErrorInvalidcDAQSyncPortConnectionFormat                                =  -201449;
DAQmxErrorRosetteMeasurementsNotSpecified                                    =  -201448;
DAQmxErrorInvalidNumOfPhysChansForDeltaRosette                               =  -201447;
DAQmxErrorInvalidNumOfPhysChansForTeeRosette                                 =  -201446;
DAQmxErrorRosetteStrainChanNamesNeeded                                       =  -201445;
DAQmxErrorMultideviceWithOnDemandTiming                                      =  -201444;
DAQmxErrorFREQOUTCannotProduceDesiredFrequency3                              =  -201443;
DAQmxErrorTwoEdgeSeparationSameTerminalSameEdge                              =  -201442;
DAQmxErrorDontMixSyncPulseAndSampClkTimebaseOn449x                           =  -201441;
DAQmxErrorNeitherRefClkNorSampClkTimebaseConfiguredForDSASync                =  -201440;
DAQmxErrorRetriggeringFiniteCONotAllowed                                     =  -201439;
DAQmxErrorDeviceRebootedFromWDTTimeout                                       =  -201438;
DAQmxErrorTimeoutValueExceedsMaximum                                         =  -201437;
DAQmxErrorSharingDifferentWireModes                                          =  -201436;
DAQmxErrorCantPrimeWithEmptyBuffer                                           =  -201435;
DAQmxErrorConfigFailedBecauseWatchdogExpired                                 =  -201434;
DAQmxErrorWriteFailedBecauseWatchdogChangedLineDirection                     =  -201433;
DAQmxErrorMultipleSubsytemCalibration                                        =  -201432;
DAQmxErrorIncorrectChannelForOffsetAdjustment                                =  -201431;
DAQmxErrorInvalidNumRefVoltagesToWrite                                       =  -201430;
DAQmxErrorStartTrigDelayWithDSAModule                                        =  -201429;
DAQmxErrorMoreThanOneSyncPulseDetected                                       =  -201428;
DAQmxErrorDevNotSupportedWithinDAQmxAPI                                      =  -201427;
DAQmxErrorDevsWithoutSyncStrategies                                          =  -201426;
DAQmxErrorDevsWithoutCommonSyncStrategy                                      =  -201425;
DAQmxErrorSyncStrategiesCannotSync                                           =  -201424;
DAQmxErrorChassisCommunicationInterrupted                                    =  -201423;
DAQmxErrorUnknownCardPowerProfileInCarrier                                   =  -201422;
DAQmxErrorAttrNotSupportedOnAccessory                                        =  -201421;
DAQmxErrorNetworkDeviceReservedByAnotherHost                                 =  -201420;
DAQmxErrorIncorrectFirmwareFileUploaded                                      =  -201419;
DAQmxErrorInvalidFirmwareFileUploaded                                        =  -201418;
DAQmxErrorInTimerTimeoutOnArm                                                =  -201417;
DAQmxErrorCantExceedSlotRelayDriveLimit                                      =  -201416;
DAQmxErrorModuleUnsupportedFor9163                                           =  -201415;
DAQmxErrorConnectionsNotSupported                                            =  -201414;
DAQmxErrorAccessoryNotPresent                                                =  -201413;
DAQmxErrorSpecifiedAccessoryChannelsNotPresentOnDevice                       =  -201412;
DAQmxErrorConnectionsNotSupportedOnAccessory                                 =  -201411;
DAQmxErrorRateTooFastForHWTSP                                                =  -201410;
DAQmxErrorDelayFromSampleClockOutOfRangeForHWTSP                             =  -201409;
DAQmxErrorAveragingWhenNotInternalHWTSP                                      =  -201408;
DAQmxErrorAttributeNotSupportedUnlessHWTSP                                   =  -201407;
DAQmxErrorFiveVoltDetectFailed                                               =  -201406;
DAQmxErrorAnalogBusStateInconsistent                                         =  -201405;
DAQmxErrorCardDetectedDoesNotMatchExpectedCard                               =  -201404;
DAQmxErrorLoggingStartNewFileNotCalled                                       =  -201403;
DAQmxErrorLoggingSampsPerFileNotDivisible                                    =  -201402;
DAQmxErrorRetrievingNetworkDeviceProperties                                  =  -201401;
DAQmxErrorFilePreallocationFailed                                            =  -201400;
DAQmxErrorModuleMismatchInSameTimedTask                                      =  -201399;
DAQmxErrorInvalidAttributeValuePossiblyDueToOtherAttributeValues             =  -201398;
DAQmxErrorChangeDetectionStoppedToPreventDeviceHang                          =  -201397;
DAQmxErrorFilterDelayRemovalNotPosssibleWithAnalogTrigger                    =  -201396;
DAQmxErrorNonbufferedOrNoChannels                                            =  -201395;
DAQmxErrorTristateLogicLevelNotSpecdForEntirePort                            =  -201394;
DAQmxErrorTristateLogicLevelNotSupportedOnDigOutChan                         =  -201393;
DAQmxErrorTristateLogicLevelNotSupported                                     =  -201392;
DAQmxErrorIncompleteGainAndCouplingCalAdjustment                             =  -201391;
DAQmxErrorNetworkStatusConnectionLost                                        =  -201390;
DAQmxErrorModuleChangeDuringConnectionLoss                                   =  -201389;
DAQmxErrorNetworkDeviceNotReservedByHost                                     =  -201388;
DAQmxErrorDuplicateCalibrationAdjustmentInput                                =  -201387;
DAQmxErrorSelfCalFailedContactTechSupport                                    =  -201386;
DAQmxErrorSelfCalFailedToConverge                                            =  -201385;
DAQmxErrorUnsupportedSimulatedModuleForSimulatedChassis                      =  -201384;
DAQmxErrorLoggingWriteSizeTooBig                                             =  -201383;
DAQmxErrorLoggingWriteSizeNotDivisible                                       =  -201382;
DAQmxErrorMyDAQPowerRailFault                                                =  -201381;
DAQmxErrorDeviceDoesNotSupportThisOperation                                  =  -201380;
DAQmxErrorNetworkDevicesNotSupportedOnThisPlatform                           =  -201379;
DAQmxErrorUnknownFirmwareVersion                                             =  -201378;
DAQmxErrorFirmwareIsUpdating                                                 =  -201377;
DAQmxErrorAccessoryEEPROMIsCorrupt                                           =  -201376;
DAQmxErrorThrmcplLeadOffsetNullingCalNotSupported                            =  -201375;
DAQmxErrorSelfCalFailedTryExtCal                                             =  -201374;
DAQmxErrorOutputP2PNotSupportedWithMultithreadedScripts                      =  -201373;
DAQmxErrorThrmcplCalibrationChannelsOpen                                     =  -201372;
DAQmxErrorMDNSServiceInstanceAlreadyInUse                                    =  -201371;
DAQmxErrorIPAddressAlreadyInUse                                              =  -201370;
DAQmxErrorHostnameAlreadyInUse                                               =  -201369;
DAQmxErrorInvalidNumberOfCalAdjustmentPoints                                 =  -201368;
DAQmxErrorFilterOrDigitalSyncInternalSignal                                  =  -201367;
DAQmxErrorBadDDSSource                                                       =  -201366;
DAQmxErrorOnboardRegenWithMoreThan16Channels                                 =  -201365;
DAQmxErrorTriggerTooFast                                                     =  -201364;
DAQmxErrorMinMaxOutsideTableRange                                            =  -201363;
DAQmxErrorChannelExpansionWithInvalidAnalogTriggerDevice                     =  -201362;
DAQmxErrorSyncPulseSrcInvalidForTask                                         =  -201361;
DAQmxErrorInvalidCarrierSlotNumberSpecd                                      =  -201360;
DAQmxErrorCardsMustBeInSameCarrier                                           =  -201359;
DAQmxErrorCardDevCarrierSimMustMatch                                         =  -201358;
DAQmxErrorDevMustHaveAtLeastOneCard                                          =  -201357;
DAQmxErrorCardTopologyError                                                  =  -201356;
DAQmxErrorExceededCarrierPowerLimit                                          =  -201355;
DAQmxErrorCardsIncompatible                                                  =  -201354;
DAQmxErrorAnalogBusNotValid                                                  =  -201353;
DAQmxErrorReservationConflict                                                =  -201352;
DAQmxErrorMemMappedOnDemandNotSupported                                      =  -201351;
DAQmxErrorSlaveWithNoStartTriggerConfigured                                  =  -201350;
DAQmxErrorChannelExpansionWithDifferentTriggerDevices                        =  -201349;
DAQmxErrorCounterSyncAndRetriggered                                          =  -201348;
DAQmxErrorNoExternalSyncPulseDetected                                        =  -201347;
DAQmxErrorSlaveAndNoExternalSyncPulse                                        =  -201346;
DAQmxErrorCustomTimingRequiredForAttribute                                   =  -201345;
DAQmxErrorCustomTimingModeNotSet                                             =  -201344;
DAQmxErrorAccessoryPowerTripped                                              =  -201343;
DAQmxErrorUnsupportedAccessory                                               =  -201342;
DAQmxErrorInvalidAccessoryChange                                             =  -201341;
DAQmxErrorFirmwareRequiresUpgrade                                            =  -201340;
DAQmxErrorFastExternalTimebaseNotSupportedForDevice                          =  -201339;
DAQmxErrorInvalidShuntLocationForCalibration                                 =  -201338;
DAQmxErrorDeviceNameTooLong                                                  =  -201337;
DAQmxErrorBridgeScalesUnsupported                                            =  -201336;
DAQmxErrorMismatchedElecPhysValues                                           =  -201335;
DAQmxErrorLinearRequiresUniquePoints                                         =  -201334;
DAQmxErrorMissingRequiredScalingParameter                                    =  -201333;
DAQmxErrorLoggingNotSupportOnOutputTasks                                     =  -201332;
DAQmxErrorMemoryMappedHardwareTimedNonBufferedUnsupported                    =  -201331;
DAQmxErrorCannotUpdatePulseTrainWithAutoIncrementEnabled                     =  -201330;
DAQmxErrorHWTimedSinglePointAndDataXferNotDMA                                =  -201329;
DAQmxErrorSCCSecondStageEmpty                                                =  -201328;
DAQmxErrorSCCInvalidDualStageCombo                                           =  -201327;
DAQmxErrorSCCInvalidSecondStage                                              =  -201326;
DAQmxErrorSCCInvalidFirstStage                                               =  -201325;
DAQmxErrorCounterMultipleSampleClockedChannels                               =  -201324;
DAQmxError2CounterMeasurementModeAndSampleClocked                            =  -201323;
DAQmxErrorCantHaveBothMemMappedAndNonMemMappedTasks                          =  -201322;
DAQmxErrorMemMappedDataReadByAnotherProcess                                  =  -201321;
DAQmxErrorRetriggeringInvalidForGivenSettings                                =  -201320;
DAQmxErrorAIOverrun                                                          =  -201319;
DAQmxErrorCOOverrun                                                          =  -201318;
DAQmxErrorCounterMultipleBufferedChannels                                    =  -201317;
DAQmxErrorInvalidTimebaseForCOHWTSP                                          =  -201316;
DAQmxErrorWriteBeforeEvent                                                   =  -201315;
DAQmxErrorCIOverrun                                                          =  -201314;
DAQmxErrorCounterNonResponsiveAndReset                                       =  -201313;
DAQmxErrorMeasTypeOrChannelNotSupportedForLogging                            =  -201312;
DAQmxErrorFileAlreadyOpenedForWrite                                          =  -201311;
DAQmxErrorTdmsNotFound                                                       =  -201310;
DAQmxErrorGenericFileIO                                                      =  -201309;
DAQmxErrorFiniteSTCCounterNotSupportedForLogging                             =  -201308;
DAQmxErrorMeasurementTypeNotSupportedForLogging                              =  -201307;
DAQmxErrorFileAlreadyOpened                                                  =  -201306;
DAQmxErrorDiskFull                                                           =  -201305;
DAQmxErrorFilePathInvalid                                                    =  -201304;
DAQmxErrorFileVersionMismatch                                                =  -201303;
DAQmxErrorFileWriteProtected                                                 =  -201302;
DAQmxErrorReadNotSupportedForLoggingMode                                     =  -201301;
DAQmxErrorAttributeNotSupportedWhenLogging                                   =  -201300;
DAQmxErrorLoggingModeNotSupportedNonBuffered                                 =  -201299;
DAQmxErrorPropertyNotSupportedWithConflictingProperty                        =  -201298;
DAQmxErrorParallelSSHOnConnector1                                            =  -201297;
DAQmxErrorCOOnlyImplicitSampleTimingTypeSupported                            =  -201296;
DAQmxErrorCalibrationFailedAOOutOfRange                                      =  -201295;
DAQmxErrorCalibrationFailedAIOutOfRange                                      =  -201294;
DAQmxErrorCalPWMLinearityFailed                                              =  -201293;
DAQmxErrorOverrunUnderflowConfigurationCombo                                 =  -201292;
DAQmxErrorCannotWriteToFiniteCOTask                                          =  -201291;
DAQmxErrorNetworkDAQInvalidWEPKeyLength                                      =  -201290;
DAQmxErrorCalInputsShortedNotSupported                                       =  -201289;
DAQmxErrorCannotSetPropertyWhenTaskIsReserved                                =  -201288;
DAQmxErrorMinus12VFuseBlown                                                  =  -201287;
DAQmxErrorPlus12VFuseBlown                                                   =  -201286;
DAQmxErrorPlus5VFuseBlown                                                    =  -201285;
DAQmxErrorPlus3VFuseBlown                                                    =  -201284;
DAQmxErrorDeviceSerialPortError                                              =  -201283;
DAQmxErrorPowerUpStateMachineNotDone                                         =  -201282;
DAQmxErrorTooManyTriggersSpecifiedInTask                                     =  -201281;
DAQmxErrorVerticalOffsetNotSupportedOnDevice                                 =  -201280;
DAQmxErrorInvalidCouplingForMeasurementType                                  =  -201279;
DAQmxErrorDigitalLineUpdateTooFastForDevice                                  =  -201278;
DAQmxErrorCertificateIsTooBigToTransfer                                      =  -201277;
DAQmxErrorOnlyPEMOrDERCertiticatesAccepted                                   =  -201276;
DAQmxErrorCalCouplingNotSupported                                            =  -201275;
DAQmxErrorDeviceNotSupportedIn64Bit                                          =  -201274;
DAQmxErrorNetworkDeviceInUse                                                 =  -201273;
DAQmxErrorInvalidIPv4AddressFormat                                           =  -201272;
DAQmxErrorNetworkProductTypeMismatch                                         =  -201271;
DAQmxErrorOnlyPEMCertificatesAccepted                                        =  -201270;
DAQmxErrorCalibrationRequiresPrototypingBoardEnabled                         =  -201269;
DAQmxErrorAllCurrentLimitingResourcesAlreadyTaken                            =  -201268;
DAQmxErrorUserDefInfoStringBadLength                                         =  -201267;
DAQmxErrorPropertyNotFound                                                   =  -201266;
DAQmxErrorOverVoltageProtectionActivated                                     =  -201265;
DAQmxErrorScaledIQWaveformTooLarge                                           =  -201264;
DAQmxErrorFirmwareFailedToDownload                                           =  -201263;
DAQmxErrorPropertyNotSupportedForBusType                                     =  -201262;
DAQmxErrorChangeRateWhileRunningCouldNotBeCompleted                          =  -201261;
DAQmxErrorCannotQueryManualControlAttribute                                  =  -201260;
DAQmxErrorInvalidNetworkConfiguration                                        =  -201259;
DAQmxErrorInvalidWirelessConfiguration                                       =  -201258;
DAQmxErrorInvalidWirelessCountryCode                                         =  -201257;
DAQmxErrorInvalidWirelessChannel                                             =  -201256;
DAQmxErrorNetworkEEPROMHasChanged                                            =  -201255;
DAQmxErrorNetworkSerialNumberMismatch                                        =  -201254;
DAQmxErrorNetworkStatusDown                                                  =  -201253;
DAQmxErrorNetworkTargetUnreachable                                           =  -201252;
DAQmxErrorNetworkTargetNotFound                                              =  -201251;
DAQmxErrorNetworkStatusTimedOut                                              =  -201250;
DAQmxErrorInvalidWirelessSecuritySelection                                   =  -201249;
DAQmxErrorNetworkDeviceConfigurationLocked                                   =  -201248;
DAQmxErrorNetworkDAQDeviceNotSupported                                       =  -201247;
DAQmxErrorNetworkDAQCannotCreateEmptySleeve                                  =  -201246;
DAQmxErrorUserDefInfoStringTooLong                                           =  -201245;
DAQmxErrorModuleTypeDoesNotMatchModuleTypeInDestination                      =  -201244;
DAQmxErrorInvalidTEDSInterfaceAddress                                        =  -201243;
DAQmxErrorDevDoesNotSupportSCXIComm                                          =  -201242;
DAQmxErrorSCXICommDevConnector0MustBeCabledToModule                          =  -201241;
DAQmxErrorSCXIModuleDoesNotSupportDigitizationMode                           =  -201240;
DAQmxErrorDevDoesNotSupportMultiplexedSCXIDigitizationMode                   =  -201239;
DAQmxErrorDevOrDevPhysChanDoesNotSupportSCXIDigitization                     =  -201238;
DAQmxErrorInvalidPhysChanName                                                =  -201237;
DAQmxErrorSCXIChassisCommModeInvalid                                         =  -201236;
DAQmxErrorRequiredDependencyNotFound                                         =  -201235;
DAQmxErrorInvalidStorage                                                     =  -201234;
DAQmxErrorInvalidObject                                                      =  -201233;
DAQmxErrorStorageAlteredPriorToSave                                          =  -201232;
DAQmxErrorTaskDoesNotReferenceLocalChannel                                   =  -201231;
DAQmxErrorReferencedDevSimMustMatchTarget                                    =  -201230;
DAQmxErrorProgrammedIOFailsBecauseOfWatchdogTimer                            =  -201229;
DAQmxErrorWatchdogTimerFailsBecauseOfProgrammedIO                            =  -201228;
DAQmxErrorCantUseThisTimingEngineWithAPort                                   =  -201227;
DAQmxErrorProgrammedIOConflict                                               =  -201226;
DAQmxErrorChangeDetectionIncompatibleWithProgrammedIO                        =  -201225;
DAQmxErrorTristateNotEnoughLines                                             =  -201224;
DAQmxErrorTristateConflict                                                   =  -201223;
DAQmxErrorGenerateOrFiniteWaitExpectedBeforeBreakBlock                       =  -201222;
DAQmxErrorBreakBlockNotAllowedInLoop                                         =  -201221;
DAQmxErrorClearTriggerNotAllowedInBreakBlock                                 =  -201220;
DAQmxErrorNestingNotAllowedInBreakBlock                                      =  -201219;
DAQmxErrorIfElseBlockNotAllowedInBreakBlock                                  =  -201218;
DAQmxErrorRepeatUntilTriggerLoopNotAllowedInBreakBlock                       =  -201217;
DAQmxErrorWaitUntilTriggerNotAllowedInBreakBlock                             =  -201216;
DAQmxErrorMarkerPosInvalidInBreakBlock                                       =  -201215;
DAQmxErrorInvalidWaitDurationInBreakBlock                                    =  -201214;
DAQmxErrorInvalidSubsetLengthInBreakBlock                                    =  -201213;
DAQmxErrorInvalidWaveformLengthInBreakBlock                                  =  -201212;
DAQmxErrorInvalidWaitDurationBeforeBreakBlock                                =  -201211;
DAQmxErrorInvalidSubsetLengthBeforeBreakBlock                                =  -201210;
DAQmxErrorInvalidWaveformLengthBeforeBreakBlock                              =  -201209;
DAQmxErrorSampleRateTooHighForADCTimingMode                                  =  -201208;
DAQmxErrorActiveDevNotSupportedWithMultiDevTask                              =  -201207;
DAQmxErrorRealDevAndSimDevNotSupportedInSameTask                             =  -201206;
DAQmxErrorRTSISimMustMatchDevSim                                             =  -201205;
DAQmxErrorBridgeShuntCaNotSupported                                          =  -201204;
DAQmxErrorStrainShuntCaNotSupported                                          =  -201203;
DAQmxErrorGainTooLargeForGainCalConst                                        =  -201202;
DAQmxErrorOffsetTooLargeForOffsetCalConst                                    =  -201201;
DAQmxErrorElvisPrototypingBoardRemoved                                       =  -201200;
DAQmxErrorElvis2PowerRailFault                                               =  -201199;
DAQmxErrorElvis2PhysicalChansFault                                           =  -201198;
DAQmxErrorElvis2PhysicalChansThermalEvent                                    =  -201197;
DAQmxErrorRXBitErrorRateLimitExceeded                                        =  -201196;
DAQmxErrorPHYBitErrorRateLimitExceeded                                       =  -201195;
DAQmxErrorTwoPartAttributeCalledOutOfOrder                                   =  -201194;
DAQmxErrorInvalidSCXIChassisAddress                                          =  -201193;
DAQmxErrorCouldNotConnectToRemoteMXS                                         =  -201192;
DAQmxErrorExcitationStateRequiredForAttributes                               =  -201191;
DAQmxErrorDeviceNotUsableUntilUSBReplug                                      =  -201190;
DAQmxErrorInputFIFOOverflowDuringCalibrationOnFullSpeedUSB                   =  -201189;
DAQmxErrorInputFIFOOverflowDuringCalibration                                 =  -201188;
DAQmxErrorCJCChanConflictsWithNonThermocoupleChan                            =  -201187;
DAQmxErrorCommDeviceForPXIBackplaneNotInRightmostSlot                        =  -201186;
DAQmxErrorCommDeviceForPXIBackplaneNotInSameChassis                          =  -201185;
DAQmxErrorCommDeviceForPXIBackplaneNotPXI                                    =  -201184;
DAQmxErrorInvalidCalExcitFrequency                                           =  -201183;
DAQmxErrorInvalidCalExcitVoltage                                             =  -201182;
DAQmxErrorInvalidAIInputSrc                                                  =  -201181;
DAQmxErrorInvalidCalInputRef                                                 =  -201180;
DAQmxErrordBReferenceValueNotGreaterThanZero                                 =  -201179;
DAQmxErrorSampleClockRateIsTooFastForSampleClockTiming                       =  -201178;
DAQmxErrorDeviceNotUsableUntilColdStart                                      =  -201177;
DAQmxErrorSampleClockRateIsTooFastForBurstTiming                             =  -201176;
DAQmxErrorDevImportFailedAssociatedResourceIDsNotSupported                   =  -201175;
DAQmxErrorSCXI1600ImportNotSupported                                         =  -201174;
DAQmxErrorPowerSupplyConfigurationFailed                                     =  -201173;
DAQmxErrorIEPEWithDCNotAllowed                                               =  -201172;
DAQmxErrorMinTempForThermocoupleTypeOutsideAccuracyForPolyScaling            =  -201171;
DAQmxErrorDevImportFailedNoDeviceToOverwriteAndSimulationNotSupported        =  -201170;
DAQmxErrorDevImportFailedDeviceNotSupportedOnDestination                     =  -201169;
DAQmxErrorFirmwareIsTooOld                                                   =  -201168;
DAQmxErrorFirmwareCouldntUpdate                                              =  -201167;
DAQmxErrorFirmwareIsCorrupt                                                  =  -201166;
DAQmxErrorFirmwareTooNew                                                     =  -201165;
DAQmxErrorSampClockCannotBeExportedFromExternalSampClockSrc                  =  -201164;
DAQmxErrorPhysChanReservedForInputWhenDesiredForOutput                       =  -201163;
DAQmxErrorPhysChanReservedForOutputWhenDesiredForInput                       =  -201162;
DAQmxErrorSpecifiedCDAQSlotNotEmpty                                          =  -201161;
DAQmxErrorDeviceDoesNotSupportSimulation                                     =  -201160;
DAQmxErrorInvalidCDAQSlotNumberSpecd                                         =  -201159;
DAQmxErrorCSeriesModSimMustMatchCDAQChassisSim                               =  -201158;
DAQmxErrorSCCCabledDevMustNotBeSimWhenSCCCarrierIsNotSim                     =  -201157;
DAQmxErrorSCCModSimMustMatchSCCCarrierSim                                    =  -201156;
DAQmxErrorSCXIModuleDoesNotSupportSimulation                                 =  -201155;
DAQmxErrorSCXICableDevMustNotBeSimWhenModIsNotSim                            =  -201154;
DAQmxErrorSCXIDigitizerSimMustNotBeSimWhenModIsNotSim                        =  -201153;
DAQmxErrorSCXIModSimMustMatchSCXIChassisSim                                  =  -201152;
DAQmxErrorSimPXIDevReqSlotAndChassisSpecd                                    =  -201151;
DAQmxErrorSimDevConflictWithRealDev                                          =  -201150;
DAQmxErrorInsufficientDataForCalibration                                     =  -201149;
DAQmxErrorTriggerChannelMustBeEnabled                                        =  -201148;
DAQmxErrorCalibrationDataConflictCouldNotBeResolved                          =  -201147;
DAQmxErrorSoftwareTooNewForSelfCalibrationData                               =  -201146;
DAQmxErrorSoftwareTooNewForExtCalibrationData                                =  -201145;
DAQmxErrorSelfCalibrationDataTooNewForSoftware                               =  -201144;
DAQmxErrorExtCalibrationDataTooNewForSoftware                                =  -201143;
DAQmxErrorSoftwareTooNewForEEPROM                                            =  -201142;
DAQmxErrorEEPROMTooNewForSoftware                                            =  -201141;
DAQmxErrorSoftwareTooNewForHardware                                          =  -201140;
DAQmxErrorHardwareTooNewForSoftware                                          =  -201139;
DAQmxErrorTaskCannotRestartFirstSampNotAvailToGenerate                       =  -201138;
DAQmxErrorOnlyUseStartTrigSrcPrptyWithDevDataLines                           =  -201137;
DAQmxErrorOnlyUsePauseTrigSrcPrptyWithDevDataLines                           =  -201136;
DAQmxErrorOnlyUseRefTrigSrcPrptyWithDevDataLines                             =  -201135;
DAQmxErrorPauseTrigDigPatternSizeDoesNotMatchSrcSize                         =  -201134;
DAQmxErrorLineConflictCDAQ                                                   =  -201133;
DAQmxErrorCannotWriteBeyondFinalFiniteSample                                 =  -201132;
DAQmxErrorRefAndStartTriggerSrcCantBeSame                                    =  -201131;
DAQmxErrorMemMappingIncompatibleWithPhysChansInTask                          =  -201130;
DAQmxErrorOutputDriveTypeMemMappingConflict                                  =  -201129;
DAQmxErrorCAPIDeviceIndexInvalid                                             =  -201128;
DAQmxErrorRatiometricDevicesMustUseExcitationForScaling                      =  -201127;
DAQmxErrorPropertyRequiresPerDeviceCfg                                       =  -201126;
DAQmxErrorAICouplingAndAIInputSourceConflict                                 =  -201125;
DAQmxErrorOnlyOneTaskCanPerformDOMemoryMappingAtATime                        =  -201124;
DAQmxErrorTooManyChansForAnalogRefTrigCDAQ                                   =  -201123;
DAQmxErrorSpecdPropertyValueIsIncompatibleWithSampleTimingType               =  -201122;
DAQmxErrorCPUNotSupportedRequireSSE                                          =  -201121;
DAQmxErrorSpecdPropertyValueIsIncompatibleWithSampleTimingResponseMode       =  -201120;
DAQmxErrorConflictingNextWriteIsLastAndRegenModeProperties                   =  -201119;
DAQmxErrorMStudioOperationDoesNotSupportDeviceContext                        =  -201118;
DAQmxErrorPropertyValueInChannelExpansionContextInvalid                      =  -201117;
DAQmxErrorHWTimedNonBufferedAONotSupported                                   =  -201116;
DAQmxErrorWaveformLengthNotMultOfQuantum                                     =  -201115;
DAQmxErrorDSAExpansionMixedBoardsWrongOrderInPXIChassis                      =  -201114;
DAQmxErrorPowerLevelTooLowForOOK                                             =  -201113;
DAQmxErrorDeviceComponentTestFailure                                         =  -201112;
DAQmxErrorUserDefinedWfmWithOOKUnsupported                                   =  -201111;
DAQmxErrorInvalidDigitalModulationUserDefinedWaveform                        =  -201110;
DAQmxErrorBothRefInAndRefOutEnabled                                          =  -201109;
DAQmxErrorBothAnalogAndDigitalModulationEnabled                              =  -201108;
DAQmxErrorBufferedOpsNotSupportedInSpecdSlotForCDAQ                          =  -201107;
DAQmxErrorPhysChanNotSupportedInSpecdSlotForCDAQ                             =  -201106;
DAQmxErrorResourceReservedWithConflictingSettings                            =  -201105;
DAQmxErrorInconsistentAnalogTrigSettingsCDAQ                                 =  -201104;
DAQmxErrorTooManyChansForAnalogPauseTrigCDAQ                                 =  -201103;
DAQmxErrorAnalogTrigNotFirstInScanListCDAQ                                   =  -201102;
DAQmxErrorTooManyChansGivenTimingType                                        =  -201101;
DAQmxErrorSampClkTimebaseDivWithExtSampClk                                   =  -201100;
DAQmxErrorCantSaveTaskWithPerDeviceTimingProperties                          =  -201099;
DAQmxErrorConflictingAutoZeroMode                                            =  -201098;
DAQmxErrorSampClkRateNotSupportedWithEAREnabled                              =  -201097;
DAQmxErrorSampClkTimebaseRateNotSpecd                                        =  -201096;
DAQmxErrorSessionCorruptedByDLLReload                                        =  -201095;
DAQmxErrorActiveDevNotSupportedWithChanExpansion                             =  -201094;
DAQmxErrorSampClkRateInvalid                                                 =  -201093;
DAQmxErrorExtSyncPulseSrcCannotBeExported                                    =  -201092;
DAQmxErrorSyncPulseMinDelayToStartNeededForExtSyncPulseSrc                   =  -201091;
DAQmxErrorSyncPulseSrcInvalid                                                =  -201090;
DAQmxErrorSampClkTimebaseRateInvalid                                         =  -201089;
DAQmxErrorSampClkTimebaseSrcInvalid                                          =  -201088;
DAQmxErrorSampClkRateMustBeSpecd                                             =  -201087;
DAQmxErrorInvalidAttributeName                                               =  -201086;
DAQmxErrorCJCChanNameMustBeSetWhenCJCSrcIsScannableChan                      =  -201085;
DAQmxErrorHiddenChanMissingInChansPropertyInCfgFile                          =  -201084;
DAQmxErrorChanNamesNotSpecdInCfgFile                                         =  -201083;
DAQmxErrorDuplicateHiddenChanNamesInCfgFile                                  =  -201082;
DAQmxErrorDuplicateChanNameInCfgFile                                         =  -201081;
DAQmxErrorInvalidSCCModuleForSlotSpecd                                       =  -201080;
DAQmxErrorInvalidSCCSlotNumberSpecd                                          =  -201079;
DAQmxErrorInvalidSectionIdentifier                                           =  -201078;
DAQmxErrorInvalidSectionName                                                 =  -201077;
DAQmxErrorDAQmxVersionNotSupported                                           =  -201076;
DAQmxErrorSWObjectsFoundInFile                                               =  -201075;
DAQmxErrorHWObjectsFoundInFile                                               =  -201074;
DAQmxErrorLocalChannelSpecdWithNoParentTask                                  =  -201073;
DAQmxErrorTaskReferencesMissingLocalChannel                                  =  -201072;
DAQmxErrorTaskReferencesLocalChannelFromOtherTask                            =  -201071;
DAQmxErrorTaskMissingChannelProperty                                         =  -201070;
DAQmxErrorInvalidLocalChanName                                               =  -201069;
DAQmxErrorInvalidEscapeCharacterInString                                     =  -201068;
DAQmxErrorInvalidTableIdentifier                                             =  -201067;
DAQmxErrorValueFoundInInvalidColumn                                          =  -201066;
DAQmxErrorMissingStartOfTable                                                =  -201065;
DAQmxErrorFileMissingRequiredDAQmxHeader                                     =  -201064;
DAQmxErrorDeviceIDDoesNotMatch                                               =  -201063;
DAQmxErrorBufferedOperationsNotSupportedOnSelectedLines                      =  -201062;
DAQmxErrorPropertyConflictsWithScale                                         =  -201061;
DAQmxErrorInvalidINIFileSyntax                                               =  -201060;
DAQmxErrorDeviceInfoFailedPXIChassisNotIdentified                            =  -201059;
DAQmxErrorInvalidHWProductNumber                                             =  -201058;
DAQmxErrorInvalidHWProductType                                               =  -201057;
DAQmxErrorInvalidNumericFormatSpecd                                          =  -201056;
DAQmxErrorDuplicatePropertyInObject                                          =  -201055;
DAQmxErrorInvalidEnumValueSpecd                                              =  -201054;
DAQmxErrorTEDSSensorPhysicalChannelConflict                                  =  -201053;
DAQmxErrorTooManyPhysicalChansForTEDSInterfaceSpecd                          =  -201052;
DAQmxErrorIncapableTEDSInterfaceControllingDeviceSpecd                       =  -201051;
DAQmxErrorSCCCarrierSpecdIsMissing                                           =  -201050;
DAQmxErrorIncapableSCCDigitizingDeviceSpecd                                  =  -201049;
DAQmxErrorAccessorySettingNotApplicable                                      =  -201048;
DAQmxErrorDeviceAndConnectorSpecdAlreadyOccupied                             =  -201047;
DAQmxErrorIllegalAccessoryTypeForDeviceSpecd                                 =  -201046;
DAQmxErrorInvalidDeviceConnectorNumberSpecd                                  =  -201045;
DAQmxErrorInvalidAccessoryName                                               =  -201044;
DAQmxErrorMoreThanOneMatchForSpecdDevice                                     =  -201043;
DAQmxErrorNoMatchForSpecdDevice                                              =  -201042;
DAQmxErrorProductTypeAndProductNumberConflict                                =  -201041;
DAQmxErrorExtraPropertyDetectedInSpecdObject                                 =  -201040;
DAQmxErrorRequiredPropertyMissing                                            =  -201039;
DAQmxErrorCantSetAuthorForLocalChan                                          =  -201038;
DAQmxErrorInvalidTimeValue                                                   =  -201037;
DAQmxErrorInvalidTimeFormat                                                  =  -201036;
DAQmxErrorDigDevChansSpecdInModeOtherThanParallel                            =  -201035;
DAQmxErrorCascadeDigitizationModeNotSupported                                =  -201034;
DAQmxErrorSpecdSlotAlreadyOccupied                                           =  -201033;
DAQmxErrorInvalidSCXISlotNumberSpecd                                         =  -201032;
DAQmxErrorAddressAlreadyInUse                                                =  -201031;
DAQmxErrorSpecdDeviceDoesNotSupportRTSI                                      =  -201030;
DAQmxErrorSpecdDeviceIsAlreadyOnRTSIBus                                      =  -201029;
DAQmxErrorIdentifierInUse                                                    =  -201028;
DAQmxErrorWaitForNextSampleClockOrReadDetected3OrMoreMissedSampClks          =  -201027;
DAQmxErrorHWTimedAndDataXferPIO                                              =  -201026;
DAQmxErrorNonBufferedAndHWTimed                                              =  -201025;
DAQmxErrorCTROutSampClkPeriodShorterThanGenPulseTrainPeriodPolled            =  -201024;
DAQmxErrorCTROutSampClkPeriodShorterThanGenPulseTrainPeriod2                 =  -201023;
DAQmxErrorCOCannotKeepUpInHWTimedSinglePointPolled                           =  -201022;
DAQmxErrorWriteRecoveryCannotKeepUpInHWTimedSinglePoint                      =  -201021;
DAQmxErrorNoChangeDetectionOnSelectedLineForDevice                           =  -201020;
DAQmxErrorSMIOPauseTriggersNotSupportedWithChannelExpansion                  =  -201019;
DAQmxErrorClockMasterForExternalClockNotLongestPipeline                      =  -201018;
DAQmxErrorUnsupportedUnicodeByteOrderMarker                                  =  -201017;
DAQmxErrorTooManyInstructionsInLoopInScript                                  =  -201016;
DAQmxErrorPLLNotLocked                                                       =  -201015;
DAQmxErrorIfElseBlockNotAllowedInFiniteRepeatLoopInScript                    =  -201014;
DAQmxErrorIfElseBlockNotAllowedInConditionalRepeatLoopInScript               =  -201013;
DAQmxErrorClearIsLastInstructionInIfElseBlockInScript                        =  -201012;
DAQmxErrorInvalidWaitDurationBeforeIfElseBlockInScript                       =  -201011;
DAQmxErrorMarkerPosInvalidBeforeIfElseBlockInScript                          =  -201010;
DAQmxErrorInvalidSubsetLengthBeforeIfElseBlockInScript                       =  -201009;
DAQmxErrorInvalidWaveformLengthBeforeIfElseBlockInScript                     =  -201008;
DAQmxErrorGenerateOrFiniteWaitInstructionExpectedBeforeIfElseBlockInScript   =  -201007;
DAQmxErrorCalPasswordNotSupported                                            =  -201006;
DAQmxErrorSetupCalNeededBeforeAdjustCal                                      =  -201005;
DAQmxErrorMultipleChansNotSupportedDuringCalSetup                            =  -201004;
DAQmxErrorDevCannotBeAccessed                                                =  -201003;
DAQmxErrorSampClkRateDoesntMatchSampClkSrc                                   =  -201002;
DAQmxErrorSampClkRateNotSupportedWithEARDisabled                             =  -201001;
DAQmxErrorLabVIEWVersionDoesntSupportDAQmxEvents                             =  -201000;
DAQmxErrorCOReadyForNewValNotSupportedWithOnDemand                           =  -200999;
DAQmxErrorCIHWTimedSinglePointNotSupportedForMeasType                        =  -200998;
DAQmxErrorOnDemandNotSupportedWithHWTimedSinglePoint                         =  -200997;
DAQmxErrorHWTimedSinglePointAndDataXferNotProgIO                             =  -200996;
DAQmxErrorMemMapAndHWTimedSinglePoint                                        =  -200995;
DAQmxErrorCannotSetPropertyWhenHWTimedSinglePointTaskIsRunning               =  -200994;
DAQmxErrorCTROutSampClkPeriodShorterThanGenPulseTrainPeriod                  =  -200993;
DAQmxErrorTooManyEventsGenerated                                             =  -200992;
DAQmxErrorMStudioCppRemoveEventsBeforeStop                                   =  -200991;
DAQmxErrorCAPICannotRegisterSyncEventsFromMultipleThreads                    =  -200990;
DAQmxErrorReadWaitNextSampClkWaitMismatchTwo                                 =  -200989;
DAQmxErrorReadWaitNextSampClkWaitMismatchOne                                 =  -200988;
DAQmxErrorDAQmxSignalEventTypeNotSupportedByChanTypesOrDevicesInTask         =  -200987;
DAQmxErrorCannotUnregisterDAQmxSoftwareEventWhileTaskIsRunning               =  -200986;
DAQmxErrorAutoStartWriteNotAllowedEventRegistered                            =  -200985;
DAQmxErrorAutoStartReadNotAllowedEventRegistered                             =  -200984;
DAQmxErrorCannotGetPropertyWhenTaskNotReservedCommittedOrRunning             =  -200983;
DAQmxErrorSignalEventsNotSupportedByDevice                                   =  -200982;
DAQmxErrorEveryNSamplesAcqIntoBufferEventNotSupportedByDevice                =  -200981;
DAQmxErrorEveryNSampsTransferredFromBufferEventNotSupportedByDevice          =  -200980;
DAQmxErrorCAPISyncEventsTaskStateChangeNotAllowedFromDifferentThread         =  -200979;
DAQmxErrorDAQmxSWEventsWithDifferentCallMechanisms                           =  -200978;
DAQmxErrorCantSaveChanWithPolyCalScaleAndAllowInteractiveEdit                =  -200977;
DAQmxErrorChanDoesNotSupportCJC                                              =  -200976;
DAQmxErrorCOReadyForNewValNotSupportedWithHWTimedSinglePoint                 =  -200975;
DAQmxErrorDACAllowConnToGndNotSupportedByDevWhenRefSrcExt                    =  -200974;
DAQmxErrorCantGetPropertyTaskNotRunning                                      =  -200973;
DAQmxErrorCantSetPropertyTaskNotRunning                                      =  -200972;
DAQmxErrorCantSetPropertyTaskNotRunningCommitted                             =  -200971;
DAQmxErrorAIEveryNSampsEventIntervalNotMultipleOf2                           =  -200970;
DAQmxErrorInvalidTEDSPhysChanNotAI                                           =  -200969;
DAQmxErrorCAPICannotPerformTaskOperationInAsyncCallback                      =  -200968;
DAQmxErrorEveryNSampsTransferredFromBufferEventAlreadyRegistered             =  -200967;
DAQmxErrorEveryNSampsAcqIntoBufferEventAlreadyRegistered                     =  -200966;
DAQmxErrorEveryNSampsTransferredFromBufferNotForInput                        =  -200965;
DAQmxErrorEveryNSampsAcqIntoBufferNotForOutput                               =  -200964;
DAQmxErrorAOSampTimingTypeDifferentIn2Tasks                                  =  -200963;
DAQmxErrorCouldNotDownloadFirmwareHWDamaged                                  =  -200962;
DAQmxErrorCouldNotDownloadFirmwareFileMissingOrDamaged                       =  -200961;
DAQmxErrorCannotRegisterDAQmxSoftwareEventWhileTaskIsRunning                 =  -200960;
DAQmxErrorDifferentRawDataCompression                                        =  -200959;
DAQmxErrorConfiguredTEDSInterfaceDevNotDetected                              =  -200958;
DAQmxErrorCompressedSampSizeExceedsResolution                                =  -200957;
DAQmxErrorChanDoesNotSupportCompression                                      =  -200956;
DAQmxErrorDifferentRawDataFormats                                            =  -200955;
DAQmxErrorSampClkOutputTermIncludesStartTrigSrc                              =  -200954;
DAQmxErrorStartTrigSrcEqualToSampClkSrc                                      =  -200953;
DAQmxErrorEventOutputTermIncludesTrigSrc                                     =  -200952;
DAQmxErrorCOMultipleWritesBetweenSampClks                                    =  -200951;
DAQmxErrorDoneEventAlreadyRegistered                                         =  -200950;
DAQmxErrorSignalEventAlreadyRegistered                                       =  -200949;
DAQmxErrorCannotHaveTimedLoopAndDAQmxSignalEventsInSameTask                  =  -200948;
DAQmxErrorNeedLabVIEW711PatchToUseDAQmxEvents                                =  -200947;
DAQmxErrorStartFailedDueToWriteFailure                                       =  -200946;
DAQmxErrorDataXferCustomThresholdNotDMAXferMethodSpecifiedForDev             =  -200945;
DAQmxErrorDataXferRequestConditionNotSpecifiedForCustomThreshold             =  -200944;
DAQmxErrorDataXferCustomThresholdNotSpecified                                =  -200943;
DAQmxErrorCAPISyncCallbackNotSupportedOnThisPlatform                         =  -200942;
DAQmxErrorCalChanReversePolyCoefNotSpecd                                     =  -200941;
DAQmxErrorCalChanForwardPolyCoefNotSpecd                                     =  -200940;
DAQmxErrorChanCalRepeatedNumberInPreScaledVals                               =  -200939;
DAQmxErrorChanCalTableNumScaledNotEqualNumPrescaledVals                      =  -200938;
DAQmxErrorChanCalTableScaledValsNotSpecd                                     =  -200937;
DAQmxErrorChanCalTablePreScaledValsNotSpecd                                  =  -200936;
DAQmxErrorChanCalScaleTypeNotSet                                             =  -200935;
DAQmxErrorChanCalExpired                                                     =  -200934;
DAQmxErrorChanCalExpirationDateNotSet                                        =  -200933;
DAQmxError3OutputPortCombinationGivenSampTimingType653x                      =  -200932;
DAQmxError3InputPortCombinationGivenSampTimingType653x                       =  -200931;
DAQmxError2OutputPortCombinationGivenSampTimingType653x                      =  -200930;
DAQmxError2InputPortCombinationGivenSampTimingType653x                       =  -200929;
DAQmxErrorPatternMatcherMayBeUsedByOneTrigOnly                               =  -200928;
DAQmxErrorNoChansSpecdForPatternSource                                       =  -200927;
DAQmxErrorChangeDetectionChanNotInTask                                       =  -200926;
DAQmxErrorChangeDetectionChanNotTristated                                    =  -200925;
DAQmxErrorWaitModeValueNotSupportedNonBuffered                               =  -200924;
DAQmxErrorWaitModePropertyNotSupportedNonBuffered                            =  -200923;
DAQmxErrorCantSavePerLineConfigDigChanSoInteractiveEditsAllowed              =  -200922;
DAQmxErrorCantSaveNonPortMultiLineDigChanSoInteractiveEditsAllowed           =  -200921;
DAQmxErrorBufferSizeNotMultipleOfEveryNSampsEventIntervalNoIrqOnDev          =  -200920;
DAQmxErrorGlobalTaskNameAlreadyChanName                                      =  -200919;
DAQmxErrorGlobalChanNameAlreadyTaskName                                      =  -200918;
DAQmxErrorAOEveryNSampsEventIntervalNotMultipleOf2                           =  -200917;
DAQmxErrorSampleTimebaseDivisorNotSupportedGivenTimingType                   =  -200916;
DAQmxErrorHandshakeEventOutputTermNotSupportedGivenTimingType                =  -200915;
DAQmxErrorChangeDetectionOutputTermNotSupportedGivenTimingType               =  -200914;
DAQmxErrorReadyForTransferOutputTermNotSupportedGivenTimingType              =  -200913;
DAQmxErrorRefTrigOutputTermNotSupportedGivenTimingType                       =  -200912;
DAQmxErrorStartTrigOutputTermNotSupportedGivenTimingType                     =  -200911;
DAQmxErrorSampClockOutputTermNotSupportedGivenTimingType                     =  -200910;
DAQmxError20MhzTimebaseNotSupportedGivenTimingType                           =  -200909;
DAQmxErrorSampClockSourceNotSupportedGivenTimingType                         =  -200908;
DAQmxErrorRefTrigTypeNotSupportedGivenTimingType                             =  -200907;
DAQmxErrorPauseTrigTypeNotSupportedGivenTimingType                           =  -200906;
DAQmxErrorHandshakeTrigTypeNotSupportedGivenTimingType                       =  -200905;
DAQmxErrorStartTrigTypeNotSupportedGivenTimingType                           =  -200904;
DAQmxErrorRefClkSrcNotSupported                                              =  -200903;
DAQmxErrorDataVoltageLowAndHighIncompatible                                  =  -200902;
DAQmxErrorInvalidCharInDigPatternString                                      =  -200901;
DAQmxErrorCantUsePort3AloneGivenSampTimingTypeOn653x                         =  -200900;
DAQmxErrorCantUsePort1AloneGivenSampTimingTypeOn653x                         =  -200899;
DAQmxErrorPartialUseOfPhysicalLinesWithinPortNotSupported653x                =  -200898;
DAQmxErrorPhysicalChanNotSupportedGivenSampTimingType653x                    =  -200897;
DAQmxErrorCanExportOnlyDigEdgeTrigs                                          =  -200896;
DAQmxErrorRefTrigDigPatternSizeDoesNotMatchSourceSize                        =  -200895;
DAQmxErrorStartTrigDigPatternSizeDoesNotMatchSourceSize                      =  -200894;
DAQmxErrorChangeDetectionRisingAndFallingEdgeChanDontMatch                   =  -200893;
DAQmxErrorPhysicalChansForChangeDetectionAndPatternMatch653x                 =  -200892;
DAQmxErrorCanExportOnlyOnboardSampClk                                        =  -200891;
DAQmxErrorInternalSampClkNotRisingEdge                                       =  -200890;
DAQmxErrorRefTrigDigPatternChanNotInTask                                     =  -200889;
DAQmxErrorRefTrigDigPatternChanNotTristated                                  =  -200888;
DAQmxErrorStartTrigDigPatternChanNotInTask                                   =  -200887;
DAQmxErrorStartTrigDigPatternChanNotTristated                                =  -200886;
DAQmxErrorPXIStarAndClock10Sync                                              =  -200885;
DAQmxErrorGlobalChanCannotBeSavedSoInteractiveEditsAllowed                   =  -200884;
DAQmxErrorTaskCannotBeSavedSoInteractiveEditsAllowed                         =  -200883;
DAQmxErrorInvalidGlobalChan                                                  =  -200882;
DAQmxErrorEveryNSampsEventAlreadyRegistered                                  =  -200881;
DAQmxErrorEveryNSampsEventIntervalZeroNotSupported                           =  -200880;
DAQmxErrorChanSizeTooBigForU16PortWrite                                      =  -200879;
DAQmxErrorChanSizeTooBigForU16PortRead                                       =  -200878;
DAQmxErrorBufferSizeNotMultipleOfEveryNSampsEventIntervalWhenDMA             =  -200877;
DAQmxErrorWriteWhenTaskNotRunningCOTicks                                     =  -200876;
DAQmxErrorWriteWhenTaskNotRunningCOFreq                                      =  -200875;
DAQmxErrorWriteWhenTaskNotRunningCOTime                                      =  -200874;
DAQmxErrorAOMinMaxNotSupportedDACRangeTooSmall                               =  -200873;
DAQmxErrorAOMinMaxNotSupportedGivenDACRange                                  =  -200872;
DAQmxErrorAOMinMaxNotSupportedGivenDACRangeAndOffsetVal                      =  -200871;
DAQmxErrorAOMinMaxNotSupportedDACOffsetValInappropriate                      =  -200870;
DAQmxErrorAOMinMaxNotSupportedGivenDACOffsetVal                              =  -200869;
DAQmxErrorAOMinMaxNotSupportedDACRefValTooSmall                              =  -200868;
DAQmxErrorAOMinMaxNotSupportedGivenDACRefVal                                 =  -200867;
DAQmxErrorAOMinMaxNotSupportedGivenDACRefAndOffsetVal                        =  -200866;
DAQmxErrorWhenAcqCompAndNumSampsPerChanExceedsOnBrdBufSize                   =  -200865;
DAQmxErrorWhenAcqCompAndNoRefTrig                                            =  -200864;
DAQmxErrorWaitForNextSampClkNotSupported                                     =  -200863;
DAQmxErrorDevInUnidentifiedPXIChassis                                        =  -200862;
DAQmxErrorMaxSoundPressureMicSensitivitRelatedAIPropertiesNotSupportedByDev  =  -200861;
DAQmxErrorMaxSoundPressureAndMicSensitivityNotSupportedByDev                 =  -200860;
DAQmxErrorAOBufferSizeZeroForSampClkTimingType                               =  -200859;
DAQmxErrorAOCallWriteBeforeStartForSampClkTimingType                         =  -200858;
DAQmxErrorInvalidCalLowPassCutoffFreq                                        =  -200857;
DAQmxErrorSimulationCannotBeDisabledForDevCreatedAsSimulatedDev              =  -200856;
DAQmxErrorCannotAddNewDevsAfterTaskConfiguration                             =  -200855;
DAQmxErrorDifftSyncPulseSrcAndSampClkTimebaseSrcDevMultiDevTask              =  -200854;
DAQmxErrorTermWithoutDevInMultiDevTask                                       =  -200853;
DAQmxErrorSyncNoDevSampClkTimebaseOrSyncPulseInPXISlot2                      =  -200852;
DAQmxErrorPhysicalChanNotOnThisConnector                                     =  -200851;
DAQmxErrorNumSampsToWaitNotGreaterThanZeroInScript                           =  -200850;
DAQmxErrorNumSampsToWaitNotMultipleOfAlignmentQuantumInScript                =  -200849;
DAQmxErrorEveryNSamplesEventNotSupportedForNonBufferedTasks                  =  -200848;
DAQmxErrorBufferedAndDataXferPIO                                             =  -200847;
DAQmxErrorCannotWriteWhenAutoStartFalseAndTaskNotRunning                     =  -200846;
DAQmxErrorNonBufferedAndDataXferInterrupts                                   =  -200845;
DAQmxErrorWriteFailedMultipleCtrsWithFREQOUT                                 =  -200844;
DAQmxErrorReadNotCompleteBefore3SampClkEdges                                 =  -200843;
DAQmxErrorCtrHWTimedSinglePointAndDataXferNotProgIO                          =  -200842;
DAQmxErrorPrescalerNot1ForInputTerminal                                      =  -200841;
DAQmxErrorPrescalerNot1ForTimebaseSrc                                        =  -200840;
DAQmxErrorSampClkTimingTypeWhenTristateIsFalse                               =  -200839;
DAQmxErrorOutputBufferSizeNotMultOfXferSize                                  =  -200838;
DAQmxErrorSampPerChanNotMultOfXferSize                                       =  -200837;
DAQmxErrorWriteToTEDSFailed                                                  =  -200836;
DAQmxErrorSCXIDevNotUsablePowerTurnedOff                                     =  -200835;
DAQmxErrorCannotReadWhenAutoStartFalseBufSizeZeroAndTaskNotRunning           =  -200834;
DAQmxErrorCannotReadWhenAutoStartFalseHWTimedSinglePtAndTaskNotRunning       =  -200833;
DAQmxErrorCannotReadWhenAutoStartFalseOnDemandAndTaskNotRunning              =  -200832;
DAQmxErrorSimultaneousAOWhenNotOnDemandTiming                                =  -200831;
DAQmxErrorMemMapAndSimultaneousAO                                            =  -200830;
DAQmxErrorWriteFailedMultipleCOOutputTypes                                   =  -200829;
DAQmxErrorWriteToTEDSNotSupportedOnRT                                        =  -200828;
DAQmxErrorVirtualTEDSDataFileError                                           =  -200827;
DAQmxErrorTEDSSensorDataError                                                =  -200826;
DAQmxErrorDataSizeMoreThanSizeOfEEPROMOnTEDS                                 =  -200825;
DAQmxErrorPROMOnTEDSContainsBasicTEDSData                                    =  -200824;
DAQmxErrorPROMOnTEDSAlreadyWritten                                           =  -200823;
DAQmxErrorTEDSDoesNotContainPROM                                             =  -200822;
DAQmxErrorHWTimedSinglePointNotSupportedAI                                   =  -200821;
DAQmxErrorHWTimedSinglePointOddNumChansInAITask                              =  -200820;
DAQmxErrorCantUseOnlyOnBoardMemWithProgrammedIO                              =  -200819;
DAQmxErrorSwitchDevShutDownDueToHighTemp                                     =  -200818;
DAQmxErrorExcitationNotSupportedWhenTermCfgDiff                              =  -200817;
DAQmxErrorTEDSMinElecValGEMaxElecVal                                         =  -200816;
DAQmxErrorTEDSMinPhysValGEMaxPhysVal                                         =  -200815;
DAQmxErrorCIOnboardClockNotSupportedAsInputTerm                              =  -200814;
DAQmxErrorInvalidSampModeForPositionMeas                                     =  -200813;
DAQmxErrorTrigWhenAOHWTimedSinglePtSampMode                                  =  -200812;
DAQmxErrorDAQmxCantUseStringDueToUnknownChar                                 =  -200811;
DAQmxErrorDAQmxCantRetrieveStringDueToUnknownChar                            =  -200810;
DAQmxErrorClearTEDSNotSupportedOnRT                                          =  -200809;
DAQmxErrorCfgTEDSNotSupportedOnRT                                            =  -200808;
DAQmxErrorProgFilterClkCfgdToDifferentMinPulseWidthBySameTask1PerDev         =  -200807;
DAQmxErrorProgFilterClkCfgdToDifferentMinPulseWidthByAnotherTask1PerDev      =  -200806;
DAQmxErrorNoLastExtCalDateTimeLastExtCalNotDAQmx                             =  -200804;
DAQmxErrorCannotWriteNotStartedAutoStartFalseNotOnDemandHWTimedSglPt         =  -200803;
DAQmxErrorCannotWriteNotStartedAutoStartFalseNotOnDemandBufSizeZero          =  -200802;
DAQmxErrorCOInvalidTimingSrcDueToSignal                                      =  -200801;
DAQmxErrorCIInvalidTimingSrcForSampClkDueToSampTimingType                    =  -200800;
DAQmxErrorCIInvalidTimingSrcForEventCntDueToSampMode                         =  -200799;
DAQmxErrorNoChangeDetectOnNonInputDigLineForDev                              =  -200798;
DAQmxErrorEmptyStringTermNameNotSupported                                    =  -200797;
DAQmxErrorMemMapEnabledForHWTimedNonBufferedAO                               =  -200796;
DAQmxErrorDevOnboardMemOverflowDuringHWTimedNonBufferedGen                   =  -200795;
DAQmxErrorCODAQmxWriteMultipleChans                                          =  -200794;
DAQmxErrorCantMaintainExistingValueAOSync                                    =  -200793;
DAQmxErrorMStudioMultiplePhysChansNotSupported                               =  -200792;
DAQmxErrorCantConfigureTEDSForChan                                           =  -200791;
DAQmxErrorWriteDataTypeTooSmall                                              =  -200790;
DAQmxErrorReadDataTypeTooSmall                                               =  -200789;
DAQmxErrorMeasuredBridgeOffsetTooHigh                                        =  -200788;
DAQmxErrorStartTrigConflictWithCOHWTimedSinglePt                             =  -200787;
DAQmxErrorSampClkRateExtSampClkTimebaseRateMismatch                          =  -200786;
DAQmxErrorInvalidTimingSrcDueToSampTimingType                                =  -200785;
DAQmxErrorVirtualTEDSFileNotFound                                            =  -200784;
DAQmxErrorMStudioNoForwardPolyScaleCoeffs                                    =  -200783;
DAQmxErrorMStudioNoReversePolyScaleCoeffs                                    =  -200782;
DAQmxErrorMStudioNoPolyScaleCoeffsUseCalc                                    =  -200781;
DAQmxErrorMStudioNoForwardPolyScaleCoeffsUseCalc                             =  -200780;
DAQmxErrorMStudioNoReversePolyScaleCoeffsUseCalc                             =  -200779;
DAQmxErrorCOSampModeSampTimingTypeSampClkConflict                            =  -200778;
DAQmxErrorDevCannotProduceMinPulseWidth                                      =  -200777;
DAQmxErrorCannotProduceMinPulseWidthGivenPropertyValues                      =  -200776;
DAQmxErrorTermCfgdToDifferentMinPulseWidthByAnotherTask                      =  -200775;
DAQmxErrorTermCfgdToDifferentMinPulseWidthByAnotherProperty                  =  -200774;
DAQmxErrorDigSyncNotAvailableOnTerm                                          =  -200773;
DAQmxErrorDigFilterNotAvailableOnTerm                                        =  -200772;
DAQmxErrorDigFilterEnabledMinPulseWidthNotCfg                                =  -200771;
DAQmxErrorDigFilterAndSyncBothEnabled                                        =  -200770;
DAQmxErrorHWTimedSinglePointAOAndDataXferNotProgIO                           =  -200769;
DAQmxErrorNonBufferedAOAndDataXferNotProgIO                                  =  -200768;
DAQmxErrorProgIODataXferForBufferedAO                                        =  -200767;
DAQmxErrorTEDSLegacyTemplateIDInvalidOrUnsupported                           =  -200766;
DAQmxErrorTEDSMappingMethodInvalidOrUnsupported                              =  -200765;
DAQmxErrorTEDSLinearMappingSlopeZero                                         =  -200764;
DAQmxErrorAIInputBufferSizeNotMultOfXferSize                                 =  -200763;
DAQmxErrorNoSyncPulseExtSampClkTimebase                                      =  -200762;
DAQmxErrorNoSyncPulseAnotherTaskRunning                                      =  -200761;
DAQmxErrorAOMinMaxNotInGainRange                                             =  -200760;
DAQmxErrorAOMinMaxNotInDACRange                                              =  -200759;
DAQmxErrorDevOnlySupportsSampClkTimingAO                                     =  -200758;
DAQmxErrorDevOnlySupportsSampClkTimingAI                                     =  -200757;
DAQmxErrorTEDSIncompatibleSensorAndMeasType                                  =  -200756;
DAQmxErrorTEDSMultipleCalTemplatesNotSupported                               =  -200755;
DAQmxErrorTEDSTemplateParametersNotSupported                                 =  -200754;
DAQmxErrorParsingTEDSData                                                    =  -200753;
DAQmxErrorMultipleActivePhysChansNotSupported                                =  -200752;
DAQmxErrorNoChansSpecdForChangeDetect                                        =  -200751;
DAQmxErrorInvalidCalVoltageForGivenGain                                      =  -200750;
DAQmxErrorInvalidCalGain                                                     =  -200749;
DAQmxErrorMultipleWritesBetweenSampClks                                      =  -200748;
DAQmxErrorInvalidAcqTypeForFREQOUT                                           =  -200747;
DAQmxErrorSuitableTimebaseNotFoundTimeCombo2                                 =  -200746;
DAQmxErrorSuitableTimebaseNotFoundFrequencyCombo2                            =  -200745;
DAQmxErrorRefClkRateRefClkSrcMismatch                                        =  -200744;
DAQmxErrorNoTEDSTerminalBlock                                                =  -200743;
DAQmxErrorCorruptedTEDSMemory                                                =  -200742;
DAQmxErrorTEDSNotSupported                                                   =  -200741;
DAQmxErrorTimingSrcTaskStartedBeforeTimedLoop                                =  -200740;
DAQmxErrorPropertyNotSupportedForTimingSrc                                   =  -200739;
DAQmxErrorTimingSrcDoesNotExist                                              =  -200738;
DAQmxErrorInputBufferSizeNotEqualSampsPerChanForFiniteSampMode               =  -200737;
DAQmxErrorFREQOUTCannotProduceDesiredFrequency2                              =  -200736;
DAQmxErrorExtRefClkRateNotSpecified                                          =  -200735;
DAQmxErrorDeviceDoesNotSupportDMADataXferForNonBufferedAcq                   =  -200734;
DAQmxErrorDigFilterMinPulseWidthSetWhenTristateIsFalse                       =  -200733;
DAQmxErrorDigFilterEnableSetWhenTristateIsFalse                              =  -200732;
DAQmxErrorNoHWTimingWithOnDemand                                             =  -200731;
DAQmxErrorCannotDetectChangesWhenTristateIsFalse                             =  -200730;
DAQmxErrorCannotHandshakeWhenTristateIsFalse                                 =  -200729;
DAQmxErrorLinesUsedForStaticInputNotForHandshakingControl                    =  -200728;
DAQmxErrorLinesUsedForHandshakingControlNotForStaticInput                    =  -200727;
DAQmxErrorLinesUsedForStaticInputNotForHandshakingInput                      =  -200726;
DAQmxErrorLinesUsedForHandshakingInputNotForStaticInput                      =  -200725;
DAQmxErrorDifferentDITristateValsForChansInTask                              =  -200724;
DAQmxErrorTimebaseCalFreqVarianceTooLarge                                    =  -200723;
DAQmxErrorTimebaseCalFailedToConverge                                        =  -200722;
DAQmxErrorInadequateResolutionForTimebaseCal                                 =  -200721;
DAQmxErrorInvalidAOGainCalConst                                              =  -200720;
DAQmxErrorInvalidAOOffsetCalConst                                            =  -200719;
DAQmxErrorInvalidAIGainCalConst                                              =  -200718;
DAQmxErrorInvalidAIOffsetCalConst                                            =  -200717;
DAQmxErrorDigOutputOverrun                                                   =  -200716;
DAQmxErrorDigInputOverrun                                                    =  -200715;
DAQmxErrorAcqStoppedDriverCantXferDataFastEnough                             =  -200714;
DAQmxErrorChansCantAppearInSameTask                                          =  -200713;
DAQmxErrorInputCfgFailedBecauseWatchdogExpired                               =  -200712;
DAQmxErrorAnalogTrigChanNotExternal                                          =  -200711;
DAQmxErrorTooManyChansForInternalAIInputSrc                                  =  -200710;
DAQmxErrorTEDSSensorNotDetected                                              =  -200709;
DAQmxErrorPrptyGetSpecdActiveItemFailedDueToDifftValues                      =  -200708;
DAQmxErrorRoutingDestTermPXIClk10InNotInSlot2                                =  -200706;
DAQmxErrorRoutingDestTermPXIStarXNotInSlot2                                  =  -200705;
DAQmxErrorRoutingSrcTermPXIStarXNotInSlot2                                   =  -200704;
DAQmxErrorRoutingSrcTermPXIStarInSlot16AndAbove                              =  -200703;
DAQmxErrorRoutingDestTermPXIStarInSlot16AndAbove                             =  -200702;
DAQmxErrorRoutingDestTermPXIStarInSlot2                                      =  -200701;
DAQmxErrorRoutingSrcTermPXIStarInSlot2                                       =  -200700;
DAQmxErrorRoutingDestTermPXIChassisNotIdentified                             =  -200699;
DAQmxErrorRoutingSrcTermPXIChassisNotIdentified                              =  -200698;
DAQmxErrorFailedToAcquireCalData                                             =  -200697;
DAQmxErrorBridgeOffsetNullingCalNotSupported                                 =  -200696;
DAQmxErrorAIMaxNotSpecified                                                  =  -200695;
DAQmxErrorAIMinNotSpecified                                                  =  -200694;
DAQmxErrorOddTotalBufferSizeToWrite                                          =  -200693;
DAQmxErrorOddTotalNumSampsToWrite                                            =  -200692;
DAQmxErrorBufferWithWaitMode                                                 =  -200691;
DAQmxErrorBufferWithHWTimedSinglePointSampMode                               =  -200690;
DAQmxErrorCOWritePulseLowTicksNotSupported                                   =  -200689;
DAQmxErrorCOWritePulseHighTicksNotSupported                                  =  -200688;
DAQmxErrorCOWritePulseLowTimeOutOfRange                                      =  -200687;
DAQmxErrorCOWritePulseHighTimeOutOfRange                                     =  -200686;
DAQmxErrorCOWriteFreqOutOfRange                                              =  -200685;
DAQmxErrorCOWriteDutyCycleOutOfRange                                         =  -200684;
DAQmxErrorInvalidInstallation                                                =  -200683;
DAQmxErrorRefTrigMasterSessionUnavailable                                    =  -200682;
DAQmxErrorRouteFailedBecauseWatchdogExpired                                  =  -200681;
DAQmxErrorDeviceShutDownDueToHighTemp                                        =  -200680;
DAQmxErrorNoMemMapWhenHWTimedSinglePoint                                     =  -200679;
DAQmxErrorWriteFailedBecauseWatchdogExpired                                  =  -200678;
DAQmxErrorDifftInternalAIInputSrcs                                           =  -200677;
DAQmxErrorDifftAIInputSrcInOneChanGroup                                      =  -200676;
DAQmxErrorInternalAIInputSrcInMultChanGroups                                 =  -200675;
DAQmxErrorSwitchOpFailedDueToPrevError                                       =  -200674;
DAQmxErrorWroteMultiSampsUsingSingleSampWrite                                =  -200673;
DAQmxErrorMismatchedInputArraySizes                                          =  -200672;
DAQmxErrorCantExceedRelayDriveLimit                                          =  -200671;
DAQmxErrorDACRngLowNotEqualToMinusRefVal                                     =  -200670;
DAQmxErrorCantAllowConnectDACToGnd                                           =  -200669;
DAQmxErrorWatchdogTimeoutOutOfRangeAndNotSpecialVal                          =  -200668;
DAQmxErrorNoWatchdogOutputOnPortReservedForInput                             =  -200667;
DAQmxErrorNoInputOnPortCfgdForWatchdogOutput                                 =  -200666;
DAQmxErrorWatchdogExpirationStateNotEqualForLinesInPort                      =  -200665;
DAQmxErrorCannotPerformOpWhenTaskNotReserved                                 =  -200664;
DAQmxErrorPowerupStateNotSupported                                           =  -200663;
DAQmxErrorWatchdogTimerNotSupported                                          =  -200662;
DAQmxErrorOpNotSupportedWhenRefClkSrcNone                                    =  -200661;
DAQmxErrorSampClkRateUnavailable                                             =  -200660;
DAQmxErrorPrptyGetSpecdSingleActiveChanFailedDueToDifftVals                  =  -200659;
DAQmxErrorPrptyGetImpliedActiveChanFailedDueToDifftVals                      =  -200658;
DAQmxErrorPrptyGetSpecdActiveChanFailedDueToDifftVals                        =  -200657;
DAQmxErrorNoRegenWhenUsingBrdMem                                             =  -200656;
DAQmxErrorNonbufferedReadMoreThanSampsPerChan                                =  -200655;
DAQmxErrorWatchdogExpirationTristateNotSpecdForEntirePort                    =  -200654;
DAQmxErrorPowerupTristateNotSpecdForEntirePort                               =  -200653;
DAQmxErrorPowerupStateNotSpecdForEntirePort                                  =  -200652;
DAQmxErrorCantSetWatchdogExpirationOnDigInChan                               =  -200651;
DAQmxErrorCantSetPowerupStateOnDigInChan                                     =  -200650;
DAQmxErrorPhysChanNotInTask                                                  =  -200649;
DAQmxErrorPhysChanDevNotInTask                                               =  -200648;
DAQmxErrorDigInputNotSupported                                               =  -200647;
DAQmxErrorDigFilterIntervalNotEqualForLines                                  =  -200646;
DAQmxErrorDigFilterIntervalAlreadyCfgd                                       =  -200645;
DAQmxErrorCantResetExpiredWatchdog                                           =  -200644;
DAQmxErrorActiveChanTooManyLinesSpecdWhenGettingPrpty                        =  -200643;
DAQmxErrorActiveChanNotSpecdWhenGetting1LinePrpty                            =  -200642;
DAQmxErrorDigPrptyCannotBeSetPerLine                                         =  -200641;
DAQmxErrorSendAdvCmpltAfterWaitForTrigInScanlist                             =  -200640;
DAQmxErrorDisconnectionRequiredInScanlist                                    =  -200639;
DAQmxErrorTwoWaitForTrigsAfterConnectionInScanlist                           =  -200638;
DAQmxErrorActionSeparatorRequiredAfterBreakingConnectionInScanlist           =  -200637;
DAQmxErrorConnectionInScanlistMustWaitForTrig                                =  -200636;
DAQmxErrorActionNotSupportedTaskNotWatchdog                                  =  -200635;
DAQmxErrorWfmNameSameAsScriptName                                            =  -200634;
DAQmxErrorScriptNameSameAsWfmName                                            =  -200633;
DAQmxErrorDSFStopClock                                                       =  -200632;
DAQmxErrorDSFReadyForStartClock                                              =  -200631;
DAQmxErrorWriteOffsetNotMultOfIncr                                           =  -200630;
DAQmxErrorDifferentPrptyValsNotSupportedOnDev                                =  -200629;
DAQmxErrorRefAndPauseTrigConfigured                                          =  -200628;
DAQmxErrorFailedToEnableHighSpeedInputClock                                  =  -200627;
DAQmxErrorEmptyPhysChanInPowerUpStatesArray                                  =  -200626;
DAQmxErrorActivePhysChanTooManyLinesSpecdWhenGettingPrpty                    =  -200625;
DAQmxErrorActivePhysChanNotSpecdWhenGetting1LinePrpty                        =  -200624;
DAQmxErrorPXIDevTempCausedShutDown                                           =  -200623;
DAQmxErrorInvalidNumSampsToWrite                                             =  -200622;
DAQmxErrorOutputFIFOUnderflow2                                               =  -200621;
DAQmxErrorRepeatedAIPhysicalChan                                             =  -200620;
DAQmxErrorMultScanOpsInOneChassis                                            =  -200619;
DAQmxErrorInvalidAIChanOrder                                                 =  -200618;
DAQmxErrorReversePowerProtectionActivated                                    =  -200617;
DAQmxErrorInvalidAsynOpHandle                                                =  -200616;
DAQmxErrorFailedToEnableHighSpeedOutput                                      =  -200615;
DAQmxErrorCannotReadPastEndOfRecord                                          =  -200614;
DAQmxErrorAcqStoppedToPreventInputBufferOverwriteOneDataXferMech             =  -200613;
DAQmxErrorZeroBasedChanIndexInvalid                                          =  -200612;
DAQmxErrorNoChansOfGivenTypeInTask                                           =  -200611;
DAQmxErrorSampClkSrcInvalidForOutputValidForInput                            =  -200610;
DAQmxErrorOutputBufSizeTooSmallToStartGen                                    =  -200609;
DAQmxErrorInputBufSizeTooSmallToStartAcq                                     =  -200608;
DAQmxErrorExportTwoSignalsOnSameTerminal                                     =  -200607;
DAQmxErrorChanIndexInvalid                                                   =  -200606;
DAQmxErrorRangeSyntaxNumberTooBig                                            =  -200605;
DAQmxErrorNULLPtr                                                            =  -200604;
DAQmxErrorScaledMinEqualMax                                                  =  -200603;
DAQmxErrorPreScaledMinEqualMax                                               =  -200602;
DAQmxErrorPropertyNotSupportedForScaleType                                   =  -200601;
DAQmxErrorChannelNameGenerationNumberTooBig                                  =  -200600;
DAQmxErrorRepeatedNumberInScaledValues                                       =  -200599;
DAQmxErrorRepeatedNumberInPreScaledValues                                    =  -200598;
DAQmxErrorLinesAlreadyReservedForOutput                                      =  -200597;
DAQmxErrorSwitchOperationChansSpanMultipleDevsInList                         =  -200596;
DAQmxErrorInvalidIDInListAtBeginningOfSwitchOperation                        =  -200595;
DAQmxErrorMStudioInvalidPolyDirection                                        =  -200594;
DAQmxErrorMStudioPropertyGetWhileTaskNotVerified                             =  -200593;
DAQmxErrorRangeWithTooManyObjects                                            =  -200592;
DAQmxErrorCppDotNetAPINegativeBufferSize                                     =  -200591;
DAQmxErrorCppCantRemoveInvalidEventHandler                                   =  -200590;
DAQmxErrorCppCantRemoveEventHandlerTwice                                     =  -200589;
DAQmxErrorCppCantRemoveOtherObjectsEventHandler                              =  -200588;
DAQmxErrorDigLinesReservedOrUnavailable                                      =  -200587;
DAQmxErrorDSFFailedToResetStream                                             =  -200586;
DAQmxErrorDSFReadyForOutputNotAsserted                                       =  -200585;
DAQmxErrorSampToWritePerChanNotMultipleOfIncr                                =  -200584;
DAQmxErrorAOPropertiesCauseVoltageBelowMin                                   =  -200583;
DAQmxErrorAOPropertiesCauseVoltageOverMax                                    =  -200582;
DAQmxErrorPropertyNotSupportedWhenRefClkSrcNone                              =  -200581;
DAQmxErrorAIMaxTooSmall                                                      =  -200580;
DAQmxErrorAIMaxTooLarge                                                      =  -200579;
DAQmxErrorAIMinTooSmall                                                      =  -200578;
DAQmxErrorAIMinTooLarge                                                      =  -200577;
DAQmxErrorBuiltInCJCSrcNotSupported                                          =  -200576;
DAQmxErrorTooManyPostTrigSampsPerChan                                        =  -200575;
DAQmxErrorTrigLineNotFoundSingleDevRoute                                     =  -200574;
DAQmxErrorDifferentInternalAIInputSources                                    =  -200573;
DAQmxErrorDifferentAIInputSrcInOneChanGroup                                  =  -200572;
DAQmxErrorInternalAIInputSrcInMultipleChanGroups                             =  -200571;
DAQmxErrorCAPIChanIndexInvalid                                               =  -200570;
DAQmxErrorCollectionDoesNotMatchChanType                                     =  -200569;
DAQmxErrorOutputCantStartChangedRegenerationMode                             =  -200568;
DAQmxErrorOutputCantStartChangedBufferSize                                   =  -200567;
DAQmxErrorChanSizeTooBigForU32PortWrite                                      =  -200566;
DAQmxErrorChanSizeTooBigForU8PortWrite                                       =  -200565;
DAQmxErrorChanSizeTooBigForU32PortRead                                       =  -200564;
DAQmxErrorChanSizeTooBigForU8PortRead                                        =  -200563;
DAQmxErrorInvalidDigDataWrite                                                =  -200562;
DAQmxErrorInvalidAODataWrite                                                 =  -200561;
DAQmxErrorWaitUntilDoneDoesNotIndicateDone                                   =  -200560;
DAQmxErrorMultiChanTypesInTask                                               =  -200559;
DAQmxErrorMultiDevsInTask                                                    =  -200558;
DAQmxErrorCannotSetPropertyWhenTaskRunning                                   =  -200557;
DAQmxErrorCannotGetPropertyWhenTaskNotCommittedOrRunning                     =  -200556;
DAQmxErrorLeadingUnderscoreInString                                          =  -200555;
DAQmxErrorTrailingSpaceInString                                              =  -200554;
DAQmxErrorLeadingSpaceInString                                               =  -200553;
DAQmxErrorInvalidCharInString                                                =  -200552;
DAQmxErrorDLLBecameUnlocked                                                  =  -200551;
DAQmxErrorDLLLock                                                            =  -200550;
DAQmxErrorSelfCalConstsInvalid                                               =  -200549;
DAQmxErrorInvalidTrigCouplingExceptForExtTrigChan                            =  -200548;
DAQmxErrorWriteFailsBufferSizeAutoConfigured                                 =  -200547;
DAQmxErrorExtCalAdjustExtRefVoltageFailed                                    =  -200546;
DAQmxErrorSelfCalFailedExtNoiseOrRefVoltageOutOfCal                          =  -200545;
DAQmxErrorExtCalTemperatureNotDAQmx                                          =  -200544;
DAQmxErrorExtCalDateTimeNotDAQmx                                             =  -200543;
DAQmxErrorSelfCalTemperatureNotDAQmx                                         =  -200542;
DAQmxErrorSelfCalDateTimeNotDAQmx                                            =  -200541;
DAQmxErrorDACRefValNotSet                                                    =  -200540;
DAQmxErrorAnalogMultiSampWriteNotSupported                                   =  -200539;
DAQmxErrorInvalidActionInControlTask                                         =  -200538;
DAQmxErrorPolyCoeffsInconsistent                                             =  -200537;
DAQmxErrorSensorValTooLow                                                    =  -200536;
DAQmxErrorSensorValTooHigh                                                   =  -200535;
DAQmxErrorWaveformNameTooLong                                                =  -200534;
DAQmxErrorIdentifierTooLongInScript                                          =  -200533;
DAQmxErrorUnexpectedIDFollowingSwitchChanName                                =  -200532;
DAQmxErrorRelayNameNotSpecifiedInList                                        =  -200531;
DAQmxErrorUnexpectedIDFollowingRelayNameInList                               =  -200530;
DAQmxErrorUnexpectedIDFollowingSwitchOpInList                                =  -200529;
DAQmxErrorInvalidLineGrouping                                                =  -200528;
DAQmxErrorCtrMinMax                                                          =  -200527;
DAQmxErrorWriteChanTypeMismatch                                              =  -200526;
DAQmxErrorReadChanTypeMismatch                                               =  -200525;
DAQmxErrorWriteNumChansMismatch                                              =  -200524;
DAQmxErrorOneChanReadForMultiChanTask                                        =  -200523;
DAQmxErrorCannotSelfCalDuringExtCal                                          =  -200522;
DAQmxErrorMeasCalAdjustOscillatorPhaseDAC                                    =  -200521;
DAQmxErrorInvalidCalConstCalADCAdjustment                                    =  -200520;
DAQmxErrorInvalidCalConstOscillatorFreqDACValue                              =  -200519;
DAQmxErrorInvalidCalConstOscillatorPhaseDACValue                             =  -200518;
DAQmxErrorInvalidCalConstOffsetDACValue                                      =  -200517;
DAQmxErrorInvalidCalConstGainDACValue                                        =  -200516;
DAQmxErrorInvalidNumCalADCReadsToAverage                                     =  -200515;
DAQmxErrorInvalidCfgCalAdjustDirectPathOutputImpedance                       =  -200514;
DAQmxErrorInvalidCfgCalAdjustMainPathOutputImpedance                         =  -200513;
DAQmxErrorInvalidCfgCalAdjustMainPathPostAmpGainAndOffset                    =  -200512;
DAQmxErrorInvalidCfgCalAdjustMainPathPreAmpGain                              =  -200511;
DAQmxErrorInvalidCfgCalAdjustMainPreAmpOffset                                =  -200510;
DAQmxErrorMeasCalAdjustCalADC                                                =  -200509;
DAQmxErrorMeasCalAdjustOscillatorFrequency                                   =  -200508;
DAQmxErrorMeasCalAdjustDirectPathOutputImpedance                             =  -200507;
DAQmxErrorMeasCalAdjustMainPathOutputImpedance                               =  -200506;
DAQmxErrorMeasCalAdjustDirectPathGain                                        =  -200505;
DAQmxErrorMeasCalAdjustMainPathPostAmpGainAndOffset                          =  -200504;
DAQmxErrorMeasCalAdjustMainPathPreAmpGain                                    =  -200503;
DAQmxErrorMeasCalAdjustMainPathPreAmpOffset                                  =  -200502;
DAQmxErrorInvalidDateTimeInEEPROM                                            =  -200501;
DAQmxErrorUnableToLocateErrorResources                                       =  -200500;
DAQmxErrorDotNetAPINotUnsigned32BitNumber                                    =  -200499;
DAQmxErrorInvalidRangeOfObjectsSyntaxInString                                =  -200498;
DAQmxErrorAttemptToEnableLineNotPreviouslyDisabled                           =  -200497;
DAQmxErrorInvalidCharInPattern                                               =  -200496;
DAQmxErrorIntermediateBufferFull                                             =  -200495;
DAQmxErrorLoadTaskFailsBecauseNoTimingOnDev                                  =  -200494;
DAQmxErrorCAPIReservedParamNotNULLNorEmpty                                   =  -200493;
DAQmxErrorCAPIReservedParamNotNULL                                           =  -200492;
DAQmxErrorCAPIReservedParamNotZero                                           =  -200491;
DAQmxErrorSampleValueOutOfRange                                              =  -200490;
DAQmxErrorChanAlreadyInTask                                                  =  -200489;
DAQmxErrorVirtualChanDoesNotExist                                            =  -200488;
DAQmxErrorChanNotInTask                                                      =  -200486;
DAQmxErrorTaskNotInDataNeighborhood                                          =  -200485;
DAQmxErrorCantSaveTaskWithoutReplace                                         =  -200484;
DAQmxErrorCantSaveChanWithoutReplace                                         =  -200483;
DAQmxErrorDevNotInTask                                                       =  -200482;
DAQmxErrorDevAlreadyInTask                                                   =  -200481;
DAQmxErrorCanNotPerformOpWhileTaskRunning                                    =  -200479;
DAQmxErrorCanNotPerformOpWhenNoChansInTask                                   =  -200478;
DAQmxErrorCanNotPerformOpWhenNoDevInTask                                     =  -200477;
DAQmxErrorCannotPerformOpWhenTaskNotRunning                                  =  -200475;
DAQmxErrorOperationTimedOut                                                  =  -200474;
DAQmxErrorCannotReadWhenAutoStartFalseAndTaskNotRunningOrCommitted           =  -200473;
DAQmxErrorCannotWriteWhenAutoStartFalseAndTaskNotRunningOrCommitted          =  -200472;
DAQmxErrorTaskVersionNew                                                     =  -200470;
DAQmxErrorChanVersionNew                                                     =  -200469;
DAQmxErrorEmptyString                                                        =  -200467;
DAQmxErrorChannelSizeTooBigForPortReadType                                   =  -200466;
DAQmxErrorChannelSizeTooBigForPortWriteType                                  =  -200465;
DAQmxErrorExpectedNumberOfChannelsVerificationFailed                         =  -200464;
DAQmxErrorNumLinesMismatchInReadOrWrite                                      =  -200463;
DAQmxErrorOutputBufferEmpty                                                  =  -200462;
DAQmxErrorInvalidChanName                                                    =  -200461;
DAQmxErrorReadNoInputChansInTask                                             =  -200460;
DAQmxErrorWriteNoOutputChansInTask                                           =  -200459;
DAQmxErrorPropertyNotSupportedNotInputTask                                   =  -200457;
DAQmxErrorPropertyNotSupportedNotOutputTask                                  =  -200456;
DAQmxErrorGetPropertyNotInputBufferedTask                                    =  -200455;
DAQmxErrorGetPropertyNotOutputBufferedTask                                   =  -200454;
DAQmxErrorInvalidTimeoutVal                                                  =  -200453;
DAQmxErrorAttributeNotSupportedInTaskContext                                 =  -200452;
DAQmxErrorAttributeNotQueryableUnlessTaskIsCommitted                         =  -200451;
DAQmxErrorAttributeNotSettableWhenTaskIsRunning                              =  -200450;
DAQmxErrorDACRngLowNotMinusRefValNorZero                                     =  -200449;
DAQmxErrorDACRngHighNotEqualRefVal                                           =  -200448;
DAQmxErrorUnitsNotFromCustomScale                                            =  -200447;
DAQmxErrorInvalidVoltageReadingDuringExtCal                                  =  -200446;
DAQmxErrorCalFunctionNotSupported                                            =  -200445;
DAQmxErrorInvalidPhysicalChanForCal                                          =  -200444;
DAQmxErrorExtCalNotComplete                                                  =  -200443;
DAQmxErrorCantSyncToExtStimulusFreqDuringCal                                 =  -200442;
DAQmxErrorUnableToDetectExtStimulusFreqDuringCal                             =  -200441;
DAQmxErrorInvalidCloseAction                                                 =  -200440;
DAQmxErrorExtCalFunctionOutsideExtCalSession                                 =  -200439;
DAQmxErrorInvalidCalArea                                                     =  -200438;
DAQmxErrorExtCalConstsInvalid                                                =  -200437;
DAQmxErrorStartTrigDelayWithExtSampClk                                       =  -200436;
DAQmxErrorDelayFromSampClkWithExtConv                                        =  -200435;
DAQmxErrorFewerThan2PreScaledVals                                            =  -200434;
DAQmxErrorFewerThan2ScaledValues                                             =  -200433;
DAQmxErrorPhysChanOutputType                                                 =  -200432;
DAQmxErrorPhysChanMeasType                                                   =  -200431;
DAQmxErrorInvalidPhysChanType                                                =  -200430;
DAQmxErrorLabVIEWEmptyTaskOrChans                                            =  -200429;
DAQmxErrorLabVIEWInvalidTaskOrChans                                          =  -200428;
DAQmxErrorInvalidRefClkRate                                                  =  -200427;
DAQmxErrorInvalidExtTrigImpedance                                            =  -200426;
DAQmxErrorHystTrigLevelAIMax                                                 =  -200425;
DAQmxErrorLineNumIncompatibleWithVideoSignalFormat                           =  -200424;
DAQmxErrorTrigWindowAIMinAIMaxCombo                                          =  -200423;
DAQmxErrorTrigAIMinAIMax                                                     =  -200422;
DAQmxErrorHystTrigLevelAIMin                                                 =  -200421;
DAQmxErrorInvalidSampRateConsiderRIS                                         =  -200420;
DAQmxErrorInvalidReadPosDuringRIS                                            =  -200419;
DAQmxErrorImmedTrigDuringRISMode                                             =  -200418;
DAQmxErrorTDCNotEnabledDuringRISMode                                         =  -200417;
DAQmxErrorMultiRecWithRIS                                                    =  -200416;
DAQmxErrorInvalidRefClkSrc                                                   =  -200415;
DAQmxErrorInvalidSampClkSrc                                                  =  -200414;
DAQmxErrorInsufficientOnBoardMemForNumRecsAndSamps                           =  -200413;
DAQmxErrorInvalidAIAttenuation                                               =  -200412;
DAQmxErrorACCouplingNotAllowedWith50OhmImpedance                             =  -200411;
DAQmxErrorInvalidRecordNum                                                   =  -200410;
DAQmxErrorZeroSlopeLinearScale                                               =  -200409;
DAQmxErrorZeroReversePolyScaleCoeffs                                         =  -200408;
DAQmxErrorZeroForwardPolyScaleCoeffs                                         =  -200407;
DAQmxErrorNoReversePolyScaleCoeffs                                           =  -200406;
DAQmxErrorNoForwardPolyScaleCoeffs                                           =  -200405;
DAQmxErrorNoPolyScaleCoeffs                                                  =  -200404;
DAQmxErrorReversePolyOrderLessThanNumPtsToCompute                            =  -200403;
DAQmxErrorReversePolyOrderNotPositive                                        =  -200402;
DAQmxErrorNumPtsToComputeNotPositive                                         =  -200401;
DAQmxErrorWaveformLengthNotMultipleOfIncr                                    =  -200400;
DAQmxErrorCAPINoExtendedErrorInfoAvailable                                   =  -200399;
DAQmxErrorCVIFunctionNotFoundInDAQmxDLL                                      =  -200398;
DAQmxErrorCVIFailedToLoadDAQmxDLL                                            =  -200397;
DAQmxErrorNoCommonTrigLineForImmedRoute                                      =  -200396;
DAQmxErrorNoCommonTrigLineForTaskRoute                                       =  -200395;
DAQmxErrorF64PrptyValNotUnsignedInt                                          =  -200394;
DAQmxErrorRegisterNotWritable                                                =  -200393;
DAQmxErrorInvalidOutputVoltageAtSampClkRate                                  =  -200392;
DAQmxErrorStrobePhaseShiftDCMBecameUnlocked                                  =  -200391;
DAQmxErrorDrivePhaseShiftDCMBecameUnlocked                                   =  -200390;
DAQmxErrorClkOutPhaseShiftDCMBecameUnlocked                                  =  -200389;
DAQmxErrorOutputBoardClkDCMBecameUnlocked                                    =  -200388;
DAQmxErrorInputBoardClkDCMBecameUnlocked                                     =  -200387;
DAQmxErrorInternalClkDCMBecameUnlocked                                       =  -200386;
DAQmxErrorDCMLock                                                            =  -200385;
DAQmxErrorDataLineReservedForDynamicOutput                                   =  -200384;
DAQmxErrorInvalidRefClkSrcGivenSampClkSrc                                    =  -200383;
DAQmxErrorNoPatternMatcherAvailable                                          =  -200382;
DAQmxErrorInvalidDelaySampRateBelowPhaseShiftDCMThresh                       =  -200381;
DAQmxErrorStrainGageCalibration                                              =  -200380;
DAQmxErrorInvalidExtClockFreqAndDivCombo                                     =  -200379;
DAQmxErrorCustomScaleDoesNotExist                                            =  -200378;
DAQmxErrorOnlyFrontEndChanOpsDuringScan                                      =  -200377;
DAQmxErrorInvalidOptionForDigitalPortChannel                                 =  -200376;
DAQmxErrorUnsupportedSignalTypeExportSignal                                  =  -200375;
DAQmxErrorInvalidSignalTypeExportSignal                                      =  -200374;
DAQmxErrorUnsupportedTrigTypeSendsSWTrig                                     =  -200373;
DAQmxErrorInvalidTrigTypeSendsSWTrig                                         =  -200372;
DAQmxErrorRepeatedPhysicalChan                                               =  -200371;
DAQmxErrorResourcesInUseForRouteInTask                                       =  -200370;
DAQmxErrorResourcesInUseForRoute                                             =  -200369;
DAQmxErrorRouteNotSupportedByHW                                              =  -200368;
DAQmxErrorResourcesInUseForExportSignalPolarity                              =  -200367;
DAQmxErrorResourcesInUseForInversionInTask                                   =  -200366;
DAQmxErrorResourcesInUseForInversion                                         =  -200365;
DAQmxErrorExportSignalPolarityNotSupportedByHW                               =  -200364;
DAQmxErrorInversionNotSupportedByHW                                          =  -200363;
DAQmxErrorOverloadedChansExistNotRead                                        =  -200362;
DAQmxErrorInputFIFOOverflow2                                                 =  -200361;
DAQmxErrorCJCChanNotSpecd                                                    =  -200360;
DAQmxErrorCtrExportSignalNotPossible                                         =  -200359;
DAQmxErrorRefTrigWhenContinuous                                              =  -200358;
DAQmxErrorIncompatibleSensorOutputAndDeviceInputRanges                       =  -200357;
DAQmxErrorCustomScaleNameUsed                                                =  -200356;
DAQmxErrorPropertyValNotSupportedByHW                                        =  -200355;
DAQmxErrorPropertyValNotValidTermName                                        =  -200354;
DAQmxErrorResourcesInUseForProperty                                          =  -200353;
DAQmxErrorCJCChanAlreadyUsed                                                 =  -200352;
DAQmxErrorForwardPolynomialCoefNotSpecd                                      =  -200351;
DAQmxErrorTableScaleNumPreScaledAndScaledValsNotEqual                        =  -200350;
DAQmxErrorTableScalePreScaledValsNotSpecd                                    =  -200349;
DAQmxErrorTableScaleScaledValsNotSpecd                                       =  -200348;
DAQmxErrorIntermediateBufferSizeNotMultipleOfIncr                            =  -200347;
DAQmxErrorEventPulseWidthOutOfRange                                          =  -200346;
DAQmxErrorEventDelayOutOfRange                                               =  -200345;
DAQmxErrorSampPerChanNotMultipleOfIncr                                       =  -200344;
DAQmxErrorCannotCalculateNumSampsTaskNotStarted                              =  -200343;
DAQmxErrorScriptNotInMem                                                     =  -200342;
DAQmxErrorOnboardMemTooSmall                                                 =  -200341;
DAQmxErrorReadAllAvailableDataWithoutBuffer                                  =  -200340;
DAQmxErrorPulseActiveAtStart                                                 =  -200339;
DAQmxErrorCalTempNotSupported                                                =  -200338;
DAQmxErrorDelayFromSampClkTooLong                                            =  -200337;
DAQmxErrorDelayFromSampClkTooShort                                           =  -200336;
DAQmxErrorAIConvRateTooHigh                                                  =  -200335;
DAQmxErrorDelayFromStartTrigTooLong                                          =  -200334;
DAQmxErrorDelayFromStartTrigTooShort                                         =  -200333;
DAQmxErrorSampRateTooHigh                                                    =  -200332;
DAQmxErrorSampRateTooLow                                                     =  -200331;
DAQmxErrorPFI0UsedForAnalogAndDigitalSrc                                     =  -200330;
DAQmxErrorPrimingCfgFIFO                                                     =  -200329;
DAQmxErrorCannotOpenTopologyCfgFile                                          =  -200328;
DAQmxErrorInvalidDTInsideWfmDataType                                         =  -200327;
DAQmxErrorRouteSrcAndDestSame                                                =  -200326;
DAQmxErrorReversePolynomialCoefNotSpecd                                      =  -200325;
DAQmxErrorDevAbsentOrUnavailable                                             =  -200324;
DAQmxErrorNoAdvTrigForMultiDevScan                                           =  -200323;
DAQmxErrorInterruptsInsufficientDataXferMech                                 =  -200322;
DAQmxErrorInvalidAttentuationBasedOnMinMax                                   =  -200321;
DAQmxErrorCabledModuleCannotRouteSSH                                         =  -200320;
DAQmxErrorCabledModuleCannotRouteConvClk                                     =  -200319;
DAQmxErrorInvalidExcitValForScaling                                          =  -200318;
DAQmxErrorNoDevMemForScript                                                  =  -200317;
DAQmxErrorScriptDataUnderflow                                                =  -200316;
DAQmxErrorNoDevMemForWaveform                                                =  -200315;
DAQmxErrorStreamDCMBecameUnlocked                                            =  -200314;
DAQmxErrorStreamDCMLock                                                      =  -200313;
DAQmxErrorWaveformNotInMem                                                   =  -200312;
DAQmxErrorWaveformWriteOutOfBounds                                           =  -200311;
DAQmxErrorWaveformPreviouslyAllocated                                        =  -200310;
DAQmxErrorSampClkTbMasterTbDivNotAppropriateForSampTbSrc                     =  -200309;
DAQmxErrorSampTbRateSampTbSrcMismatch                                        =  -200308;
DAQmxErrorMasterTbRateMasterTbSrcMismatch                                    =  -200307;
DAQmxErrorSampsPerChanTooBig                                                 =  -200306;
DAQmxErrorFinitePulseTrainNotPossible                                        =  -200305;
DAQmxErrorExtMasterTimebaseRateNotSpecified                                  =  -200304;
DAQmxErrorExtSampClkSrcNotSpecified                                          =  -200303;
DAQmxErrorInputSignalSlowerThanMeasTime                                      =  -200302;
DAQmxErrorCannotUpdatePulseGenProperty                                       =  -200301;
DAQmxErrorInvalidTimingType                                                  =  -200300;
DAQmxErrorPropertyUnavailWhenUsingOnboardMemory                              =  -200297;
DAQmxErrorCannotWriteAfterStartWithOnboardMemory                             =  -200295;
DAQmxErrorNotEnoughSampsWrittenForInitialXferRqstCondition                   =  -200294;
DAQmxErrorNoMoreSpace                                                        =  -200293;
DAQmxErrorSamplesCanNotYetBeWritten                                          =  -200292;
DAQmxErrorGenStoppedToPreventIntermediateBufferRegenOfOldSamples             =  -200291;
DAQmxErrorGenStoppedToPreventRegenOfOldSamples                               =  -200290;
DAQmxErrorSamplesNoLongerWriteable                                           =  -200289;
DAQmxErrorSamplesWillNeverBeGenerated                                        =  -200288;
DAQmxErrorNegativeWriteSampleNumber                                          =  -200287;
DAQmxErrorNoAcqStarted                                                       =  -200286;
DAQmxErrorSamplesNotYetAvailable                                             =  -200284;
DAQmxErrorAcqStoppedToPreventIntermediateBufferOverflow                      =  -200283;
DAQmxErrorNoRefTrigConfigured                                                =  -200282;
DAQmxErrorCannotReadRelativeToRefTrigUntilDone                               =  -200281;
DAQmxErrorSamplesNoLongerAvailable                                           =  -200279;
DAQmxErrorSamplesWillNeverBeAvailable                                        =  -200278;
DAQmxErrorNegativeReadSampleNumber                                           =  -200277;
DAQmxErrorExternalSampClkAndRefClkThruSameTerm                               =  -200276;
DAQmxErrorExtSampClkRateTooLowForClkIn                                       =  -200275;
DAQmxErrorExtSampClkRateTooHighForBackplane                                  =  -200274;
DAQmxErrorSampClkRateAndDivCombo                                             =  -200273;
DAQmxErrorSampClkRateTooLowForDivDown                                        =  -200272;
DAQmxErrorProductOfAOMinAndGainTooSmall                                      =  -200271;
DAQmxErrorInterpolationRateNotPossible                                       =  -200270;
DAQmxErrorOffsetTooLarge                                                     =  -200269;
DAQmxErrorOffsetTooSmall                                                     =  -200268;
DAQmxErrorProductOfAOMaxAndGainTooLarge                                      =  -200267;
DAQmxErrorMinAndMaxNotSymmetric                                              =  -200266;
DAQmxErrorInvalidAnalogTrigSrc                                               =  -200265;
DAQmxErrorTooManyChansForAnalogRefTrig                                       =  -200264;
DAQmxErrorTooManyChansForAnalogPauseTrig                                     =  -200263;
DAQmxErrorTrigWhenOnDemandSampTiming                                         =  -200262;
DAQmxErrorInconsistentAnalogTrigSettings                                     =  -200261;
DAQmxErrorMemMapDataXferModeSampTimingCombo                                  =  -200260;
DAQmxErrorInvalidJumperedAttr                                                =  -200259;
DAQmxErrorInvalidGainBasedOnMinMax                                           =  -200258;
DAQmxErrorInconsistentExcit                                                  =  -200257;
DAQmxErrorTopologyNotSupportedByCfgTermBlock                                 =  -200256;
DAQmxErrorBuiltInTempSensorNotSupported                                      =  -200255;
DAQmxErrorInvalidTerm                                                        =  -200254;
DAQmxErrorCannotTristateTerm                                                 =  -200253;
DAQmxErrorCannotTristateBusyTerm                                             =  -200252;
DAQmxErrorNoDMAChansAvailable                                                =  -200251;
DAQmxErrorInvalidWaveformLengthWithinLoopInScript                            =  -200250;
DAQmxErrorInvalidSubsetLengthWithinLoopInScript                              =  -200249;
DAQmxErrorMarkerPosInvalidForLoopInScript                                    =  -200248;
DAQmxErrorIntegerExpectedInScript                                            =  -200247;
DAQmxErrorPLLBecameUnlocked                                                  =  -200246;
DAQmxErrorPLLLock                                                            =  -200245;
DAQmxErrorDDCClkOutDCMBecameUnlocked                                         =  -200244;
DAQmxErrorDDCClkOutDCMLock                                                   =  -200243;
DAQmxErrorClkDoublerDCMBecameUnlocked                                        =  -200242;
DAQmxErrorClkDoublerDCMLock                                                  =  -200241;
DAQmxErrorSampClkDCMBecameUnlocked                                           =  -200240;
DAQmxErrorSampClkDCMLock                                                     =  -200239;
DAQmxErrorSampClkTimebaseDCMBecameUnlocked                                   =  -200238;
DAQmxErrorSampClkTimebaseDCMLock                                             =  -200237;
DAQmxErrorAttrCannotBeReset                                                  =  -200236;
DAQmxErrorExplanationNotFound                                                =  -200235;
DAQmxErrorWriteBufferTooSmall                                                =  -200234;
DAQmxErrorSpecifiedAttrNotValid                                              =  -200233;
DAQmxErrorAttrCannotBeRead                                                   =  -200232;
DAQmxErrorAttrCannotBeSet                                                    =  -200231;
DAQmxErrorNULLPtrForC_Api                                                    =  -200230;
DAQmxErrorReadBufferTooSmall                                                 =  -200229;
DAQmxErrorBufferTooSmallForString                                            =  -200228;
DAQmxErrorNoAvailTrigLinesOnDevice                                           =  -200227;
DAQmxErrorTrigBusLineNotAvail                                                =  -200226;
DAQmxErrorCouldNotReserveRequestedTrigLine                                   =  -200225;
DAQmxErrorTrigLineNotFound                                                   =  -200224;
DAQmxErrorSCXI1126ThreshHystCombination                                      =  -200223;
DAQmxErrorAcqStoppedToPreventInputBufferOverwrite                            =  -200222;
DAQmxErrorTimeoutExceeded                                                    =  -200221;
DAQmxErrorInvalidDeviceID                                                    =  -200220;
DAQmxErrorInvalidAOChanOrder                                                 =  -200219;
DAQmxErrorSampleTimingTypeAndDataXferMode                                    =  -200218;
DAQmxErrorBufferWithOnDemandSampTiming                                       =  -200217;
DAQmxErrorBufferAndDataXferMode                                              =  -200216;
DAQmxErrorMemMapAndBuffer                                                    =  -200215;
DAQmxErrorNoAnalogTrigHW                                                     =  -200214;
DAQmxErrorTooManyPretrigPlusMinPostTrigSamps                                 =  -200213;
DAQmxErrorInconsistentUnitsSpecified                                         =  -200212;
DAQmxErrorMultipleRelaysForSingleRelayOp                                     =  -200211;
DAQmxErrorMultipleDevIDsPerChassisSpecifiedInList                            =  -200210;
DAQmxErrorDuplicateDevIDInList                                               =  -200209;
DAQmxErrorInvalidRangeStatementCharInList                                    =  -200208;
DAQmxErrorInvalidDeviceIDInList                                              =  -200207;
DAQmxErrorTriggerPolarityConflict                                            =  -200206;
DAQmxErrorCannotScanWithCurrentTopology                                      =  -200205;
DAQmxErrorUnexpectedIdentifierInFullySpecifiedPathInList                     =  -200204;
DAQmxErrorSwitchCannotDriveMultipleTrigLines                                 =  -200203;
DAQmxErrorInvalidRelayName                                                   =  -200202;
DAQmxErrorSwitchScanlistTooBig                                               =  -200201;
DAQmxErrorSwitchChanInUse                                                    =  -200200;
DAQmxErrorSwitchNotResetBeforeScan                                           =  -200199;
DAQmxErrorInvalidTopology                                                    =  -200198;
DAQmxErrorAttrNotSupported                                                   =  -200197;
DAQmxErrorUnexpectedEndOfActionsInList                                       =  -200196;
DAQmxErrorPowerLimitExceeded                                                 =  -200195;
DAQmxErrorHWUnexpectedlyPoweredOffAndOn                                      =  -200194;
DAQmxErrorSwitchOperationNotSupported                                        =  -200193;
DAQmxErrorOnlyContinuousScanSupported                                        =  -200192;
DAQmxErrorSwitchDifferentTopologyWhenScanning                                =  -200191;
DAQmxErrorDisconnectPathNotSameAsExistingPath                                =  -200190;
DAQmxErrorConnectionNotPermittedOnChanReservedForRouting                     =  -200189;
DAQmxErrorCannotConnectSrcChans                                              =  -200188;
DAQmxErrorCannotConnectChannelToItself                                       =  -200187;
DAQmxErrorChannelNotReservedForRouting                                       =  -200186;
DAQmxErrorCannotConnectChansDirectly                                         =  -200185;
DAQmxErrorChansAlreadyConnected                                              =  -200184;
DAQmxErrorChanDuplicatedInPath                                               =  -200183;
DAQmxErrorNoPathToDisconnect                                                 =  -200182;
DAQmxErrorInvalidSwitchChan                                                  =  -200181;
DAQmxErrorNoPathAvailableBetween2SwitchChans                                 =  -200180;
DAQmxErrorExplicitConnectionExists                                           =  -200179;
DAQmxErrorSwitchDifferentSettlingTimeWhenScanning                            =  -200178;
DAQmxErrorOperationOnlyPermittedWhileScanning                                =  -200177;
DAQmxErrorOperationNotPermittedWhileScanning                                 =  -200176;
DAQmxErrorHardwareNotResponding                                              =  -200175;
DAQmxErrorInvalidSampAndMasterTimebaseRateCombo                              =  -200173;
DAQmxErrorNonZeroBufferSizeInProgIOXfer                                      =  -200172;
DAQmxErrorVirtualChanNameUsed                                                =  -200171;
DAQmxErrorPhysicalChanDoesNotExist                                           =  -200170;
DAQmxErrorMemMapOnlyForProgIOXfer                                            =  -200169;
DAQmxErrorTooManyChans                                                       =  -200168;
DAQmxErrorCannotHaveCJTempWithOtherChans                                     =  -200167;
DAQmxErrorOutputBufferUnderwrite                                             =  -200166;
DAQmxErrorSensorInvalidCompletionResistance                                  =  -200163;
DAQmxErrorVoltageExcitIncompatibleWith2WireCfg                               =  -200162;
DAQmxErrorIntExcitSrcNotAvailable                                            =  -200161;
DAQmxErrorCannotCreateChannelAfterTaskVerified                               =  -200160;
DAQmxErrorLinesReservedForSCXIControl                                        =  -200159;
DAQmxErrorCouldNotReserveLinesForSCXIControl                                 =  -200158;
DAQmxErrorCalibrationFailed                                                  =  -200157;
DAQmxErrorReferenceFrequencyInvalid                                          =  -200156;
DAQmxErrorReferenceResistanceInvalid                                         =  -200155;
DAQmxErrorReferenceCurrentInvalid                                            =  -200154;
DAQmxErrorReferenceVoltageInvalid                                            =  -200153;
DAQmxErrorEEPROMDataInvalid                                                  =  -200152;
DAQmxErrorCabledModuleNotCapableOfRoutingAI                                  =  -200151;
DAQmxErrorChannelNotAvailableInParallelMode                                  =  -200150;
DAQmxErrorExternalTimebaseRateNotKnownForDelay                               =  -200149;
DAQmxErrorFREQOUTCannotProduceDesiredFrequency                               =  -200148;
DAQmxErrorMultipleCounterInputTask                                           =  -200147;
DAQmxErrorCounterStartPauseTriggerConflict                                   =  -200146;
DAQmxErrorCounterInputPauseTriggerAndSampleClockInvalid                      =  -200145;
DAQmxErrorCounterOutputPauseTriggerInvalid                                   =  -200144;
DAQmxErrorCounterTimebaseRateNotSpecified                                    =  -200143;
DAQmxErrorCounterTimebaseRateNotFound                                        =  -200142;
DAQmxErrorCounterOverflow                                                    =  -200141;
DAQmxErrorCounterNoTimebaseEdgesBetweenGates                                 =  -200140;
DAQmxErrorCounterMaxMinRangeFreq                                             =  -200139;
DAQmxErrorCounterMaxMinRangeTime                                             =  -200138;
DAQmxErrorSuitableTimebaseNotFoundTimeCombo                                  =  -200137;
DAQmxErrorSuitableTimebaseNotFoundFrequencyCombo                             =  -200136;
DAQmxErrorInternalTimebaseSourceDivisorCombo                                 =  -200135;
DAQmxErrorInternalTimebaseSourceRateCombo                                    =  -200134;
DAQmxErrorInternalTimebaseRateDivisorSourceCombo                             =  -200133;
DAQmxErrorExternalTimebaseRateNotknownForRate                                =  -200132;
DAQmxErrorAnalogTrigChanNotFirstInScanList                                   =  -200131;
DAQmxErrorNoDivisorForExternalSignal                                         =  -200130;
DAQmxErrorAttributeInconsistentAcrossRepeatedPhysicalChannels                =  -200128;
DAQmxErrorCannotHandshakeWithPort0                                           =  -200127;
DAQmxErrorControlLineConflictOnPortC                                         =  -200126;
DAQmxErrorLines4To7ConfiguredForOutput                                       =  -200125;
DAQmxErrorLines4To7ConfiguredForInput                                        =  -200124;
DAQmxErrorLines0To3ConfiguredForOutput                                       =  -200123;
DAQmxErrorLines0To3ConfiguredForInput                                        =  -200122;
DAQmxErrorPortConfiguredForOutput                                            =  -200121;
DAQmxErrorPortConfiguredForInput                                             =  -200120;
DAQmxErrorPortConfiguredForStaticDigitalOps                                  =  -200119;
DAQmxErrorPortReservedForHandshaking                                         =  -200118;
DAQmxErrorPortDoesNotSupportHandshakingDataIO                                =  -200117;
DAQmxErrorCannotTristate8255OutputLines                                      =  -200116;
DAQmxErrorTemperatureOutOfRangeForCalibration                                =  -200113;
DAQmxErrorCalibrationHandleInvalid                                           =  -200112;
DAQmxErrorPasswordRequired                                                   =  -200111;
DAQmxErrorIncorrectPassword                                                  =  -200110;
DAQmxErrorPasswordTooLong                                                    =  -200109;
DAQmxErrorCalibrationSessionAlreadyOpen                                      =  -200108;
DAQmxErrorSCXIModuleIncorrect                                                =  -200107;
DAQmxErrorAttributeInconsistentAcrossChannelsOnDevice                        =  -200106;
DAQmxErrorSCXI1122ResistanceChanNotSupportedForCfg                           =  -200105;
DAQmxErrorBracketPairingMismatchInList                                       =  -200104;
DAQmxErrorInconsistentNumSamplesToWrite                                      =  -200103;
DAQmxErrorIncorrectDigitalPattern                                            =  -200102;
DAQmxErrorIncorrectNumChannelsToWrite                                        =  -200101;
DAQmxErrorIncorrectReadFunction                                              =  -200100;
DAQmxErrorPhysicalChannelNotSpecified                                        =  -200099;
DAQmxErrorMoreThanOneTerminal                                                =  -200098;
DAQmxErrorMoreThanOneActiveChannelSpecified                                  =  -200097;
DAQmxErrorInvalidNumberSamplesToRead                                         =  -200096;
DAQmxErrorAnalogWaveformExpected                                             =  -200095;
DAQmxErrorDigitalWaveformExpected                                            =  -200094;
DAQmxErrorActiveChannelNotSpecified                                          =  -200093;
DAQmxErrorFunctionNotSupportedForDeviceTasks                                 =  -200092;
DAQmxErrorFunctionNotInLibrary                                               =  -200091;
DAQmxErrorLibraryNotPresent                                                  =  -200090;
DAQmxErrorDuplicateTask                                                      =  -200089;
DAQmxErrorInvalidTask                                                        =  -200088;
DAQmxErrorInvalidChannel                                                     =  -200087;
DAQmxErrorInvalidSyntaxForPhysicalChannelRange                               =  -200086;
DAQmxErrorMinNotLessThanMax                                                  =  -200082;
DAQmxErrorSampleRateNumChansConvertPeriodCombo                               =  -200081;
DAQmxErrorAODuringCounter1DMAConflict                                        =  -200079;
DAQmxErrorAIDuringCounter0DMAConflict                                        =  -200078;
DAQmxErrorInvalidAttributeValue                                              =  -200077;
DAQmxErrorSuppliedCurrentDataOutsideSpecifiedRange                           =  -200076;
DAQmxErrorSuppliedVoltageDataOutsideSpecifiedRange                           =  -200075;
DAQmxErrorCannotStoreCalConst                                                =  -200074;
DAQmxErrorSCXIModuleNotFound                                                 =  -200073;
DAQmxErrorDuplicatePhysicalChansNotSupported                                 =  -200072;
DAQmxErrorTooManyPhysicalChansInList                                         =  -200071;
DAQmxErrorInvalidAdvanceEventTriggerType                                     =  -200070;
DAQmxErrorDeviceIsNotAValidSwitch                                            =  -200069;
DAQmxErrorDeviceDoesNotSupportScanning                                       =  -200068;
DAQmxErrorScanListCannotBeTimed                                              =  -200067;
DAQmxErrorConnectOperatorInvalidAtPointInList                                =  -200066;
DAQmxErrorUnexpectedSwitchActionInList                                       =  -200065;
DAQmxErrorUnexpectedSeparatorInList                                          =  -200064;
DAQmxErrorExpectedTerminatorInList                                           =  -200063;
DAQmxErrorExpectedConnectOperatorInList                                      =  -200062;
DAQmxErrorExpectedSeparatorInList                                            =  -200061;
DAQmxErrorFullySpecifiedPathInListContainsRange                              =  -200060;
DAQmxErrorConnectionSeparatorAtEndOfList                                     =  -200059;
DAQmxErrorIdentifierInListTooLong                                            =  -200058;
DAQmxErrorDuplicateDeviceIDInListWhenSettling                                =  -200057;
DAQmxErrorChannelNameNotSpecifiedInList                                      =  -200056;
DAQmxErrorDeviceIDNotSpecifiedInList                                         =  -200055;
DAQmxErrorSemicolonDoesNotFollowRangeInList                                  =  -200054;
DAQmxErrorSwitchActionInListSpansMultipleDevices                             =  -200053;
DAQmxErrorRangeWithoutAConnectActionInList                                   =  -200052;
DAQmxErrorInvalidIdentifierFollowingSeparatorInList                          =  -200051;
DAQmxErrorInvalidChannelNameInList                                           =  -200050;
DAQmxErrorInvalidNumberInRepeatStatementInList                               =  -200049;
DAQmxErrorInvalidTriggerLineInList                                           =  -200048;
DAQmxErrorInvalidIdentifierInListFollowingDeviceID                           =  -200047;
DAQmxErrorInvalidIdentifierInListAtEndOfSwitchAction                         =  -200046;
DAQmxErrorDeviceRemoved                                                      =  -200045;
DAQmxErrorRoutingPathNotAvailable                                            =  -200044;
DAQmxErrorRoutingHardwareBusy                                                =  -200043;
DAQmxErrorRequestedSignalInversionForRoutingNotPossible                      =  -200042;
DAQmxErrorInvalidRoutingDestinationTerminalName                              =  -200041;
DAQmxErrorInvalidRoutingSourceTerminalName                                   =  -200040;
DAQmxErrorRoutingNotSupportedForDevice                                       =  -200039;
DAQmxErrorWaitIsLastInstructionOfLoopInScript                                =  -200038;
DAQmxErrorClearIsLastInstructionOfLoopInScript                               =  -200037;
DAQmxErrorInvalidLoopIterationsInScript                                      =  -200036;
DAQmxErrorRepeatLoopNestingTooDeepInScript                                   =  -200035;
DAQmxErrorMarkerPositionOutsideSubsetInScript                                =  -200034;
DAQmxErrorSubsetStartOffsetNotAlignedInScript                                =  -200033;
DAQmxErrorInvalidSubsetLengthInScript                                        =  -200032;
DAQmxErrorMarkerPositionNotAlignedInScript                                   =  -200031;
DAQmxErrorSubsetOutsideWaveformInScript                                      =  -200030;
DAQmxErrorMarkerOutsideWaveformInScript                                      =  -200029;
DAQmxErrorWaveformInScriptNotInMem                                           =  -200028;
DAQmxErrorKeywordExpectedInScript                                            =  -200027;
DAQmxErrorBufferNameExpectedInScript                                         =  -200026;
DAQmxErrorProcedureNameExpectedInScript                                      =  -200025;
DAQmxErrorScriptHasInvalidIdentifier                                         =  -200024;
DAQmxErrorScriptHasInvalidCharacter                                          =  -200023;
DAQmxErrorResourceAlreadyReserved                                            =  -200022;
DAQmxErrorSelfTestFailed                                                     =  -200020;
DAQmxErrorADCOverrun                                                         =  -200019;
DAQmxErrorDACUnderflow                                                       =  -200018;
DAQmxErrorInputFIFOUnderflow                                                 =  -200017;
DAQmxErrorOutputFIFOUnderflow                                                =  -200016;
DAQmxErrorSCXISerialCommunication                                            =  -200015;
DAQmxErrorDigitalTerminalSpecifiedMoreThanOnce                               =  -200014;
DAQmxErrorDigitalOutputNotSupported                                          =  -200012;
DAQmxErrorInconsistentChannelDirections                                      =  -200011;
DAQmxErrorInputFIFOOverflow                                                  =  -200010;
DAQmxErrorTimeStampOverwritten                                               =  -200009;
DAQmxErrorStopTriggerHasNotOccurred                                          =  -200008;
DAQmxErrorRecordNotAvailable                                                 =  -200007;
DAQmxErrorRecordOverwritten                                                  =  -200006;
DAQmxErrorDataNotAvailable                                                   =  -200005;
DAQmxErrorDataOverwrittenInDeviceMemory                                      =  -200004;
DAQmxErrorDuplicatedChannel                                                  =  -200003;
DAQmxWarningTimestampCounterRolledOver                                       =   200003;
DAQmxWarningInputTerminationOverloaded                                       =   200004;
DAQmxWarningADCOverloaded                                                    =   200005;
DAQmxWarningPLLUnlocked                                                      =   200007;
DAQmxWarningCounter0DMADuringAIConflict                                      =   200008;
DAQmxWarningCounter1DMADuringAOConflict                                      =   200009;
DAQmxWarningStoppedBeforeDone                                                =   200010;
DAQmxWarningRateViolatesSettlingTime                                         =   200011;
DAQmxWarningRateViolatesMaxADCRate                                           =   200012;
DAQmxWarningUserDefInfoStringTooLong                                         =   200013;
DAQmxWarningTooManyInterruptsPerSecond                                       =   200014;
DAQmxWarningPotentialGlitchDuringWrite                                       =   200015;
DAQmxWarningDevNotSelfCalibratedWithDAQmx                                    =   200016;
DAQmxWarningAISampRateTooLow                                                 =   200017;
DAQmxWarningAIConvRateTooLow                                                 =   200018;
DAQmxWarningReadOffsetCoercion                                               =   200019;
DAQmxWarningPretrigCoercion                                                  =   200020;
DAQmxWarningSampValCoercedToMax                                              =   200021;
DAQmxWarningSampValCoercedToMin                                              =   200022;
DAQmxWarningPropertyVersionNew                                               =   200024;
DAQmxWarningUserDefinedInfoTooLong                                           =   200025;
DAQmxWarningCAPIStringTruncatedToFitBuffer                                   =   200026;
DAQmxWarningSampClkRateTooLow                                                =   200027;
DAQmxWarningPossiblyInvalidCTRSampsInFiniteDMAAcq                            =   200028;
DAQmxWarningRISAcqCompletedSomeBinsNotFilled                                 =   200029;
DAQmxWarningPXIDevTempExceedsMaxOpTemp                                       =   200030;
DAQmxWarningOutputGainTooLowForRFFreq                                        =   200031;
DAQmxWarningOutputGainTooHighForRFFreq                                       =   200032;
DAQmxWarningMultipleWritesBetweenSampClks                                    =   200033;
DAQmxWarningDeviceMayShutDownDueToHighTemp                                   =   200034;
DAQmxWarningRateViolatesMinADCRate                                           =   200035;
DAQmxWarningSampClkRateAboveDevSpecs                                         =   200036;
DAQmxWarningCOPrevDAQmxWriteSettingsOverwrittenForHWTimedSinglePoint         =   200037;
DAQmxWarningLowpassFilterSettlingTimeExceedsUserTimeBetween2ADCConversions   =   200038;
DAQmxWarningLowpassFilterSettlingTimeExceedsDriverTimeBetween2ADCConversions =   200039;
DAQmxWarningSampClkRateViolatesSettlingTimeForGen                            =   200040;
DAQmxWarningInvalidCalConstValueForAI                                        =   200041;
DAQmxWarningInvalidCalConstValueForAO                                        =   200042;
DAQmxWarningChanCalExpired                                                   =   200043;
DAQmxWarningUnrecognizedEnumValueEncounteredInStorage                        =   200044;
DAQmxWarningTableCRCNotCorrect                                               =   200045;
DAQmxWarningExternalCRCNotCorrect                                            =   200046;
DAQmxWarningSelfCalCRCNotCorrect                                             =   200047;
DAQmxWarningDeviceSpecExceeded                                               =   200048;
DAQmxWarningOnlyGainCalibrated                                               =   200049;
DAQmxWarningReversePowerProtectionActivated                                  =   200050;
DAQmxWarningOverVoltageProtectionActivated                                   =   200051;
DAQmxWarningBufferSizeNotMultipleOfSectorSize                                =   200052;
DAQmxWarningSampleRateMayCauseAcqToFail                                      =   200053;
DAQmxWarningUserAreaCRCNotCorrect                                            =   200054;
DAQmxWarningPowerUpInfoCRCNotCorrect                                         =   200055;
DAQmxWarningConnectionCountHasExceededRecommendedLimit                       =   200056;
DAQmxWarningNetworkDeviceAlreadyAdded                                        =   200057;
DAQmxWarningAccessoryConnectionCountIsInvalid                                =   200058;
DAQmxWarningUnableToDisconnectPorts                                          =   200059;
DAQmxWarningReadRepeatedData                                                 =   200060;
DAQmxWarningPXI5600_NotConfigured                                            =   200061;
DAQmxWarningPXI5661_IncorrectlyConfigured                                    =   200062;
DAQmxWarningPXIe5601_NotConfigured                                           =   200063;
DAQmxWarningPXIe5663_IncorrectlyConfigured                                   =   200064;
DAQmxWarningPXIe5663E_IncorrectlyConfigured                                  =   200065;
DAQmxWarningPXIe5603_NotConfigured                                           =   200066;
DAQmxWarningPXIe5665_5603_IncorrectlyConfigured                              =   200067;
DAQmxWarningPXIe5667_5603_IncorrectlyConfigured                              =   200068;
DAQmxWarningPXIe5605_NotConfigured                                           =   200069;
DAQmxWarningPXIe5665_5605_IncorrectlyConfigured                              =   200070;
DAQmxWarningPXIe5667_5605_IncorrectlyConfigured                              =   200071;
DAQmxWarningPXIe5606_NotConfigured                                           =   200072;
DAQmxWarningPXIe5665_5606_IncorrectlyConfigured                              =   200073;
DAQmxWarningPXI5610_NotConfigured                                            =   200074;
DAQmxWarningPXI5610_IncorrectlyConfigured                                    =   200075;
DAQmxWarningPXIe5611_NotConfigured                                           =   200076;
DAQmxWarningPXIe5611_IncorrectlyConfigured                                   =   200077;
DAQmxWarningUSBHotfixForDAQ                                                  =   200078;
DAQmxWarningNoChangeSupersededByIdleBehavior                                 =   200079;
DAQmxWarningReadNotCompleteBeforeSampClk                                     =   209800;
DAQmxWarningWriteNotCompleteBeforeSampClk                                    =   209801;
DAQmxWarningWaitForNextSampClkDetectedMissedSampClk                          =   209802;
DAQmxWarningOutputDataTransferConditionNotSupported                          =   209803;
DAQmxWarningTimestampMayBeInvalid                                            =   209804;
DAQmxWarningFirstSampleTimestampInaccurate                                   =   209805;
DAQmxErrorInterfaceObsoleted_Routing                                         =   -89169;
DAQmxErrorRoCoServiceNotAvailable_Routing                                    =   -89168;
DAQmxErrorRoutingDestTermPXIDStarXNotInSystemTimingSlot_Routing              =   -89167;
DAQmxErrorRoutingSrcTermPXIDStarXNotInSystemTimingSlot_Routing               =   -89166;
DAQmxErrorRoutingSrcTermPXIDStarInNonDStarTriggerSlot_Routing                =   -89165;
DAQmxErrorRoutingDestTermPXIDStarInNonDStarTriggerSlot_Routing               =   -89164;
DAQmxErrorRoutingDestTermPXIClk10InNotInStarTriggerSlot_Routing              =   -89162;
DAQmxErrorRoutingDestTermPXIClk10InNotInSystemTimingSlot_Routing             =   -89161;
DAQmxErrorRoutingDestTermPXIStarXNotInStarTriggerSlot_Routing                =   -89160;
DAQmxErrorRoutingDestTermPXIStarXNotInSystemTimingSlot_Routing               =   -89159;
DAQmxErrorRoutingSrcTermPXIStarXNotInStarTriggerSlot_Routing                 =   -89158;
DAQmxErrorRoutingSrcTermPXIStarXNotInSystemTimingSlot_Routing                =   -89157;
DAQmxErrorRoutingSrcTermPXIStarInNonStarTriggerSlot_Routing                  =   -89156;
DAQmxErrorRoutingDestTermPXIStarInNonStarTriggerSlot_Routing                 =   -89155;
DAQmxErrorRoutingDestTermPXIStarInStarTriggerSlot_Routing                    =   -89154;
DAQmxErrorRoutingDestTermPXIStarInSystemTimingSlot_Routing                   =   -89153;
DAQmxErrorRoutingSrcTermPXIStarInStarTriggerSlot_Routing                     =   -89152;
DAQmxErrorRoutingSrcTermPXIStarInSystemTimingSlot_Routing                    =   -89151;
DAQmxErrorInvalidSignalModifier_Routing                                      =   -89150;
DAQmxErrorRoutingDestTermPXIClk10InNotInSlot2_Routing                        =   -89149;
DAQmxErrorRoutingDestTermPXIStarXNotInSlot2_Routing                          =   -89148;
DAQmxErrorRoutingSrcTermPXIStarXNotInSlot2_Routing                           =   -89147;
DAQmxErrorRoutingSrcTermPXIStarInSlot16AndAbove_Routing                      =   -89146;
DAQmxErrorRoutingDestTermPXIStarInSlot16AndAbove_Routing                     =   -89145;
DAQmxErrorRoutingDestTermPXIStarInSlot2_Routing                              =   -89144;
DAQmxErrorRoutingSrcTermPXIStarInSlot2_Routing                               =   -89143;
DAQmxErrorRoutingDestTermPXIChassisNotIdentified_Routing                     =   -89142;
DAQmxErrorRoutingSrcTermPXIChassisNotIdentified_Routing                      =   -89141;
DAQmxErrorTrigLineNotFoundSingleDevRoute_Routing                             =   -89140;
DAQmxErrorNoCommonTrigLineForRoute_Routing                                   =   -89139;
DAQmxErrorResourcesInUseForRouteInTask_Routing                               =   -89138;
DAQmxErrorResourcesInUseForRoute_Routing                                     =   -89137;
DAQmxErrorRouteNotSupportedByHW_Routing                                      =   -89136;
DAQmxErrorResourcesInUseForInversionInTask_Routing                           =   -89135;
DAQmxErrorResourcesInUseForInversion_Routing                                 =   -89134;
DAQmxErrorInversionNotSupportedByHW_Routing                                  =   -89133;
DAQmxErrorResourcesInUseForProperty_Routing                                  =   -89132;
DAQmxErrorRouteSrcAndDestSame_Routing                                        =   -89131;
DAQmxErrorDevAbsentOrUnavailable_Routing                                     =   -89130;
DAQmxErrorInvalidTerm_Routing                                                =   -89129;
DAQmxErrorCannotTristateTerm_Routing                                         =   -89128;
DAQmxErrorCannotTristateBusyTerm_Routing                                     =   -89127;
DAQmxErrorCouldNotReserveRequestedTrigLine_Routing                           =   -89126;
DAQmxErrorTrigLineNotFound_Routing                                           =   -89125;
DAQmxErrorRoutingPathNotAvailable_Routing                                    =   -89124;
DAQmxErrorRoutingHardwareBusy_Routing                                        =   -89123;
DAQmxErrorRequestedSignalInversionForRoutingNotPossible_Routing              =   -89122;
DAQmxErrorInvalidRoutingDestinationTerminalName_Routing                      =   -89121;
DAQmxErrorInvalidRoutingSourceTerminalName_Routing                           =   -89120;
DAQmxErrorServiceLocatorNotAvailable_Routing                                 =   -88907;
DAQmxErrorCouldNotConnectToServer_Routing                                    =   -88900;
DAQmxErrorDeviceNameContainsSpacesOrPunctuation_Routing                      =   -88720;
DAQmxErrorDeviceNameContainsNonprintableCharacters_Routing                   =   -88719;
DAQmxErrorDeviceNameIsEmpty_Routing                                          =   -88718;
DAQmxErrorDeviceNameNotFound_Routing                                         =   -88717;
DAQmxErrorLocalRemoteDriverVersionMismatch_Routing                           =   -88716;
DAQmxErrorDuplicateDeviceName_Routing                                        =   -88715;
DAQmxErrorRuntimeAborting_Routing                                            =   -88710;
DAQmxErrorRuntimeAborted_Routing                                             =   -88709;
DAQmxErrorResourceNotInPool_Routing                                          =   -88708;
DAQmxErrorDriverDeviceGUIDNotFound_Routing                                   =   -88705;
DAQmxErrorPALUSBTransactionError                                             =   -50808;
DAQmxErrorPALIsocStreamBufferError                                           =   -50807;
DAQmxErrorPALInvalidAddressComponent                                         =   -50806;
DAQmxErrorPALSharingViolation                                                =   -50805;
DAQmxErrorPALInvalidDeviceState                                              =   -50804;
DAQmxErrorPALConnectionReset                                                 =   -50803;
DAQmxErrorPALConnectionAborted                                               =   -50802;
DAQmxErrorPALConnectionRefused                                               =   -50801;
DAQmxErrorPALBusResetOccurred                                                =   -50800;
DAQmxErrorPALWaitInterrupted                                                 =   -50700;
DAQmxErrorPALMessageUnderflow                                                =   -50651;
DAQmxErrorPALMessageOverflow                                                 =   -50650;
DAQmxErrorPALThreadAlreadyDead                                               =   -50604;
DAQmxErrorPALThreadStackSizeNotSupported                                     =   -50603;
DAQmxErrorPALThreadControllerIsNotThreadCreator                              =   -50602;
DAQmxErrorPALThreadHasNoThreadObject                                         =   -50601;
DAQmxErrorPALThreadCouldNotRun                                               =   -50600;
DAQmxErrorPALSyncAbandoned                                                   =   -50551;
DAQmxErrorPALSyncTimedOut                                                    =   -50550;
DAQmxErrorPALReceiverSocketInvalid                                           =   -50503;
DAQmxErrorPALSocketListenerInvalid                                           =   -50502;
DAQmxErrorPALSocketListenerAlreadyRegistered                                 =   -50501;
DAQmxErrorPALDispatcherAlreadyExported                                       =   -50500;
DAQmxErrorPALDMALinkEventMissed                                              =   -50450;
DAQmxErrorPALBusError                                                        =   -50413;
DAQmxErrorPALRetryLimitExceeded                                              =   -50412;
DAQmxErrorPALTransferOverread                                                =   -50411;
DAQmxErrorPALTransferOverwritten                                             =   -50410;
DAQmxErrorPALPhysicalBufferFull                                              =   -50409;
DAQmxErrorPALPhysicalBufferEmpty                                             =   -50408;
DAQmxErrorPALLogicalBufferFull                                               =   -50407;
DAQmxErrorPALLogicalBufferEmpty                                              =   -50406;
DAQmxErrorPALTransferAborted                                                 =   -50405;
DAQmxErrorPALTransferStopped                                                 =   -50404;
DAQmxErrorPALTransferInProgress                                              =   -50403;
DAQmxErrorPALTransferNotInProgress                                           =   -50402;
DAQmxErrorPALCommunicationsFault                                             =   -50401;
DAQmxErrorPALTransferTimedOut                                                =   -50400;
DAQmxErrorPALMemoryHeapNotEmpty                                              =   -50355;
DAQmxErrorPALMemoryBlockCheckFailed                                          =   -50354;
DAQmxErrorPALMemoryPageLockFailed                                            =   -50353;
DAQmxErrorPALMemoryFull                                                      =   -50352;
DAQmxErrorPALMemoryAlignmentFault                                            =   -50351;
DAQmxErrorPALMemoryConfigurationFault                                        =   -50350;
DAQmxErrorPALDeviceInitializationFault                                       =   -50303;
DAQmxErrorPALDeviceNotSupported                                              =   -50302;
DAQmxErrorPALDeviceUnknown                                                   =   -50301;
DAQmxErrorPALDeviceNotFound                                                  =   -50300;
DAQmxErrorPALFeatureDisabled                                                 =   -50265;
DAQmxErrorPALComponentBusy                                                   =   -50264;
DAQmxErrorPALComponentAlreadyInstalled                                       =   -50263;
DAQmxErrorPALComponentNotUnloadable                                          =   -50262;
DAQmxErrorPALComponentNeverLoaded                                            =   -50261;
DAQmxErrorPALComponentAlreadyLoaded                                          =   -50260;
DAQmxErrorPALComponentCircularDependency                                     =   -50259;
DAQmxErrorPALComponentInitializationFault                                    =   -50258;
DAQmxErrorPALComponentImageCorrupt                                           =   -50257;
DAQmxErrorPALFeatureNotSupported                                             =   -50256;
DAQmxErrorPALFunctionNotFound                                                =   -50255;
DAQmxErrorPALFunctionObsolete                                                =   -50254;
DAQmxErrorPALComponentTooNew                                                 =   -50253;
DAQmxErrorPALComponentTooOld                                                 =   -50252;
DAQmxErrorPALComponentNotFound                                               =   -50251;
DAQmxErrorPALVersionMismatch                                                 =   -50250;
DAQmxErrorPALFileFault                                                       =   -50209;
DAQmxErrorPALFileWriteFault                                                  =   -50208;
DAQmxErrorPALFileReadFault                                                   =   -50207;
DAQmxErrorPALFileSeekFault                                                   =   -50206;
DAQmxErrorPALFileCloseFault                                                  =   -50205;
DAQmxErrorPALFileOpenFault                                                   =   -50204;
DAQmxErrorPALDiskFull                                                        =   -50203;
DAQmxErrorPALOSFault                                                         =   -50202;
DAQmxErrorPALOSInitializationFault                                           =   -50201;
DAQmxErrorPALOSUnsupported                                                   =   -50200;
DAQmxErrorPALCalculationOverflow                                             =   -50175;
DAQmxErrorPALHardwareFault                                                   =   -50152;
DAQmxErrorPALFirmwareFault                                                   =   -50151;
DAQmxErrorPALSoftwareFault                                                   =   -50150;
DAQmxErrorPALMessageQueueFull                                                =   -50108;
DAQmxErrorPALResourceAmbiguous                                               =   -50107;
DAQmxErrorPALResourceBusy                                                    =   -50106;
DAQmxErrorPALResourceInitialized                                             =   -50105;
DAQmxErrorPALResourceNotInitialized                                          =   -50104;
DAQmxErrorPALResourceReserved                                                =   -50103;
DAQmxErrorPALResourceNotReserved                                             =   -50102;
DAQmxErrorPALResourceNotAvailable                                            =   -50101;
DAQmxErrorPALResourceOwnedBySystem                                           =   -50100;
DAQmxErrorPALBadToken                                                        =   -50020;
DAQmxErrorPALBadThreadMultitask                                              =   -50019;
DAQmxErrorPALBadLibrarySpecifier                                             =   -50018;
DAQmxErrorPALBadAddressSpace                                                 =   -50017;
DAQmxErrorPALBadWindowType                                                   =   -50016;
DAQmxErrorPALBadAddressClass                                                 =   -50015;
DAQmxErrorPALBadWriteCount                                                   =   -50014;
DAQmxErrorPALBadWriteOffset                                                  =   -50013;
DAQmxErrorPALBadWriteMode                                                    =   -50012;
DAQmxErrorPALBadReadCount                                                    =   -50011;
DAQmxErrorPALBadReadOffset                                                   =   -50010;
DAQmxErrorPALBadReadMode                                                     =   -50009;
DAQmxErrorPALBadCount                                                        =   -50008;
DAQmxErrorPALBadOffset                                                       =   -50007;
DAQmxErrorPALBadMode                                                         =   -50006;
DAQmxErrorPALBadDataSize                                                     =   -50005;
DAQmxErrorPALBadPointer                                                      =   -50004;
DAQmxErrorPALBadSelector                                                     =   -50003;
DAQmxErrorPALBadDevice                                                       =   -50002;
DAQmxErrorPALIrrelevantAttribute                                             =   -50001;
DAQmxErrorPALValueConflict                                                   =   -50000;
DAQmxWarningPALValueConflict                                                 =    50000;
DAQmxWarningPALIrrelevantAttribute                                           =    50001;
DAQmxWarningPALBadDevice                                                     =    50002;
DAQmxWarningPALBadSelector                                                   =    50003;
DAQmxWarningPALBadPointer                                                    =    50004;
DAQmxWarningPALBadDataSize                                                   =    50005;
DAQmxWarningPALBadMode                                                       =    50006;
DAQmxWarningPALBadOffset                                                     =    50007;
DAQmxWarningPALBadCount                                                      =    50008;
DAQmxWarningPALBadReadMode                                                   =    50009;
DAQmxWarningPALBadReadOffset                                                 =    50010;
DAQmxWarningPALBadReadCount                                                  =    50011;
DAQmxWarningPALBadWriteMode                                                  =    50012;
DAQmxWarningPALBadWriteOffset                                                =    50013;
DAQmxWarningPALBadWriteCount                                                 =    50014;
DAQmxWarningPALBadAddressClass                                               =    50015;
DAQmxWarningPALBadWindowType                                                 =    50016;
DAQmxWarningPALBadThreadMultitask                                            =    50019;
DAQmxWarningPALResourceOwnedBySystem                                         =    50100;
DAQmxWarningPALResourceNotAvailable                                          =    50101;
DAQmxWarningPALResourceNotReserved                                           =    50102;
DAQmxWarningPALResourceReserved                                              =    50103;
DAQmxWarningPALResourceNotInitialized                                        =    50104;
DAQmxWarningPALResourceInitialized                                           =    50105;
DAQmxWarningPALResourceBusy                                                  =    50106;
DAQmxWarningPALResourceAmbiguous                                             =    50107;
DAQmxWarningPALFirmwareFault                                                 =    50151;
DAQmxWarningPALHardwareFault                                                 =    50152;
DAQmxWarningPALOSUnsupported                                                 =    50200;
DAQmxWarningPALOSFault                                                       =    50202;
DAQmxWarningPALFunctionObsolete                                              =    50254;
DAQmxWarningPALFunctionNotFound                                              =    50255;
DAQmxWarningPALFeatureNotSupported                                           =    50256;
DAQmxWarningPALComponentInitializationFault                                  =    50258;
DAQmxWarningPALComponentAlreadyLoaded                                        =    50260;
DAQmxWarningPALComponentNotUnloadable                                        =    50262;
DAQmxWarningPALMemoryAlignmentFault                                          =    50351;
DAQmxWarningPALMemoryHeapNotEmpty                                            =    50355;
DAQmxWarningPALTransferNotInProgress                                         =    50402;
DAQmxWarningPALTransferInProgress                                            =    50403;
DAQmxWarningPALTransferStopped                                               =    50404;
DAQmxWarningPALTransferAborted                                               =    50405;
DAQmxWarningPALLogicalBufferEmpty                                            =    50406;
DAQmxWarningPALLogicalBufferFull                                             =    50407;
DAQmxWarningPALPhysicalBufferEmpty                                           =    50408;
DAQmxWarningPALPhysicalBufferFull                                            =    50409;
DAQmxWarningPALTransferOverwritten                                           =    50410;
DAQmxWarningPALTransferOverread                                              =    50411;
DAQmxWarningPALDispatcherAlreadyExported                                     =    50500;
DAQmxWarningPALSyncAbandoned                                                 =    50551;

