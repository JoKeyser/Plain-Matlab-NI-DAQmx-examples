% Purpose: Define the same constants as listed in NIDAQmx.h, the include
%          file for your installed NI-DAQmx library.
%          To translate the definitions in Matlab, the file NIDAQmx.h was
%          stripped of the C function definitions and the syntax replaced
%          with Matlab's; please note the following conventions and
%          tradeoffs due to the translation to Matlab:
%          1) C's shift operator a << b was replaced by multiplication
%             with the appropriate power of 2: a * 2^b.
%          2) Several C constant names are longer than the 65 characters
%             allowed by Matlab. To avoid automatic cut-offs, the first
%             two underscores (i.e., "_") of each name were replaced with
%             dots ("."), to split each name into one nested struct with
%             shorter field names. This has the benefit that your workspace
%             only contains the struct "DAQmx" after loading, and you can
%             tab through the field names.
%             However, there is one gotcha: Replacing _ with . creates a
%             handful of illegal struct field names starting with a number;
%             to avoid this, the previous field name was added as prefix.
%             This sounds more complicated than it is, here's an example:
%             "DAQmx_Val_5Wire" was renamed to "DAQmx.Val.Val5Wire".
%          3) Similar to 2), the Error and Warning codes are renamed to
%             include two dots, i.e. are inside the nested struct.
%             For example, the original variable name
%             "DAQmxError20MhzTimebaseNotSupportedGivenTimingType"
%             was renamed to
%             "DAQmx.Error.Error20MhzTimebaseNotSupportedGivenTimingType".
%
% NOTE: Compare this to the original header file NIDAQmx.h by National
%       Instruments on your own system after installing NIDAQmx, especially
%       in case you have a newer version.
%       The original file NIDAQmx.h is NOT part of this project, as it is
%       licensed "all-rights-reserved" by National Instruments.
%
% SPDX-FileCopyrightText: 2005 Jens Roesner, 2023 Johannes Keyser
%
% SPDX-License-Identifier: GPL-3.0-or-later

% *************************************************************************
% *** NI-DAQmx Attributes *************************************************
% *************************************************************************

%********** Buffer Attributes **********
DAQmx.Buf.Input_BufSize       =                                  0x186C;  % Specifies the number of samples the input buffer can hold for each channel in the task. Zero indicates to allocate no buffer. Use a buffer size of 0 to perform a hardware-timed operation without using a buffer. Setting this property overrides the automatic input buffer allocation that NI-DAQmx performs.
DAQmx.Buf.Input_OnbrdBufSize  =                                  0x230A;  % Indicates in samples per channel the size of the onboard input buffer of the device.
DAQmx.Buf.Output_BufSize      =                                  0x186D;  % Specifies the number of samples the output buffer can hold for each channel in the task. Zero indicates to allocate no buffer. Use a buffer size of 0 to perform a hardware-timed operation without using a buffer. Setting this property overrides the automatic output buffer allocation that NI-DAQmx performs.
DAQmx.Buf.Output_OnbrdBufSize =                                  0x230B;  % Specifies in samples per channel the size of the onboard output buffer of the device.

%********** Calibration Info Attributes **********
DAQmx.SelfCal.Supported                      =                   0x1860;  % Indicates whether the device supports self-calibration.
DAQmx.SelfCal.LastTemp                       =                   0x1864;  % Indicates in degrees Celsius the temperature of the device at the time of the last self-calibration. Compare this temperature to the current onboard temperature to determine if you should perform another calibration.
DAQmx.ExtCal.RecommendedInterval             =                   0x1868;  % Indicates in months the National Instruments recommended interval between each external calibration of the device.
DAQmx.ExtCal.LastTemp                        =                   0x1867;  % Indicates in degrees Celsius the temperature of the device at the time of the last external calibration. Compare this temperature to the current onboard temperature to determine if you should perform another calibration.
DAQmx.Cal.UserDefinedInfo                    =                   0x1861;  % Specifies a string that contains arbitrary, user-defined information. This number of characters in this string can be no more than Max Size.
DAQmx.Cal.UserDefinedInfo_MaxSize            =                   0x191C;  % Indicates the maximum length in characters of Information.
DAQmx.Cal.DevTemp                            =                   0x223B;  % Indicates in degrees Celsius the current temperature of the device.
DAQmx.Cal.AccConnectionCount                 =                   0x2FEB;  % Specifies the number of times a particular connection that results in tangible wear and tear of onboard components has been made on the accessory. This connection count is useful for tracking accessory life and usage.
DAQmx.Cal.RecommendedAccConnectionCountLimit =                   0x2FEC;  % Indicates the recommended connection count limit for an accessory. If the accessory connection count exceeds this limit, the accessory could require maintenance.

%********** Channel Attributes **********
DAQmx.AI.Max                                          =          0x17DD;  % Specifies the maximum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced maximum value that the device can measure with the current settings.
DAQmx.AI.Min                                          =          0x17DE;  % Specifies the minimum value you expect to measure. This value is in the units you specify with a units property.  When you query this property, it returns the coerced minimum value that the device can measure with the current settings.
DAQmx.AI.CustomScaleName                              =          0x17E0;  % Specifies the name of a custom scale for the channel.
DAQmx.AI.MeasType                                     =          0x0695;  % Indicates the measurement to take with the analog input channel and in some cases, such as for temperature measurements, the sensor to use.
DAQmx.AI.Voltage_Units                                =          0x1094;  % Specifies the units to use to return voltage measurements from the channel.
DAQmx.AI.Voltage_dBRef                                =          0x29B0;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes.
DAQmx.AI.Voltage_ACRMS_Units                          =          0x17E2;  % Specifies the units to use to return voltage RMS measurements from the channel.
DAQmx.AI.Temp_Units                                   =          0x1033;  % Specifies the units to use to return temperature measurements from the channel.
DAQmx.AI.Thrmcpl_Type                                 =          0x1050;  % Specifies the type of thermocouple connected to the channel. Thermocouple types differ in composition and measurement range.
DAQmx.AI.Thrmcpl_ScaleType                            =          0x29D0;  % Specifies the method or equation form that the thermocouple scale uses.
DAQmx.AI.Thrmcpl_CJCSrc                               =          0x1035;  % Indicates the source of cold-junction compensation.
DAQmx.AI.Thrmcpl_CJCVal                               =          0x1036;  % Specifies the temperature of the cold junction if CJC Source is DAQmx.Val.ConstVal. Specify this value in the units of the measurement.
DAQmx.AI.Thrmcpl_CJCChan                              =          0x1034;  % Indicates the channel that acquires the temperature of the cold junction if CJC Source is DAQmx.Val.Chan. If the channel is a temperature channel, NI-DAQmx acquires the temperature in the correct units. Other channel types, such as a resistance channel with a custom sensor, must use a custom scale to scale values to degrees Celsius.
DAQmx.AI.RTD_Type                                     =          0x1032;  % Specifies the type of RTD connected to the channel.
DAQmx.AI.RTD_R0                                       =          0x1030;  % Specifies in ohms the sensor resistance at 0 deg C. The Callendar-Van Dusen equation requires this value. Refer to the sensor documentation to determine this value.
DAQmx.AI.RTD_A                                        =          0x1010;  % Specifies the 'A' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
DAQmx.AI.RTD_B                                        =          0x1011;  % Specifies the 'B' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
DAQmx.AI.RTD_C                                        =          0x1013;  % Specifies the 'C' constant of the Callendar-Van Dusen equation. NI-DAQmx requires this value when you use a custom RTD.
DAQmx.AI.Thrmstr_A                                    =          0x18C9;  % Specifies the 'A' constant of the Steinhart-Hart thermistor equation.
DAQmx.AI.Thrmstr_B                                    =          0x18CB;  % Specifies the 'B' constant of the Steinhart-Hart thermistor equation.
DAQmx.AI.Thrmstr_C                                    =          0x18CA;  % Specifies the 'C' constant of the Steinhart-Hart thermistor equation.
DAQmx.AI.Thrmstr_R1                                   =          0x1061;  % Specifies in ohms the value of the reference resistor for the thermistor if you use voltage excitation. NI-DAQmx ignores this value for current excitation.
DAQmx.AI.ForceReadFromChan                            =          0x18F8;  % Specifies whether to read from the channel if it is a cold-junction compensation channel. By default, an NI-DAQmx Read function does not return data from cold-junction compensation channels.  Setting this property to TRUE forces read operations to return the cold-junction compensation channel data with the other channels in the task.
DAQmx.AI.Current_Units                                =          0x0701;  % Specifies the units to use to return current measurements from the channel.
DAQmx.AI.Current_ACRMS_Units                          =          0x17E3;  % Specifies the units to use to return current RMS measurements from the channel.
DAQmx.AI.Strain_Units                                 =          0x0981;  % Specifies the units to use to return strain measurements from the channel.
DAQmx.AI.StrainGage_ForceReadFromChan                 =          0x2FFA;  % Specifies whether the data is returned by an NI-DAQmx Read function when set on a raw strain channel that is part of a rosette configuration.
DAQmx.AI.StrainGage_GageFactor                        =          0x0994;  % Specifies the sensitivity of the strain gage.  Gage factor relates the change in electrical resistance to the change in strain. Refer to the sensor documentation for this value.
DAQmx.AI.StrainGage_PoissonRatio                      =          0x0998;  % Specifies the ratio of lateral strain to axial strain in the material you are measuring.
DAQmx.AI.StrainGage_Cfg                               =          0x0982;  % Specifies the bridge configuration of the strain gages.
DAQmx.AI.RosetteStrainGage_RosetteType                =          0x2FFE;  % Indicates the type of rosette gage.
DAQmx.AI.RosetteStrainGage_Orientation                =          0x2FFC;  % Specifies gage orientation in degrees with respect to the X axis.
DAQmx.AI.RosetteStrainGage_StrainChans                =          0x2FFB;  % Indicates the raw strain channels that comprise the strain rosette.
DAQmx.AI.RosetteStrainGage_RosetteMeasType            =          0x2FFD;  % Specifies the type of rosette measurement.
DAQmx.AI.Resistance_Units                             =          0x0955;  % Specifies the units to use to return resistance measurements.
DAQmx.AI.Freq_Units                                   =          0x0806;  % Specifies the units to use to return frequency measurements from the channel.
DAQmx.AI.Freq_ThreshVoltage                           =          0x0815;  % Specifies the voltage level at which to recognize waveform repetitions. You should select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx.AI.Freq_Hyst                                    =          0x0814;  % Specifies in volts a window below Threshold Level. The input voltage must pass below Threshold Level minus this value before NI-DAQmx recognizes a waveform repetition at Threshold Level. Hysteresis can improve the measurement accuracy when the signal contains noise or jitter.
DAQmx.AI.LVDT_Units                                   =          0x0910;  % Specifies the units to use to return linear position measurements from the channel.
DAQmx.AI.LVDT_Sensitivity                             =          0x0939;  % Specifies the sensitivity of the LVDT. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx.AI.LVDT_SensitivityUnits                        =          0x219A;  % Specifies the units of Sensitivity.
DAQmx.AI.RVDT_Units                                   =          0x0877;  % Specifies the units to use to return angular position measurements from the channel.
DAQmx.AI.RVDT_Sensitivity                             =          0x0903;  % Specifies the sensitivity of the RVDT. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx.AI.RVDT_SensitivityUnits                        =          0x219B;  % Specifies the units of Sensitivity.
DAQmx.AI.EddyCurrentProxProbe_Units                   =          0x2AC0;  % Specifies the units to use to return proximity measurements from the channel.
DAQmx.AI.EddyCurrentProxProbe_Sensitivity             =          0x2ABE;  % Specifies the sensitivity of the eddy current proximity probe . This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx.AI.EddyCurrentProxProbe_SensitivityUnits        =          0x2ABF;  % Specifies the units of Sensitivity.
DAQmx.AI.SoundPressure_MaxSoundPressureLvl            =          0x223A;  % Specifies the maximum instantaneous sound pressure level you expect to measure. This value is in decibels, referenced to 20 micropascals. NI-DAQmx uses the maximum sound pressure level to calculate values in pascals for Maximum Value and Minimum Value for the channel.
DAQmx.AI.SoundPressure_Units                          =          0x1528;  % Specifies the units to use to return sound pressure measurements from the channel.
DAQmx.AI.SoundPressure_dBRef                          =          0x29B1;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes. NI-DAQmx also uses the decibel reference level when converting Maximum Sound Pressure Level to a voltage level.
DAQmx.AI.Microphone_Sensitivity                       =          0x1536;  % Specifies the sensitivity of the microphone. This value is in mV/Pa. Refer to the sensor documentation to determine this value.
DAQmx.AI.Accel_Units                                  =          0x0673;  % Specifies the units to use to return acceleration measurements from the channel.
DAQmx.AI.Accel_dBRef                                  =          0x29B2;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes.
DAQmx.AI.Accel_4WireDCVoltage_Sensitivity             =          0x3115;  % Specifies the sensitivity of the 4 wire DC voltage acceleration sensor connected to the channel. This value is the units you specify with AI.Accel.4WireDCVoltage.SensitivityUnits. Refer to the sensor documentation to determine this value.
DAQmx.AI.Accel_4WireDCVoltage_SensitivityUnits        =          0x3116;  % Specifies the units of AI.Accel.4WireDCVoltage.Sensitivity.
DAQmx.AI.Accel_Sensitivity                            =          0x0692;  % Specifies the sensitivity of the accelerometer. This value is in the units you specify with Sensitivity Units. Refer to the sensor documentation to determine this value.
DAQmx.AI.Accel_SensitivityUnits                       =          0x219C;  % Specifies the units of Sensitivity.
DAQmx.AI.Accel_Charge_Sensitivity                     =          0x3113;  % Specifies the sensitivity of the charge acceleration sensor connected to the channel. This value is the units you specify with AI.Accel.Charge.SensitivityUnits. Refer to the sensor documentation to determine this value.
DAQmx.AI.Accel_Charge_SensitivityUnits                =          0x3114;  % Specifies the units of AI.Accel.Charge.Sensitivity.
DAQmx.AI.Velocity_Units                               =          0x2FF4;  % Specifies in which unit to return velocity measurements from the channel.
DAQmx.AI.Velocity_IEPESensor_dBRef                    =          0x2FF5;  % Specifies the decibel reference level in the units of the channel. When you read samples as a waveform, the decibel reference level is included in the waveform attributes.
DAQmx.AI.Velocity_IEPESensor_Sensitivity              =          0x2FF6;  % Specifies the sensitivity of the IEPE velocity sensor connected to the channel. Specify this value in the unit indicated by Sensitivity Units.
DAQmx.AI.Velocity_IEPESensor_SensitivityUnits         =          0x2FF7;  % Specifies the units for Sensitivity.
DAQmx.AI.Force_Units                                  =          0x2F75;  % Specifies in which unit to return force or load measurements from the channel.
DAQmx.AI.Force_IEPESensor_Sensitivity                 =          0x2F81;  % Specifies the sensitivity of the IEPE force sensor connected to the channel. Specify this value in the unit indicated by Sensitivity Units.
DAQmx.AI.Force_IEPESensor_SensitivityUnits            =          0x2F82;  % Specifies the units for Sensitivity.
DAQmx.AI.Pressure_Units                               =          0x2F76;  % Specifies  in which unit to return pressure measurements from the channel.
DAQmx.AI.Torque_Units                                 =          0x2F77;  % Specifies in which unit to return torque measurements from the channel.
DAQmx.AI.Bridge_Units                                 =          0x2F92;  % Specifies in which unit to return voltage ratios from the channel.
DAQmx.AI.Bridge_ElectricalUnits                       =          0x2F87;  % Specifies from which electrical unit to scale data. Select  the same unit that the sensor data sheet or calibration certificate uses for electrical values.
DAQmx.AI.Bridge_PhysicalUnits                         =          0x2F88;  % Specifies to which physical unit to scale electrical data. Select the same unit that the sensor data sheet or calibration certificate uses for physical values.
DAQmx.AI.Bridge_ScaleType                             =          0x2F89;  % Specifies the scaling type to use when scaling electrical values from the sensor to physical units.
DAQmx.AI.Bridge_TwoPointLin_First_ElectricalVal       =          0x2F8A;  % Specifies the first electrical value, corresponding to Physical Value. Specify this value in the unit indicated by Electrical Units.
DAQmx.AI.Bridge_TwoPointLin_First_PhysicalVal         =          0x2F8B;  % Specifies the first physical value, corresponding to Electrical Value. Specify this value in the unit indicated by Physical Units.
DAQmx.AI.Bridge_TwoPointLin_Second_ElectricalVal      =          0x2F8C;  % Specifies the second electrical value, corresponding to Physical Value. Specify this value in the unit indicated by Electrical Units.
DAQmx.AI.Bridge_TwoPointLin_Second_PhysicalVal        =          0x2F8D;  % Specifies the second physical value, corresponding to Electrical Value. Specify this value in the unit indicated by Physical Units.
DAQmx.AI.Bridge_Table_ElectricalVals                  =          0x2F8E;  % Specifies the array of electrical values that map to the values in Physical Values. Specify this value in the unit indicated by Electrical Units.
DAQmx.AI.Bridge_Table_PhysicalVals                    =          0x2F8F;  % Specifies the array of physical values that map to the values in Electrical Values. Specify this value in the unit indicated by Physical Units.
DAQmx.AI.Bridge_Poly_ForwardCoeff                     =          0x2F90;  % Specifies an array of coefficients for the polynomial that converts electrical values to physical values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
DAQmx.AI.Bridge_Poly_ReverseCoeff                     =          0x2F91;  % Specifies an array of coefficients for the polynomial that converts physical values to electrical values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
DAQmx.AI.Charge_Units                                 =          0x3112;  % Specifies the units to use to return charge measurements from the channel.
DAQmx.AI.Is_TEDS                                      =          0x2983;  % Indicates if the virtual channel was initialized using a TEDS bitstream from the corresponding physical channel.
DAQmx.AI.TEDS_Units                                   =          0x21E0;  % Indicates the units defined by TEDS information associated with the channel.
DAQmx.AI.Coupling                                     =          0x0064;  % Specifies the coupling for the channel.
DAQmx.AI.Impedance                                    =          0x0062;  % Specifies the input impedance of the channel.
DAQmx.AI.TermCfg                                      =          0x1097;  % Specifies the terminal configuration for the channel.
DAQmx.AI.InputSrc                                     =          0x2198;  % Specifies the source of the channel. You can use the signal from the I/O connector or one of several calibration signals. Certain devices have a single calibration signal bus. For these devices, you must specify the same calibration signal for all channels you connect to a calibration signal.
DAQmx.AI.ResistanceCfg                                =          0x1881;  % Specifies the resistance configuration for the channel. NI-DAQmx uses this value for any resistance-based measurements, including temperature measurement using a thermistor or RTD.
DAQmx.AI.LeadWireResistance                           =          0x17EE;  % Specifies in ohms the resistance of the wires that lead to the sensor.
DAQmx.AI.Bridge_Cfg                                   =          0x0087;  % Specifies the type of Wheatstone bridge connected to the channel.
DAQmx.AI.Bridge_NomResistance                         =          0x17EC;  % Specifies in ohms the resistance of the bridge while not under load.
DAQmx.AI.Bridge_InitialVoltage                        =          0x17ED;  % Specifies in volts the output voltage of the bridge while not under load. NI-DAQmx subtracts this value from any measurements before applying scaling equations.  If you set Initial Bridge Ratio, NI-DAQmx coerces this property to Initial Bridge Ratio times Actual Excitation Value. This property is set by DAQmx Perform Bridge Offset Nulling Calibration. If you set this property, NI-DAQmx coerces Initial Bridge Ratio...
DAQmx.AI.Bridge_InitialRatio                          =          0x2F86;  % Specifies in volts per volt the ratio of output voltage from the bridge to excitation voltage supplied to the bridge while not under load. NI-DAQmx subtracts this value from any measurements before applying scaling equations. If you set Initial Bridge Voltage, NI-DAQmx coerces this property  to Initial Bridge Voltage divided by Actual Excitation Value. If you set this property, NI-DAQmx coerces Initial Bridge Volt...
DAQmx.AI.Bridge_ShuntCal_Enable                       =          0x0094;  % Specifies whether to enable a shunt calibration switch. Use Shunt Cal Select to select the switch(es) to enable.
DAQmx.AI.Bridge_ShuntCal_Select                       =          0x21D5;  % Specifies which shunt calibration switch(es) to enable.  Use Shunt Cal Enable to enable the switch(es) you specify with this property.
DAQmx.AI.Bridge_ShuntCal_ShuntCalASrc                 =          0x30CA;  % Specifies whether to use internal or external shunt when Shunt Cal A is selected.
DAQmx.AI.Bridge_ShuntCal_GainAdjust                   =          0x193F;  % Specifies the result of a shunt calibration. This property is set by DAQmx Perform Shunt Calibration. NI-DAQmx multiplies data read from the channel by the value of this property. This value should be close to 1.0.
DAQmx.AI.Bridge_ShuntCal_ShuntCalAResistance          =          0x2F78;  % Specifies in ohms the desired value of the internal shunt calibration A resistor.
DAQmx.AI.Bridge_ShuntCal_ShuntCalAActualResistance    =          0x2F79;  % Specifies in ohms the actual value of the internal shunt calibration A resistor.
DAQmx.AI.Bridge_ShuntCal_ShuntCalBResistance          =          0x2F7A;  % Specifies in ohms the desired value of the internal shunt calibration B resistor.
DAQmx.AI.Bridge_ShuntCal_ShuntCalBActualResistance    =          0x2F7B;  % Specifies in ohms the actual value of the internal shunt calibration B resistor.
DAQmx.AI.Bridge_Balance_CoarsePot                     =          0x17F1;  % Specifies by how much to compensate for offset in the signal. This value can be between 0 and 127.
DAQmx.AI.Bridge_Balance_FinePot                       =          0x18F4;  % Specifies by how much to compensate for offset in the signal. This value can be between 0 and 4095.
DAQmx.AI.CurrentShunt_Loc                             =          0x17F2;  % Specifies the shunt resistor location for current measurements.
DAQmx.AI.CurrentShunt_Resistance                      =          0x17F3;  % Specifies in ohms the external shunt resistance for current measurements.
DAQmx.AI.Excit_Sense                                  =          0x30FD;  % Specifies whether to use local or remote sense to sense excitation.
DAQmx.AI.Excit_Src                                    =          0x17F4;  % Specifies the source of excitation.
DAQmx.AI.Excit_Val                                    =          0x17F5;  % Specifies the amount of excitation that the sensor requires. If Voltage or Current is  DAQmx.Val.Voltage, this value is in volts. If Voltage or Current is  DAQmx.Val.Current, this value is in amperes.
DAQmx.AI.Excit_UseForScaling                          =          0x17FC;  % Specifies if NI-DAQmx divides the measurement by the excitation. You should typically set this property to TRUE for ratiometric transducers. If you set this property to TRUE, set Maximum Value and Minimum Value to reflect the scaling.
DAQmx.AI.Excit_UseMultiplexed                         =          0x2180;  % Specifies if the SCXI-1122 multiplexes the excitation to the upper half of the channels as it advances through the scan list.
DAQmx.AI.Excit_ActualVal                              =          0x1883;  % Specifies the actual amount of excitation supplied by an internal excitation source.  If you read an internal excitation source more precisely with an external device, set this property to the value you read.  NI-DAQmx ignores this value for external excitation. When performing shunt calibration, some devices set this property automatically.
DAQmx.AI.Excit_DCorAC                                 =          0x17FB;  % Specifies if the excitation supply is DC or AC.
DAQmx.AI.Excit_VoltageOrCurrent                       =          0x17F6;  % Specifies if the channel uses current or voltage excitation.
DAQmx.AI.Excit_IdleOutputBehavior                     =          0x30B8;  % Specifies whether this channel will disable excitation after the task is uncommitted. Setting this to Zero Volts or Amps disables excitation after task uncommit. Setting this attribute to Maintain Existing Value leaves the excitation on after task uncommit.
DAQmx.AI.ACExcit_Freq                                 =          0x0101;  % Specifies the AC excitation frequency in Hertz.
DAQmx.AI.ACExcit_SyncEnable                           =          0x0102;  % Specifies whether to synchronize the AC excitation source of the channel to that of another channel. Synchronize the excitation sources of multiple channels to use multichannel sensors. Set this property to FALSE for the master channel and to TRUE for the slave channels.
DAQmx.AI.ACExcit_WireMode                             =          0x18CD;  % Specifies the number of leads on the LVDT or RVDT. Some sensors require you to tie leads together to create a four- or five- wire sensor. Refer to the sensor documentation for more information.
DAQmx.AI.SensorPower_Voltage                          =          0x3169;  % Specifies the voltage level for the sensor's power supply.
DAQmx.AI.SensorPower_Cfg                              =          0x316A;  % Specifies whether to turn on the sensor's power supply or to leave the configuration unchanged.
DAQmx.AI.SensorPower_Type                             =          0x316B;  % Specifies the type of power supplied to the sensor.
DAQmx.AI.OpenThrmcplDetectEnable                      =          0x2F72;  % Specifies whether to apply the open thermocouple detection bias voltage to the channel. Changing the value of this property on a channel may require settling time before the data returned is valid. To compensate for this settling time, discard unsettled data or add a delay between committing and starting the task. Refer to your device specifications for the required settling time. When open thermocouple detection ...
DAQmx.AI.Thrmcpl_LeadOffsetVoltage                    =          0x2FB8;  % Specifies the lead offset nulling voltage to subtract from measurements on a device. This property is ignored if open thermocouple detection is disabled.
DAQmx.AI.Atten                                        =          0x1801;  % Specifies the amount of attenuation to use.
DAQmx.AI.ProbeAtten                                   =          0x2A88;  % Specifies the amount of attenuation provided by the probe connected to the channel. Specify this attenuation as a ratio.
DAQmx.AI.Lowpass_Enable                               =          0x1802;  % Specifies whether to enable the lowpass filter of the channel.
DAQmx.AI.Lowpass_CutoffFreq                           =          0x1803;  % Specifies the frequency in Hertz that corresponds to the -3dB cutoff of the filter.
DAQmx.AI.Lowpass_SwitchCap_ClkSrc                     =          0x1884;  % Specifies the source of the filter clock. If you need a higher resolution for the filter, you can supply an external clock to increase the resolution. Refer to the SCXI-1141/1142/1143 User Manual for more information.
DAQmx.AI.Lowpass_SwitchCap_ExtClkFreq                 =          0x1885;  % Specifies the frequency of the external clock when you set Clock Source to DAQmx.Val.External.  NI-DAQmx uses this frequency to set the pre- and post- filters on the SCXI-1141, SCXI-1142, and SCXI-1143. On those devices, NI-DAQmx determines the filter cutoff by using the equation f/(100*n), where f is the external frequency, and n is the external clock divisor. Refer to the SCXI-1141/1142/1143 User Manual for more...
DAQmx.AI.Lowpass_SwitchCap_ExtClkDiv                  =          0x1886;  % Specifies the divisor for the external clock when you set Clock Source to DAQmx.Val.External. On the SCXI-1141, SCXI-1142, and SCXI-1143, NI-DAQmx determines the filter cutoff by using the equation f/(100*n), where f is the external frequency, and n is the external clock divisor. Refer to the SCXI-1141/1142/1143 User Manual for more information.
DAQmx.AI.Lowpass_SwitchCap_OutClkDiv                  =          0x1887;  % Specifies the divisor for the output clock.  NI-DAQmx uses the cutoff frequency to determine the output clock frequency. Refer to the SCXI-1141/1142/1143 User Manual for more information.
DAQmx.AI.DigFltr_Enable                               =          0x30BD;  % Specifies whether the digital filter is enabled or disabled.
DAQmx.AI.DigFltr_Type                                 =          0x30BE;  % Specifies the digital filter type.
DAQmx.AI.DigFltr_Response                             =          0x30BF;  % Specifies the digital filter response.
DAQmx.AI.DigFltr_Order                                =          0x30C0;  % Specifies the order of the digital filter.
DAQmx.AI.DigFltr_Lowpass_CutoffFreq                   =          0x30C1;  % Specifies the lowpass cutoff frequency of the digital filter.
DAQmx.AI.DigFltr_Highpass_CutoffFreq                  =          0x30C2;  % Specifies the highpass cutoff frequency of the digital filter.
DAQmx.AI.DigFltr_Bandpass_CenterFreq                  =          0x30C3;  % Specifies the center frequency of the passband for the digital filter.
DAQmx.AI.DigFltr_Bandpass_Width                       =          0x30C4;  % Specifies the width of the passband centered around the center frequency for the digital filter.
DAQmx.AI.DigFltr_Notch_CenterFreq                     =          0x30C5;  % Specifies the center frequency of the stopband for the digital filter.
DAQmx.AI.DigFltr_Notch_Width                          =          0x30C6;  % Specifies the width of the stopband centered around the center frequency for the digital filter.
DAQmx.AI.DigFltr_Coeff                                =          0x30C7;  % Specifies the digital filter coefficients.
DAQmx.AI.Filter_Enable                                =          0x3173;  % Specifies the corresponding filter enable/disable state.
DAQmx.AI.Filter_Freq                                  =          0x3174;  % Specifies the corresponding filter frequency (cutoff or center) of the filter response.
DAQmx.AI.Filter_Response                              =          0x3175;  % Specifies the corresponding filter response and defines the shape of the filter response.
DAQmx.AI.Filter_Order                                 =          0x3176;  % Specifies the corresponding filter order and defines the slope of the filter response.
DAQmx.AI.FilterDelay                                  =          0x2FED;  % Indicates the amount of time between when the ADC samples data and when the sample is read by the host device. This value is in the units you specify with Filter Delay Units. You can adjust this amount of time using Filter Delay Adjustment.
DAQmx.AI.FilterDelayUnits                             =          0x3071;  % Specifies the units of Filter Delay and Filter Delay Adjustment.
DAQmx.AI.RemoveFilterDelay                            =          0x2FBD;  % Specifies if filter delay removal is enabled on the device.
DAQmx.AI.FilterDelayAdjustment                        =          0x3074;  % Specifies the amount of filter delay that gets removed if Remove Filter Delay is enabled. This delay adjustment is in addition to the value indicated by Filter Delay. This delay adjustment is in the units you specify with Filter Delay Units.
DAQmx.AI.AveragingWinSize                             =          0x2FEE;  % Specifies the number of samples to average while acquiring data. Increasing the number of samples to average reduces noise in your measurement.
DAQmx.AI.ResolutionUnits                              =          0x1764;  % Indicates the units of Resolution Value.
DAQmx.AI.Resolution                                   =          0x1765;  % Indicates the resolution of the analog-to-digital converter of the channel. This value is in the units you specify with Resolution Units.
DAQmx.AI.RawSampSize                                  =          0x22DA;  % Indicates in bits the size of a raw sample from the device.
DAQmx.AI.RawSampJustification                         =          0x0050;  % Indicates the justification of a raw sample from the device.
DAQmx.AI.ADCTimingMode                                =          0x29F9;  % Specifies the ADC timing mode, controlling the tradeoff between speed and effective resolution. Some ADC timing modes provide increased powerline noise rejection. On devices that have an AI Convert clock, this setting affects both the maximum and default values for Rate. You must use the same ADC timing mode for all channels on a device, but you can use different ADC timing modes for different devices in the same ...
DAQmx.AI.ADCCustomTimingMode                          =          0x2F6B;  % Specifies the timing mode of the ADC when Timing Mode is DAQmx.Val.Custom.
DAQmx.AI.Dither_Enable                                =          0x0068;  % Specifies whether to enable dithering.  Dithering adds Gaussian noise to the input signal. You can use dithering to achieve higher resolution measurements by over sampling the input signal and averaging the results.
DAQmx.AI.ChanCal_HasValidCalInfo                      =          0x2297;  % Indicates if the channel has calibration information.
DAQmx.AI.ChanCal_EnableCal                            =          0x2298;  % Specifies whether to enable the channel calibration associated with the channel.
DAQmx.AI.ChanCal_ApplyCalIfExp                        =          0x2299;  % Specifies whether to apply the channel calibration to the channel after the expiration date has passed.
DAQmx.AI.ChanCal_ScaleType                            =          0x229C;  % Specifies the method or equation form that the calibration scale uses.
DAQmx.AI.ChanCal_Table_PreScaledVals                  =          0x229D;  % Specifies the reference values collected when calibrating the channel.
DAQmx.AI.ChanCal_Table_ScaledVals                     =          0x229E;  % Specifies the acquired values collected when calibrating the channel.
DAQmx.AI.ChanCal_Poly_ForwardCoeff                    =          0x229F;  % Specifies the forward polynomial values used for calibrating the channel.
DAQmx.AI.ChanCal_Poly_ReverseCoeff                    =          0x22A0;  % Specifies the reverse polynomial values used for calibrating the channel.
DAQmx.AI.ChanCal_OperatorName                         =          0x22A3;  % Specifies the name of the operator who performed the channel calibration.
DAQmx.AI.ChanCal_Desc                                 =          0x22A4;  % Specifies the description entered for the calibration of the channel.
DAQmx.AI.ChanCal_Verif_RefVals                        =          0x22A1;  % Specifies the reference values collected when verifying the calibration. NI-DAQmx stores these values as a record of calibration accuracy and does not use them in the scaling process.
DAQmx.AI.ChanCal_Verif_AcqVals                        =          0x22A2;  % Specifies the acquired values collected when verifying the calibration. NI-DAQmx stores these values as a record of calibration accuracy and does not use them in the scaling process.
DAQmx.AI.Rng_High                                     =          0x1815;  % Specifies the upper limit of the input range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx.AI.Rng_Low                                      =          0x1816;  % Specifies the lower limit of the input range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx.AI.DCOffset                                     =          0x2A89;  % Specifies the DC value to add to the input range of the device. Use High and Low to specify the input range. This offset is in the native units of the device .
DAQmx.AI.Gain                                         =          0x1818;  % Specifies a gain factor to apply to the channel.
DAQmx.AI.SampAndHold_Enable                           =          0x181A;  % Specifies whether to enable the sample and hold circuitry of the device. When you disable sample and hold circuitry, a small voltage offset might be introduced into the signal.  You can eliminate this offset by using Auto Zero Mode to perform an auto zero on the channel.
DAQmx.AI.AutoZeroMode                                 =          0x1760;  % Specifies how often to measure ground. NI-DAQmx subtracts the measured ground voltage from every sample.
DAQmx.AI.ChopEnable                                   =          0x3143;  % Specifies whether the device will chop its inputs. Chopping removes offset voltages and other low frequency errors.
DAQmx.AI.DataXferMaxRate                              =          0x3117;  % Specifies the rate in B/s to transfer data from the device. If this value is not set, then the device will transfer data at a rate based on the bus detected. Modify this value to affect performance under different combinations of operating system, configuration, and device.
DAQmx.AI.DataXferMech                                 =          0x1821;  % Specifies the data transfer mode for the device.
DAQmx.AI.DataXferReqCond                              =          0x188B;  % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
DAQmx.AI.DataXferCustomThreshold                      =          0x230C;  % Specifies the number of samples that must be in the FIFO to transfer data from the device if Data Transfer Request Condition is DAQmx.Val.OnbrdMemCustomThreshold.
DAQmx.AI.UsbXferReqSize                               =          0x2A8E;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.AI.UsbXferReqCount                              =          0x3000;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.AI.MemMapEnable                                 =          0x188C;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx.AI.RawDataCompressionType                       =          0x22D8;  % Specifies the type of compression to apply to raw samples returned from the device.
DAQmx.AI.LossyLSBRemoval_CompressedSampSize           =          0x22D9;  % Specifies the number of bits to return in a raw sample when Raw Data Compression Type is set to DAQmx.Val.LossyLSBRemoval.
DAQmx.AI.DevScalingCoeff                              =          0x1930;  % Indicates the coefficients of a polynomial equation that NI-DAQmx uses to scale values from the native format of the device to volts. Each element of the array corresponds to a term of the equation. For example, if index two of the array is 4, the third term of the equation is 4x^2. Scaling coefficients do not account for any custom scales or sensors contained by the channel.
DAQmx.AI.EnhancedAliasRejectionEnable                 =          0x2294;  % Specifies whether to enable enhanced alias rejection. Leave this property set to the default value for most applications.
DAQmx.AI.OpenChanDetectEnable                         =          0x30FF;  % Specifies whether to enable open channel detection.
DAQmx.AI.InputLimitsFaultDetect_UpperLimit            =          0x318C;  % Specifies the level of the upper limit for input limits detection. An input sample outside the upper and lower bounds causes a fault. Note: Fault detection applies to both positive and negative inputs. For instance, if you specify a lower limit of 2 mA and an upper limit of 12 mA, NI-DAQmx detects a fault at 15 mA and -15 mA, but not at -6 mA because it is in the range of -12 mA to -2 mA.
DAQmx.AI.InputLimitsFaultDetect_LowerLimit            =          0x318D;  % Specifies the level of the lower limit for input limits detection. An input sample outside the upper and lower bounds causes a fault. Note: Fault detection applies to both positive and negative inputs. For instance, if you specify a lower limit of 2 mA and an upper limit of 12 mA, NI-DAQmx detects a fault at 15 mA and -15 mA, but not at -6 mA because it is in the range of -12 mA to -2 mA.
DAQmx.AI.InputLimitsFaultDetectEnable                 =          0x318E;  % Specifies whether to enable input limits fault detection.
DAQmx.AI.PowerSupplyFaultDetectEnable                 =          0x3191;  % Specifies whether to enable power supply fault detection.
DAQmx.AI.OvercurrentDetectEnable                      =          0x3194;  % Specifies whether to enable overcurrent detection.
DAQmx.AO.Max                                          =          0x1186;  % Specifies the maximum value you expect to generate. The value is in the units you specify with a units property. If you try to write a value larger than the maximum value, NI-DAQmx generates an error. NI-DAQmx might coerce this value to a smaller value if other task settings restrict the device from generating the desired maximum.
DAQmx.AO.Min                                          =          0x1187;  % Specifies the minimum value you expect to generate. The value is in the units you specify with a units property. If you try to write a value smaller than the minimum value, NI-DAQmx generates an error. NI-DAQmx might coerce this value to a larger value if other task settings restrict the device from generating the desired minimum.
DAQmx.AO.CustomScaleName                              =          0x1188;  % Specifies the name of a custom scale for the channel.
DAQmx.AO.OutputType                                   =          0x1108;  % Indicates whether the channel generates voltage,  current, or a waveform.
DAQmx.AO.Voltage_Units                                =          0x1184;  % Specifies in what units to generate voltage on the channel. Write data to the channel in the units you select.
DAQmx.AO.Voltage_CurrentLimit                         =          0x2A1D;  % Specifies the current limit, in amperes, for the voltage channel.
DAQmx.AO.Current_Units                                =          0x1109;  % Specifies in what units to generate current on the channel. Write data to the channel in the units you select.
DAQmx.AO.FuncGen_Type                                 =          0x2A18;  % Specifies the kind of the waveform to generate.
DAQmx.AO.FuncGen_Freq                                 =          0x2A19;  % Specifies the frequency of the waveform to generate in hertz.
DAQmx.AO.FuncGen_Amplitude                            =          0x2A1A;  % Specifies the zero-to-peak amplitude of the waveform to generate in volts. Zero and negative values are valid.
DAQmx.AO.FuncGen_Offset                               =          0x2A1B;  % Specifies the voltage offset of the waveform to generate.
DAQmx.AO.FuncGen_StartPhase                           =          0x31C4;  % Specifies the starting phase in degrees of the waveform to generate.
DAQmx.AO.FuncGen_Square_DutyCycle                     =          0x2A1C;  % Specifies the square wave duty cycle of the waveform to generate.
DAQmx.AO.FuncGen_ModulationType                       =          0x2A22;  % Specifies if the device generates a modulated version of the waveform using the original waveform as a carrier and input from an external terminal as the signal.
DAQmx.AO.FuncGen_FMDeviation                          =          0x2A23;  % Specifies the FM deviation in hertz per volt when Type is DAQmx.Val.FM.
DAQmx.AO.OutputImpedance                              =          0x1490;  % Specifies in ohms the impedance of the analog output stage of the device.
DAQmx.AO.LoadImpedance                                =          0x0121;  % Specifies in ohms the load impedance connected to the analog output channel.
DAQmx.AO.IdleOutputBehavior                           =          0x2240;  % Specifies the state of the channel when no generation is in progress.
DAQmx.AO.TermCfg                                      =          0x188E;  % Specifies the terminal configuration of the channel.
DAQmx.AO.Common_Mode_Offset                           =          0x31CC;  % Specifies the common-mode offset of the AO channel. Use the property only when Terminal Configuration is set to Differential.
DAQmx.AO.ResolutionUnits                              =          0x182B;  % Specifies the units of Resolution Value.
DAQmx.AO.Resolution                                   =          0x182C;  % Indicates the resolution of the digital-to-analog converter of the channel. This value is in the units you specify with Resolution Units.
DAQmx.AO.DAC_Rng_High                                 =          0x182E;  % Specifies the upper limit of the output range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx.AO.DAC_Rng_Low                                  =          0x182D;  % Specifies the lower limit of the output range of the device. This value is in the native units of the device. On E Series devices, for example, the native units is volts.
DAQmx.AO.DAC_Ref_ConnToGnd                            =          0x0130;  % Specifies whether to ground the internal DAC reference. Grounding the internal DAC reference has the effect of grounding all analog output channels and stopping waveform generation across all analog output channels regardless of whether the channels belong to the current task. You can ground the internal DAC reference only when Source is DAQmx.Val.Internal and Allow Connecting DAC Reference to Ground at Runtime is...
DAQmx.AO.DAC_Ref_AllowConnToGnd                       =          0x1830;  % Specifies whether to allow grounding the internal DAC reference at run time. You must set this property to TRUE and set Source to DAQmx.Val.Internal before you can set Connect DAC Reference to Ground to TRUE.
DAQmx.AO.DAC_Ref_Src                                  =          0x0132;  % Specifies the source of the DAC reference voltage. The value of this voltage source determines the full-scale value of the DAC.
DAQmx.AO.DAC_Ref_ExtSrc                               =          0x2252;  % Specifies the source of the DAC reference voltage if Source is DAQmx.Val.External. The valid sources for this signal vary by device.
DAQmx.AO.DAC_Ref_Val                                  =          0x1832;  % Specifies in volts the value of the DAC reference voltage. This voltage determines the full-scale range of the DAC. Smaller reference voltages result in smaller ranges, but increased resolution.
DAQmx.AO.DAC_Offset_Src                               =          0x2253;  % Specifies the source of the DAC offset voltage. The value of this voltage source determines the full-scale value of the DAC.
DAQmx.AO.DAC_Offset_ExtSrc                            =          0x2254;  % Specifies the source of the DAC offset voltage if Source is DAQmx.Val.External. The valid sources for this signal vary by device.
DAQmx.AO.DAC_Offset_Val                               =          0x2255;  % Specifies in volts the value of the DAC offset voltage. To achieve best accuracy, the DAC offset value should be hand calibrated.
DAQmx.AO.ReglitchEnable                               =          0x0133;  % Specifies whether to enable reglitching.  The output of a DAC normally glitches whenever the DAC is updated with a new value. The amount of glitching differs from code to code and is generally largest at major code transitions.  Reglitching generates uniform glitch energy at each code transition and provides for more uniform glitches.  Uniform glitch energy makes it easier to filter out the noise introduced from g...
DAQmx.AO.FilterDelay                                  =          0x3075;  % Specifies the amount of time between when the sample is written by the host device and when the sample is output by the DAC. This value is in the units you specify with Filter Delay Units.
DAQmx.AO.FilterDelayUnits                             =          0x3076;  % Specifies the units of Filter Delay and Filter Delay Adjustment.
DAQmx.AO.FilterDelayAdjustment                        =          0x3072;  % Specifies an additional amount of time to wait between when the sample is written by the host device and when the sample is output by the DAC. This delay adjustment is in addition to the value indicated by Filter Delay. This delay adjustment is in the units you specify with Filter Delay Units.
DAQmx.AO.Gain                                         =          0x0118;  % Specifies in decibels the gain factor to apply to the channel.
DAQmx.AO.UseOnlyOnBrdMem                              =          0x183A;  % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory directly after you start the task. Onboard memory includes data FIFOs.
DAQmx.AO.DataXferMech                                 =          0x0134;  % Specifies the data transfer mode for the device.
DAQmx.AO.DataXferReqCond                              =          0x183C;  % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
DAQmx.AO.UsbXferReqSize                               =          0x2A8F;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.AO.UsbXferReqCount                              =          0x3001;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.AO.MemMapEnable                                 =          0x188F;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx.AO.DevScalingCoeff                              =          0x1931;  % Indicates the coefficients of a linear equation that NI-DAQmx uses to scale values from a voltage to the native format of the device. Each element of the array corresponds to a term of the equation. The first element of the array corresponds to the y-intercept, and the second element corresponds to the slope. Scaling coefficients do not account for any custom scales that may be applied to the channel.
DAQmx.AO.EnhancedImageRejectionEnable                 =          0x2241;  % Specifies whether to enable the DAC interpolation filter. Disable the interpolation filter to improve DAC signal-to-noise ratio at the expense of degraded image rejection.
DAQmx.DI.InvertLines                                  =          0x0793;  % Specifies whether to invert the lines in the channel. If you set this property to TRUE, the lines are at high logic when off and at low logic when on.
DAQmx.DI.NumLines                                     =          0x2178;  % Indicates the number of digital lines in the channel.
DAQmx.DI.DigFltr_Enable                               =          0x21D6;  % Specifies whether to enable the digital filter for the line(s) or port(s). You can enable the filter on a line-by-line basis. You do not have to enable the filter for all lines in a channel.
DAQmx.DI.DigFltr_MinPulseWidth                        =          0x21D7;  % Specifies in seconds the minimum pulse width the filter recognizes as a valid high or low state transition.
DAQmx.DI.DigFltr_EnableBusMode                        =          0x2EFE;  % Specifies whether to enable bus mode for digital filtering. If you set this property to TRUE, NI-DAQmx treats all lines that use common filtering settings as a bus. If any line in the bus has jitter, all lines in the bus hold state until the entire bus stabilizes, or until 2 times the minimum pulse width elapses. If you set this property to FALSE, NI-DAQmx filters all lines individually. Jitter in one line does no...
DAQmx.DI.DigFltr_TimebaseSrc                          =          0x2ED4;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.DI.DigFltr_TimebaseRate                         =          0x2ED5;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.DI.DigSync_Enable                               =          0x2ED6;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.DI.Tristate                                     =          0x1890;  % Specifies whether to tristate the lines in the channel. If you set this property to TRUE, NI-DAQmx tristates the lines in the channel. If you set this property to FALSE, NI-DAQmx does not modify the configuration of the lines even if the lines were previously tristated. Set this property to FALSE to read lines in other tasks or to read output-only lines.
DAQmx.DI.LogicFamily                                  =          0x296D;  % Specifies the logic family to use for acquisition. A logic family corresponds to voltage thresholds that are compatible with a group of voltage standards. Refer to the device documentation for information on the logic high and logic low voltages for these logic families.
DAQmx.DI.DataXferMech                                 =          0x2263;  % Specifies the data transfer mode for the device.
DAQmx.DI.DataXferReqCond                              =          0x2264;  % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
DAQmx.DI.UsbXferReqSize                               =          0x2A90;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.DI.UsbXferReqCount                              =          0x3002;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.DI.MemMapEnable                                 =          0x296A;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx.DI.AcquireOn                                    =          0x2966;  % Specifies on which edge of the sample clock to acquire samples.
DAQmx.DO.OutputDriveType                              =          0x1137;  % Specifies the drive type for digital output channels.
DAQmx.DO.InvertLines                                  =          0x1133;  % Specifies whether to invert the lines in the channel. If you set this property to TRUE, the lines are at high logic when off and at low logic when on.
DAQmx.DO.NumLines                                     =          0x2179;  % Indicates the number of digital lines in the channel.
DAQmx.DO.Tristate                                     =          0x18F3;  % Specifies whether to stop driving the channel and set it to a high-impedance state. You must commit the task for this setting to take effect.
DAQmx.DO.LineStates_StartState                        =          0x2972;  % Specifies the state of the lines in a digital output task when the task starts.
DAQmx.DO.LineStates_PausedState                       =          0x2967;  % Specifies the state of the lines in a digital output task when the task pauses.
DAQmx.DO.LineStates_DoneState                         =          0x2968;  % Specifies the state of the lines in a digital output task when the task completes execution.
DAQmx.DO.LogicFamily                                  =          0x296E;  % Specifies the logic family to use for generation. A logic family corresponds to voltage thresholds that are compatible with a group of voltage standards. Refer to the device documentation for information on the logic high and logic low voltages for these logic families.
DAQmx.DO.Overcurrent_Limit                            =          0x2A85;  % Specifies the current threshold in Amperes for the channel. A value of 0 means the channel observes no limit. Devices can monitor only a finite number of current thresholds simultaneously. If you attempt to monitor additional thresholds, NI-DAQmx returns an error.
DAQmx.DO.Overcurrent_AutoReenable                     =          0x2A86;  % Specifies whether to automatically reenable channels after they no longer exceed the current limit specified by Current Limit.
DAQmx.DO.Overcurrent_ReenablePeriod                   =          0x2A87;  % Specifies the delay in seconds between the time a channel no longer exceeds the current limit and the reactivation of that channel, if Automatic Re-enable is TRUE.
DAQmx.DO.UseOnlyOnBrdMem                              =          0x2265;  % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory after you start the task. Onboard memory includes data FIFOs.
DAQmx.DO.DataXferMech                                 =          0x2266;  % Specifies the data transfer mode for the device.
DAQmx.DO.DataXferReqCond                              =          0x2267;  % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
DAQmx.DO.UsbXferReqSize                               =          0x2A91;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.DO.UsbXferReqCount                              =          0x3003;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.DO.MemMapEnable                                 =          0x296B;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx.DO.GenerateOn                                   =          0x2969;  % Specifies on which edge of the sample clock to generate samples.
DAQmx.CI.Max                                          =          0x189C;  % Specifies the maximum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced maximum value that the hardware can measure with the current settings.
DAQmx.CI.Min                                          =          0x189D;  % Specifies the minimum value you expect to measure. This value is in the units you specify with a units property. When you query this property, it returns the coerced minimum value that the hardware can measure with the current settings.
DAQmx.CI.CustomScaleName                              =          0x189E;  % Specifies the name of a custom scale for the channel.
DAQmx.CI.MeasType                                     =          0x18A0;  % Indicates the measurement to take with the channel.
DAQmx.CI.Freq_Units                                   =          0x18A1;  % Specifies the units to use to return frequency measurements.
DAQmx.CI.Freq_Term                                    =          0x18A2;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.Freq_TermCfg                                 =          0x3097;  % Specifies the input terminal configuration.
DAQmx.CI.Freq_LogicLvlBehavior                        =          0x3098;  % Specifies the logic level behavior on the input line.
DAQmx.CI.Freq_ThreshVoltage                           =          0x31AB;  % Specifies the voltage level at which to recognize waveform repetitions. Select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx.CI.Freq_Hyst                                    =          0x31AC;  % Specifies a hysteresis level to apply to Threshold Level. When Starting Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Starting Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx.CI.Freq_DigFltr_Enable                          =          0x21E7;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Freq_DigFltr_MinPulseWidth                   =          0x21E8;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Freq_DigFltr_TimebaseSrc                     =          0x21E9;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Freq_DigFltr_TimebaseRate                    =          0x21EA;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Freq_DigSync_Enable                          =          0x21EB;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Freq_StartingEdge                            =          0x0799;  % Specifies between which edges to measure the frequency of the signal.
DAQmx.CI.Freq_MeasMeth                                =          0x0144;  % Specifies the method to use to measure the frequency of the signal.
DAQmx.CI.Freq_EnableAveraging                         =          0x2ED0;  % Specifies whether to enable averaging mode for Sample Clock-timed frequency measurements.
DAQmx.CI.Freq_MeasTime                                =          0x0145;  % Specifies in seconds the length of time to measure the frequency of the signal if Method is DAQmx.Val.HighFreq2Ctr. Measurement accuracy increases with increased measurement time and with increased signal frequency. If you measure a high-frequency signal for too long, however, the count register could roll over, which results in an incorrect measurement.
DAQmx.CI.Freq_Div                                     =          0x0147;  % Specifies the value by which to divide the input signal if  Method is DAQmx.Val.LargeRng2Ctr. The larger the divisor, the more accurate the measurement. However, too large a value could cause the count register to roll over, which results in an incorrect measurement.
DAQmx.CI.Period_Units                                 =          0x18A3;  % Specifies the unit to use to return period measurements.
DAQmx.CI.Period_Term                                  =          0x18A4;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.Period_TermCfg                               =          0x3099;  % Specifies the input terminal configuration.
DAQmx.CI.Period_LogicLvlBehavior                      =          0x309A;  % Specifies the logic level behavior on the input line.
DAQmx.CI.Period_ThreshVoltage                         =          0x31AD;  % Specifies the voltage level at which to recognize waveform repetitions. Select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx.CI.Period_Hyst                                  =          0x31AE;  % Specifies a hysteresis level to apply to Threshold Level. When Starting Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Starting Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx.CI.Period_DigFltr_Enable                        =          0x21EC;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Period_DigFltr_MinPulseWidth                 =          0x21ED;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Period_DigFltr_TimebaseSrc                   =          0x21EE;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Period_DigFltr_TimebaseRate                  =          0x21EF;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Period_DigSync_Enable                        =          0x21F0;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Period_StartingEdge                          =          0x0852;  % Specifies between which edges to measure the period of the signal.
DAQmx.CI.Period_MeasMeth                              =          0x192C;  % Specifies the method to use to measure the period of the signal.
DAQmx.CI.Period_EnableAveraging                       =          0x2ED1;  % Specifies whether to enable averaging mode for Sample Clock-timed period measurements.
DAQmx.CI.Period_MeasTime                              =          0x192D;  % Specifies in seconds the length of time to measure the period of the signal if Method is DAQmx.Val.HighFreq2Ctr. Measurement accuracy increases with increased measurement time and with increased signal frequency. If you measure a high-frequency signal for too long, however, the count register could roll over, which results in an incorrect measurement.
DAQmx.CI.Period_Div                                   =          0x192E;  % Specifies the value by which to divide the input signal if Method is DAQmx.Val.LargeRng2Ctr. The larger the divisor, the more accurate the measurement. However, too large a value could cause the count register to roll over, which results in an incorrect measurement.
DAQmx.CI.CountEdges_Term                              =          0x18C7;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.CountEdges_TermCfg                           =          0x309B;  % Specifies the input terminal configuration.
DAQmx.CI.CountEdges_LogicLvlBehavior                  =          0x309C;  % Specifies the logic level behavior on the input line.
DAQmx.CI.CountEdges_ThreshVoltage                     =          0x31AF;  % Specifies the voltage level at which to recognize waveform repetitions. Select a voltage level that occurs only once within the entire period of a waveform. You also can select a voltage that occurs only once while the voltage rises or falls.
DAQmx.CI.CountEdges_Hyst                              =          0x31B0;  % Specifies a hysteresis level to apply to Threshold Level. When Active Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Active Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx.CI.CountEdges_DigFltr_Enable                    =          0x21F6;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.CountEdges_DigFltr_MinPulseWidth             =          0x21F7;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.CountEdges_DigFltr_TimebaseSrc               =          0x21F8;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.CountEdges_DigFltr_TimebaseRate              =          0x21F9;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.CountEdges_DigSync_Enable                    =          0x21FA;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.CountEdges_Dir                               =          0x0696;  % Specifies whether to increment or decrement the counter on each edge.
DAQmx.CI.CountEdges_DirTerm                           =          0x21E1;  % Specifies the source terminal of the digital signal that controls the count direction if Direction is DAQmx.Val.ExtControlled.
DAQmx.CI.CountEdges_CountDir_TermCfg                  =          0x309D;  % Specifies the input terminal configuration.
DAQmx.CI.CountEdges_CountDir_LogicLvlBehavior         =          0x309E;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.CountEdges_CountDir_ThreshVoltage            =          0x31B1;  % Specifies the voltage level applied to the Count Direction terminal. When the signal is above this threshold, the counter counts up. When the signal is below this threshold, the counter counts down.
DAQmx.CI.CountEdges_CountDir_Hyst                     =          0x31B2;  % Specifies a hysteresis level applied to the Threshold Level. The source signal must fall below Threshold Level minus the hysteresis before a change in count direction occurs.
DAQmx.CI.CountEdges_CountDir_DigFltr_Enable           =          0x21F1;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.CountEdges_CountDir_DigFltr_MinPulseWidth    =          0x21F2;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.CountEdges_CountDir_DigFltr_TimebaseSrc      =          0x21F3;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.CountEdges_CountDir_DigFltr_TimebaseRate     =          0x21F4;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.CountEdges_CountDir_DigSync_Enable           =          0x21F5;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.CountEdges_InitialCnt                        =          0x0698;  % Specifies the starting value from which to count.
DAQmx.CI.CountEdges_ActiveEdge                        =          0x0697;  % Specifies on which edges to increment or decrement the counter.
DAQmx.CI.CountEdges_CountReset_Enable                 =          0x2FAF;  % Specifies whether to reset the count on the active edge specified with Terminal.
DAQmx.CI.CountEdges_CountReset_ResetCount             =          0x2FB0;  % Specifies the value to reset the count to.
DAQmx.CI.CountEdges_CountReset_Term                   =          0x2FB1;  % Specifies the input terminal of the signal to reset the count.
DAQmx.CI.CountEdges_CountReset_TermCfg                =          0x309F;  % Specifies the input terminal configuration.
DAQmx.CI.CountEdges_CountReset_LogicLvlBehavior       =          0x30A0;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.CountEdges_CountReset_ThreshVoltage          =          0x31B3;  % Specifies the voltage level at which to recognize the counter reset event.
DAQmx.CI.CountEdges_CountReset_Hyst                   =          0x31B4;  % Specifies a hysteresis level applied to Threshold Level. When Active Edge is rising, the source signal must first fall below Threshold Level minus the hysteresis before a rising edge is detected at Threshold Level. When Active Edge is falling, the source signal must first rise above Threshold Level plus the hysteresis before a falling edge is detected at Threshold Level.
DAQmx.CI.CountEdges_CountReset_DigFltr_Enable         =          0x2FB3;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.CountEdges_CountReset_DigFltr_MinPulseWidth  =          0x2FB4;  % Specifies the minimum pulse width the filter recognizes.
DAQmx.CI.CountEdges_CountReset_DigFltr_TimebaseSrc    =          0x2FB5;  % Specifies the input of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.CountEdges_CountReset_DigFltr_TimebaseRate   =          0x2FB6;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.CountEdges_CountReset_DigSync_Enable         =          0x2FB7;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.CountEdges_CountReset_ActiveEdge             =          0x2FB2;  % Specifies on which edge of the signal to reset the count.
DAQmx.CI.CountEdges_Gate_Enable                       =          0x30ED;  % Specifies whether to enable the functionality to gate the counter input signal for a count edges measurement.
DAQmx.CI.CountEdges_Gate_Term                         =          0x30EE;  % Specifies the gate terminal.
DAQmx.CI.CountEdges_Gate_TermCfg                      =          0x30EF;  % Specifies the gate terminal configuration.
DAQmx.CI.CountEdges_Gate_LogicLvlBehavior             =          0x30F0;  % Specifies the logic level behavior on the gate input line.
DAQmx.CI.CountEdges_Gate_ThreshVoltage                =          0x31B5;  % Specifies the voltage level at which to recognize the counter gate signal.
DAQmx.CI.CountEdges_Gate_Hyst                         =          0x31B6;  % Specifies a hysteresis level applied to the Threshold Level. When Pause When is High, the source signal must fall below Threshold Level minus the hysteresis before the counter resumes counting. When Pause When is Low, the source signal must rise above Threshold Level plus the hysteresis before the counter resumes counting.
DAQmx.CI.CountEdges_Gate_DigFltrEnable                =          0x30F1;  % Specifies whether to apply the pulse width filter to the gate input signal.
DAQmx.CI.CountEdges_Gate_DigFltrMinPulseWidth         =          0x30F2;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx.CI.CountEdges_Gate_DigFltrTimebaseSrc           =          0x30F3;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.CountEdges_Gate_DigFltrTimebaseRate          =          0x30F4;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.CountEdges_GateWhen                          =          0x30F5;  % Specifies whether the counter gates input pulses while the signal is high or low.
DAQmx.CI.DutyCycle_Term                               =          0x308D;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.DutyCycle_TermCfg                            =          0x30A1;  % Specifies the input terminal configuration.
DAQmx.CI.DutyCycle_LogicLvlBehavior                   =          0x30A2;  % Specifies the logic level behavior on the input line.
DAQmx.CI.DutyCycle_DigFltr_Enable                     =          0x308E;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.DutyCycle_DigFltr_MinPulseWidth              =          0x308F;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx.CI.DutyCycle_DigFltr_TimebaseSrc                =          0x3090;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.DutyCycle_DigFltr_TimebaseRate               =          0x3091;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.DutyCycle_StartingEdge                       =          0x3092;  % Specifies which edge of the input signal to begin the duty cycle measurement.
DAQmx.CI.AngEncoder_Units                             =          0x18A6;  % Specifies the units to use to return angular position measurements from the channel.
DAQmx.CI.AngEncoder_PulsesPerRev                      =          0x0875;  % Specifies the number of pulses the encoder generates per revolution. This value is the number of pulses on either signal A or signal B, not the total number of pulses on both signal A and signal B.
DAQmx.CI.AngEncoder_InitialAngle                      =          0x0881;  % Specifies the starting angle of the encoder. This value is in the units you specify with Units.
DAQmx.CI.LinEncoder_Units                             =          0x18A9;  % Specifies the units to use to return linear encoder measurements from the channel.
DAQmx.CI.LinEncoder_DistPerPulse                      =          0x0911;  % Specifies the distance to measure for each pulse the encoder generates on signal A or signal B. This value is in the units you specify with Units.
DAQmx.CI.LinEncoder_InitialPos                        =          0x0915;  % Specifies the position of the encoder when the measurement begins. This value is in the units you specify with Units.
DAQmx.CI.Encoder_DecodingType                         =          0x21E6;  % Specifies how to count and interpret the pulses the encoder generates on signal A and signal B. DAQmx.Val.X1, DAQmx.Val.X2, and DAQmx.Val.X4 are valid for quadrature encoders only. DAQmx.Val.TwoPulseCounting is valid for two-pulse encoders only.
DAQmx.CI.Encoder_AInputTerm                           =          0x219D;  % Specifies the terminal to which signal A is connected.
DAQmx.CI.Encoder_AInputTermCfg                        =          0x30A3;  % Specifies the input terminal configuration.
DAQmx.CI.Encoder_AInputLogicLvlBehavior               =          0x30A4;  % Specifies the logic level behavior on the input line.
DAQmx.CI.Encoder_AInput_DigFltr_Enable                =          0x21FB;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Encoder_AInput_DigFltr_MinPulseWidth         =          0x21FC;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Encoder_AInput_DigFltr_TimebaseSrc           =          0x21FD;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Encoder_AInput_DigFltr_TimebaseRate          =          0x21FE;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Encoder_AInput_DigSync_Enable                =          0x21FF;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Encoder_BInputTerm                           =          0x219E;  % Specifies the terminal to which signal B is connected.
DAQmx.CI.Encoder_BInputTermCfg                        =          0x30A5;  % Specifies the input terminal configuration.
DAQmx.CI.Encoder_BInputLogicLvlBehavior               =          0x30A6;  % Specifies the logic level behavior on the input line.
DAQmx.CI.Encoder_BInput_DigFltr_Enable                =          0x2200;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Encoder_BInput_DigFltr_MinPulseWidth         =          0x2201;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Encoder_BInput_DigFltr_TimebaseSrc           =          0x2202;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Encoder_BInput_DigFltr_TimebaseRate          =          0x2203;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Encoder_BInput_DigSync_Enable                =          0x2204;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Encoder_ZInputTerm                           =          0x219F;  % Specifies the terminal to which signal Z is connected.
DAQmx.CI.Encoder_ZInputTermCfg                        =          0x30A7;  % Specifies the input terminal configuration.
DAQmx.CI.Encoder_ZInputLogicLvlBehavior               =          0x30A8;  % Specifies the logic level behavior on the input line.
DAQmx.CI.Encoder_ZInput_DigFltr_Enable                =          0x2205;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Encoder_ZInput_DigFltr_MinPulseWidth         =          0x2206;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Encoder_ZInput_DigFltr_TimebaseSrc           =          0x2207;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Encoder_ZInput_DigFltr_TimebaseRate          =          0x2208;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Encoder_ZInput_DigSync_Enable                =          0x2209;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Encoder_ZIndexEnable                         =          0x0890;  % Specifies whether to use Z indexing for the channel.
DAQmx.CI.Encoder_ZIndexVal                            =          0x0888;  % Specifies the value to which to reset the measurement when signal Z is high and signal A and signal B are at the states you specify with Z Index Phase. Specify this value in the units of the measurement.
DAQmx.CI.Encoder_ZIndexPhase                          =          0x0889;  % Specifies the states at which signal A and signal B must be while signal Z is high for NI-DAQmx to reset the measurement. If signal Z is never high while signal A and signal B are high, for example, you must choose a phase other than DAQmx.Val.AHighBHigh.
DAQmx.CI.PulseWidth_Units                             =          0x0823;  % Specifies the units to use to return pulse width measurements.
DAQmx.CI.PulseWidth_Term                              =          0x18AA;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.PulseWidth_TermCfg                           =          0x30A9;  % Specifies the input terminal configuration.
DAQmx.CI.PulseWidth_LogicLvlBehavior                  =          0x30AA;  % Specifies the logic level behavior on the input line.
DAQmx.CI.PulseWidth_DigFltr_Enable                    =          0x220A;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.PulseWidth_DigFltr_MinPulseWidth             =          0x220B;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.PulseWidth_DigFltr_TimebaseSrc               =          0x220C;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.PulseWidth_DigFltr_TimebaseRate              =          0x220D;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.PulseWidth_DigSync_Enable                    =          0x220E;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.PulseWidth_StartingEdge                      =          0x0825;  % Specifies on which edge of the input signal to begin each pulse width measurement.
DAQmx.CI.Timestamp_Units                              =          0x22B3;  % Specifies the units to use to return timestamp measurements.
DAQmx.CI.Timestamp_InitialSeconds                     =          0x22B4;  % Specifies the number of seconds that elapsed since the beginning of the current year. This value is ignored if  Synchronization Method is DAQmx.Val.IRIGB.
DAQmx.CI.GPS_SyncMethod                               =          0x1092;  % Specifies the method to use to synchronize the counter to a GPS receiver.
DAQmx.CI.GPS_SyncSrc                                  =          0x1093;  % Specifies the terminal to which the GPS synchronization signal is connected.
DAQmx.CI.Velocity_AngEncoder_Units                    =          0x30D8;  % Specifies the units to use to return angular velocity counter measurements.
DAQmx.CI.Velocity_AngEncoder_PulsesPerRev             =          0x30D9;  % Specifies the number of pulses the encoder generates per revolution. This value is the number of pulses on either signal A or signal B, not the total number of pulses on both signal A and signal B.
DAQmx.CI.Velocity_LinEncoder_Units                    =          0x30DA;  % Specifies the units to use to return linear encoder velocity measurements from the channel.
DAQmx.CI.Velocity_LinEncoder_DistPerPulse             =          0x30DB;  % Specifies the distance to measure for each pulse the encoder generates on signal A or signal B. This value is in the units you specify in CI.Velocity.LinEncoder.DistUnits.
DAQmx.CI.Velocity_Encoder_DecodingType                =          0x30DC;  % Specifies how to count and interpret the pulses the encoder generates on signal A and signal B. X1, X2, and X4 are valid for quadrature encoders only. Two Pulse Counting is valid for two-pulse encoders only.
DAQmx.CI.Velocity_Encoder_AInputTerm                  =          0x30DD;  % Specifies the terminal to which signal A is connected.
DAQmx.CI.Velocity_Encoder_AInputTermCfg               =          0x30DE;  % Specifies the input terminal configuration.
DAQmx.CI.Velocity_Encoder_AInputLogicLvlBehavior      =          0x30DF;  % Specifies the logic level behavior of the input terminal.
DAQmx.CI.Velocity_Encoder_AInputDigFltr_Enable        =          0x30E0;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Velocity_Encoder_AInputDigFltr_MinPulseWidth =          0x30E1;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx.CI.Velocity_Encoder_AInputDigFltr_TimebaseSrc   =          0x30E2;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Velocity_Encoder_AInputDigFltr_TimebaseRate  =          0x30E3;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Velocity_Encoder_BInputTerm                  =          0x30E4;  % Specifies the terminal to which signal B is connected.
DAQmx.CI.Velocity_Encoder_BInputTermCfg               =          0x30E5;  % Specifies the input terminal configuration.
DAQmx.CI.Velocity_Encoder_BInputLogicLvlBehavior      =          0x30E6;  % Specifies the logic level behavior of the input terminal.
DAQmx.CI.Velocity_Encoder_BInputDigFltr_Enable        =          0x30E7;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.Velocity_Encoder_BInputDigFltr_MinPulseWidth =          0x30E8;  % Specifies in seconds the minimum pulse width the digital filter recognizes.
DAQmx.CI.Velocity_Encoder_BInputDigFltr_TimebaseSrc   =          0x30E9;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.Velocity_Encoder_BInputDigFltr_TimebaseRate  =          0x30EA;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Velocity_MeasTime                            =          0x30EB;  % Specifies in seconds the length of time to measure the velocity of the signal.
DAQmx.CI.Velocity_Div                                 =          0x30EC;  % Specifies the value by which to divide the input signal.
DAQmx.CI.TwoEdgeSep_Units                             =          0x18AC;  % Specifies the units to use to return two-edge separation measurements from the channel.
DAQmx.CI.TwoEdgeSep_FirstTerm                         =          0x18AD;  % Specifies the source terminal of the digital signal that starts each measurement.
DAQmx.CI.TwoEdgeSep_FirstTermCfg                      =          0x30AB;  % Specifies the input terminal configuration.
DAQmx.CI.TwoEdgeSep_FirstLogicLvlBehavior             =          0x30AC;  % Specifies the logic level behavior on the input line.
DAQmx.CI.TwoEdgeSep_First_DigFltr_Enable              =          0x220F;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.TwoEdgeSep_First_DigFltr_MinPulseWidth       =          0x2210;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.TwoEdgeSep_First_DigFltr_TimebaseSrc         =          0x2211;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.TwoEdgeSep_First_DigFltr_TimebaseRate        =          0x2212;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.TwoEdgeSep_First_DigSync_Enable              =          0x2213;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.TwoEdgeSep_FirstEdge                         =          0x0833;  % Specifies on which edge of the first signal to start each measurement.
DAQmx.CI.TwoEdgeSep_SecondTerm                        =          0x18AE;  % Specifies the source terminal of the digital signal that stops each measurement.
DAQmx.CI.TwoEdgeSep_SecondTermCfg                     =          0x30AD;  % Specifies the input terminal configuration.
DAQmx.CI.TwoEdgeSep_SecondLogicLvlBehavior            =          0x30AE;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.TwoEdgeSep_Second_DigFltr_Enable             =          0x2214;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.TwoEdgeSep_Second_DigFltr_MinPulseWidth      =          0x2215;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.TwoEdgeSep_Second_DigFltr_TimebaseSrc        =          0x2216;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.TwoEdgeSep_Second_DigFltr_TimebaseRate       =          0x2217;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.TwoEdgeSep_Second_DigSync_Enable             =          0x2218;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.TwoEdgeSep_SecondEdge                        =          0x0834;  % Specifies on which edge of the second signal to stop each measurement.
DAQmx.CI.SemiPeriod_Units                             =          0x18AF;  % Specifies the units to use to return semi-period measurements.
DAQmx.CI.SemiPeriod_Term                              =          0x18B0;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.SemiPeriod_TermCfg                           =          0x30AF;  % Specifies the input terminal configuration.
DAQmx.CI.SemiPeriod_LogicLvlBehavior                  =          0x30B0;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.SemiPeriod_DigFltr_Enable                    =          0x2219;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.SemiPeriod_DigFltr_MinPulseWidth             =          0x221A;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.SemiPeriod_DigFltr_TimebaseSrc               =          0x221B;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.SemiPeriod_DigFltr_TimebaseRate              =          0x221C;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.SemiPeriod_DigSync_Enable                    =          0x221D;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.SemiPeriod_StartingEdge                      =          0x22FE;  % Specifies on which edge of the input signal to begin semi-period measurement. Semi-period measurements alternate between high time and low time, starting on this edge.
DAQmx.CI.Pulse_Freq_Units                             =          0x2F0B;  % Specifies the units to use to return pulse specifications in terms of frequency.
DAQmx.CI.Pulse_Freq_Term                              =          0x2F04;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.Pulse_Freq_TermCfg                           =          0x30B1;  % Specifies the input terminal configuration.
DAQmx.CI.Pulse_Freq_LogicLvlBehavior                  =          0x30B2;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.Pulse_Freq_DigFltr_Enable                    =          0x2F06;  % Specifies whether to apply a digital filter to the signal to measure.
DAQmx.CI.Pulse_Freq_DigFltr_MinPulseWidth             =          0x2F07;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Pulse_Freq_DigFltr_TimebaseSrc               =          0x2F08;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.CI.Pulse_Freq_DigFltr_TimebaseRate              =          0x2F09;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Pulse_Freq_DigSync_Enable                    =          0x2F0A;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Pulse_Freq_Start_Edge                        =          0x2F05;  % Specifies on which edge of the input signal to begin pulse measurement.
DAQmx.CI.Pulse_Time_Units                             =          0x2F13;  % Specifies the units to use to return pulse specifications in terms of high time and low time.
DAQmx.CI.Pulse_Time_Term                              =          0x2F0C;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.Pulse_Time_TermCfg                           =          0x30B3;  % Specifies the input terminal configuration.
DAQmx.CI.Pulse_Time_LogicLvlBehavior                  =          0x30B4;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.Pulse_Time_DigFltr_Enable                    =          0x2F0E;  % Specifies whether to apply a digital filter to the signal to measure.
DAQmx.CI.Pulse_Time_DigFltr_MinPulseWidth             =          0x2F0F;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Pulse_Time_DigFltr_TimebaseSrc               =          0x2F10;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.CI.Pulse_Time_DigFltr_TimebaseRate              =          0x2F11;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Pulse_Time_DigSync_Enable                    =          0x2F12;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Pulse_Time_StartEdge                         =          0x2F0D;  % Specifies on which edge of the input signal to begin pulse measurement.
DAQmx.CI.Pulse_Ticks_Term                             =          0x2F14;  % Specifies the input terminal of the signal to measure.
DAQmx.CI.Pulse_Ticks_TermCfg                          =          0x30B5;  % Specifies the input terminal configuration.
DAQmx.CI.Pulse_Ticks_LogicLvlBehavior                 =          0x30B6;  % Specifies the logic level behavior on the count reset line.
DAQmx.CI.Pulse_Ticks_DigFltr_Enable                   =          0x2F16;  % Specifies whether to apply a digital filter to the signal to measure.
DAQmx.CI.Pulse_Ticks_DigFltr_MinPulseWidth            =          0x2F17;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.Pulse_Ticks_DigFltr_TimebaseSrc              =          0x2F18;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.CI.Pulse_Ticks_DigFltr_TimebaseRate             =          0x2F19;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.Pulse_Ticks_DigSync_Enable                   =          0x2F1A;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.Pulse_Ticks_StartEdge                        =          0x2F15;  % Specifies on which edge of the input signal to begin pulse measurement.
DAQmx.CI.CtrTimebaseSrc                               =          0x0143;  % Specifies the terminal of the timebase to use for the counter.
DAQmx.CI.CtrTimebaseRate                              =          0x18B2;  % Specifies in Hertz the frequency of the counter timebase. Specifying the rate of a counter timebase allows you to take measurements in terms of time or frequency rather than in ticks of the timebase. If you use an external timebase and do not specify the rate, you can take measurements only in terms of ticks of the timebase.
DAQmx.CI.CtrTimebaseActiveEdge                        =          0x0142;  % Specifies whether a timebase cycle is from rising edge to rising edge or from falling edge to falling edge.
DAQmx.CI.CtrTimebase_DigFltr_Enable                   =          0x2271;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CI.CtrTimebase_DigFltr_MinPulseWidth            =          0x2272;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CI.CtrTimebase_DigFltr_TimebaseSrc              =          0x2273;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CI.CtrTimebase_DigFltr_TimebaseRate             =          0x2274;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CI.CtrTimebase_DigSync_Enable                   =          0x2275;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CI.ThreshVoltage                                =          0x30B7;  % Specifies the digital threshold value in Volts for high and low input transitions. Some devices do not support this for differential channels.
DAQmx.CI.Filter_Enable                                =          0x31B7;  % Specifies the corresponding filter enable/disable state.
DAQmx.CI.Filter_Freq                                  =          0x31B8;  % Specifies the corresponding filter frequency (cutoff or center) of the filter response.
DAQmx.CI.Filter_Response                              =          0x31B9;  % Specifies the corresponding filter response and defines the shape of the filter response.
DAQmx.CI.Filter_Order                                 =          0x31BA;  % Specifies the corresponding filter order and defines the slope of the filter response.
DAQmx.CI.FilterDelay                                  =          0x31BB;  % Indicates the amount of time between when the input signal transitions and when the filtered sample is read by the host device. This value is in the units specified with Filter Delay Units.
DAQmx.CI.FilterDelayUnits                             =          0x31BC;  % Specifies the units of Filter Delay.
DAQmx.CI.Count                                        =          0x0148;  % Indicates the current value of the count register.
DAQmx.CI.OutputState                                  =          0x0149;  % Indicates the current state of the out terminal of the counter.
DAQmx.CI.TCReached                                    =          0x0150;  % Indicates whether the counter rolled over. When you query this property, NI-DAQmx resets it to FALSE.
DAQmx.CI.CtrTimebaseMasterTimebaseDiv                 =          0x18B3;  % Specifies the divisor for an external counter timebase. You can divide the counter timebase in order to measure slower signals without causing the count register to roll over.
DAQmx.CI.SampClkOverrunBehavior                       =          0x3093;  % Specifies the counter behavior when data is read but a new value was not detected during a sample clock.
DAQmx.CI.SampClkOverrunSentinelVal                    =          0x3094;  % Specifies the sentinel value returned when the No New Sample Behavior is set to Sentinel Value.
DAQmx.CI.DataXferMech                                 =          0x0200;  % Specifies the data transfer mode for the channel.
DAQmx.CI.DataXferReqCond                              =          0x2EFB;  % Specifies under what condition to transfer data from the onboard memory of the device to the buffer.
DAQmx.CI.UsbXferReqSize                               =          0x2A92;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.CI.UsbXferReqCount                              =          0x3004;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.CI.MemMapEnable                                 =          0x2ED2;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx.CI.NumPossiblyInvalidSamps                      =          0x193C;  % Indicates the number of samples that the device might have overwritten before it could transfer them to the buffer.
DAQmx.CI.DupCountPrevent                              =          0x21AC;  % Specifies whether to enable duplicate count prevention for the channel. Duplicate count prevention is enabled by default. Setting  Prescaler disables duplicate count prevention unless you explicitly enable it.
DAQmx.CI.Prescaler                                    =          0x2239;  % Specifies the divisor to apply to the signal you connect to the counter source terminal. Scaled data that you read takes this setting into account. You should use a prescaler only when you connect an external signal to the counter source terminal and when that signal has a higher frequency than the fastest onboard timebase. Setting this value disables duplicate count prevention unless you explicitly set Duplicate ...
DAQmx.CI.MaxMeasPeriod                                =          0x3095;  % Specifies the maximum period (in seconds) in which the device will recognize signals. For frequency measurements, a signal with a higher period than the one set in this property will return 0 Hz. For duty cycle, the device will return 0 or 1 depending on the state of the line during the max defined period of time. Period measurements will return NaN. Pulse width measurement will return zero.
DAQmx.CO.OutputType                                   =          0x18B5;  % Indicates how to define pulses generated on the channel.
DAQmx.CO.Pulse_IdleState                              =          0x1170;  % Specifies the resting state of the output terminal.
DAQmx.CO.Pulse_Term                                   =          0x18E1;  % Specifies on which terminal to generate pulses.
DAQmx.CO.Pulse_Time_Units                             =          0x18D6;  % Specifies the units in which to define high and low pulse time.
DAQmx.CO.Pulse_HighTime                               =          0x18BA;  % Specifies the amount of time that the pulse is at a high voltage. This value is in the units you specify with Units or when you create the channel.
DAQmx.CO.Pulse_LowTime                                =          0x18BB;  % Specifies the amount of time that the pulse is at a low voltage. This value is in the units you specify with Units or when you create the channel.
DAQmx.CO.Pulse_Time_InitialDelay                      =          0x18BC;  % Specifies in seconds the amount of time to wait before generating the first pulse.
DAQmx.CO.Pulse_DutyCyc                                =          0x1176;  % Specifies the duty cycle of the pulses. The duty cycle of a signal is the width of the pulse divided by period. NI-DAQmx uses this ratio and the pulse frequency to determine the width of the pulses and the delay between pulses.
DAQmx.CO.Pulse_Freq_Units                             =          0x18D5;  % Specifies the units in which to define pulse frequency.
DAQmx.CO.Pulse_Freq                                   =          0x1178;  % Specifies the frequency of the pulses to generate. This value is in the units you specify with Units or when you create the channel.
DAQmx.CO.Pulse_Freq_InitialDelay                      =          0x0299;  % Specifies in seconds the amount of time to wait before generating the first pulse.
DAQmx.CO.Pulse_HighTicks                              =          0x1169;  % Specifies the number of ticks the pulse is high.
DAQmx.CO.Pulse_LowTicks                               =          0x1171;  % Specifies the number of ticks the pulse is low.
DAQmx.CO.Pulse_Ticks_InitialDelay                     =          0x0298;  % Specifies the number of ticks to wait before generating the first pulse.
DAQmx.CO.CtrTimebaseSrc                               =          0x0339;  % Specifies the terminal of the timebase to use for the counter. Typically, NI-DAQmx uses one of the internal counter timebases when generating pulses. Use this property to specify an external timebase and produce custom pulse widths that are not possible using the internal timebases.
DAQmx.CO.CtrTimebaseRate                              =          0x18C2;  % Specifies in Hertz the frequency of the counter timebase. Specifying the rate of a counter timebase allows you to define output pulses in seconds rather than in ticks of the timebase. If you use an external timebase and do not specify the rate, you can define output pulses only in ticks of the timebase.
DAQmx.CO.CtrTimebaseActiveEdge                        =          0x0341;  % Specifies whether a timebase cycle is from rising edge to rising edge or from falling edge to falling edge.
DAQmx.CO.CtrTimebase_DigFltr_Enable                   =          0x2276;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.CO.CtrTimebase_DigFltr_MinPulseWidth            =          0x2277;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.CO.CtrTimebase_DigFltr_TimebaseSrc              =          0x2278;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.CO.CtrTimebase_DigFltr_TimebaseRate             =          0x2279;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.CO.CtrTimebase_DigSync_Enable                   =          0x227A;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.CO.Count                                        =          0x0293;  % Indicates the current value of the count register.
DAQmx.CO.OutputState                                  =          0x0294;  % Indicates the current state of the output terminal of the counter.
DAQmx.CO.AutoIncrCnt                                  =          0x0295;  % Specifies a number of timebase ticks by which to increase the time spent in the idle state for each successive pulse.
DAQmx.CO.CtrTimebaseMasterTimebaseDiv                 =          0x18C3;  % Specifies the divisor for an external counter timebase. You can divide the counter timebase in order to generate slower signals without causing the count register to roll over.
DAQmx.CO.PulseDone                                    =          0x190E;  % Indicates if the task completed pulse generation. Use this value for retriggerable pulse generation when you need to determine if the device generated the current pulse. For retriggerable tasks, when you query this property, NI-DAQmx resets it to FALSE.
DAQmx.CO.EnableInitialDelayOnRetrigger                =          0x2EC9;  % Specifies whether to apply the initial delay to retriggered pulse trains.
DAQmx.CO.ConstrainedGenMode                           =          0x29F2;  % Specifies constraints to apply when the counter generates pulses. Constraining the counter reduces the device resources required for counter operation. Constraining the counter can also allow additional analog or counter tasks on the device to run concurrently. For continuous counter tasks, NI-DAQmx consumes no device resources when the counter is constrained. For finite counter tasks, resource use increases with ...
DAQmx.CO.UseOnlyOnBrdMem                              =          0x2ECB;  % Specifies whether to write samples directly to the onboard memory of the device, bypassing the memory buffer. Generally, you cannot update onboard memory directly after you start the task. Onboard memory includes data FIFOs.
DAQmx.CO.DataXferMech                                 =          0x2ECC;  % Specifies the data transfer mode for the device. For buffered operations, use DMA or USB Bulk. For non-buffered operations, use Polled.
DAQmx.CO.DataXferReqCond                              =          0x2ECD;  % Specifies under what condition to transfer data from the buffer to the onboard memory of the device.
DAQmx.CO.UsbXferReqSize                               =          0x2A93;  % Specifies the maximum size of a USB transfer request in bytes. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.CO.UsbXferReqCount                              =          0x3005;  % Specifies the maximum number of simultaneous USB transfers used to stream data. Modify this value to affect performance under different combinations of operating system and device.
DAQmx.CO.MemMapEnable                                 =          0x2ED3;  % Specifies for NI-DAQmx to map hardware registers to the memory space of the application, if possible. Normally, NI-DAQmx maps hardware registers to memory accessible only to the kernel. Mapping the registers to the memory space of the application increases performance. However, if the application accesses the memory space mapped to the registers, it can adversely affect the operation of the device and possibly res...
DAQmx.CO.Prescaler                                    =          0x226D;  % Specifies the divisor to apply to the signal you connect to the counter source terminal. Pulse generations defined by frequency or time take this setting into account, but pulse generations defined by ticks do not. You should use a prescaler only when you connect an external signal to the counter source terminal and when that signal has a higher frequency than the fastest onboard timebase.
DAQmx.CO.RdyForNewVal                                 =          0x22FF;  % Indicates whether the counter is ready for new continuous pulse train values.
DAQmx.Pwr.Voltage_Setpoint                            =          0x31D4;  % Specifies the constant output voltage, in volts. Can be set while a task is running. Can be read at any time during a task.
DAQmx.Pwr.Voltage_DevScalingCoeff                     =          0x31D9;  % Indicates the coefficients of the polynomial equation that NI-DAQmx uses to scale values from the native format of the device to volts. Can be read at any time during a task.
DAQmx.Pwr.Current_Setpoint                            =          0x31D5;  % Specifies the output current, in amperes. If the load draws current greater than the specified value, the device will operate in Constant Current mode.
DAQmx.Pwr.Current_DevScalingCoeff                     =          0x31DA;  % Indicates the coefficients of the polynomial equation that NI-DAQmx uses to scale values from the native format of the device to amperes. Can be read at any time during a task.
DAQmx.Pwr.OutputEnable                                =          0x31D6;  % Specifies whether to enable or disable power module output. Can be set while a task is running. Can be read at any time during a task. When a task is running, the output is enabled immediately. Otherwise, the output is not enabled until the task enters the Committed state.
DAQmx.Pwr.OutputState                                 =          0x31D7;  % Indicates power channel operating state. Can be read at any time during a task.
DAQmx.Pwr.IdleOutputBehavior                          =          0x31D8;  % Specifies whether to disable the output or maintain the existing value after the task is uncommitted.
DAQmx.Pwr.RemoteSense                                 =          0x31DB;  % Specifies whether to use local or remote sense to sense the output voltage. DAQmx Read (Power) will return remote or local voltage based on the Remote Sense attribute value. Reading this property will return the user-defined value.
DAQmx.ChanType                                        =          0x187F;  % Indicates the type of the virtual channel.
DAQmx.PhysicalChanName                                =          0x18F5;  % Specifies the name of the physical channel upon which this virtual channel is based.
DAQmx.ChanDescr                                       =          0x1926;  % Specifies a user-defined description for the channel.
DAQmx.ChanIsGlobal                                    =          0x2304;  % Indicates whether the channel is a global channel.
DAQmx.Chan.SyncUnlockBehavior                         =          0x313C;  % Specifies the action to take if the target loses its synchronization to the grand master.

%********** Device Attributes **********
DAQmx.Dev.IsSimulated                              =             0x22CA;  % Indicates if the device is a simulated device.
DAQmx.Dev.ProductCategory                          =             0x29A9;  % Indicates the product category of the device. This category corresponds to the category displayed in MAX when creating NI-DAQmx simulated devices.
DAQmx.Dev.ProductType                              =             0x0631;  % Indicates the product name of the device.
DAQmx.Dev.ProductNum                               =             0x231D;  % Indicates the unique hardware identification number for the device.
DAQmx.Dev.SerialNum                                =             0x0632;  % Indicates the serial number of the device. This value is zero if the device does not have a serial number.
DAQmx.Dev.Accessory_ProductTypes                   =             0x2F6D;  % Indicates the model names of accessories connected to the device. Each array element corresponds to a connector. For example, index 0 corresponds to connector 0. The array contains an empty string for each connector with no accessory connected.
DAQmx.Dev.Accessory_ProductNums                    =             0x2F6E;  % Indicates the unique hardware identification number for accessories connected to the device. Each array element corresponds to a connector. For example, index 0 corresponds to connector 0. The array contains 0 for each connector with no accessory connected.
DAQmx.Dev.Accessory_SerialNums                     =             0x2F6F;  % Indicates the serial number for accessories connected to the device. Each array element corresponds to a connector. For example, index 0 corresponds to connector 0. The array contains 0 for each connector with no accessory connected.
DAQmx.Carrier.SerialNum                            =             0x2A8A;  % Indicates the serial number of the device carrier. This value is zero if the carrier does not have a serial number.
DAQmx.FieldDAQ.DevName                             =             0x3171;  % Indicates the parent device which this bank is located in.
DAQmx.FieldDAQ.BankDevNames                        =             0x3178;  % Indicates an array containing the names of the banks in the FieldDAQ.
DAQmx.Dev.Chassis_ModuleDevNames                   =             0x29B6;  % Indicates an array containing the names of the modules in the chassis.
DAQmx.Dev.AnlgTrigSupported                        =             0x2984;  % Indicates if the device supports analog triggering.
DAQmx.Dev.DigTrigSupported                         =             0x2985;  % Indicates if the device supports digital triggering.
DAQmx.Dev.TimeTrigSupported                        =             0x301F;  % Indicates whether the device supports time triggering.
DAQmx.Dev.AI_PhysicalChans                         =             0x231E;  % Indicates an array containing the names of the analog input physical channels available on the device.
DAQmx.Dev.AI_SupportedMeasTypes                    =             0x2FD2;  % Indicates the measurement types supported by the physical channels of the device. Refer to Measurement Types for information on specific channels.
DAQmx.Dev.AI_MaxSingleChanRate                     =             0x298C;  % Indicates the maximum rate for an analog input task if the task contains only a single channel from this device.
DAQmx.Dev.AI_MaxMultiChanRate                      =             0x298D;  % Indicates the maximum sampling rate for an analog input task from this device. To find the maximum rate for the task, take the minimum of Maximum Single Channel Rate or the indicated sampling rate of this device divided by the number of channels to acquire data from (including cold-junction compensation and autozero channels).
DAQmx.Dev.AI_MinRate                               =             0x298E;  % Indicates the minimum rate for an analog input task on this device. NI-DAQmx returns a warning or error if you attempt to sample at a slower rate.
DAQmx.Dev.AI_SimultaneousSamplingSupported         =             0x298F;  % Indicates if the device supports simultaneous sampling.
DAQmx.Dev.AI_NumSampTimingEngines                  =             0x3163;  % Indicates the number of Analog Input sample timing engines supported by the device.
DAQmx.Dev.AI_SampModes                             =             0x2FDC;  % Indicates sample modes supported by devices that support sample clocked analog input.
DAQmx.Dev.AI_NumSyncPulseSrcs                      =             0x3164;  % Indicates the number of Analog Input synchronization pulse sources supported by the device.
DAQmx.Dev.AI_TrigUsage                             =             0x2986;  % Indicates the triggers supported by this device for an analog input task.
DAQmx.Dev.AI_VoltageRngs                           =             0x2990;  % Indicates pairs of input voltage ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx.Dev.AI_VoltageIntExcitDiscreteVals           =             0x29C9;  % Indicates the set of discrete internal voltage excitation values supported by this device. If the device supports ranges of internal excitation values, use Range Values to determine supported excitation values.
DAQmx.Dev.AI_VoltageIntExcitRangeVals              =             0x29CA;  % Indicates pairs of internal voltage excitation ranges supported by this device. Each pair consists of the low value, followed by the high value. If the device supports a set of discrete internal excitation values, use Discrete Values to determine the supported excitation values.
DAQmx.Dev.AI_ChargeRngs                            =             0x3111;  % Indicates in coulombs pairs of input charge ranges for the device. Each pair consists of the low value followed by the high value.
DAQmx.Dev.AI_CurrentRngs                           =             0x2991;  % Indicates the pairs of current input ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx.Dev.AI_CurrentIntExcitDiscreteVals           =             0x29CB;  % Indicates the set of discrete internal current excitation values supported by this device.
DAQmx.Dev.AI_BridgeRngs                            =             0x2FD0;  % Indicates pairs of input voltage ratio ranges, in volts per volt, supported by devices that acquire using ratiometric measurements. Each pair consists of the low value followed by the high value.
DAQmx.Dev.AI_ResistanceRngs                        =             0x2A15;  % Indicates pairs of input resistance ranges, in ohms, supported by devices that have the necessary signal conditioning to measure resistances. Each pair consists of the low value followed by the high value.
DAQmx.Dev.AI_FreqRngs                              =             0x2992;  % Indicates the pairs of frequency input ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx.Dev.AI_Gains                                 =             0x2993;  % Indicates the input gain settings supported by this device.
DAQmx.Dev.AI_Couplings                             =             0x2994;  % Indicates the coupling types supported by this device.
DAQmx.Dev.AI_LowpassCutoffFreqDiscreteVals         =             0x2995;  % Indicates the set of discrete lowpass cutoff frequencies supported by this device. If the device supports ranges of lowpass cutoff frequencies, use Range Values to determine supported frequencies.
DAQmx.Dev.AI_LowpassCutoffFreqRangeVals            =             0x29CF;  % Indicates pairs of lowpass cutoff frequency ranges supported by this device. Each pair consists of the low value, followed by the high value. If the device supports a set of discrete lowpass cutoff frequencies, use Discrete Values to determine the supported  frequencies.
DAQmx.AI.DigFltr_Types                             =             0x3107;  % Indicates the AI digital filter types supported by the device.
DAQmx.Dev.AI_DigFltr_LowpassCutoffFreqDiscreteVals =             0x30C8;  % Indicates the set of discrete lowpass cutoff frequencies supported by this device. If the device supports ranges of lowpass cutoff frequencies, use AI.DigFltr.Lowpass.CutoffFreq.RangeVals to determine supported frequencies.
DAQmx.Dev.AI_DigFltr_LowpassCutoffFreqRangeVals    =             0x30C9;  % Indicates pairs of lowpass cutoff frequency ranges supported by this device. Each pair consists of the low value, followed by the high value. If the device supports a set of discrete lowpass cutoff frequencies, use AI.DigFltr.Lowpass.CutoffFreq.DiscreteVals to determine the supported frequencies.
DAQmx.Dev.AO_PhysicalChans                         =             0x231F;  % Indicates an array containing the names of the analog output physical channels available on the device.
DAQmx.Dev.AO_SupportedOutputTypes                  =             0x2FD3;  % Indicates the generation types supported by the physical channels of the device. Refer to Output Types for information on specific channels.
DAQmx.Dev.AO_MaxRate                               =             0x2997;  % Indicates the maximum analog output rate of the device.
DAQmx.Dev.AO_MinRate                               =             0x2998;  % Indicates the minimum analog output rate of the device.
DAQmx.Dev.AO_SampClkSupported                      =             0x2996;  % Indicates if the device supports the sample clock timing  type for analog output tasks.
DAQmx.Dev.AO_NumSampTimingEngines                  =             0x3165;  % Indicates the number of Analog Output sample timing engines supported by the device.
DAQmx.Dev.AO_SampModes                             =             0x2FDD;  % Indicates sample modes supported by devices that support sample clocked analog output.
DAQmx.Dev.AO_NumSyncPulseSrcs                      =             0x3166;  % Indicates the number of Analog Output synchronization pulse sources supported by the device.
DAQmx.Dev.AO_TrigUsage                             =             0x2987;  % Indicates the triggers supported by this device for analog output tasks.
DAQmx.Dev.AO_VoltageRngs                           =             0x299B;  % Indicates pairs of output voltage ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx.Dev.AO_CurrentRngs                           =             0x299C;  % Indicates pairs of output current ranges supported by this device. Each pair consists of the low value, followed by the high value.
DAQmx.Dev.AO_Gains                                 =             0x299D;  % Indicates the output gain settings supported by this device.
DAQmx.Dev.DI_Lines                                 =             0x2320;  % Indicates an array containing the names of the digital input lines available on the device.
DAQmx.Dev.DI_Ports                                 =             0x2321;  % Indicates an array containing the names of the digital input ports available on the device.
DAQmx.Dev.DI_MaxRate                               =             0x2999;  % Indicates the maximum digital input rate of the device.
DAQmx.Dev.DI_NumSampTimingEngines                  =             0x3167;  % Indicates the number of Digital Input sample timing engines supported by the device.
DAQmx.Dev.DI_TrigUsage                             =             0x2988;  % Indicates the triggers supported by this device for digital input tasks.
DAQmx.Dev.DO_Lines                                 =             0x2322;  % Indicates an array containing the names of the digital output lines available on the device.
DAQmx.Dev.DO_Ports                                 =             0x2323;  % Indicates an array containing the names of the digital output ports available on the device.
DAQmx.Dev.DO_MaxRate                               =             0x299A;  % Indicates the maximum digital output rate of the device.
DAQmx.Dev.DO_NumSampTimingEngines                  =             0x3168;  % Indicates the number of Digital Output synchronization pulse sources supported by the device.
DAQmx.Dev.DO_TrigUsage                             =             0x2989;  % Indicates the triggers supported by this device for digital output tasks.
DAQmx.Dev.CI_PhysicalChans                         =             0x2324;  % Indicates an array containing the names of the counter input physical channels available on the device.
DAQmx.Dev.CI_SupportedMeasTypes                    =             0x2FD4;  % Indicates the measurement types supported by the physical channels of the device. Refer to Measurement Types for information on specific channels.
DAQmx.Dev.CI_TrigUsage                             =             0x298A;  % Indicates the triggers supported by this device for counter input tasks.
DAQmx.Dev.CI_SampClkSupported                      =             0x299E;  % Indicates if the device supports the sample clock timing type for counter input tasks.
DAQmx.Dev.CI_SampModes                             =             0x2FDE;  % Indicates sample modes supported by devices that support sample clocked counter input.
DAQmx.Dev.CI_MaxSize                               =             0x299F;  % Indicates in bits the size of the counters on the device.
DAQmx.Dev.CI_MaxTimebase                           =             0x29A0;  % Indicates in hertz the maximum counter timebase frequency.
DAQmx.Dev.CO_PhysicalChans                         =             0x2325;  % Indicates an array containing the names of the counter output physical channels available on the device.
DAQmx.Dev.CO_SupportedOutputTypes                  =             0x2FD5;  % Indicates the generation types supported by the physical channels of the device. Refer to Output Types for information on specific channels.
DAQmx.Dev.CO_SampClkSupported                      =             0x2F5B;  % Indicates if the device supports Sample Clock timing for counter output tasks.
DAQmx.Dev.CO_SampModes                             =             0x2FDF;  % Indicates sample modes supported by devices that support sample clocked counter output.
DAQmx.Dev.CO_TrigUsage                             =             0x298B;  % Indicates the triggers supported by this device for counter output tasks.
DAQmx.Dev.CO_MaxSize                               =             0x29A1;  % Indicates in bits the size of the counters on the device.
DAQmx.Dev.CO_MaxTimebase                           =             0x29A2;  % Indicates in hertz the maximum counter timebase frequency.
DAQmx.Dev.TEDS_HWTEDSSupported                     =             0x2FD6;  % Indicates whether the device supports hardware TEDS.
DAQmx.Dev.NumDMAChans                              =             0x233C;  % Indicates the number of DMA channels on the device.
DAQmx.Dev.BusType                                  =             0x2326;  % Indicates the bus type of the device.
DAQmx.Dev.PCI_BusNum                               =             0x2327;  % Indicates the PCI bus number of the device.
DAQmx.Dev.PCI_DevNum                               =             0x2328;  % Indicates the PCI slot number of the device.
DAQmx.Dev.PXI_ChassisNum                           =             0x2329;  % Indicates the PXI chassis number of the device, as identified in MAX.
DAQmx.Dev.PXI_SlotNum                              =             0x232A;  % Indicates the PXI slot number of the device.
DAQmx.Dev.CompactDAQ_ChassisDevName                =             0x29B7;  % Indicates the name of the CompactDAQ chassis that contains this module.
DAQmx.Dev.CompactDAQ_SlotNum                       =             0x29B8;  % Indicates the slot number in which this module is located in the CompactDAQ chassis.
DAQmx.Dev.CompactRIO_ChassisDevName                =             0x3161;  % Indicates the name of the CompactRIO chassis that contains this module.
DAQmx.Dev.CompactRIO_SlotNum                       =             0x3162;  % Indicates the slot number of the CompactRIO chassis where this module is located.
DAQmx.Dev.TCPIP_Hostname                           =             0x2A8B;  % Indicates the IPv4 hostname of the device.
DAQmx.Dev.TCPIP_EthernetIP                         =             0x2A8C;  % Indicates the IPv4 address of the Ethernet interface in dotted decimal format. This property returns 0.0.0.0 if the Ethernet interface cannot acquire an address.
DAQmx.Dev.TCPIP_WirelessIP                         =             0x2A8D;  % Indicates the IPv4 address of the 802.11 wireless interface in dotted decimal format. This property returns 0.0.0.0 if the wireless interface cannot acquire an address.
DAQmx.Dev.Terminals                                =             0x2A40;  % Indicates a list of all terminals on the device.
DAQmx.Dev.NumTimeTrigs                             =             0x3141;  % Indicates the number of time triggers available on the device.
DAQmx.Dev.NumTimestampEngines                      =             0x3142;  % Indicates the number of timestamp engines available on the device.

%********** Export Signal Attributes **********
DAQmx.Exported.AIConvClk_OutputTerm                        =     0x1687;  % Specifies the terminal to which to route the AI Convert Clock.
DAQmx.Exported.AIConvClk_Pulse_Polarity                    =     0x1688;  % Indicates the polarity of the exported AI Convert Clock. The polarity is fixed and independent of the active edge of the source of the AI Convert Clock.
DAQmx.Exported.Exported10MHzRefClk_OutputTerm              =     0x226E;  % Specifies the terminal to which to route the 10MHz Clock.
DAQmx.Exported.Exported20MHzTimebase_OutputTerm            =     0x1657;  % Specifies the terminal to which to route the 20MHz Timebase.
DAQmx.Exported.SampClk_OutputBehavior                      =     0x186B;  % Specifies whether the exported Sample Clock issues a pulse at the beginning of a sample or changes to a high state for the duration of the sample.
DAQmx.Exported.SampClk_OutputTerm                          =     0x1663;  % Specifies the terminal to which to route the Sample Clock.
DAQmx.Exported.SampClk_DelayOffset                         =     0x21C4;  % Specifies in seconds the amount of time to offset the exported Sample clock.  Refer to timing diagrams for generation applications in the device documentation for more information about this value.
DAQmx.Exported.SampClk_Pulse_Polarity                      =     0x1664;  % Specifies the polarity of the exported Sample Clock if Output Behavior is DAQmx.Val.Pulse.
DAQmx.Exported.SampClkTimebase_OutputTerm                  =     0x18F9;  % Specifies the terminal to which to route the Sample Clock Timebase.
DAQmx.Exported.DividedSampClkTimebase_OutputTerm           =     0x21A1;  % Specifies the terminal to which to route the Divided Sample Clock Timebase.
DAQmx.Exported.AdvTrig_OutputTerm                          =     0x1645;  % Specifies the terminal to which to route the Advance Trigger.
DAQmx.Exported.AdvTrig_Pulse_Polarity                      =     0x1646;  % Indicates the polarity of the exported Advance Trigger.
DAQmx.Exported.AdvTrig_Pulse_WidthUnits                    =     0x1647;  % Specifies the units of Width Value.
DAQmx.Exported.AdvTrig_Pulse_Width                         =     0x1648;  % Specifies the width of an exported Advance Trigger pulse. Specify this value in the units you specify with Width Units.
DAQmx.Exported.PauseTrig_OutputTerm                        =     0x1615;  % Specifies the terminal to which to route the Pause Trigger.
DAQmx.Exported.PauseTrig_Lvl_ActiveLvl                     =     0x1616;  % Specifies the active level of the exported Pause Trigger.
DAQmx.Exported.RefTrig_OutputTerm                          =     0x0590;  % Specifies the terminal to which to route the Reference Trigger.
DAQmx.Exported.RefTrig_Pulse_Polarity                      =     0x0591;  % Specifies the polarity of the exported Reference Trigger.
DAQmx.Exported.StartTrig_OutputTerm                        =     0x0584;  % Specifies the terminal to which to route the Start Trigger.
DAQmx.Exported.StartTrig_Pulse_Polarity                    =     0x0585;  % Specifies the polarity of the exported Start Trigger.
DAQmx.Exported.AdvCmpltEvent_OutputTerm                    =     0x1651;  % Specifies the terminal to which to route the Advance Complete Event.
DAQmx.Exported.AdvCmpltEvent_Delay                         =     0x1757;  % Specifies the output signal delay in periods of the sample clock.
DAQmx.Exported.AdvCmpltEvent_Pulse_Polarity                =     0x1652;  % Specifies the polarity of the exported Advance Complete Event.
DAQmx.Exported.AdvCmpltEvent_Pulse_Width                   =     0x1654;  % Specifies the width of the exported Advance Complete Event pulse.
DAQmx.Exported.AIHoldCmpltEvent_OutputTerm                 =     0x18ED;  % Specifies the terminal to which to route the AI Hold Complete Event.
DAQmx.Exported.AIHoldCmpltEvent_PulsePolarity              =     0x18EE;  % Specifies the polarity of an exported AI Hold Complete Event pulse.
DAQmx.Exported.ChangeDetectEvent_OutputTerm                =     0x2197;  % Specifies the terminal to which to route the Change Detection Event.
DAQmx.Exported.ChangeDetectEvent_Pulse_Polarity            =     0x2303;  % Specifies the polarity of an exported Change Detection Event pulse.
DAQmx.Exported.CtrOutEvent_OutputTerm                      =     0x1717;  % Specifies the terminal to which to route the Counter Output Event.
DAQmx.Exported.CtrOutEvent_OutputBehavior                  =     0x174F;  % Specifies whether the exported Counter Output Event pulses or changes from one state to the other when the counter reaches terminal count.
DAQmx.Exported.CtrOutEvent_Pulse_Polarity                  =     0x1718;  % Specifies the polarity of the pulses at the output terminal of the counter when Output Behavior is DAQmx.Val.Pulse. NI-DAQmx ignores this property if Output Behavior is DAQmx.Val.Toggle.
DAQmx.Exported.CtrOutEvent_Toggle_IdleState                =     0x186A;  % Specifies the initial state of the output terminal of the counter when Output Behavior is DAQmx.Val.Toggle. The terminal enters this state when NI-DAQmx commits the task.
DAQmx.Exported.HshkEvent_OutputTerm                        =     0x22BA;  % Specifies the terminal to which to route the Handshake Event.
DAQmx.Exported.HshkEvent_OutputBehavior                    =     0x22BB;  % Specifies the output behavior of the Handshake Event.
DAQmx.Exported.HshkEvent_Delay                             =     0x22BC;  % Specifies the number of seconds to delay after the Handshake Trigger deasserts before asserting the Handshake Event.
DAQmx.Exported.HshkEvent_Interlocked_AssertedLvl           =     0x22BD;  % Specifies the asserted level of the exported Handshake Event if Output Behavior is DAQmx.Val.Interlocked.
DAQmx.Exported.HshkEvent_Interlocked_AssertOnStart         =     0x22BE;  % Specifies to assert the Handshake Event when the task starts if Output Behavior is DAQmx.Val.Interlocked.
DAQmx.Exported.HshkEvent_Interlocked_DeassertDelay         =     0x22BF;  % Specifies in seconds the amount of time to wait after the Handshake Trigger asserts before deasserting the Handshake Event if Output Behavior is DAQmx.Val.Interlocked.
DAQmx.Exported.HshkEvent_Pulse_Polarity                    =     0x22C0;  % Specifies the polarity of the exported Handshake Event if Output Behavior is DAQmx.Val.Pulse.
DAQmx.Exported.HshkEvent_Pulse_Width                       =     0x22C1;  % Specifies in seconds the pulse width of the exported Handshake Event if Output Behavior is DAQmx.Val.Pulse.
DAQmx.Exported.RdyForXferEvent_OutputTerm                  =     0x22B5;  % Specifies the terminal to which to route the Ready for Transfer Event.
DAQmx.Exported.RdyForXferEvent_Lvl_ActiveLvl               =     0x22B6;  % Specifies the active level of the exported Ready for Transfer Event.
DAQmx.Exported.RdyForXferEvent_DeassertCond                =     0x2963;  % Specifies when the ready for transfer event deasserts.
DAQmx.Exported.RdyForXferEvent_DeassertCondCustomThreshold =     0x2964;  % Specifies in samples the threshold below which the Ready for Transfer Event deasserts. This threshold is an amount of space available in the onboard memory of the device. Deassert Condition must be DAQmx.Val.OnbrdMemCustomThreshold to use a custom threshold.
DAQmx.Exported.DataActiveEvent_OutputTerm                  =     0x1633;  % Specifies the terminal to which to export the Data Active Event.
DAQmx.Exported.DataActiveEvent_Lvl_ActiveLvl               =     0x1634;  % Specifies the polarity of the exported Data Active Event.
DAQmx.Exported.RdyForStartEvent_OutputTerm                 =     0x1609;  % Specifies the terminal to which to route the Ready for Start Event.
DAQmx.Exported.RdyForStartEvent_Lvl_ActiveLvl              =     0x1751;  % Specifies the polarity of the exported Ready for Start Event.
DAQmx.Exported.SyncPulseEvent_OutputTerm                   =     0x223C;  % Specifies the terminal to which to route the Synchronization Pulse Event.
DAQmx.Exported.WatchdogExpiredEvent_OutputTerm             =     0x21AA;  % Specifies the terminal  to which to route the Watchdog Timer Expired Event.

%********** Persisted Channel Attributes **********
DAQmx.PersistedChan.Author                   =                   0x22D0;  % Indicates the author of the global channel.
DAQmx.PersistedChan.AllowInteractiveEditing  =                   0x22D1;  % Indicates whether the global channel can be edited in the DAQ Assistant.
DAQmx.PersistedChan.AllowInteractiveDeletion =                   0x22D2;  % Indicates whether the global channel can be deleted through MAX.

%********** Persisted Scale Attributes **********
DAQmx.PersistedScale.Author                   =                  0x22D4;  % Indicates the author of the custom scale.
DAQmx.PersistedScale.AllowInteractiveEditing  =                  0x22D5;  % Indicates whether the custom scale can be edited in the DAQ Assistant.
DAQmx.PersistedScale.AllowInteractiveDeletion =                  0x22D6;  % Indicates whether the custom scale can be deleted through MAX.

%********** Persisted Task Attributes **********
DAQmx.PersistedTask.Author                   =                   0x22CC;  % Indicates the author of the task.
DAQmx.PersistedTask.AllowInteractiveEditing  =                   0x22CD;  % Indicates whether the task can be edited in the DAQ Assistant.
DAQmx.PersistedTask.AllowInteractiveDeletion =                   0x22CE;  % Indicates whether the task can be deleted through MAX.

%********** Physical Channel Attributes **********
DAQmx.PhysicalChan.AI_SupportedMeasTypes           =             0x2FD7;  % Indicates the measurement types supported by the channel.
DAQmx.PhysicalChan.AI_TermCfgs                     =             0x2342;  % Indicates the list of terminal configurations supported by the channel.
DAQmx.PhysicalChan.AI_InputSrcs                    =             0x2FD8;  % Indicates the list of input sources supported by the channel. Channels may support using the signal from the I/O connector or one of several calibration signals.
DAQmx.PhysicalChan.AI_SensorPower_Types            =             0x3179;  % Indicates the types of power supplied to the sensor supported by this channel.
DAQmx.PhysicalChan.AI_SensorPower_VoltageRangeVals =             0x317A;  % Indicates pairs of sensor power voltage ranges supported by this channel. Each pair consists of the low value followed by the high value.
DAQmx.PhysicalChan.AI_PowerControl_Voltage         =             0x316C;  % Specifies the voltage level for the sensor's power supply.
DAQmx.PhysicalChan.AI_PowerControl_Enable          =             0x316D;  % Specifies whether to turn on the sensor's power supply.
DAQmx.PhysicalChan.AI_PowerControl_Type            =             0x316E;  % Specifies the type of power supplied to the sensor.
DAQmx.PhysicalChan.AI_SensorPower_OpenChan         =             0x317C;  % Indicates whether there is an open channel or undercurrent condition on the channel.
DAQmx.PhysicalChan.AI_SensorPower_Overcurrent      =             0x317D;  % Indicates whether there is an overcurrent condition on the channel.
DAQmx.PhysicalChan.AO_SupportedOutputTypes         =             0x2FD9;  % Indicates the output types supported by the channel.
DAQmx.PhysicalChan.AO_SupportedPowerUpOutputTypes  =             0x304E;  % Indicates the power up output types supported by the channel.
DAQmx.PhysicalChan.AO_TermCfgs                     =             0x29A3;  % Indicates the list of terminal configurations supported by the channel.
DAQmx.PhysicalChan.AO_ManualControlEnable          =             0x2A1E;  % Specifies if you can control the physical channel externally via a manual control located on the device. You cannot simultaneously control a channel manually and with NI-DAQmx.
DAQmx.PhysicalChan.AO_ManualControl_ShortDetected  =             0x2EC3;  % Indicates whether the physical channel is currently disabled due to a short detected on the channel.
DAQmx.PhysicalChan.AO_ManualControlAmplitude       =             0x2A1F;  % Indicates the current value of the front panel amplitude control for the physical channel in volts.
DAQmx.PhysicalChan.AO_ManualControlFreq            =             0x2A20;  % Indicates the current value of the front panel frequency control for the physical channel in hertz.
DAQmx.AO.PowerAmp_ChannelEnable                    =             0x3062;  % Specifies whether to enable or disable a channel for amplification. This property can also be used to check if a channel is enabled.
DAQmx.AO.PowerAmp_ScalingCoeff                     =             0x3063;  % Indicates the coefficients of a polynomial equation used to scale from pre-amplified values.
DAQmx.AO.PowerAmp_Overcurrent                      =             0x3064;  % Indicates if the channel detected an overcurrent condition.
DAQmx.AO.PowerAmp_Gain                             =             0x3065;  % Indicates the calibrated gain of the channel.
DAQmx.AO.PowerAmp_Offset                           =             0x3066;  % Indicates the calibrated offset of the channel in volts.
DAQmx.PhysicalChan.DI_PortWidth                    =             0x29A4;  % Indicates in bits the width of digital input port.
DAQmx.PhysicalChan.DI_SampClkSupported             =             0x29A5;  % Indicates if the sample clock timing type is supported for the digital input physical channel.
DAQmx.PhysicalChan.DI_SampModes                    =             0x2FE0;  % Indicates the sample modes supported by devices that support sample clocked digital input.
DAQmx.PhysicalChan.DI_ChangeDetectSupported        =             0x29A6;  % Indicates if the change detection timing type is supported for the digital input physical channel.
DAQmx.PhysicalChan.DO_PortWidth                    =             0x29A7;  % Indicates in bits the width of digital output port.
DAQmx.PhysicalChan.DO_SampClkSupported             =             0x29A8;  % Indicates if the sample clock timing type is supported for the digital output physical channel.
DAQmx.PhysicalChan.DO_SampModes                    =             0x2FE1;  % Indicates the sample modes supported by devices that support sample clocked digital output.
DAQmx.PhysicalChan.CI_SupportedMeasTypes           =             0x2FDA;  % Indicates the measurement types supported by the channel.
DAQmx.PhysicalChan.CO_SupportedOutputTypes         =             0x2FDB;  % Indicates the output types supported by the channel.
DAQmx.PhysicalChan.TEDS_MfgID                      =             0x21DA;  % Indicates the manufacturer ID of the sensor.
DAQmx.PhysicalChan.TEDS_ModelNum                   =             0x21DB;  % Indicates the model number of the sensor.
DAQmx.PhysicalChan.TEDS_SerialNum                  =             0x21DC;  % Indicates the serial number of the sensor.
DAQmx.PhysicalChan.TEDS_VersionNum                 =             0x21DD;  % Indicates the version number of the sensor.
DAQmx.PhysicalChan.TEDS_VersionLetter              =             0x21DE;  % Indicates the version letter of the sensor.
DAQmx.PhysicalChan.TEDS_BitStream                  =             0x21DF;  % Indicates the TEDS binary bitstream without checksums.
DAQmx.PhysicalChan.TEDS_TemplateIDs                =             0x228F;  % Indicates the IDs of the templates in the bitstream in BitStream.

%********** Read Attributes **********
DAQmx.Read.RelativeTo                           =                0x190A;  % Specifies the point in the buffer at which to begin a read operation. If you also specify an offset with Offset, the read operation begins at that offset relative to the point you select with this property. The default value is DAQmx.Val.CurrReadPos unless you configure a Reference Trigger for the task. If you configure a Reference Trigger, the default value is DAQmx.Val.FirstPretrigSamp.
DAQmx.Read.Offset                               =                0x190B;  % Specifies an offset in samples per channel at which to begin a read operation. This offset is relative to the location you specify with RelativeTo.
DAQmx.Read.ChannelsToRead                       =                0x1823;  % Specifies a subset of channels in the task from which to read.
DAQmx.Read.ReadAllAvailSamp                     =                0x1215;  % Specifies whether subsequent read operations read all samples currently available in the buffer or wait for the buffer to become full before reading. NI-DAQmx uses this setting for finite acquisitions and only when the number of samples to read is -1. For continuous acquisitions when the number of samples to read is -1, a read operation always reads all samples currently available in the buffer.
DAQmx.Read.AutoStart                            =                0x1826;  % Specifies if an NI-DAQmx Read function automatically starts the task  if you did not start the task explicitly by using DAQmxStartTask(). The default value is TRUE. When  an NI-DAQmx Read function starts a finite acquisition task, it also stops the task after reading the last sample.
DAQmx.Read.OverWrite                            =                0x1211;  % Specifies whether to overwrite samples in the buffer that you have not yet read.
DAQmx.Logging.FilePath                          =                0x2EC4;  % Specifies the path to the TDMS file to which you want to log data.  If the file path is changed while the task is running, this takes effect on the next sample interval (if Logging.SampsPerFile has been set) or when DAQmx Start New File is called. New file paths can be specified by ending with "\" or "/". Files created after specifying a new file path retain the same name and numbering sequence.
DAQmx.Logging.Mode                              =                0x2EC5;  % Specifies whether to enable logging and whether to allow reading data while logging. Log mode allows for the best performance. However, you cannot read data while logging if you specify this mode. If you want to read data while logging, specify Log and Read mode.
DAQmx.Logging.TDMS_GroupName                    =                0x2EC6;  % Specifies the name of the group to create within the TDMS file for data from this task. If you append data to an existing file and the specified group already exists, NI-DAQmx appends a number symbol and a number to the group name, incrementing that number until finding a group name that does not exist. For example, if you specify a group name of Voltage Task, and that group already exists, NI-DAQmx assigns the gr...
DAQmx.Logging.TDMS_Operation                    =                0x2EC7;  % Specifies how to open the TDMS file.
DAQmx.Logging.Pause                             =                0x2FE3;  % Specifies whether logging is paused while a task is executing. If Mode is set to Log and Read mode, this value is taken into consideration on the next call to DAQmx Read, where data is written to disk. If Mode is set to Log Only mode, this value is taken into consideration the next time that data is written to disk. A new TDMS group is written when logging is resumed from a paused state.
DAQmx.Logging.SampsPerFile                      =                0x2FE4;  % Specifies how many samples to write to each file. When the file reaches the number of samples specified, a new file is created with the naming convention of &#60;filename&#62;_####.tdms, where #### starts at 0001 and increments automatically with each new file. For example, if the file specified is C:\data.tdms, the next file name used is C:\data_0001.tdms. To disable file spanning behavior, set this attribute to ...
DAQmx.Logging.FileWriteSize                     =                0x2FC3;  % Specifies the size, in samples, in which data will be written to disk.  The size must be evenly divisible by the volume sector size, in bytes.
DAQmx.Logging.FilePreallocationSize             =                0x2FC6;  % Specifies a size in samples to be used to pre-allocate space on disk.  Pre-allocation can improve file I/O performance, especially in situations where multiple files are being written to disk.  For finite tasks, the default behavior is to pre-allocate the file based on the number of samples you configure the task to acquire.
DAQmx.Read.CurrReadPos                          =                0x1221;  % Indicates in samples per channel the current position in the buffer.
DAQmx.Read.AvailSampPerChan                     =                0x1223;  % Indicates the number of samples available to read per channel. This value is the same for all channels in the task.
DAQmx.Read.TotalSampPerChanAcquired             =                0x192A;  % Indicates the total number of samples acquired by each channel. NI-DAQmx returns a single value because this value is the same for all channels. For retriggered acquisitions, this value is the cumulative number of samples across all retriggered acquisitions.
DAQmx.Read.CommonModeRangeErrorChansExist       =                0x2A98;  % Indicates if the device(s) detected a common mode range violation for any virtual channel in the task. Common mode range violation occurs when the voltage of either the positive terminal or negative terminal to ground are out of range. Reading this property clears the common mode range violation status for all channels in the task. You must read this property before you read Common Mode Range Error Channels. Other...
DAQmx.Read.CommonModeRangeErrorChans            =                0x2A99;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected a common mode range violation. You must read Common Mode Range Error Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.ExcitFaultChansExist                 =                0x3088;  % Indicates if the device(s) detected an excitation fault condition for any virtual channel in the task. Reading this property clears the excitation fault status for all channels in the task. You must read this property before you read Excitation Fault Channels. Otherwise, you will receive an error.
DAQmx.Read.ExcitFaultChans                      =                0x3089;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an excitation fault condition. You must read Excitation Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.OvercurrentChansExist                =                0x29E6;  % Indicates if the device(s) detected an overcurrent condition for any virtual channel in the task. Reading this property clears the overcurrent status for all channels in the task. You must read this property before you read Overcurrent Channels. Otherwise, you will receive an error.
DAQmx.Read.OvercurrentChans                     =                0x29E7;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an overcurrent condition. You must read Overcurrent Channels Exist before you read this property. Otherwise, you will receive an error. On some devices, you must restart the task for all overcurrent channels to recover.
DAQmx.Read.OvertemperatureChansExist            =                0x3081;  % Indicates if the device(s) detected an overtemperature condition in any virtual channel in the task. Reading this property clears the overtemperature status for all channels in the task. You must read this property before you read Overtemperature Channels. Otherwise, you will receive an error.
DAQmx.Read.OvertemperatureChans                 =                0x3082;  % Indicates a list of names of any overtemperature virtual channels. You must read Overtemperature Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.OpenChansExist                       =                0x3100;  % Indicates if the device or devices detected an open channel condition in any virtual channel in the task. Reading this property clears the open channel status for all channels in this task. You must read this property before you read Open Channels. Otherwise, you will receive an error.
DAQmx.Read.OpenChans                            =                0x3101;  % Indicates a list of names of any open virtual channels. You must read Open Channels Exist before you read this property. Otherwise you will receive an error.
DAQmx.Read.OpenChansDetails                     =                0x3102;  % Indicates a list of details of any open virtual channels. You must read Open Channels Exist before you read this property. Otherwise you will receive an error.
DAQmx.Read.OpenCurrentLoopChansExist            =                0x2A09;  % Indicates if the device(s) detected an open current loop for any virtual channel in the task. Reading this property clears the open current loop status for all channels in the task. You must read this property before you read Open Current Loop Channels. Otherwise, you will receive an error.
DAQmx.Read.OpenCurrentLoopChans                 =                0x2A0A;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an open current loop. You must read Open Current Loop Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.OpenThrmcplChansExist                =                0x2A96;  % Indicates if the device(s) detected an open thermocouple connected to any virtual channel in the task. Reading this property clears the open thermocouple status for all channels in the task. You must read this property before you read Open Thermocouple Channels. Otherwise, you will receive an error.
DAQmx.Read.OpenThrmcplChans                     =                0x2A97;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an open thermcouple. You must read Open Thermocouple Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.OverloadedChansExist                 =                0x2174;  % Indicates if the device(s) detected an overload in any virtual channel in the task. Reading this property clears the overload status for all channels in the task. You must read this property before you read Overloaded Channels. Otherwise, you will receive an error.
DAQmx.Read.OverloadedChans                      =                0x2175;  % Indicates a list of names of any overloaded virtual channels in the task. You must read Overloaded Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.InputLimitsFaultChansExist           =                0x318F;  % Indicates if the device or devices detected a sample that was outside the upper or lower limits configured for each channel in the task. Reading this property clears the input limits fault channel status for all channels in the task. You must read this property before you read Input Limits Fault Channels. Otherwise, you will receive an error. Note: Fault detection applies to both positive and negative inputs. For ...
DAQmx.Read.InputLimitsFaultChans                =                0x3190;  % Indicates the virtual channels that have detected samples outside the upper or lower limits configured for each channel in the task. You must read Input Limits Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.PLL_UnlockedChansExist               =                0x3118;  % Indicates whether the PLL is currently locked, or whether it became unlocked during the previous acquisition. Devices may report PLL Unlock either during acquisition or after acquisition.
DAQmx.Read.PLL_UnlockedChans                    =                0x3119;  % Indicates the channels that had their PLLs unlock.
DAQmx.Read.PowerSupplyFaultChansExist           =                0x3192;  % Indicates if the device or devices detected a power supply fault condition in any virtual channel in the task. Reading this property clears the power supply fault status for all channels in this task. You must read this property before you read Power Supply Fault Channels. Otherwise, you will receive an error.
DAQmx.Read.PowerSupplyFaultChans                =                0x3193;  % Indicates the virtual channels that have detected a power supply fault. You must read Power Supply Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Read.Sync_UnlockedChansExist              =                0x313D;  % Indicates whether the target is currently locked to the grand master. Devices may report PLL Unlock either during acquisition or after acquisition.
DAQmx.Read.Sync_UnlockedChans                   =                0x313E;  % Indicates the channels from devices in an unlocked target.
DAQmx.Read.AccessoryInsertionOrRemovalDetected  =                0x2F70;  % Indicates if any device(s) in the task detected the insertion or removal of an accessory since the task started. Reading this property clears the accessory change status for all channels in the task. You must read this property before you read Devices with Inserted or Removed Accessories. Otherwise, you will receive an error.
DAQmx.Read.DevsWithInsertedOrRemovedAccessories =                0x2F71;  % Indicates the names of any devices that detected the insertion or removal of an accessory since the task started. You must read Accessory Insertion or Removal Detected before you read this property. Otherwise, you will receive an error.
DAQmx.RemoteSenseErrorChansExist                =                0x31DD;  % Indicates if the device(s) detected an error condition of the remote sense connection for any channel in the task. You must disable the output and resolve the hardware connection issue to clear the error condition. You must read this property before you read the Remote Sense Error Channels property. Otherwise, you will receive an error.
DAQmx.RemoteSenseErrorChans                     =                0x31DE;  % Indicates a list of names of any virtual channels in the task for which a remote sense connection error condition has been detected. You must read Remote Sense Error Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.AuxPowerErrorChansExist                   =                0x31DF;  % Indicates if the device(s) detected an auxiliary power supply error condition for any channel in the task. Reading this property clears the error condition status for all channels in the task. You must read this property before you read the Aux Power Error Channels property. Otherwise, you will receive an error.
DAQmx.AuxPowerErrorChans                        =                0x31E0;  % Indicates a list of names of any virtual channels in the task for which an auxiliary power supply error condition has been detected. You must read the Aux Power Error Channels Exist property before you read this property. Otherwise, you will receive an error.
DAQmx.ReverseVoltageErrorChansExist             =                0x31E6;  % Indicates if the device(s) detected reverse voltage error for any of the channels in the task. Reverse voltage error occurs if the local voltage is equal to the negative saturated voltage. Reading this property clears the error condition status for all channels in the task. You must read this property before you read the Reverse Voltage Error Channels property. Otherwise, you will receive an error.
DAQmx.ReverseVoltageErrorChans                  =                0x31E7;  % Indicates a list of names of all virtual channels in the task for which reverse voltage error condition has been detected. You must read the Reverse Voltage Error Channels Exist property before you read this property. Otherwise, you will receive an error.
DAQmx.Read.ChangeDetect_HasOverflowed           =                0x2194;  % Indicates if samples were missed because change detection events occurred faster than the device could handle them. Some devices detect overflows differently than others.
DAQmx.Read.RawDataWidth                         =                0x217A;  % Indicates in bytes the size of a raw sample from the task.
DAQmx.Read.NumChans                             =                0x217B;  % Indicates the number of channels that an NI-DAQmx Read function reads from the task. This value is the number of channels in the task or the number of channels you specify with Channels to Read.
DAQmx.Read.DigitalLines_BytesPerChan            =                0x217C;  % Indicates the number of bytes per channel that NI-DAQmx returns in a sample for line-based reads. If a channel has fewer lines than this number, the extra bytes are FALSE.
DAQmx.Read.WaitMode                             =                0x2232;  % Specifies how an NI-DAQmx Read function waits for samples to become available.
DAQmx.Read.SleepTime                            =                0x22B0;  % Specifies in seconds the amount of time to sleep after checking for available samples if Wait Mode is DAQmx.Val.Sleep.

%********** Real-Time Attributes **********
DAQmx.RealTime.ConvLateErrorsToWarnings   =                      0x22EE;  % Specifies if DAQmxWaitForNextSampleClock(), an NI-DAQmx Read function, and an NI-DAQmx Write function convert late errors to warnings. NI-DAQmx returns no late warnings or errors until the number of warmup iterations you specify with Number Of Warmup Iterations execute.
DAQmx.RealTime.NumOfWarmupIters           =                      0x22ED;  % Specifies the number of loop iterations that must occur before DAQmxWaitForNextSampleClock() and an NI-DAQmx Read function return any late warnings or errors. The system needs a number of iterations to stabilize. During this period, a large amount of jitter occurs, potentially causing reads and writes to be late. The default number of warmup iterations is 100. Specify a larger number if needed to stabilize the sys...
DAQmx.RealTime.WaitForNextSampClkWaitMode =                      0x22EF;  % Specifies how DAQmxWaitForNextSampleClock() waits for the next Sample Clock pulse.
DAQmx.RealTime.ReportMissedSamp           =                      0x2319;  % Specifies whether an NI-DAQmx Read function returns lateness errors or warnings when it detects missed Sample Clock pulses. This setting does not affect DAQmxWaitForNextSampleClock(). Set this property to TRUE for applications that need to detect lateness without using DAQmxWaitForNextSampleClock().
DAQmx.RealTime.WriteRecoveryMode          =                      0x231A;  % Specifies how NI-DAQmx attempts to recover after missing a Sample Clock pulse when performing counter writes.

%********** Scale Attributes **********
DAQmx.Scale.Descr               =                                0x1226;  % Specifies a description for the scale.
DAQmx.Scale.ScaledUnits         =                                0x191B;  % Specifies the units to use for scaled values. You can use an arbitrary string.
DAQmx.Scale.PreScaledUnits      =                                0x18F7;  % Specifies the units of the values that you want to scale.
DAQmx.Scale.Type                =                                0x1929;  % Indicates the method or equation form that the custom scale uses.
DAQmx.Scale.Lin_Slope           =                                0x1227;  % Specifies the slope, m, in the equation y=mx+b.
DAQmx.Scale.Lin_YIntercept      =                                0x1228;  % Specifies the y-intercept, b, in the equation y=mx+b.
DAQmx.Scale.Map_ScaledMax       =                                0x1229;  % Specifies the largest value in the range of scaled values. NI-DAQmx maps this value to Pre-Scaled Maximum Value. Reads coerce samples that are larger than this value to match this value. Writes generate errors for samples that are larger than this value.
DAQmx.Scale.Map_PreScaledMax    =                                0x1231;  % Specifies the largest value in the range of pre-scaled values. NI-DAQmx maps this value to Scaled Maximum Value.
DAQmx.Scale.Map_ScaledMin       =                                0x1230;  % Specifies the smallest value in the range of scaled values. NI-DAQmx maps this value to Pre-Scaled Minimum Value. Reads coerce samples that are smaller than this value to match this value. Writes generate errors for samples that are smaller than this value.
DAQmx.Scale.Map_PreScaledMin    =                                0x1232;  % Specifies the smallest value in the range of pre-scaled values. NI-DAQmx maps this value to Scaled Minimum Value.
DAQmx.Scale.Poly_ForwardCoeff   =                                0x1234;  % Specifies an array of coefficients for the polynomial that converts pre-scaled values to scaled values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9x^3.
DAQmx.Scale.Poly_ReverseCoeff   =                                0x1235;  % Specifies an array of coefficients for the polynomial that converts scaled values to pre-scaled values. Each element of the array corresponds to a term of the equation. For example, if index three of the array is 9, the fourth term of the equation is 9y^3.
DAQmx.Scale.Table_ScaledVals    =                                0x1236;  % Specifies an array of scaled values. These values map directly to the values in Pre-Scaled Values.
DAQmx.Scale.Table_PreScaledVals =                                0x1237;  % Specifies an array of pre-scaled values. These values map directly to the values in Scaled Values.

%********** Switch Channel Attributes **********
DAQmx.SwitchChan.Usage                =                          0x18E4;  % (Deprecated) Specifies how you can use the channel. Using this property acts as a safety mechanism to prevent you from connecting two source channels, for example.
DAQmx.SwitchChan.AnlgBusSharingEnable =                          0x2F9E;  % (Deprecated) Specifies whether to enable sharing of an analog bus line so that multiple switch devices can connect to it simultaneously. For each device that will share the analog bus line, set this property to TRUE to enable sharing on the channel that connects to the analog bus line. Analog bus sharing is disabled by default.
DAQmx.SwitchChan.MaxACCarryCurrent    =                          0x0648;  % (Deprecated) Indicates in amperes the maximum AC current that the device can carry.
DAQmx.SwitchChan.MaxACSwitchCurrent   =                          0x0646;  % (Deprecated) Indicates in amperes the maximum AC current that the device can switch. This current is always against an RMS voltage level.
DAQmx.SwitchChan.MaxACCarryPwr        =                          0x0642;  % (Deprecated) Indicates in watts the maximum AC power that the device can carry.
DAQmx.SwitchChan.MaxACSwitchPwr       =                          0x0644;  % (Deprecated) Indicates in watts the maximum AC power that the device can switch.
DAQmx.SwitchChan.MaxDCCarryCurrent    =                          0x0647;  % (Deprecated) Indicates in amperes the maximum DC current that the device can carry.
DAQmx.SwitchChan.MaxDCSwitchCurrent   =                          0x0645;  % (Deprecated) Indicates in amperes the maximum DC current that the device can switch. This current is always against a DC voltage level.
DAQmx.SwitchChan.MaxDCCarryPwr        =                          0x0643;  % (Deprecated) Indicates in watts the maximum DC power that the device can carry.
DAQmx.SwitchChan.MaxDCSwitchPwr       =                          0x0649;  % (Deprecated) Indicates in watts the maximum DC power that the device can switch.
DAQmx.SwitchChan.MaxACVoltage         =                          0x0651;  % (Deprecated) Indicates in volts the maximum AC RMS voltage that the device can switch.
DAQmx.SwitchChan.MaxDCVoltage         =                          0x0650;  % (Deprecated) Indicates in volts the maximum DC voltage that the device can switch.
DAQmx.SwitchChan.WireMode             =                          0x18E5;  % (Deprecated) Indicates the number of wires that the channel switches.
DAQmx.SwitchChan.Bandwidth            =                          0x0640;  % (Deprecated) Indicates in Hertz the maximum frequency of a signal that can pass through the switch without significant deterioration.
DAQmx.SwitchChan.Impedance            =                          0x0641;  % (Deprecated) Indicates in ohms the switch impedance. This value is important in the RF domain and should match the impedance of the sources and loads.

%********** Switch Device Attributes **********
DAQmx.SwitchDev.SettlingTime                    =                0x1244;  % (Deprecated) Specifies in seconds the amount of time to wait for the switch to settle (or debounce). NI-DAQmx adds this time to the settling time of the motherboard. Modify this property only if the switch does not settle within the settling time of the motherboard. Refer to device documentation for supported settling times.
DAQmx.SwitchDev.AutoConnAnlgBus                 =                0x17DA;  % (Deprecated) Specifies if NI-DAQmx routes multiplexed channels to the analog bus backplane. Only the SCXI-1127 and SCXI-1128 support this property.
DAQmx.SwitchDev.PwrDownLatchRelaysAfterSettling =                0x22DB;  % (Deprecated) Specifies if DAQmxSwitchWaitForSettling() powers down latching relays after waiting for the device to settle.
DAQmx.SwitchDev.Settled                         =                0x1243;  % (Deprecated) Indicates when Settling Time expires.
DAQmx.SwitchDev.RelayList                       =                0x17DC;  % (Deprecated) Indicates a comma-delimited list of relay names.
DAQmx.SwitchDev.NumRelays                       =                0x18E6;  % (Deprecated) Indicates the number of relays on the device. This value matches the number of relay names in Relay List.
DAQmx.SwitchDev.SwitchChanList                  =                0x18E7;  % (Deprecated) Indicates a comma-delimited list of channel names for the current topology of the device.
DAQmx.SwitchDev.NumSwitchChans                  =                0x18E8;  % (Deprecated) Indicates the number of switch channels for the current topology of the device. This value matches the number of channel names in Switch Channel List.
DAQmx.SwitchDev.NumRows                         =                0x18E9;  % (Deprecated) Indicates the number of rows on a device in a matrix switch topology. Indicates the number of multiplexed channels on a device in a mux topology.
DAQmx.SwitchDev.NumColumns                      =                0x18EA;  % (Deprecated) Indicates the number of columns on a device in a matrix switch topology. This value is always 1 if the device is in a mux topology.
DAQmx.SwitchDev.Topology                        =                0x193D;  % (Deprecated) Indicates the current topology of the device. This value is one of the topology options in DAQmxSwitchSetTopologyAndReset().
DAQmx.SwitchDev.Temperature                     =                0x301A;  % (Deprecated) Indicates the current temperature as read by the Switch module in degrees Celsius. Refer to your device documentation for more information.

%********** Switch Scan Attributes **********
DAQmx.SwitchScan.BreakMode     =                                 0x1247;  % (Deprecated) Specifies the action to take between each entry in a scan list.
DAQmx.SwitchScan.RepeatMode    =                                 0x1248;  % (Deprecated) Specifies if the task advances through the scan list multiple times.
DAQmx.SwitchScan.WaitingForAdv =                                 0x17D9;  % (Deprecated) Indicates if the switch hardware is waiting for an  Advance Trigger. If the hardware is waiting, it completed the previous entry in the scan list.

%********** System Attributes **********
DAQmx.Sys.GlobalChans        =                                   0x1265;  % Indicates an array that contains the names of all global channels saved on the system.
DAQmx.Sys.Scales             =                                   0x1266;  % Indicates an array that contains the names of all custom scales saved on the system.
DAQmx.Sys.Tasks              =                                   0x1267;  % Indicates an array that contains the names of all tasks saved on the system.
DAQmx.Sys.DevNames           =                                   0x193B;  % Indicates the names of all devices installed in the system.
DAQmx.Sys.NIDAQMajorVersion  =                                   0x1272;  % Indicates the major portion of the installed version of NI-DAQmx, such as 7 for version 7.0.
DAQmx.Sys.NIDAQMinorVersion  =                                   0x1923;  % Indicates the minor portion of the installed version of NI-DAQmx, such as 0 for version 7.0.
DAQmx.Sys.NIDAQUpdateVersion =                                   0x2F22;  % Indicates the update portion of the installed version of NI-DAQmx, such as 1 for version 9.0.1.

%********** Task Attributes **********
DAQmx.Task.Name       =                                          0x1276;  % Indicates the name of the task.
DAQmx.Task.Channels   =                                          0x1273;  % Indicates the names of all virtual channels in the task.
DAQmx.Task.NumChans   =                                          0x2181;  % Indicates the number of virtual channels in the task.
DAQmx.Task.Devices    =                                          0x230E;  % Indicates an array containing the names of all devices in the task.
DAQmx.Task.NumDevices =                                          0x29BA;  % Indicates the number of devices in the task.
DAQmx.Task.Complete   =                                          0x1274;  % Indicates whether the task completed execution.

%********** Timing Attributes **********
DAQmx.SampQuant.SampMode                       =                 0x1300;  % Specifies if a task acquires or generates a finite number of samples or if it continuously acquires or generates samples.
DAQmx.SampQuant.SampPerChan                    =                 0x1310;  % Specifies the number of samples to acquire or generate for each channel if Sample Mode is DAQmx.Val.FiniteSamps. If Sample Mode is DAQmx.Val.ContSamps, NI-DAQmx uses this value to determine the buffer size.
DAQmx.SampTimingType                           =                 0x1347;  % Specifies the type of sample timing to use for the task.
DAQmx.SampClk.Rate                             =                 0x1344;  % Specifies the sampling rate in samples per channel per second. If you use an external source for the Sample Clock, set this input to the maximum expected rate of that clock.
DAQmx.SampClk.MaxRate                          =                 0x22C8;  % Indicates the maximum Sample Clock rate supported by the task, based on other timing settings. For output tasks, the maximum Sample Clock rate is the maximum rate of the DAC. For input tasks, NI-DAQmx calculates the maximum sampling rate differently for multiplexed devices than simultaneous sampling devices.
DAQmx.SampClk.Src                              =                 0x1852;  % Specifies the terminal of the signal to use as the Sample Clock.
DAQmx.SampClk.ActiveEdge                       =                 0x1301;  % Specifies on which edge of a clock pulse sampling takes place. This property is useful primarily when the signal you use as the Sample Clock is not a periodic clock.
DAQmx.SampClk.OverrunBehavior                  =                 0x2EFC;  % Specifies the action to take if Sample Clock edges occur faster than the device can handle them.
DAQmx.SampClk.UnderflowBehavior                =                 0x2961;  % Specifies the action to take when the onboard memory of the device becomes empty. In either case, the sample clock does not stop.
DAQmx.SampClk.TimebaseDiv                      =                 0x18EB;  % Specifies the number of Sample Clock Timebase pulses needed to produce a single Sample Clock pulse.
DAQmx.SampClk.Term                             =                 0x2F1B;  % Indicates the name of the internal Sample Clock terminal for the task. This property does not return the name of the Sample Clock source terminal specified with Source.
DAQmx.SampClk.Timebase_Rate                    =                 0x1303;  % Specifies the rate of the Sample Clock Timebase. Some applications require that you specify a rate when you use any signal other than the onboard Sample Clock Timebase. NI-DAQmx requires this rate to calculate other timing parameters.
DAQmx.SampClk.Timebase_Src                     =                 0x1308;  % Specifies the terminal of the signal to use as the Sample Clock Timebase.
DAQmx.SampClk.Timebase_ActiveEdge              =                 0x18EC;  % Specifies on which edge to recognize a Sample Clock Timebase pulse. This property is useful primarily when the signal you use as the Sample Clock Timebase is not a periodic clock.
DAQmx.SampClk.Timebase_MasterTimebaseDiv       =                 0x1305;  % Specifies the number of pulses of the Master Timebase needed to produce a single pulse of the Sample Clock Timebase.
DAQmx.SampClkTimebase.Term                     =                 0x2F1C;  % Indicates the name of the internal Sample Clock Timebase terminal for the task. This property does not return the name of the Sample Clock Timebase source terminal specified with Source.
DAQmx.SampClk.DigFltr_Enable                   =                 0x221E;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.SampClk.DigFltr_MinPulseWidth            =                 0x221F;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.SampClk.DigFltr_TimebaseSrc              =                 0x2220;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.SampClk.DigFltr_TimebaseRate             =                 0x2221;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.SampClk.DigSync_Enable                   =                 0x2222;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.SampClk.WriteWfm_UseInitialWfmDT         =                 0x30FC;  % Specifies that the value of Rate will be determined by the dt component of the initial DAQmx Write waveform input for Output tasks.
DAQmx.Hshk.DelayAfterXfer                      =                 0x22C2;  % Specifies the number of seconds to wait after a handshake cycle before starting a new handshake cycle.
DAQmx.Hshk.StartCond                           =                 0x22C3;  % Specifies the point in the handshake cycle that the device is in when the task starts.
DAQmx.Hshk.SampleInputDataWhen                 =                 0x22C4;  % Specifies on which edge of the Handshake Trigger an input task latches the data from the peripheral device.
DAQmx.ChangeDetect.DI_RisingEdgePhysicalChans  =                 0x2195;  % Specifies the names of the digital lines or ports on which to detect rising edges. The lines or ports must be used by virtual channels in the task. You also can specify a string that contains a list or range of digital lines or ports.
DAQmx.ChangeDetect.DI_FallingEdgePhysicalChans =                 0x2196;  % Specifies the names of the digital lines or ports on which to detect falling edges. The lines or ports must be used by virtual channels in the task. You also can specify a string that contains a list or range of digital lines or ports.
DAQmx.ChangeDetect.DI_Tristate                 =                 0x2EFA;  % Specifies whether to tristate lines specified with Rising Edge Physical Channels and Falling Edge Physical Channels that are not in a virtual channel in the task. If you set this property to TRUE, NI-DAQmx tristates rising/falling edge lines that are not in a virtual channel in the task. If you set this property to FALSE, NI-DAQmx does not modify the configuration of rising/falling edge lines that are not in a vir...
DAQmx.OnDemand.SimultaneousAOEnable            =                 0x21A0;  % Specifies whether to update all channels in the task simultaneously, rather than updating channels independently when you write a sample to that channel.
DAQmx.Implicit.UnderflowBehavior               =                 0x2EFD;  % Specifies the action to take when the onboard memory of the device becomes empty.
DAQmx.AIConv.Rate                              =                 0x1848;  % Specifies in Hertz the rate at which to clock the analog-to-digital converter. This clock is specific to the analog input section of multiplexed devices.
DAQmx.AIConv.MaxRate                           =                 0x22C9;  % Indicates the maximum convert rate supported by the task, given the current devices and channel count.
DAQmx.AIConv.Src                               =                 0x1502;  % Specifies the terminal of the signal to use as the AI Convert Clock.
DAQmx.AIConv.ActiveEdge                        =                 0x1853;  % Specifies on which edge of the clock pulse an analog-to-digital conversion takes place.
DAQmx.AIConv.TimebaseDiv                       =                 0x1335;  % Specifies the number of AI Convert Clock Timebase pulses needed to produce a single AI Convert Clock pulse.
DAQmx.AIConv.Timebase_Src                      =                 0x1339;  % Specifies the terminal  of the signal to use as the AI Convert Clock Timebase.
DAQmx.DelayFromSampClk.DelayUnits              =                 0x1304;  % Specifies the units of Delay.
DAQmx.DelayFromSampClk.Delay                   =                 0x1317;  % Specifies the amount of time to wait after receiving a Sample Clock edge before beginning to acquire the sample. This value is in the units you specify with Delay Units.
DAQmx.AIConv.DigFltr_Enable                    =                 0x2EDC;  % Specifies whether to apply a digital filter to the AI Convert Clock.
DAQmx.AIConv.DigFltr_MinPulseWidth             =                 0x2EDD;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.AIConv.DigFltr_TimebaseSrc               =                 0x2EDE;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AIConv.DigFltr_TimebaseRate              =                 0x2EDF;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AIConv.DigSync_Enable                    =                 0x2EE0;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.MasterTimebase.Rate                      =                 0x1495;  % Specifies the rate of the Master Timebase.
DAQmx.MasterTimebase.Src                       =                 0x1343;  % Specifies the terminal of the signal to use as the Master Timebase. On an E Series device, you can choose only between the onboard 20MHz Timebase or the RTSI7 terminal.
DAQmx.RefClk.Rate                              =                 0x1315;  % Specifies the frequency of the Reference Clock.
DAQmx.RefClk.Src                               =                 0x1316;  % Specifies the terminal of the signal to use as the Reference Clock.
DAQmx.SyncPulse.Type                           =                 0x3136;  % Specifies the type of sync pulse used in the task.
DAQmx.SyncPulse.Src                            =                 0x223D;  % Specifies the terminal of the signal to use as the synchronization pulse. The synchronization pulse resets the clock dividers and the ADCs/DACs on the device.
DAQmx.SyncPulse.Time_When                      =                 0x3137;  % Specifies the start time of the sync pulse.
DAQmx.SyncPulse.Time_Timescale                 =                 0x3138;  % Specifies the timescale to be used for timestamps for a sync pulse.
DAQmx.SyncPulse.SyncTime                       =                 0x223E;  % Indicates in seconds the delay required to reset the ADCs/DACs after the device receives the synchronization pulse.
DAQmx.SyncPulse.MinDelayToStart                =                 0x223F;  % Specifies in seconds the amount of time that elapses after the master device issues the synchronization pulse before the task starts.
DAQmx.SyncPulse.ResetTime                      =                 0x2F7C;  % Indicates in seconds the amount of time required for the ADCs or DACs on the device to reset. When synchronizing devices, query this property on all devices and note the largest reset time. Then, for each device, subtract the value of this property from the largest reset time and set Reset Delay to the resulting value.
DAQmx.SyncPulse.ResetDelay                     =                 0x2F7D;  % Specifies in seconds the amount of time to wait after the Synchronization Pulse before resetting the ADCs or DACs on the device. When synchronizing devices, query Reset Time on all devices and note the largest reset time. Then, for each device, subtract the reset time from the largest reset time and set this property to the resulting value.
DAQmx.SyncPulse.Term                           =                 0x2F85;  % Indicates the name of the internal Synchronization Pulse terminal for the task. This property does not return the name of the source terminal.
DAQmx.SyncClk.Interval                         =                 0x2F7E;  % Specifies the interval, in Sample Clock periods, between each internal Synchronization Clock pulse. NI-DAQmx uses this pulse for synchronization of triggers between multiple devices at different rates. Refer to device documentation for information about how to calculate this value.
DAQmx.SampTimingEngine                         =                 0x2A26;  % Specifies which timing engine to use for the task.
DAQmx.FirstSampTimestamp.Enable                =                 0x3139;  % Specifies whether to enable the first sample timestamp.
DAQmx.FirstSampTimestamp.Timescale             =                 0x313B;  % Specifies the timescale to be used for the first sample timestamp.
DAQmx.FirstSampTimestamp.Val                   =                 0x313A;  % Indicates the timestamp of the first sample.
DAQmx.FirstSampClk.When                        =                 0x3182;  % Specifies the time of the first sample clock pulse.
DAQmx.FirstSampClk.Timescale                   =                 0x3183;  % Specifies the timescale to be used for the value of When.
DAQmx.FirstSampClk.Offset                      =                 0x31AA;  % Specifies, in seconds, the offset to apply to the When value. This offset modifies when the first sample clock occurs and is used to account for known delays in the signal path.

%********** Trigger Attributes **********
DAQmx.StartTrig.Type                             =               0x1393;  % Specifies the type of trigger to use to start a task.
DAQmx.StartTrig.Term                             =               0x2F1E;  % Indicates the name of the internal Start Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx.DigEdge.StartTrig_Src                      =               0x1407;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Start Trigger.
DAQmx.DigEdge.StartTrig_Edge                     =               0x1404;  % Specifies on which edge of a digital pulse to start acquiring or generating samples.
DAQmx.DigEdge.StartTrig_DigFltr_Enable           =               0x2223;  % Specifies whether to apply a digital filter to the trigger signal.
DAQmx.DigEdge.StartTrig_DigFltr_MinPulseWidth    =               0x2224;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.DigEdge.StartTrig_DigFltr_TimebaseSrc      =               0x2225;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.DigEdge.StartTrig_DigFltr_TimebaseRate     =               0x2226;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.DigEdge.StartTrig_DigSync_Enable           =               0x2227;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device. If you set this property to TRUE, the device does not recognize and act upon the trigger until the next pulse of the internal timebase.
DAQmx.DigPattern.StartTrig_Src                   =               0x1410;  % Specifies the physical channels to use for pattern matching. The order of the physical channels determines the order of the pattern. If a port is included, the order of the physical channels within the port is in ascending order.
DAQmx.DigPattern.StartTrig_Pattern               =               0x2186;  % Specifies the digital pattern that must be met for the Start Trigger to occur.
DAQmx.DigPattern.StartTrig_When                  =               0x1411;  % Specifies whether the Start Trigger occurs when the physical channels specified with Source match or differ from the digital pattern specified with Pattern.
DAQmx.AnlgEdge.StartTrig_Src                     =               0x1398;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Start Trigger.
DAQmx.AnlgEdge.StartTrig_Slope                   =               0x1397;  % Specifies on which slope of the trigger signal to start acquiring or generating samples.
DAQmx.AnlgEdge.StartTrig_Lvl                     =               0x1396;  % Specifies at what threshold in the units of the measurement or generation to start acquiring or generating samples. Use Slope to specify on which slope to trigger on this threshold.
DAQmx.AnlgEdge.StartTrig_Hyst                    =               0x1395;  % Specifies a hysteresis level in the units of the measurement or generation. If Slope is DAQmx.Val.RisingSlope, the trigger does not deassert until the source signal passes below  Level minus the hysteresis. If Slope is DAQmx.Val.FallingSlope, the trigger does not deassert until the source signal passes above Level plus the hysteresis. Hysteresis is always enabled. Set this property to a non-zero value to use hyste...
DAQmx.AnlgEdge.StartTrig_Coupling                =               0x2233;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx.AnlgEdge.StartTrig_DigFltr_Enable          =               0x2EE1;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay above or below the trigger level for the minimum pulse width before being recognized. Use filtering  for noisy trigger signals that transition in and out of the hysteresis window rapidly.
DAQmx.AnlgEdge.StartTrig_DigFltr_MinPulseWidth   =               0x2EE2;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.AnlgEdge.StartTrig_DigFltr_TimebaseSrc     =               0x2EE3;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AnlgEdge.StartTrig_DigFltr_TimebaseRate    =               0x2EE4;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AnlgEdge.StartTrig_DigSync_Enable          =               0x2EE5;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.AnlgMultiEdge.StartTrig_Srcs               =               0x3121;  % Specifies a list and/or range of analog sources that are going to be used for Analog triggering. Each source corresponds to an element in each of the Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgMultiEdge.StartTrig_Slopes             =               0x3122;  % Specifies an array of slopes on which to trigger task to start generating or acquiring samples. Each element of the array corresponds to a source in Start.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgMultiEdge.StartTrig_Lvls               =               0x3123;  % Specifies an array of thresholds in the units of the measurement or generation to start acquiring or generating samples. Each element of the array corresponds to a source in Start.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgMultiEdge.StartTrig_Hysts              =               0x3124;  % Specifies an array of hysteresis levels in the units of the measurement or generation. If the corresponding element of Start.AnlgMultiEdge.Slopes is Rising, the trigger does not deassert until the source signal passes below the corresponding element of Start.AnlgMultiEdge.Lvls minus the hysteresis. If Start.AnlgEdge.Slope is Falling, the trigger does not deassert until the source signal passes above Start.AnlgEdge...
DAQmx.AnlgMultiEdge.StartTrig_Couplings          =               0x3125;  % Specifies an array that describes the couplings for the corresponding source signal of the trigger if the source is a terminal rather than a virtual channel. Each element of the array corresponds to a source in Start.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgWin.StartTrig_Src                      =               0x1400;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Start Trigger.
DAQmx.AnlgWin.StartTrig_When                     =               0x1401;  % Specifies whether the task starts acquiring or generating samples when the signal enters or leaves the window you specify with Bottom and Top.
DAQmx.AnlgWin.StartTrig_Top                      =               0x1403;  % Specifies the upper limit of the window. Specify this value in the units of the measurement or generation.
DAQmx.AnlgWin.StartTrig_Btm                      =               0x1402;  % Specifies the lower limit of the window. Specify this value in the units of the measurement or generation.
DAQmx.AnlgWin.StartTrig_Coupling                 =               0x2234;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx.AnlgWin.StartTrig_DigFltr_Enable           =               0x2EFF;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay within the trigger window for the minimum pulse width before being recognized. Use filtering for noisy trigger signals that transition in and out of the window rapidly.
DAQmx.AnlgWin.StartTrig_DigFltr_MinPulseWidth    =               0x2F00;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.AnlgWin.StartTrig_DigFltr_TimebaseSrc      =               0x2F01;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AnlgWin.StartTrig_DigFltr_TimebaseRate     =               0x2F02;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AnlgWin.StartTrig_DigSync_Enable           =               0x2F03;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.StartTrig.TrigWhen                         =               0x304D;  % Specifies when to trigger the start trigger.
DAQmx.StartTrig.Timescale                        =               0x3036;  % Specifies the timescale to be used for timestamps used in a time trigger.
DAQmx.StartTrig.TimestampEnable                  =               0x314A;  % Specifies whether the start trigger timestamp is enabled. If the timestamp is enabled but no resources are available, an error will be returned at run time.
DAQmx.StartTrig.TimestampTimescale               =               0x312D;  % Specifies the start trigger timestamp timescale.
DAQmx.StartTrig.TimestampVal                     =               0x314B;  % Indicates the start trigger timestamp value.
DAQmx.StartTrig.Delay                            =               0x1856;  % Specifies an amount of time to wait after the Start Trigger is received before acquiring or generating the first sample. This value is in the units you specify with Delay Units.
DAQmx.StartTrig.DelayUnits                       =               0x18C8;  % Specifies the units of Delay.
DAQmx.StartTrig.Retriggerable                    =               0x190F;  % Specifies whether a finite task resets and waits for another Start Trigger after the task completes. When you set this property to TRUE, the device performs a finite acquisition or generation each time the Start Trigger occurs until the task stops. The device ignores a trigger if it is in the process of acquiring or generating signals.
DAQmx.StartTrig.TrigWin                          =               0x311A;  % Specifies the period of time in seconds after the task starts during which the device may trigger. Once the window has expired, the device stops detecting triggers, and the task will finish after the device finishes acquiring post-trigger samples for any triggers detected. If no triggers are detected during the entire period, then no data will be returned. Ensure the period of time specified covers the entire time...
DAQmx.StartTrig.RetriggerWin                     =               0x311B;  % Specifies the period of time in seconds after each trigger during which the device may trigger. Once the window has expired, the device stops detecting triggers, and the task will finish after the device finishes acquiring post-trigger samples that it already started. Ensure the period of time specified covers the entire time span desired for retrigger detection to avoid missed triggers. Specifying a Retrigger Win...
DAQmx.StartTrig.MaxNumTrigsToDetect              =               0x311C;  % Specifies the maximum number of times the task will detect a start trigger during the task. The number of times a trigger is detected and acted upon by the module may be less than the specified amount if the task stops early because of trigger/retrigger window expiration. Specifying the Maximum Number of Triggers to Detect to be 0 causes the driver to automatically set this value to the maximum possible number of ...
DAQmx.RefTrig.Type                               =               0x1419;  % Specifies the type of trigger to use to mark a reference point for the measurement.
DAQmx.RefTrig.PretrigSamples                     =               0x1445;  % Specifies the minimum number of pretrigger samples to acquire from each channel before recognizing the reference trigger. Post-trigger samples per channel are equal to Samples Per Channel minus the number of pretrigger samples per channel.
DAQmx.RefTrig.Term                               =               0x2F1F;  % Indicates the name of the internal Reference Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx.DigEdge.RefTrig_Src                        =               0x1434;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Reference Trigger.
DAQmx.DigEdge.RefTrig_Edge                       =               0x1430;  % Specifies on what edge of a digital pulse the Reference Trigger occurs.
DAQmx.DigEdge.RefTrig_DigFltr_Enable             =               0x2ED7;  % Specifies whether to apply a digital filter to the trigger signal.
DAQmx.DigEdge.RefTrig_DigFltr_MinPulseWidth      =               0x2ED8;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.DigEdge.RefTrig_DigFltr_TimebaseSrc        =               0x2ED9;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.DigEdge.RefTrig_DigFltr_TimebaseRate       =               0x2EDA;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.DigEdge.RefTrig_DigSync_Enable             =               0x2EDB;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.DigPattern.RefTrig_Src                     =               0x1437;  % Specifies the physical channels to use for pattern matching. The order of the physical channels determines the order of the pattern. If a port is included, the order of the physical channels within the port is in ascending order.
DAQmx.DigPattern.RefTrig_Pattern                 =               0x2187;  % Specifies the digital pattern that must be met for the Reference Trigger to occur.
DAQmx.DigPattern.RefTrig_When                    =               0x1438;  % Specifies whether the Reference Trigger occurs when the physical channels specified with Source match or differ from the digital pattern specified with Pattern.
DAQmx.AnlgEdge.RefTrig_Src                       =               0x1424;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Reference Trigger.
DAQmx.AnlgEdge.RefTrig_Slope                     =               0x1423;  % Specifies on which slope of the source signal the Reference Trigger occurs.
DAQmx.AnlgEdge.RefTrig_Lvl                       =               0x1422;  % Specifies in the units of the measurement the threshold at which the Reference Trigger occurs.  Use Slope to specify on which slope to trigger at this threshold.
DAQmx.AnlgEdge.RefTrig_Hyst                      =               0x1421;  % Specifies a hysteresis level in the units of the measurement. If Slope is DAQmx.Val.RisingSlope, the trigger does not deassert until the source signal passes below Level minus the hysteresis. If Slope is DAQmx.Val.FallingSlope, the trigger does not deassert until the source signal passes above Level plus the hysteresis. Hysteresis is always enabled. Set this property to a non-zero value to use hysteresis.
DAQmx.AnlgEdge.RefTrig_Coupling                  =               0x2235;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx.AnlgEdge.RefTrig_DigFltr_Enable            =               0x2EE6;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay above or below the trigger level for the minimum pulse width before being recognized. Use filtering  for noisy trigger signals that transition in and out of the hysteresis window rapidly.
DAQmx.AnlgEdge.RefTrig_DigFltr_MinPulseWidth     =               0x2EE7;  % Specifies in seconds the minimum pulse width thefilter recognizes.
DAQmx.AnlgEdge.RefTrig_DigFltr_TimebaseSrc       =               0x2EE8;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AnlgEdge.RefTrig_DigFltr_TimebaseRate      =               0x2EE9;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AnlgEdge.RefTrig_DigSync_Enable            =               0x2EEA;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.AnlgMultiEdge.RefTrig_Srcs                 =               0x3126;  % Specifies a List and/or range of analog sources that are going to be used for Analog triggering. Each source corresponds to an element in each of the Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgMultiEdge.RefTrig_Slopes               =               0x3127;  % Specifies an array of slopes on which to trigger task to start generating or acquiring samples. Each element of the array corresponds to a source in Ref.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgMultiEdge.RefTrig_Lvls                 =               0x3128;  % Specifies an array of thresholds in the units of the measurement or generation to start acquiring or generating samples. Each element of the array corresponds to a source in Ref.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgMultiEdge.RefTrig_Hysts                =               0x3129;  % Specifies an array of hysteresis levels in the units of the measurement or generation. If the corresponding element of Ref.AnlgMultiEdge.Slopes is Rising, the trigger does not deassert until the source signal passes below the corresponding element of Ref.AnlgMultiEdge.Lvls minus the hysteresis. If Ref.AnlgEdge.Slope is Falling, the trigger does not deassert until the source signal passes above Ref.AnlgEdge.Lvl plu...
DAQmx.AnlgMultiEdge.RefTrig_Couplings            =               0x312A;  % Specifies an array that describes the couplings for the corresponding source signal of the trigger if the source is a terminal rather than a virtual channel. Each element of the array corresponds to a source in Ref.AnlgMultiEdge.Srcs and an element in each of the other Analog Multi Edge property arrays, if they are not empty.
DAQmx.AnlgWin.RefTrig_Src                        =               0x1426;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the Reference Trigger.
DAQmx.AnlgWin.RefTrig_When                       =               0x1427;  % Specifies whether the Reference Trigger occurs when the source signal enters the window or when it leaves the window. Use Bottom and Top to specify the window.
DAQmx.AnlgWin.RefTrig_Top                        =               0x1429;  % Specifies the upper limit of the window. Specify this value in the units of the measurement.
DAQmx.AnlgWin.RefTrig_Btm                        =               0x1428;  % Specifies the lower limit of the window. Specify this value in the units of the measurement.
DAQmx.AnlgWin.RefTrig_Coupling                   =               0x1857;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx.AnlgWin.RefTrig_DigFltr_Enable             =               0x2EEB;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay within the trigger window for the minimum pulse width before being recognized. Use filtering for noisy trigger signals that transition in and out of the window rapidly.
DAQmx.AnlgWin.RefTrig_DigFltr_MinPulseWidth      =               0x2EEC;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.AnlgWin.RefTrig_DigFltr_TimebaseSrc        =               0x2EED;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AnlgWin.RefTrig_DigFltr_TimebaseRate       =               0x2EEE;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AnlgWin.RefTrig_DigSync_Enable             =               0x2EEF;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.RefTrig.AutoTrigEnable                     =               0x2EC1;  % Specifies whether to send a software trigger to the device when a hardware trigger is no longer active in order to prevent a timeout.
DAQmx.RefTrig.AutoTriggered                      =               0x2EC2;  % Indicates whether a completed acquisition was triggered by the auto trigger. If an acquisition has not completed after the task starts, this property returns FALSE. This property is only applicable when Enable  is TRUE.
DAQmx.RefTrig.TimestampEnable                    =               0x312E;  % Specifies whether the reference trigger timestamp is enabled. If the timestamp is enabled but no resources are available, an error will be returned at run time.
DAQmx.RefTrig.TimestampTimescale                 =               0x3130;  % Specifies the reference trigger timestamp timescale.
DAQmx.RefTrig.TimestampVal                       =               0x312F;  % Indicates the reference trigger timestamp value.
DAQmx.RefTrig.Delay                              =               0x1483;  % Specifies in seconds the time to wait after the device receives the Reference Trigger before switching from pretrigger to posttrigger samples.
DAQmx.RefTrig.Retriggerable                      =               0x311D;  % Specifies whether a finite task resets, acquires pretrigger samples, and waits for another Reference Trigger after the task completes. When you set this property to TRUE, the device will acquire post-trigger samples, reset, and acquire pretrigger samples each time the Reference Trigger occurs until the task stops. The device ignores a trigger if it is in the process of acquiring signals.
DAQmx.RefTrig.TrigWin                            =               0x311E;  % Specifies the duration in seconds after the task starts during which the device may trigger. Once the window has passed, the device stops detecting triggers, and the task will stop after the device finishes acquiring post-trigger samples that it already started. If no triggers are detected during the entire period, then no data will be returned. Specifying a Trigger Window of -1 causes the window to be infinite.
DAQmx.RefTrig.RetriggerWin                       =               0x311F;  % Specifies the duration in seconds after each trigger during which the device may trigger. Once the window has passed, the device stops detecting triggers, and the task will stop after the device finishes acquiring post-trigger samples that it already started. Specifying a Retrigger Window of -1 causes the window to be infinite.
DAQmx.RefTrig.MaxNumTrigsToDetect                =               0x3120;  % Specifies the maximum number of times the task will detect a reference trigger during the task. The number of times a trigger is detected and acted upon by the module may be less than the specified amount if the task stops early because of trigger/retrigger window expiration. Specifying the Maximum Number of Triggers to Detect to be 0 causes the driver to automatically set this value to the maximum possible number...
DAQmx.AdvTrig.Type                               =               0x1365;  % (Deprecated) Specifies the type of trigger to use to advance to the next entry in a switch scan list.
DAQmx.DigEdge.AdvTrig_Src                        =               0x1362;  % (Deprecated) Specifies the name of a terminal where there is a digital signal to use as the source of the Advance Trigger.
DAQmx.DigEdge.AdvTrig_Edge                       =               0x1360;  % (Deprecated) Specifies on which edge of a digital signal to advance to the next entry in a scan list.
DAQmx.DigEdge.AdvTrig_DigFltr_Enable             =               0x2238;  % (Deprecated) Specifies whether to apply the pulse width filter to the signal.
DAQmx.HshkTrig.Type                              =               0x22B7;  % Specifies the type of Handshake Trigger to use.
DAQmx.Interlocked.HshkTrig_Src                   =               0x22B8;  % Specifies the source terminal of the Handshake Trigger.
DAQmx.Interlocked.HshkTrig_AssertedLvl           =               0x22B9;  % Specifies the asserted level of the Handshake Trigger.
DAQmx.PauseTrig.Type                             =               0x1366;  % Specifies the type of trigger to use to pause a task.
DAQmx.PauseTrig.Term                             =               0x2F20;  % Indicates the name of the internal Pause Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx.AnlgLvl.PauseTrig_Src                      =               0x1370;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the trigger.
DAQmx.AnlgLvl.PauseTrig_When                     =               0x1371;  % Specifies whether the task pauses above or below the threshold you specify with Level.
DAQmx.AnlgLvl.PauseTrig_Lvl                      =               0x1369;  % Specifies the threshold at which to pause the task. Specify this value in the units of the measurement or generation. Use Pause When to specify whether the task pauses above or below this threshold.
DAQmx.AnlgLvl.PauseTrig_Hyst                     =               0x1368;  % Specifies a hysteresis level in the units of the measurement or generation. If Pause When is DAQmx.Val.AboveLvl, the trigger does not deassert until the source signal passes below Level minus the hysteresis. If Pause When is DAQmx.Val.BelowLvl, the trigger does not deassert until the source signal passes above Level plus the hysteresis. Hysteresis is always enabled. Set this property to a non-zero value to use hys...
DAQmx.AnlgLvl.PauseTrig_Coupling                 =               0x2236;  % Specifies the coupling for the source signal of the trigger if the source is a terminal rather than a virtual channel.
DAQmx.AnlgLvl.PauseTrig_DigFltr_Enable           =               0x2EF0;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay above or below the trigger level for the minimum pulse width before being recognized. Use filtering  for noisy trigger signals that transition in and out of the hysteresis window rapidly.
DAQmx.AnlgLvl.PauseTrig_DigFltr_MinPulseWidth    =               0x2EF1;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.AnlgLvl.PauseTrig_DigFltr_TimebaseSrc      =               0x2EF2;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AnlgLvl.PauseTrig_DigFltr_TimebaseRate     =               0x2EF3;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AnlgLvl.PauseTrig_DigSync_Enable           =               0x2EF4;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.AnlgWin.PauseTrig_Src                      =               0x1373;  % Specifies the name of a virtual channel or terminal where there is an analog signal to use as the source of the trigger.
DAQmx.AnlgWin.PauseTrig_When                     =               0x1374;  % Specifies whether the task pauses while the trigger signal is inside or outside the window you specify with Bottom and Top.
DAQmx.AnlgWin.PauseTrig_Top                      =               0x1376;  % Specifies the upper limit of the window. Specify this value in the units of the measurement or generation.
DAQmx.AnlgWin.PauseTrig_Btm                      =               0x1375;  % Specifies the lower limit of the window. Specify this value in the units of the measurement or generation.
DAQmx.AnlgWin.PauseTrig_Coupling                 =               0x2237;  % Specifies the coupling for the source signal of the terminal if the source is a terminal rather than a virtual channel.
DAQmx.AnlgWin.PauseTrig_DigFltr_Enable           =               0x2EF5;  % Specifies whether to apply a digital filter to the digital output of the analog triggering circuitry (the Analog Comparison Event). When enabled, the analog signal must stay within the trigger window for the minimum pulse width before being recognized. Use filtering for noisy trigger signals that transition in and out of the window rapidly.
DAQmx.AnlgWin.PauseTrig_DigFltr_MinPulseWidth    =               0x2EF6;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.AnlgWin.PauseTrig_DigFltr_TimebaseSrc      =               0x2EF7;  % Specifies the terminal of the signal to use as the timebase of the digital filter.
DAQmx.AnlgWin.PauseTrig_DigFltr_TimebaseRate     =               0x2EF8;  % Specifies in hertz the rate of the digital filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.AnlgWin.PauseTrig_DigSync_Enable           =               0x2EF9;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.DigLvl.PauseTrig_Src                       =               0x1379;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Pause Trigger.
DAQmx.DigLvl.PauseTrig_When                      =               0x1380;  % Specifies whether the task pauses while the signal is high or low.
DAQmx.DigLvl.PauseTrig_DigFltr_Enable            =               0x2228;  % Specifies whether to apply a digital filter to the trigger signal.
DAQmx.DigLvl.PauseTrig_DigFltr_MinPulseWidth     =               0x2229;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.DigLvl.PauseTrig_DigFltr_TimebaseSrc       =               0x222A;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.DigLvl.PauseTrig_DigFltr_TimebaseRate      =               0x222B;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.DigLvl.PauseTrig_DigSync_Enable            =               0x222C;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.DigPattern.PauseTrig_Src                   =               0x216F;  % Specifies the physical channels to use for pattern matching. The order of the physical channels determines the order of the pattern. If a port is included, the lines within the port are in ascending order.
DAQmx.DigPattern.PauseTrig_Pattern               =               0x2188;  % Specifies the digital pattern that must be met for the Pause Trigger to occur.
DAQmx.DigPattern.PauseTrig_When                  =               0x2170;  % Specifies if the Pause Trigger occurs when the physical channels specified with Source match or differ from the digital pattern specified with Pattern.
DAQmx.ArmStartTrig.Type                          =               0x1414;  % Specifies the type of trigger to use to arm the task for a Start Trigger. If you configure an Arm Start Trigger, the task does not respond to a Start Trigger until the device receives the Arm Start Trigger.
DAQmx.ArmStart.Term                              =               0x2F7F;  % Indicates the name of the internal Arm Start Trigger terminal for the task. This property does not return the name of the trigger source terminal.
DAQmx.DigEdge.ArmStartTrig_Src                   =               0x1417;  % Specifies the name of a terminal where there is a digital signal to use as the source of the Arm Start Trigger.
DAQmx.DigEdge.ArmStartTrig_Edge                  =               0x1415;  % Specifies on which edge of a digital signal to arm the task for a Start Trigger.
DAQmx.DigEdge.ArmStartTrig_DigFltr_Enable        =               0x222D;  % Specifies whether to apply the pulse width filter to the signal.
DAQmx.DigEdge.ArmStartTrig_DigFltr_MinPulseWidth =               0x222E;  % Specifies in seconds the minimum pulse width the filter recognizes.
DAQmx.DigEdge.ArmStartTrig_DigFltr_TimebaseSrc   =               0x222F;  % Specifies the input terminal of the signal to use as the timebase of the pulse width filter.
DAQmx.DigEdge.ArmStartTrig_DigFltr_TimebaseRate  =               0x2230;  % Specifies in hertz the rate of the pulse width filter timebase. NI-DAQmx uses this value to compute settings for the filter.
DAQmx.DigEdge.ArmStartTrig_DigSync_Enable        =               0x2231;  % Specifies whether to synchronize recognition of transitions in the signal to the internal timebase of the device.
DAQmx.ArmStartTrig.TrigWhen                      =               0x3131;  % Specifies when to trigger the arm start trigger.
DAQmx.ArmStartTrig.Timescale                     =               0x3132;  % Specifies the timescale to be used for timestamps used in an arm start time trigger.
DAQmx.ArmStartTrig.TimestampEnable               =               0x3133;  % Specifies whether the arm start trigger timestamp is enabled. If the timestamp is enabled but no resources are available, an error will be returned at run time.
DAQmx.ArmStartTrig.TimestampTimescale            =               0x3135;  % Specifies the arm start trigger timestamp timescale.
DAQmx.ArmStartTrig.TimestampVal                  =               0x3134;  % Indicates the arm start trigger timestamp value.
DAQmx.Trigger.SyncType                           =               0x2F80;  % Specifies the role of the device in a synchronized system. Setting this value to  DAQmx.Val.Master or  DAQmx.Val.Slave enables trigger skew correction. If you enable trigger skew correction, set this property to DAQmx.Val.Master on only one device, and set this property to DAQmx.Val.Slave on the other devices.

%********** Watchdog Attributes **********
DAQmx.Watchdog.Timeout                        =                  0x21A9;  % Specifies in seconds the amount of time until the watchdog timer expires. A value of -1 means the internal timer never expires. Set this input to -1 if you use an Expiration Trigger to expire the watchdog task.
DAQmx.WatchdogExpirTrig.Type                  =                  0x21A3;  % Specifies the type of trigger to use to expire a watchdog task.
DAQmx.WatchdogExpirTrig.TrigOnNetworkConnLoss =                  0x305D;  % Specifies the watchdog timer behavior when the network connection is lost between the host and the chassis. If set to true, the watchdog timer expires when the chassis detects the loss of network connection.
DAQmx.DigEdge.WatchdogExpirTrig_Src           =                  0x21A4;  % Specifies the name of a terminal where a digital signal exists to use as the source of the Expiration Trigger.
DAQmx.DigEdge.WatchdogExpirTrig_Edge          =                  0x21A5;  % Specifies on which edge of a digital signal to expire the watchdog task.
DAQmx.Watchdog.DO_ExpirState                  =                  0x21A7;  % Specifies the state to which to set the digital physical channels when the watchdog task expires.  You cannot modify the expiration state of dedicated digital input physical channels.
DAQmx.Watchdog.AO_OutputType                  =                  0x305E;  % Specifies the output type of the analog output physical channels when the watchdog task expires.
DAQmx.Watchdog.AO_ExpirState                  =                  0x305F;  % Specifies the state to set the analog output physical channels when the watchdog task expires.
DAQmx.Watchdog.CO_ExpirState                  =                  0x3060;  % Specifies the state to set the counter output channel terminal when the watchdog task expires.
DAQmx.Watchdog.HasExpired                     =                  0x21A8;  % Indicates if the watchdog timer expired. You can read this property only while the task is running.

%********** Write Attributes **********
DAQmx.Write.RelativeTo                           =               0x190C;  % Specifies the point in the buffer at which to write data. If you also specify an offset with Offset, the write operation begins at that offset relative to this point you select with this property.
DAQmx.Write.Offset                               =               0x190D;  % Specifies in samples per channel an offset at which a write operation begins. This offset is relative to the location you specify with Relative To.
DAQmx.Write.RegenMode                            =               0x1453;  % Specifies whether to allow NI-DAQmx to generate the same data multiple times.
DAQmx.Write.CurrWritePos                         =               0x1458;  % Indicates the position in the buffer of the next sample to generate. This value is identical for all channels in the task.
DAQmx.Write.OvercurrentChansExist                =               0x29E8;  % Indicates if the device(s) detected an overcurrent condition for any channel in the task. Reading this property clears the overcurrent status for all channels in the task. You must read this property before you read Overcurrent Channels. Otherwise, you will receive an error.
DAQmx.Write.OvercurrentChans                     =               0x29E9;  % Indicates a list of names of any virtual channels in the task for which an overcurrent condition has been detected. You must read Overcurrent Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Write.OvertemperatureChansExist            =               0x2A84;  % Indicates if the device(s) detected an overtemperature condition in any virtual channel in the task. Reading this property clears the overtemperature status for all channels in the task. You must read this property before you read Overtemperature Channels. Otherwise, you will receive an error.
DAQmx.Write.OvertemperatureChans                 =               0x3083;  % Indicates a list of names of any overtemperature virtual channels. You must read Overtemperature Channels Exist before you read this property. Otherwise, you will receive an error. The list of names may be empty if the device cannot determine the source of the overtemperature.
DAQmx.Write.ExternalOvervoltageChansExist        =               0x30BB;  % Indicates if the device(s) detected an External Overvoltage condition for any channel in the task. Reading this property clears the External Overvoltage status for all channels in the task. You must read this property before you read External OvervoltageChans. Otherwise, you will receive an error.
DAQmx.Write.ExternalOvervoltageChans             =               0x30BC;  % Indicates a list of names of any virtual channels in the task for which an External Overvoltage condition has been detected. You must read External OvervoltageChansExist before you read this property. Otherwise, you will receive an error.
DAQmx.Write.OverloadedChansExist                 =               0x3084;  % Indicates if the device(s) detected an overload in any virtual channel in the task. Reading this property clears the overload status for all channels in the task. You must read this property before you read Overloaded Channels. Otherwise, you will receive an error.
DAQmx.Write.OverloadedChans                      =               0x3085;  % Indicates a list of names of any overloaded virtual channels in the task. You must read Overloaded Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Write.OpenCurrentLoopChansExist            =               0x29EA;  % Indicates if the device(s) detected an open current loop for any channel in the task. Reading this property clears the open current loop status for all channels in the task. You must read this property before you read Open Current Loop Channels. Otherwise, you will receive an error.
DAQmx.Write.OpenCurrentLoopChans                 =               0x29EB;  % Indicates a list of names of any virtual channels in the task for which the device(s) detected an open current loop. You must read Open Current Loop Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Write.PowerSupplyFaultChansExist           =               0x29EC;  % Indicates if the device(s) detected a power supply fault for any channel in the task. Reading this property clears the power supply fault status for all channels in the task. You must read this property before you read Power Supply Fault Channels. Otherwise, you will receive an error.
DAQmx.Write.PowerSupplyFaultChans                =               0x29ED;  % Indicates a list of names of any virtual channels in the task that have a power supply fault. You must read Power Supply Fault Channels Exist before you read this property. Otherwise, you will receive an error.
DAQmx.Write.Sync_UnlockedChansExist              =               0x313F;  % Indicates whether the target is currently locked to the grand master. Devices may report PLL Unlock either during acquisition or after acquisition.
DAQmx.Write.Sync_UnlockedChans                   =               0x3140;  % Indicates the channels from devices in an unlocked target.
DAQmx.Write.SpaceAvail                           =               0x1460;  % Indicates in samples per channel the amount of available space in the buffer.
DAQmx.Write.TotalSampPerChanGenerated            =               0x192B;  % Indicates the total number of samples generated by each channel in the task. This value is identical for all channels in the task.
DAQmx.Write.AccessoryInsertionOrRemovalDetected  =               0x3053;  % Indicates if any devices in the task detected the insertion or removal of an accessory since the task started. Reading this property clears the accessory change status for all channels in the task. You must read this property before you read Devices with Inserted or Removed Accessories. Otherwise, you will receive an error.
DAQmx.Write.DevsWithInsertedOrRemovedAccessories =               0x3054;  % Indicates the names of any devices that detected the insertion or removal of an accessory since the task started. You must read Accessory Insertion or Removal Detected before you read this property. Otherwise, you will receive an error.
DAQmx.Write.RawDataWidth                         =               0x217D;  % Indicates in bytes the required size of a raw sample to write to the task.
DAQmx.Write.NumChans                             =               0x217E;  % Indicates the number of channels that an NI-DAQmx Write function writes to the task. This value is the number of channels in the task.
DAQmx.Write.WaitMode                             =               0x22B1;  % Specifies how an NI-DAQmx Write function waits for space to become available in the buffer.
DAQmx.Write.SleepTime                            =               0x22B2;  % Specifies in seconds the amount of time to sleep after checking for available buffer space if Wait Mode is DAQmx.Val.Sleep.
DAQmx.Write.DigitalLines_BytesPerChan            =               0x217F;  % Indicates the number of Boolean values expected per channel in a sample for line-based writes. This property is determined by the channel in the task with the most digital lines. If a channel has fewer lines than this number, NI-DAQmx ignores the extra Boolean values.


% For backwards compatibility, the DAQmx.ReadWaitMode has to be defined because this was the original spelling
% that has been later on corrected.
DAQmx.ReadWaitMode = DAQmx.Read.WaitMode;

% *************************************************************************
% *** NI-DAQmx Values *****************************************************
% *************************************************************************

% ******************************************************
% ***    Non-Attribute Function Parameter Values     ***
% ******************************************************

%*** Values for the Mode parameter of DAQmxTaskControl ***
DAQmx.Val.Task_Start     =                                        0;  % Start
DAQmx.Val.Task_Stop      =                                        1;  % Stop
DAQmx.Val.Task_Verify    =                                        2;  % Verify
DAQmx.Val.Task_Commit    =                                        3;  % Commit
DAQmx.Val.Task_Reserve   =                                        4;  % Reserve
DAQmx.Val.Task_Unreserve =                                        5;  % Unreserve
DAQmx.Val.Task_Abort     =                                        6;  % Abort

%*** Values for the Options parameter of the event registration functions
DAQmx.Val.SynchronousEventCallbacks =                       1 * 2^0; % (1<<0)  % Synchronous callbacks

%*** Values for the everyNsamplesEventType parameter of DAQmxRegisterEveryNSamplesEvent ***
DAQmx.Val.Acquired_Into_Buffer    =                               1;  % Acquired Into Buffer
DAQmx.Val.Transferred_From_Buffer =                               2;  % Transferred From Buffer


%*** Values for the Action parameter of DAQmxControlWatchdogTask ***
DAQmx.Val.ResetTimer      =                                       0;  % Reset Timer
DAQmx.Val.ClearExpiration =                                       1;  % Clear Expiration

%*** Values for the Line Grouping parameter of DAQmxCreateDIChan and DAQmxCreateDOChan ***
DAQmx.Val.ChanPerLine     =                                       0;  % One Channel For Each Line
DAQmx.Val.ChanForAllLines =                                       1;  % One Channel For All Lines

%*** Values for the Fill Mode parameter of DAQmxReadAnalogF64, DAQmxReadBinaryI16, DAQmxReadBinaryU16, DAQmxReadBinaryI32, DAQmxReadBinaryU32,
%    DAQmxReadDigitalU8, DAQmxReadDigitalU32, DAQmxReadDigitalLines ***
%*** Values for the Data Layout parameter of DAQmxWriteAnalogF64, DAQmxWriteBinaryI16, DAQmxWriteDigitalU8, DAQmxWriteDigitalU32, DAQmxWriteDigitalLines ***
DAQmx.Val.GroupByChannel    =                                     0;  % Group by Channel
DAQmx.Val.GroupByScanNumber =                                     1;  % Group by Scan Number

%*** Values for the Signal Modifiers parameter of DAQmxConnectTerms ***/
DAQmx.Val.DoNotInvertPolarity =                                   0;  % Do not invert polarity
DAQmx.Val.InvertPolarity      =                                   1;  % Invert polarity

%*** Values for the Action paramter of DAQmxCloseExtCal ***
DAQmx.Val.Action_Commit =                                         0;  % Commit
DAQmx.Val.Action_Cancel =                                         1;  % Cancel

%*** Values for the Trigger ID parameter of DAQmxSendSoftwareTrigger ***
DAQmx.Val.AdvanceTrigger =                                        12488;  % Advance Trigger

%*** Value set for the ActiveEdge parameter of DAQmxCfgSampClkTiming and DAQmxCfgPipelinedSampClkTiming ***
DAQmx.Val.Rising  =                                               10280;  % Rising
DAQmx.Val.Falling =                                               10171;  % Falling

%*** Value set SwitchPathType ***
%*** Value set for the output Path Status parameter of DAQmxSwitchFindPath ***
DAQmx.Val.PathStatus_Available                 =                  10431;  % Path Available
DAQmx.Val.PathStatus_AlreadyExists             =                  10432;  % Path Already Exists
DAQmx.Val.PathStatus_Unsupported               =                  10433;  % Path Unsupported
DAQmx.Val.PathStatus_ChannelInUse              =                  10434;  % Channel In Use
DAQmx.Val.PathStatus_SourceChannelConflict     =                  10435;  % Channel Source Conflict
DAQmx.Val.PathStatus_ChannelReservedForRouting =                  10436;  % Channel Reserved for Routing

%*** Value set for the Units parameter of DAQmxCreateAIThrmcplChan, DAQmxCreateAIRTDChan, DAQmxCreateAIThrmstrChanIex, DAQmxCreateAIThrmstrChanVex and DAQmxCreateAITempBuiltInSensorChan ***
DAQmx.Val.DegC    =                                               10143;  % Deg C
DAQmx.Val.DegF    =                                               10144;  % Deg F
DAQmx.Val.Kelvins =                                               10325;  % Kelvins
DAQmx.Val.DegR    =                                               10145;  % Deg R

%*** Value set for the state parameter of DAQmxSetDigitalPowerUpStates ***
DAQmx.Val.High     =                                              10192;  % High
DAQmx.Val.Low      =                                              10214;  % Low
DAQmx.Val.Tristate =                                              10310;  % Tristate

%*** Value set for the state parameter of DAQmxSetDigitalPullUpPullDownStates ***
DAQmx.Val.PullUp   =                                              15950;  % Pull Up
DAQmx.Val.PullDown =                                              15951;  % Pull Down

%*** Value set for the channelType parameter of DAQmxSetAnalogPowerUpStates & DAQmxGetAnalogPowerUpStates ***
DAQmx.Val.ChannelVoltage       =                                  0;  % Voltage Channel
DAQmx.Val.ChannelCurrent       =                                  1;  % Current Channel
DAQmx.Val.ChannelHighImpedance =                                  2;  % High-Impedance Channel

%*** Value set RelayPos ***
%*** Value set for the state parameter of DAQmxSwitchGetSingleRelayPos and DAQmxSwitchGetMultiRelayPos ***
DAQmx.Val.Open   =                                                10437;  % Open
DAQmx.Val.Closed =                                                10438;  % Closed


%*** Value set for the inputCalSource parameter of DAQmxAdjust1540Cal ***
DAQmx.Val.Loopback0   =                                           0;  % Loopback 0 degree shift
DAQmx.Val.Loopback180 =                                           1;  % Loopback 180 degree shift
DAQmx.Val.Ground      =                                           2;  % Ground

%*** Value set for calibration mode for 4339 Calibration functions ***
DAQmx.Val.Voltage =                                               10322;  % Voltage
DAQmx.Val.Bridge  =                                               15908;  % Bridge

%*** Value set for output type for 4322 Calibration functions ***
DAQmx.Val.Voltage =                                               10322;  % Voltage
DAQmx.Val.Current =                                               10134;  % Current

%*** Value set for terminal configuration for 4463 calibration functions ***
DAQmx.Val.Diff       =                                            10106;  % Differential
DAQmx.Val.PseudoDiff =                                            12529;  % Pseudodifferential

%*** Value set for the calibration mode for the 4480 Calibration functions ***
DAQmx.Val.Voltage =                                               10322;  % Voltage
DAQmx.Val.Charge  =                                               16105;  % Charge

%*** Value set for the calibration type for the 15200 Calibration functions ***
DAQmx.Val.PowerCalibrationType_RemoteVoltage =                    15100;  % Remote Voltage
DAQmx.Val.PowerCalibrationType_LocalVoltage  =                    15101;  % Local Voltage
DAQmx.Val.PowerCalibrationType_Current       =                    15102;  % Current

%*** Value set for shunt resistor select for Strain and Bridge Shunt Calibration functions ***
DAQmx.Val.A =                                                     12513;  % A
DAQmx.Val.B =                                                     12514;  % B

%*** Value set for Force IEPE functions ***
DAQmx.Val.Newtons         =                                       15875;  % Newtons
DAQmx.Val.Pounds          =                                       15876;  % Pounds
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Value set for DAQmxWaitForValidTimestamp ***
DAQmx.Val.StartTrigger         =                                  12491;  % Start Trigger
DAQmx.Val.ReferenceTrigger     =                                  12490;  % Reference Trigger
DAQmx.Val.ArmStartTrigger      =                                  14641;  % Arm Start Trigger
DAQmx.Val.FirstSampleTimestamp =                                  16130;  % First Sample Timestamp

%*** Value for the Terminal Config parameter of DAQmxCreateAIVoltageChan, DAQmxCreateAICurrentChan and DAQmxCreateAIVoltageChanWithExcit ***
DAQmx.Val.Cfg_Default =                                           -1;  % Default
%*** Value for the Shunt Resistor Location parameter of DAQmxCreateAICurrentChan ***
DAQmx.Val.Default =                                               -1;  % Default

%*** Value for the Timeout parameter of DAQmxWaitUntilTaskDone
DAQmx.Val.WaitInfinitely =                                        -1;

%*** Value for the Number of Samples per Channel parameter of DAQmxReadAnalogF64, DAQmxReadBinaryI16, DAQmxReadBinaryU16,
%    DAQmxReadBinaryI32, DAQmxReadBinaryU32, DAQmxReadDigitalU8, DAQmxReadDigitalU32,
%    DAQmxReadDigitalLines, DAQmxReadCounterF64, DAQmxReadCounterU32 and DAQmxReadRaw ***
DAQmx.Val.Auto =                                                  -1;

% Value set for the Options parameter of DAQmxSaveTask, DAQmxSaveGlobalChan and DAQmxSaveScale
DAQmx.Val.Save_Overwrite                =                        1 * 2^0;  % 1<<0
DAQmx.Val.Save_AllowInteractiveEditing  =                        1 * 2^1;  % 1<<1
DAQmx.Val.Save_AllowInteractiveDeletion =                        1 * 2^2;  % 1<<2

%*** Values for the Trigger Usage parameter - set of trigger types a device may support
%*** Values for TriggerUsageTypeBits
DAQmx.Val.Bit_TriggerUsageTypes_Advance   =                      1 * 2^0;  % 1<<0  % Device supports advance triggers
DAQmx.Val.Bit_TriggerUsageTypes_Pause     =                      1 * 2^1;  % 1<<1  % Device supports pause triggers
DAQmx.Val.Bit_TriggerUsageTypes_Reference =                      1 * 2^2;  % 1<<2  % Device supports reference triggers
DAQmx.Val.Bit_TriggerUsageTypes_Start     =                      1 * 2^3;  % 1<<3  % Device supports start triggers
DAQmx.Val.Bit_TriggerUsageTypes_Handshake =                      1 * 2^4;  % 1<<4  % Device supports handshake triggers
DAQmx.Val.Bit_TriggerUsageTypes_ArmStart  =                      1 * 2^5;  % 1<<5  % Device supports arm start triggers

%*** Values for the Coupling Types parameter - set of coupling types a device may support
%*** Values for CouplingTypeBits
DAQmx.Val.Bit_CouplingTypes_AC          =                        1 * 2^0;  % 1<<0  % Device supports AC coupling
DAQmx.Val.Bit_CouplingTypes_DC          =                        1 * 2^1;  % 1<<1  % Device supports DC coupling
DAQmx.Val.Bit_CouplingTypes_Ground      =                        1 * 2^2;  % 1<<2  % Device supports ground coupling
DAQmx.Val.Bit_CouplingTypes_HFReject    =                        1 * 2^3;  % 1<<3  % Device supports High Frequency Reject coupling
DAQmx.Val.Bit_CouplingTypes_LFReject    =                        1 * 2^4;  % 1<<4  % Device supports Low Frequency Reject coupling
DAQmx.Val.Bit_CouplingTypes_NoiseReject =                        1 * 2^5;  % 1<<5  % Device supports Noise Reject coupling

%*** Values for DAQmx.PhysicalChan.AI_TermCfgs and DAQmx.PhysicalChan.AO_TermCfgs
%*** Value set TerminalConfigurationBits ***
DAQmx.Val.Bit_TermCfg_RSE        =                               1 * 2^0;  % 1<<0  % RSE terminal configuration
DAQmx.Val.Bit_TermCfg_NRSE       =                               1 * 2^1;  % 1<<1  % NRSE terminal configuration
DAQmx.Val.Bit_TermCfg_Diff       =                               1 * 2^2;  % 1<<2  % Differential terminal configuration
DAQmx.Val.Bit_TermCfg_PseudoDIFF =                               1 * 2^3;  % 1<<3  % Pseudodifferential terminal configuration


% ******************************************************
% ***              Attribute Values                  ***
% ******************************************************

%*** Values for DAQmx.AI.ACExcit_WireMode ***
%*** Value set ACExcitWireMode ***
DAQmx.Val.Val4Wire =                                                  4;  % 4-Wire
DAQmx.Val.Val5Wire =                                                  5;  % 5-Wire
DAQmx.Val.Val6Wire =                                                  6;  % 6-Wire

%*** Values for DAQmx.AI.ADCTimingMode ***
%*** Value set ADCTimingMode ***
DAQmx.Val.Automatic         =                                     16097;  % Automatic
DAQmx.Val.HighResolution    =                                     10195;  % High Resolution
DAQmx.Val.HighSpeed         =                                     14712;  % High Speed
DAQmx.Val.Best50HzRejection =                                     14713;  % Best 50 Hz Rejection
DAQmx.Val.Best60HzRejection =                                     14714;  % Best 60 Hz Rejection
DAQmx.Val.Custom            =                                     10137;  % Custom

%*** Values for DAQmx.AI.MeasType ***
%*** Values for DAQmx.Dev.AI_SupportedMeasTypes ***
%*** Values for DAQmx.PhysicalChan.AI_SupportedMeasTypes ***
%*** Value set AIMeasurementType ***
DAQmx.Val.Voltage                            =                    10322;  % Voltage
DAQmx.Val.VoltageRMS                         =                    10350;  % Voltage RMS
DAQmx.Val.Current                            =                    10134;  % Current
DAQmx.Val.CurrentRMS                         =                    10351;  % Current RMS
DAQmx.Val.Voltage_CustomWithExcitation       =                    10323;  % More:Voltage:Custom with Excitation
DAQmx.Val.Bridge                             =                    15908;  % More:Bridge (V/V)
DAQmx.Val.Freq_Voltage                       =                    10181;  % Frequency
DAQmx.Val.Resistance                         =                    10278;  % Resistance
DAQmx.Val.Temp_TC                            =                    10303;  % Temperature:Thermocouple
DAQmx.Val.Temp_Thrmstr                       =                    10302;  % Temperature:Thermistor
DAQmx.Val.Temp_RTD                           =                    10301;  % Temperature:RTD
DAQmx.Val.Temp_BuiltInSensor                 =                    10311;  % Temperature:Built-in Sensor
DAQmx.Val.Strain_Gage                        =                    10300;  % Strain Gage
DAQmx.Val.Rosette_Strain_Gage                =                    15980;  % Rosette Strain Gage
DAQmx.Val.Position_LVDT                      =                    10352;  % Position:LVDT
DAQmx.Val.Position_RVDT                      =                    10353;  % Position:RVDT
DAQmx.Val.Position_EddyCurrentProximityProbe =                    14835;  % Position:Eddy Current Proximity Probe
DAQmx.Val.Accelerometer                      =                    10356;  % Accelerometer
DAQmx.Val.Acceleration_Charge                =                    16104;  % Acceleration:Charge
DAQmx.Val.Acceleration_4WireDCVoltage        =                    16106;  % Acceleration:4 Wire DC Voltage
DAQmx.Val.Velocity_IEPESensor                =                    15966;  % Velocity:IEPE Sensor
DAQmx.Val.Force_Bridge                       =                    15899;  % Force:Bridge
DAQmx.Val.Force_IEPESensor                   =                    15895;  % Force:IEPE Sensor
DAQmx.Val.Pressure_Bridge                    =                    15902;  % Pressure:Bridge
DAQmx.Val.SoundPressure_Microphone           =                    10354;  % Sound Pressure:Microphone
DAQmx.Val.Torque_Bridge                      =                    15905;  % Torque:Bridge
DAQmx.Val.TEDS_Sensor                        =                    12531;  % TEDS Sensor
DAQmx.Val.Charge                             =                    16105;  % Charge
DAQmx.Val.Power                              =                    16201;  % Power

%*** Values for DAQmx.AO.IdleOutputBehavior ***
%*** Value set AOIdleOutputBehavior ***
DAQmx.Val.ZeroVolts             =                                 12526;  % Zero Volts
DAQmx.Val.HighImpedance         =                                 12527;  % High-Impedance
DAQmx.Val.MaintainExistingValue =                                 12528;  % Maintain Existing Value

%*** Values for DAQmx.AO.OutputType ***
%*** Values for DAQmx.Dev.AO_SupportedOutputTypes ***
%*** Values for DAQmx.PhysicalChan.AO_SupportedOutputTypes ***
%*** Value set AOOutputChannelType ***
DAQmx.Val.Voltage =                                               10322;  % Voltage
DAQmx.Val.Current =                                               10134;  % Current
DAQmx.Val.FuncGen =                                               14750;  % Function Generation

%*** Values for DAQmx.PhysicalChan.AO_SupportedPowerUpOutputTypes ***
%*** Value set AOPowerUpOutputBehavior ***
DAQmx.Val.Voltage       =                                         10322;  % Voltage
DAQmx.Val.Current       =                                         10134;  % Current
DAQmx.Val.HighImpedance =                                         12527;  % High-Impedance

%*** Values for DAQmx.AI.Accel_Charge_SensitivityUnits ***
%*** Value set AccelChargeSensitivityUnits ***
DAQmx.Val.PicoCoulombsPerG                      =                 16099;  % PicoCoulombs per g
DAQmx.Val.PicoCoulombsPerMetersPerSecondSquared =                 16100;  % PicoCoulombs per m/s^2
DAQmx.Val.PicoCoulombsPerInchesPerSecondSquared =                 16101;  % PicoCoulombs per in/s^2

%*** Values for DAQmx.AI.Accel_4WireDCVoltage_SensitivityUnits ***
%*** Values for DAQmx.AI.Accel_SensitivityUnits ***
%*** Value set AccelSensitivityUnits1 ***
DAQmx.Val.mVoltsPerG =                                            12509;  % mVolts/g
DAQmx.Val.VoltsPerG  =                                            12510;  % Volts/g

%*** Values for DAQmx.AI.Accel_Units ***
%*** Value set AccelUnits2 ***
DAQmx.Val.AccelUnit_g            =                                10186;  % g
DAQmx.Val.MetersPerSecondSquared =                                12470;  % m/s^2
DAQmx.Val.InchesPerSecondSquared =                                12471;  % in/s^2
DAQmx.Val.FromCustomScale        =                                10065;  % From Custom Scale

%*** Values for DAQmx.Dev.AI_SampModes ***
%*** Values for DAQmx.Dev.AO_SampModes ***
%*** Values for DAQmx.Dev.CI_SampModes ***
%*** Values for DAQmx.Dev.CO_SampModes ***
%*** Values for DAQmx.PhysicalChan.DI_SampModes ***
%*** Values for DAQmx.PhysicalChan.DO_SampModes ***
%*** Values for DAQmx.SampQuant.SampMode ***
%*** Value set AcquisitionType ***
DAQmx.Val.FiniteSamps        =                                    10178;  % Finite Samples
DAQmx.Val.ContSamps          =                                    10123;  % Continuous Samples
DAQmx.Val.HWTimedSinglePoint =                                    12522;  % Hardware Timed Single Point

%*** Values for DAQmx.AnlgLvl.PauseTrig_When ***
%*** Value set ActiveLevel ***
DAQmx.Val.AboveLvl =                                              10093;  % Above Level
DAQmx.Val.BelowLvl =                                              10107;  % Below Level

%*** Values for DAQmx.AI.RVDT_Units ***
%*** Value set AngleUnits1 ***
DAQmx.Val.Degrees         =                                       10146;  % Degrees
DAQmx.Val.Radians         =                                       10273;  % Radians
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.CI.AngEncoder_Units ***
%*** Value set AngleUnits2 ***
DAQmx.Val.Degrees         =                                       10146;  % Degrees
DAQmx.Val.Radians         =                                       10273;  % Radians
DAQmx.Val.Ticks           =                                       10304;  % Ticks
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.CI.Velocity_AngEncoder_Units ***
%*** Value set AngularVelocityUnits ***
DAQmx.Val.RPM              =                                      16080;  % RPM
DAQmx.Val.RadiansPerSecond =                                      16081;  % Radians/s
DAQmx.Val.DegreesPerSecond =                                      16082;  % Degrees/s
DAQmx.Val.FromCustomScale  =                                      10065;  % From Custom Scale

%*** Values for DAQmx.AI.AutoZeroMode ***
%*** Value set AutoZeroType1 ***
DAQmx.Val.None        =                                           10230;  % None
DAQmx.Val.Once        =                                           10244;  % Once
DAQmx.Val.EverySample =                                           10164;  % Every Sample

%*** Values for DAQmx.SwitchScan.BreakMode ***
%*** Value set BreakMode ***
DAQmx.Val.NoAction        =                                       10227;  % No Action
DAQmx.Val.BreakBeforeMake =                                       10110;  % Break Before Make

%*** Values for DAQmx.AI.Bridge_Cfg ***
%*** Value set BridgeConfiguration1 ***
DAQmx.Val.FullBridge    =                                         10182;  % Full Bridge
DAQmx.Val.HalfBridge    =                                         10187;  % Half Bridge
DAQmx.Val.QuarterBridge =                                         10270;  % Quarter Bridge
DAQmx.Val.NoBridge      =                                         10228;  % No Bridge

%*** Values for DAQmx.AI.Bridge_ElectricalUnits ***
%*** Value set BridgeElectricalUnits ***
DAQmx.Val.VoltsPerVolt  =                                         15896;  % Volts/Volt
DAQmx.Val.mVoltsPerVolt =                                         15897;  % mVolts/Volt

%*** Values for DAQmx.AI.Bridge_PhysicalUnits ***
%*** Value set BridgePhysicalUnits ***
DAQmx.Val.Newtons             =                                   15875;  % Newtons
DAQmx.Val.Pounds              =                                   15876;  % Pounds
DAQmx.Val.KilogramForce       =                                   15877;  % kgf
DAQmx.Val.Pascals             =                                   10081;  % Pascals
DAQmx.Val.PoundsPerSquareInch =                                   15879;  % psi
DAQmx.Val.Bar                 =                                   15880;  % bar
DAQmx.Val.NewtonMeters        =                                   15881;  % Nm
DAQmx.Val.InchOunces          =                                   15882;  % oz-in
DAQmx.Val.InchPounds          =                                   15883;  % lb-in
DAQmx.Val.FootPounds          =                                   15884;  % lb-ft

%*** Values for DAQmx.AI.Bridge_Units ***
%*** Value set BridgeUnits ***
DAQmx.Val.VoltsPerVolt    =                                       15896;  % Volts/Volt
DAQmx.Val.mVoltsPerVolt   =                                       15897;  % mVolts/Volt
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale
DAQmx.Val.FromTEDS        =                                       12516;  % From TEDS

%*** Values for DAQmx.Dev.BusType ***
%*** Value set BusType ***
DAQmx.Val.PCI         =                                           12582;  % PCI
DAQmx.Val.PCIe        =                                           13612;  % PCIe
DAQmx.Val.PXI         =                                           12583;  % PXI
DAQmx.Val.PXIe        =                                           14706;  % PXIe
DAQmx.Val.SCXI        =                                           12584;  % SCXI
DAQmx.Val.SCC         =                                           14707;  % SCC
DAQmx.Val.PCCard      =                                           12585;  % PCCard
DAQmx.Val.USB         =                                           12586;  % USB
DAQmx.Val.CompactDAQ  =                                           14637;  % CompactDAQ
DAQmx.Val.CompactRIO  =                                           16143;  % CompactRIO
DAQmx.Val.TCPIP       =                                           14828;  % TCP/IP
DAQmx.Val.Unknown     =                                           12588;  % Unknown
DAQmx.Val.SwitchBlock =                                           15870;  % SwitchBlock

%*** Values for DAQmx.CI.MeasType ***
%*** Values for DAQmx.Dev.CI_SupportedMeasTypes ***
%*** Values for DAQmx.PhysicalChan.CI_SupportedMeasTypes ***
%*** Value set CIMeasurementType ***
DAQmx.Val.CountEdges          =                                   10125;  % Count Edges
DAQmx.Val.Freq                =                                   10179;  % Frequency
DAQmx.Val.Period              =                                   10256;  % Period
DAQmx.Val.PulseWidth          =                                   10359;  % Pulse Width
DAQmx.Val.SemiPeriod          =                                   10289;  % Semi Period
DAQmx.Val.PulseFrequency      =                                   15864;  % Pulse Frequency
DAQmx.Val.PulseTime           =                                   15865;  % Pulse Time
DAQmx.Val.PulseTicks          =                                   15866;  % Pulse Ticks
DAQmx.Val.DutyCycle           =                                   16070;  % Duty Cycle
DAQmx.Val.Position_AngEncoder =                                   10360;  % Position:Angular Encoder
DAQmx.Val.Position_LinEncoder =                                   10361;  % Position:Linear Encoder
DAQmx.Val.Velocity_AngEncoder =                                   16078;  % Velocity:Angular Encoder
DAQmx.Val.Velocity_LinEncoder =                                   16079;  % Velocity:Linear Encoder
DAQmx.Val.TwoEdgeSep          =                                   10267;  % Two Edge Separation
DAQmx.Val.GPS_Timestamp       =                                   10362;  % GPS Timestamp

%*** Values for DAQmx.AI.Thrmcpl_CJCSrc ***
%*** Value set CJCSource1 ***
DAQmx.Val.BuiltIn  =                                              10200;  % Built-In
DAQmx.Val.ConstVal =                                              10116;  % Constant Value
DAQmx.Val.Chan     =                                              10113;  % Channel

%*** Values for DAQmx.CO.OutputType ***
%*** Values for DAQmx.Dev.CO_SupportedOutputTypes ***
%*** Values for DAQmx.PhysicalChan.CO_SupportedOutputTypes ***
%*** Value set COOutputType ***
DAQmx.Val.Pulse_Time  =                                           10269;  % Pulse:Time
DAQmx.Val.Pulse_Freq  =                                           10119;  % Pulse:Frequency
DAQmx.Val.Pulse_Ticks =                                           10268;  % Pulse:Ticks

%*** Values for DAQmx.ChanType ***
%*** Value set ChannelType ***
DAQmx.Val.AI =                                                    10100;  % Analog Input
DAQmx.Val.AO =                                                    10102;  % Analog Output
DAQmx.Val.DI =                                                    10151;  % Digital Input
DAQmx.Val.DO =                                                    10153;  % Digital Output
DAQmx.Val.CI =                                                    10131;  % Counter Input
DAQmx.Val.CO =                                                    10132;  % Counter Output

%*** Values for DAQmx.CO.ConstrainedGenMode ***
%*** Value set ConstrainedGenMode ***
DAQmx.Val.Unconstrained           =                               14708;  % Unconstrained
DAQmx.Val.FixedHighFreq           =                               14709;  % Fixed High Frequency
DAQmx.Val.FixedLowFreq            =                               14710;  % Fixed Low Frequency
DAQmx.Val.Fixed50PercentDutyCycle =                               14711;  % Fixed 50 Percent Duty Cycle

%*** Values for DAQmx.CI.CountEdges_Dir ***
%*** Value set CountDirection1 ***
DAQmx.Val.CountUp       =                                         10128;  % Count Up
DAQmx.Val.CountDown     =                                         10124;  % Count Down
DAQmx.Val.ExtControlled =                                         10326;  % Externally Controlled

%*** Values for DAQmx.CI.Freq_MeasMeth ***
%*** Values for DAQmx.CI.Period_MeasMeth ***
%*** Value set CounterFrequencyMethod ***
DAQmx.Val.LowFreq1Ctr  =                                          10105;  % Low Frequency with 1 Counter
DAQmx.Val.HighFreq2Ctr =                                          10157;  % High Frequency with 2 Counters
DAQmx.Val.LargeRng2Ctr =                                          10205;  % Large Range with 2 Counters
DAQmx.Val.DynAvg       =                                          16065;  % Dynamic Averaging

%*** Values for DAQmx.AI.Coupling ***
%*** Value set Coupling1 ***
DAQmx.Val.AC  =                                                   10045; % AC
DAQmx.Val.DC  =                                                   10050; % DC
DAQmx.Val.GND =                                                   10066; % GND

%*** Values for DAQmx.AnlgEdge.StartTrig_Coupling ***
%*** Values for DAQmx.AnlgMultiEdge.StartTrig_Couplings ***
%*** Values for DAQmx.AnlgWin.StartTrig_Coupling ***
%*** Values for DAQmx.AnlgEdge.RefTrig_Coupling ***
%*** Values for DAQmx.AnlgMultiEdge.RefTrig_Couplings ***
%*** Values for DAQmx.AnlgWin.RefTrig_Coupling ***
%*** Values for DAQmx.AnlgLvl.PauseTrig_Coupling ***
%*** Values for DAQmx.AnlgWin.PauseTrig_Coupling ***
%*** Value set Coupling2 ***
DAQmx.Val.AC =                                                    10045;  % AC
DAQmx.Val.DC =                                                    10050;  % DC

%*** Values for DAQmx.AI.CurrentShunt_Loc ***
%*** Value set CurrentShuntResistorLocation1 ***
DAQmx.Val.Internal =                                              10200;  % Internal
DAQmx.Val.External =                                              10167;  % External

%*** Values for DAQmx.AI.Bridge_ShuntCal_ShuntCalASrc ***
%*** Value set BridgeShuntCalSource ***
DAQmx.Val.BuiltIn      =                                          10200;  % Built-In
DAQmx.Val.UserProvided =                                          10167;  % User Provided

%*** Values for DAQmx.AI.Charge_Units ***
%*** Value set ChargeUnits ***
DAQmx.Val.Coulombs        =                                       16102;  % Coulombs
DAQmx.Val.PicoCoulombs    =                                       16103;  % PicoCoulombs
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.Current_Units ***
%*** Values for DAQmx.AI.Current_ACRMS_Units ***
%*** Values for DAQmx.AO.Current_Units ***
%*** Value set CurrentUnits1 ***
DAQmx.Val.Amps            =                                       10342;  % Amps
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale
DAQmx.Val.FromTEDS        =                                       12516;  % From TEDS

%*** Value set CurrentUnits2 ***
DAQmx.Val.Amps            =                                       10342;  % Amps
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.RawSampJustification ***
%*** Value set DataJustification1 ***
DAQmx.Val.RightJustified =                                        10279;  % Right-Justified
DAQmx.Val.LeftJustified  =                                        10209;  % Left-Justified

%*** Values for DAQmx.AI.DataXferMech ***
%*** Values for DAQmx.AO.DataXferMech ***
%*** Values for DAQmx.DI.DataXferMech ***
%*** Values for DAQmx.DO.DataXferMech ***
%*** Values for DAQmx.CI.DataXferMech ***
%*** Values for DAQmx.CO.DataXferMech ***
%*** Value set DataTransferMechanism ***
DAQmx.Val.DMA          =                                          10054;  % DMA
DAQmx.Val.Interrupts   =                                          10204;  % Interrupts
DAQmx.Val.ProgrammedIO =                                          10264;  % Programmed I/O
DAQmx.Val.USBbulk      =                                          12590;  % USB Bulk

%*** Values for DAQmx.Exported.RdyForXferEvent_DeassertCond ***
%*** Value set DeassertCondition ***
DAQmx.Val.OnbrdMemMoreThanHalfFull =                              10237;  % Onboard Memory More than Half Full
DAQmx.Val.OnbrdMemFull             =                              10236;  % Onboard Memory Full
DAQmx.Val.OnbrdMemCustomThreshold  =                              12577;  % Onboard Memory Custom Threshold

%*** Values for DAQmx.DO.OutputDriveType ***
%*** Value set DigitalDriveType ***
DAQmx.Val.ActiveDrive   =                                         12573;  % Active Drive
DAQmx.Val.OpenCollector =                                         12574;  % Open Collector

%*** Values for DAQmx.DO.LineStates_StartState ***
%*** Values for DAQmx.DO.LineStates_PausedState ***
%*** Values for DAQmx.DO.LineStates_DoneState ***
%*** Values for DAQmx.Watchdog.DO_ExpirState ***
%*** Value set DigitalLineState ***
DAQmx.Val.High     =                                              10192;  % High
DAQmx.Val.Low      =                                              10214;  % Low
DAQmx.Val.Tristate =                                              10310;  % Tristate
DAQmx.Val.NoChange =                                              10160;  % No Change

%*** Values for DAQmx.DigPattern.StartTrig_When ***
%*** Values for DAQmx.DigPattern.RefTrig_When ***
%*** Values for DAQmx.DigPattern.PauseTrig_When ***
%*** Value set DigitalPatternCondition1 ***
DAQmx.Val.PatternMatches      =                                   10254;  % Pattern Matches
DAQmx.Val.PatternDoesNotMatch =                                   10253;  % Pattern Does Not Match

%*** Values for DAQmx.StartTrig.DelayUnits ***
%*** Value set DigitalWidthUnits1 ***
DAQmx.Val.SampClkPeriods =                                        10286;  % Sample Clock Periods
DAQmx.Val.Seconds        =                                        10364;  % Seconds
DAQmx.Val.Ticks          =                                        10304;  % Ticks

%*** Values for DAQmx.DelayFromSampClk.DelayUnits ***
%*** Value set DigitalWidthUnits2 ***
DAQmx.Val.Seconds =                                               10364;  % Seconds
DAQmx.Val.Ticks   =                                               10304;  % Ticks

%*** Values for DAQmx.Exported.AdvTrig_Pulse_WidthUnits ***
%*** Value set DigitalWidthUnits3 ***
DAQmx.Val.Seconds =                                               10364; % Seconds

%*** Values for DAQmx.AI.FilterDelayUnits ***
%*** Values for DAQmx.AO.FilterDelayUnits ***
%*** Values for DAQmx.CI.FilterDelayUnits ***
%*** Value set DigitalWidthUnits4 ***
DAQmx.Val.Seconds          =                                      10364;  % Seconds
DAQmx.Val.SampleClkPeriods =                                      10286;  % Sample Clock Periods

%*** Values for DAQmx.AI.EddyCurrentProxProbe_SensitivityUnits ***
%*** Value set EddyCurrentProxProbeSensitivityUnits ***
DAQmx.Val.mVoltsPerMil        =                                   14836;  % mVolts/mil
DAQmx.Val.VoltsPerMil         =                                   14837;  % Volts/mil
DAQmx.Val.mVoltsPerMillimeter =                                   14838;  % mVolts/mMeter
DAQmx.Val.VoltsPerMillimeter  =                                   14839;  % Volts/mMeter
DAQmx.Val.mVoltsPerMicron     =                                   14840;  % mVolts/micron

%*** Values for DAQmx.CI.Freq_StartingEdge ***
%*** Values for DAQmx.CI.Period_StartingEdge ***
%*** Values for DAQmx.CI.CountEdges_ActiveEdge ***
%*** Values for DAQmx.CI.CountEdges_CountReset_ActiveEdge ***
%*** Values for DAQmx.CI.DutyCycle_StartingEdge ***
%*** Values for DAQmx.CI.PulseWidth_StartingEdge ***
%*** Values for DAQmx.CI.TwoEdgeSep_FirstEdge ***
%*** Values for DAQmx.CI.TwoEdgeSep_SecondEdge ***
%*** Values for DAQmx.CI.SemiPeriod_StartingEdge ***
%*** Values for DAQmx.CI.Pulse_Freq_Start_Edge ***
%*** Values for DAQmx.CI.Pulse_Time_StartEdge ***
%*** Values for DAQmx.CI.Pulse_Ticks_StartEdge ***
%*** Values for DAQmx.CI.CtrTimebaseActiveEdge ***
%*** Values for DAQmx.CO.CtrTimebaseActiveEdge ***
%*** Values for DAQmx.SampClk.ActiveEdge ***
%*** Values for DAQmx.SampClk.Timebase_ActiveEdge ***
%*** Values for DAQmx.AIConv.ActiveEdge ***
%*** Values for DAQmx.DigEdge.StartTrig_Edge ***
%*** Values for DAQmx.DigEdge.RefTrig_Edge ***
%*** Values for DAQmx.DigEdge.AdvTrig_Edge ***
%*** Values for DAQmx.DigEdge.ArmStartTrig_Edge ***
%*** Values for DAQmx.DigEdge.WatchdogExpirTrig_Edge ***
%*** Value set Edge1 ***
DAQmx.Val.Rising  =                                               10280;  % Rising
DAQmx.Val.Falling =                                               10171;  % Falling

%*** Values for DAQmx.CI.Encoder_DecodingType ***
%*** Values for DAQmx.CI.Velocity_Encoder_DecodingType ***
%*** Value set EncoderType2 ***
DAQmx.Val.X1               =                                      10090;  % X1
DAQmx.Val.X2               =                                      10091;  % X2
DAQmx.Val.X4               =                                      10092;  % X4
DAQmx.Val.TwoPulseCounting =                                      10313;  % Two Pulse Counting

%*** Values for DAQmx.CI.Encoder_ZIndexPhase ***
%*** Value set EncoderZIndexPhase1 ***
DAQmx.Val.AHighBHigh =                                            10040;  % A High B High
DAQmx.Val.AHighBLow  =                                            10041;  % A High B Low
DAQmx.Val.ALowBHigh  =                                            10042;  % A Low B High
DAQmx.Val.ALowBLow   =                                            10043;  % A Low B Low

%*** Values for DAQmx.AI.Excit_DCorAC ***
%*** Value set ExcitationDCorAC ***
DAQmx.Val.DC =                                                    10050;  % DC
DAQmx.Val.AC =                                                    10045;  % AC

%*** Values for DAQmx.AI.Excit_Src ***
%*** Value set ExcitationSource ***
DAQmx.Val.Internal =                                              10200;  % Internal
DAQmx.Val.External =                                              10167;  % External
DAQmx.Val.None     =                                              10230;  % None

%*** Values for DAQmx.AI.Excit_VoltageOrCurrent ***
%*** Value set ExcitationVoltageOrCurrent ***
DAQmx.Val.Voltage =                                               10322;  % Voltage
DAQmx.Val.Current =                                               10134;  % Current

%*** Values for DAQmx.Exported.CtrOutEvent_OutputBehavior ***
%*** Value set ExportActions2 ***
DAQmx.Val.Pulse  =                                                10265;  % Pulse
DAQmx.Val.Toggle =                                                10307;  % Toggle

%*** Values for DAQmx.Exported.SampClk_OutputBehavior ***
%*** Value set ExportActions3 ***
DAQmx.Val.Pulse =                                                 10265;  % Pulse
DAQmx.Val.Lvl   =                                                 10210;  % Level

%*** Values for DAQmx.Exported.HshkEvent_OutputBehavior ***
%*** Value set ExportActions5 ***
DAQmx.Val.Interlocked =                                           12549;  % Interlocked
DAQmx.Val.Pulse       =                                           10265;  % Pulse

%*** Values for DAQmx.AI.DigFltr_Type ***
%*** Values for DAQmx.AI.DigFltr_Types ***
%*** Value set FilterType2 ***
DAQmx.Val.Lowpass  =                                              16071;  % Lowpass
DAQmx.Val.Highpass =                                              16072;  % Highpass
DAQmx.Val.Bandpass =                                              16073;  % Bandpass
DAQmx.Val.Notch    =                                              16074;  % Notch
DAQmx.Val.Custom   =                                              10137;  % Custom

%*** Values for DAQmx.AI.DigFltr_Response ***
%*** Value set FilterResponse ***
DAQmx.Val.ConstantGroupDelay =                                    16075;  % Constant Group Delay
DAQmx.Val.Butterworth        =                                    16076;  % Butterworth
DAQmx.Val.Elliptical         =                                    16077;  % Elliptical
DAQmx.Val.HardwareDefined    =                                    10191;  % Hardware Defined

%*** Values for DAQmx.AI.Filter_Response ***
%*** Values for DAQmx.CI.Filter_Response ***
%*** Value set FilterResponse1 ***
DAQmx.Val.Comb        =                                           16152;  % Comb
DAQmx.Val.Bessel      =                                           16153;  % Bessel
DAQmx.Val.Brickwall   =                                           16155;  % Brickwall
DAQmx.Val.Butterworth =                                           16076;  % Butterworth

%*** Values for DAQmx.AI.Force_IEPESensor_SensitivityUnits ***
%*** Value set ForceIEPESensorSensitivityUnits ***
DAQmx.Val.mVoltsPerNewton =                                       15891;  % mVolts/N
DAQmx.Val.mVoltsPerPound  =                                       15892;  % mVolts/lb

%*** Values for DAQmx.AI.Force_Units ***
%*** Value set ForceUnits ***
DAQmx.Val.Newtons         =                                       15875;  % Newtons
DAQmx.Val.Pounds          =                                       15876;  % Pounds
DAQmx.Val.KilogramForce   =                                       15877;  % kgf
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.Freq_Units ***
%*** Value set FrequencyUnits ***
DAQmx.Val.Hz              =                                       10373;  % Hz
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.CI.Pulse_Freq_Units ***
%*** Values for DAQmx.CO.Pulse_Freq_Units ***
%*** Value set FrequencyUnits2 ***
DAQmx.Val.Hz =                                                    10373;  % Hz

%*** Values for DAQmx.CI.Freq_Units ***
%*** Value set FrequencyUnits3 ***
DAQmx.Val.Hz              =                                       10373;  % Hz
DAQmx.Val.Ticks           =                                       10304;  % Ticks
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AO.FuncGen_Type ***
%*** Value set FuncGenType ***
DAQmx.Val.Sine     =                                              14751;  % Sine
DAQmx.Val.Triangle =                                              14752;  % Triangle
DAQmx.Val.Square   =                                              14753;  % Square
DAQmx.Val.Sawtooth =                                              14754;  % Sawtooth

%*** Values for DAQmx.CI.GPS_SyncMethod ***
%*** Value set GpsSignalType1 ***
DAQmx.Val.IRIGB =                                                 10070;  % IRIG-B
DAQmx.Val.PPS   =                                                 10080;  % PPS
DAQmx.Val.None  =                                                 10230;  % None

%*** Values for DAQmx.Hshk.StartCond ***
%*** Value set HandshakeStartCondition ***
DAQmx.Val.Immediate                       =                       10198;  % Immediate
DAQmx.Val.WaitForHandshakeTriggerAssert   =                       12550;  % Wait For Handshake Trigger Assert
DAQmx.Val.WaitForHandshakeTriggerDeassert =                       12551;  % Wait For Handshake Trigger Deassert


%*** Values for DAQmx.AI.DataXferReqCond ***
%*** Values for DAQmx.DI.DataXferReqCond ***
%*** Values for DAQmx.CI.DataXferReqCond ***
%*** Value set InputDataTransferCondition ***
DAQmx.Val.OnBrdMemMoreThanHalfFull =                              10237;  % Onboard Memory More than Half Full
DAQmx.Val.OnBrdMemNotEmpty         =                              10241;  % Onboard Memory Not Empty
DAQmx.Val.OnbrdMemCustomThreshold  =                              12577;  % Onboard Memory Custom Threshold
DAQmx.Val.WhenAcqComplete          =                              12546;  % When Acquisition Complete

%*** Values for DAQmx.AI.TermCfg ***
%*** Value set InputTermCfg ***
DAQmx.Val.RSE        =                                            10083;  % RSE
DAQmx.Val.NRSE       =                                            10078;  % NRSE
DAQmx.Val.Diff       =                                            10106;  % Differential
DAQmx.Val.PseudoDiff =                                            12529;  % Pseudodifferential

%*** Values for DAQmx.CI.Freq_TermCfg ***
%*** Values for DAQmx.CI.Period_TermCfg ***
%*** Values for DAQmx.CI.CountEdges_TermCfg ***
%*** Values for DAQmx.CI.CountEdges_CountDir_TermCfg ***
%*** Values for DAQmx.CI.CountEdges_CountReset_TermCfg ***
%*** Values for DAQmx.CI.CountEdges_Gate_TermCfg ***
%*** Values for DAQmx.CI.DutyCycle_TermCfg ***
%*** Values for DAQmx.CI.Encoder_AInputTermCfg ***
%*** Values for DAQmx.CI.Encoder_BInputTermCfg ***
%*** Values for DAQmx.CI.Encoder_ZInputTermCfg ***
%*** Values for DAQmx.CI.PulseWidth_TermCfg ***
%*** Values for DAQmx.CI.Velocity_Encoder_AInputTermCfg ***
%*** Values for DAQmx.CI.Velocity_Encoder_BInputTermCfg ***
%*** Values for DAQmx.CI.TwoEdgeSep_FirstTermCfg ***
%*** Values for DAQmx.CI.TwoEdgeSep_SecondTermCfg ***
%*** Values for DAQmx.CI.SemiPeriod_TermCfg ***
%*** Values for DAQmx.CI.Pulse_Freq_TermCfg ***
%*** Values for DAQmx.CI.Pulse_Time_TermCfg ***
%*** Values for DAQmx.CI.Pulse_Ticks_TermCfg ***
%*** Value set InputTermCfg2 ***
DAQmx.Val.Diff =                                                  10106;  % Differential
DAQmx.Val.RSE  =                                                  10083;  % RSE

%*** Values for DAQmx.AI.LVDT_SensitivityUnits ***
%*** Value set LVDTSensitivityUnits1 ***
DAQmx.Val.mVoltsPerVoltPerMillimeter =                            12506;  % mVolts/Volt/mMeter
DAQmx.Val.mVoltsPerVoltPerMilliInch  =                            12505;  % mVolts/Volt/0.001 Inch

%*** Values for DAQmx.AI.LVDT_Units ***
%*** Values for DAQmx.AI.EddyCurrentProxProbe_Units ***
%*** Value set LengthUnits2 ***
DAQmx.Val.Meters          =                                       10219;  % Meters
DAQmx.Val.Inches          =                                       10379;  % Inches
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.CI.LinEncoder_Units ***
%*** Value set LengthUnits3 ***
DAQmx.Val.Meters          =                                       10219;  % Meters
DAQmx.Val.Inches          =                                       10379;  % Inches
DAQmx.Val.Ticks           =                                       10304;  % Ticks
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.CI.CountEdges_GateWhen ***
%*** Values for DAQmx.CI.OutputState ***
%*** Values for DAQmx.CO.Pulse_IdleState ***
%*** Values for DAQmx.CO.OutputState ***
%*** Values for DAQmx.Exported.CtrOutEvent_Toggle_IdleState ***
%*** Values for DAQmx.Exported.HshkEvent_Interlocked_AssertedLvl ***
%*** Values for DAQmx.Interlocked.HshkTrig_AssertedLvl ***
%*** Values for DAQmx.DigLvl.PauseTrig_When ***
%*** Value set Level1 ***
DAQmx.Val.High =                                                  10192;  % High
DAQmx.Val.Low  =                                                  10214;  % Low

%*** Values for DAQmx.Logging.Mode ***
%*** Value set LoggingMode ***
DAQmx.Val.Off        =                                            10231;  % Off
DAQmx.Val.Log        =                                            15844;  % Log
DAQmx.Val.LogAndRead =                                            15842;  % Log and Read

%*** Values for DAQmx.Logging.TDMS_Operation ***
%*** Value set LoggingOperation ***
DAQmx.Val.Open            =                                       10437;  % Open
DAQmx.Val.OpenOrCreate    =                                       15846;  % Open or Create
DAQmx.Val.CreateOrReplace =                                       15847;  % Create or Replace
DAQmx.Val.Create          =                                       15848;  % Create

%*** Values for DAQmx.DI.LogicFamily ***
%*** Values for DAQmx.DO.LogicFamily ***
%*** Value set LogicFamily ***
DAQmx.Val.Val2point5V =                                           14620;  % 2.5 V
DAQmx.Val.Val3point3V =                                           14621;  % 3.3 V
DAQmx.Val.Val5V       =                                           14619;  % 5.0 V

%*** Values for DAQmx.AIConv.Timebase_Src ***
%*** Value set MIOAIConvertTbSrc ***
DAQmx.Val.SameAsSampTimebase   =                                  10284;  % Same as Sample Timebase
DAQmx.Val.SameAsMasterTimebase =                                  10282;  % Same as Master Timebase
DAQmx.Val.Val100MHzTimebase    =                                  15857;  % 100 MHz Timebase
DAQmx.Val.Val80MHzTimebase     =                                  14636;  % 80 MHz Timebase
DAQmx.Val.Val20MHzTimebase     =                                  12537;  % 20 MHz Timebase
DAQmx.Val.Val8MHzTimebase      =                                  16023;  % 8 MHz Timebase

%*** Values for DAQmx.AO.FuncGen_ModulationType ***
%*** Value set ModulationType ***
DAQmx.Val.AM   =                                                  14756;  % AM
DAQmx.Val.FM   =                                                  14757;  % FM
DAQmx.Val.None =                                                  10230;  % None

%*** Values for DAQmx.AO.DataXferReqCond ***
%*** Values for DAQmx.DO.DataXferReqCond ***
%*** Values for DAQmx.CO.DataXferReqCond ***
%*** Value set OutputDataTransferCondition ***
DAQmx.Val.OnBrdMemEmpty          =                                10235;  % Onboard Memory Empty
DAQmx.Val.OnBrdMemHalfFullOrLess =                                10239;  % Onboard Memory Half Full or Less
DAQmx.Val.OnBrdMemNotFull        =                                10242;  % Onboard Memory Less than Full

%*** Values for DAQmx.AO.TermCfg ***
%*** Value set OutputTermCfg ***
DAQmx.Val.RSE        =                                            10083;  % RSE
DAQmx.Val.Diff       =                                            10106;  % Differential
DAQmx.Val.PseudoDiff =                                            12529;  % Pseudodifferential

%*** Values for DAQmx.SampClk.OverrunBehavior ***
%*** Value set OverflowBehavior ***
DAQmx.Val.StopTaskAndError =                                      15862;  % Stop Task And Error
DAQmx.Val.IgnoreOverruns   =                                      15863;  % Ignore Overruns

%*** Values for DAQmx.Read.OverWrite ***
%*** Value set OverwriteMode1 ***
DAQmx.Val.OverwriteUnreadSamps      =                             10252;  % Overwrite Unread Samples
DAQmx.Val.DoNotOverwriteUnreadSamps =                             10159;  % Do Not Overwrite Unread Samples

%*** Values for DAQmx.Exported.AIConvClk_Pulse_Polarity ***
%*** Values for DAQmx.Exported.SampClk_Pulse_Polarity ***
%*** Values for DAQmx.Exported.AdvTrig_Pulse_Polarity ***
%*** Values for DAQmx.Exported.PauseTrig_Lvl_ActiveLvl ***
%*** Values for DAQmx.Exported.RefTrig_Pulse_Polarity ***
%*** Values for DAQmx.Exported.StartTrig_Pulse_Polarity ***
%*** Values for DAQmx.Exported.AdvCmpltEvent_Pulse_Polarity ***
%*** Values for DAQmx.Exported.AIHoldCmpltEvent_PulsePolarity ***
%*** Values for DAQmx.Exported.ChangeDetectEvent_Pulse_Polarity ***
%*** Values for DAQmx.Exported.CtrOutEvent_Pulse_Polarity ***
%*** Values for DAQmx.Exported.HshkEvent_Pulse_Polarity ***
%*** Values for DAQmx.Exported.RdyForXferEvent_Lvl_ActiveLvl ***
%*** Values for DAQmx.Exported.DataActiveEvent_Lvl_ActiveLvl ***
%*** Values for DAQmx.Exported.RdyForStartEvent_Lvl_ActiveLvl ***
%*** Value set Polarity2 ***
DAQmx.Val.ActiveHigh =                                            10095;  % Active High
DAQmx.Val.ActiveLow  =                                            10096;  % Active Low

%*** Values for DAQmx.Pwr.IdleOutputBehavior ***
%*** Value set PowerIdleOutputBehavior ***
DAQmx.Val.OutputDisabled        =                                 15503;  % Output Disabled
DAQmx.Val.MaintainExistingValue =                                 12528;  % Maintain Existing Value

%*** Values for DAQmx.Pwr.OutputState ***
%*** Value set PowerOutputState ***
DAQmx.Val.ConstantVoltage =                                       15500;  % Constant Voltage
DAQmx.Val.ConstantCurrent =                                       15501;  % Constant Current
DAQmx.Val.Overvoltage     =                                       15502;  % Overvoltage
DAQmx.Val.OutputDisabled  =                                       15503;  % Output Disabled

%*** Values for DAQmx.AI.Pressure_Units ***
%*** Value set PressureUnits ***
DAQmx.Val.Pascals             =                                   10081;  % Pascals
DAQmx.Val.PoundsPerSquareInch =                                   15879;  % psi
DAQmx.Val.Bar                 =                                   15880;  % bar
DAQmx.Val.FromCustomScale     =                                   10065;  % From Custom Scale

%*** Values for DAQmx.Dev.ProductCategory ***
%*** Value set ProductCategory ***
DAQmx.Val.MSeriesDAQ               =                              14643;  % M Series DAQ
DAQmx.Val.XSeriesDAQ               =                              15858;  % X Series DAQ
DAQmx.Val.ESeriesDAQ               =                              14642;  % E Series DAQ
DAQmx.Val.SSeriesDAQ               =                              14644;  % S Series DAQ
DAQmx.Val.BSeriesDAQ               =                              14662;  % B Series DAQ
DAQmx.Val.SCSeriesDAQ              =                              14645;  % SC Series DAQ
DAQmx.Val.USBDAQ                   =                              14646;  % USB DAQ
DAQmx.Val.AOSeries                 =                              14647;  % AO Series
DAQmx.Val.DigitalIO                =                              14648;  % Digital I/O
DAQmx.Val.TIOSeries                =                              14661;  % TIO Series
DAQmx.Val.DynamicSignalAcquisition =                              14649;  % Dynamic Signal Acquisition
DAQmx.Val.Switches                 =                              14650;  % Switches
DAQmx.Val.CompactDAQChassis        =                              14658;  % CompactDAQ Chassis
DAQmx.Val.CompactRIOChassis        =                              16144;  % CompactRIO Chassis
DAQmx.Val.CSeriesModule            =                              14659;  % C Series Module
DAQmx.Val.SCXIModule               =                              14660;  % SCXI Module
DAQmx.Val.SCCConnectorBlock        =                              14704;  % SCC Connector Block
DAQmx.Val.SCCModule                =                              14705;  % SCC Module
DAQmx.Val.NIELVIS                  =                              14755;  % NI ELVIS
DAQmx.Val.NetworkDAQ               =                              14829;  % Network DAQ
DAQmx.Val.SCExpress                =                              15886;  % SC Express
DAQmx.Val.FieldDAQ                 =                              16151;  % FieldDAQ
DAQmx.Val.TestScaleChassis         =                              16180;  % TestScale Chassis
DAQmx.Val.TestScaleModule          =                              16181;  % TestScale Module
DAQmx.Val.Unknown                  =                              12588;  % Unknown

%*** Values for DAQmx.AI.RTD_Type ***
%*** Value set RTDType1 ***
DAQmx.Val.Pt3750 =                                                12481;  % Pt3750
DAQmx.Val.Pt3851 =                                                10071;  % Pt3851
DAQmx.Val.Pt3911 =                                                12482;  % Pt3911
DAQmx.Val.Pt3916 =                                                10069;  % Pt3916
DAQmx.Val.Pt3920 =                                                10053;  % Pt3920
DAQmx.Val.Pt3928 =                                                12483;  % Pt3928
DAQmx.Val.Custom =                                                10137;  % Custom

%*** Values for DAQmx.AI.RVDT_SensitivityUnits ***
%*** Value set RVDTSensitivityUnits1 ***
DAQmx.Val.mVoltsPerVoltPerDegree =                                12507;  % mVolts/Volt/Degree
DAQmx.Val.mVoltsPerVoltPerRadian =                                12508;  % mVolts/Volt/Radian

%*** Values for DAQmx.AI.RawDataCompressionType ***
%*** Value set RawDataCompressionType ***
DAQmx.Val.None            =                                       10230;  % None
DAQmx.Val.LosslessPacking =                                       12555;  % Lossless Packing
DAQmx.Val.LossyLSBRemoval =                                       12556;  % Lossy LSB Removal

%*** Values for DAQmx.Read.RelativeTo ***
%*** Value set ReadRelativeTo ***
DAQmx.Val.FirstSample      =                                      10424;  % First Sample
DAQmx.Val.CurrReadPos      =                                      10425;  % Current Read Position
DAQmx.Val.RefTrig          =                                      10426;  % Reference Trigger
DAQmx.Val.FirstPretrigSamp =                                      10427;  % First Pretrigger Sample
DAQmx.Val.MostRecentSamp   =                                      10428;  % Most Recent Sample

%*** Values for DAQmx.Write.RegenMode ***
%*** Value set RegenerationMode1 ***
DAQmx.Val.AllowRegen      =                                       10097;  % Allow Regeneration
DAQmx.Val.DoNotAllowRegen =                                       10158;  % Do Not Allow Regeneration

%*** Values for DAQmx.AI.ResistanceCfg ***
%*** Value set ResistanceConfiguration ***
DAQmx.Val.Val2Wire =                                                  2;  % 2-Wire
DAQmx.Val.Val3Wire =                                                  3;  % 3-Wire
DAQmx.Val.Val4Wire =                                                  4;  % 4-Wire

%*** Values for DAQmx.AI.Resistance_Units ***
%*** Value set ResistanceUnits1 ***
DAQmx.Val.Ohms            =                                       10384;  % Ohms
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale
DAQmx.Val.FromTEDS        =                                       12516;  % From TEDS

%*** Value set ResistanceUnits2 ***
DAQmx.Val.Ohms            =                                       10384;  % Ohms
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.ResolutionUnits ***
%*** Values for DAQmx.AO.ResolutionUnits ***
%*** Value set ResolutionType1 ***
DAQmx.Val.Bits =                                                  10109;  % Bits

%*** Value set SCXI1124Range ***
DAQmx.Val.SCXI1124Range0to1V      =                               14629;  % 0V to 1V
DAQmx.Val.SCXI1124Range0to5V      =                               14630;  % 0V to 5V
DAQmx.Val.SCXI1124Range0to10V     =                               14631;  % 0V to 10V
DAQmx.Val.SCXI1124RangeNeg1to1V   =                               14632;  % -1V to 1V
DAQmx.Val.SCXI1124RangeNeg5to5V   =                               14633;  % -5V to 5V
DAQmx.Val.SCXI1124RangeNeg10to10V =                               14634;  % -10V to 10V
DAQmx.Val.SCXI1124Range0to20mA    =                               14635;  % 0mA to 20mA

%*** Values for DAQmx.DI.AcquireOn ***
%*** Values for DAQmx.DO.GenerateOn ***
%*** Value set SampleClockActiveOrInactiveEdgeSelection ***
DAQmx.Val.SampClkActiveEdge   =                                   14617;  % Sample Clock Active Edge
DAQmx.Val.SampClkInactiveEdge =                                   14618;  % Sample Clock Inactive Edge

%*** Values for DAQmx.Hshk.SampleInputDataWhen ***
%*** Value set SampleInputDataWhen ***
DAQmx.Val.HandshakeTriggerAsserts   =                             12552;  % Handshake Trigger Asserts
DAQmx.Val.HandshakeTriggerDeasserts =                             12553;  % Handshake Trigger Deasserts

%*** Values for DAQmx.SampTimingType ***
%*** Value set SampleTimingType ***
DAQmx.Val.SampClk          =                                      10388;  % Sample Clock
DAQmx.Val.BurstHandshake   =                                      12548;  % Burst Handshake
DAQmx.Val.Handshake        =                                      10389;  % Handshake
DAQmx.Val.Implicit         =                                      10451;  % Implicit
DAQmx.Val.OnDemand         =                                      10390;  % On Demand
DAQmx.Val.ChangeDetection  =                                      12504;  % Change Detection
DAQmx.Val.PipelinedSampClk =                                      14668;  % Pipelined Sample Clock

%*** Values for DAQmx.Scale.Type ***
%*** Value set ScaleType ***
DAQmx.Val.Linear     =                                            10447;  % Linear
DAQmx.Val.MapRanges  =                                            10448;  % Map Ranges
DAQmx.Val.Polynomial =                                            10449;  % Polynomial
DAQmx.Val.Table      =                                            10450;  % Table

%*** Values for DAQmx.AI.Thrmcpl_ScaleType ***
%*** Value set ScaleType2 ***
DAQmx.Val.Polynomial =                                            10449;  % Polynomial
DAQmx.Val.Table      =                                            10450;  % Table

%*** Values for DAQmx.AI.ChanCal_ScaleType ***
%*** Value set ScaleType3 ***
DAQmx.Val.Polynomial =                                            10449;  % Polynomial
DAQmx.Val.Table      =                                            10450;  % Table
DAQmx.Val.None       =                                            10230;  % None

%*** Values for DAQmx.AI.Bridge_ScaleType ***
%*** Value set ScaleType4 ***
DAQmx.Val.None           =                                        10230;  % None
DAQmx.Val.TwoPointLinear =                                        15898;  % Two-Point Linear
DAQmx.Val.Table          =                                        10450;  % Table
DAQmx.Val.Polynomial     =                                        10449;  % Polynomial

%*** Values for DAQmx.AI.SensorPower_Cfg ***
%*** Value set SensorPowerCfg ***
DAQmx.Val.NoChange =                                              10160;  % No Change
DAQmx.Val.Enabled  =                                              16145;  % Enabled
DAQmx.Val.Disabled =                                              16146;  % Disabled

%*** Values for DAQmx.AI.SensorPower_Type ***
%*** Values for DAQmx.PhysicalChan.AI_SensorPower_Types ***
%*** Values for DAQmx.PhysicalChan.AI_PowerControl_Type ***
%*** Value set SensorPowerType ***
DAQmx.Val.DC        =                                             10050;  % DC
DAQmx.Val.AC        =                                             10045;  % AC
DAQmx.Val.BipolarDC =                                             16147;  % BipolarDC

%*** Values for DAQmx.AI.Bridge_ShuntCal_Select ***
%*** Value set ShuntCalSelect ***
DAQmx.Val.A     =                                                 12513;  % A
DAQmx.Val.B     =                                                 12514;  % B
DAQmx.Val.AandB =                                                 12515;  % A and B

%*** Value set ShuntElementLocation ***
DAQmx.Val.R1   =                                                  12465;  % R1
DAQmx.Val.R2   =                                                  12466;  % R2
DAQmx.Val.R3   =                                                  12467;  % R3
DAQmx.Val.R4   =                                                  14813;  % R4
DAQmx.Val.None =                                                  10230;  % None

%*** Value set Signal ***
DAQmx.Val.AIConvertClock        =                                 12484;  % AI Convert Clock
DAQmx.Val.Val10MHzRefClock      =                                 12536;  % 10MHz Reference Clock
DAQmx.Val.Val20MHzTimebaseClock =                                 12486;  % 20MHz Timebase Clock
DAQmx.Val.SampleClock           =                                 12487;  % Sample Clock
DAQmx.Val.AdvanceTrigger        =                                 12488;  % Advance Trigger
DAQmx.Val.ReferenceTrigger      =                                 12490;  % Reference Trigger
DAQmx.Val.StartTrigger          =                                 12491;  % Start Trigger
DAQmx.Val.AdvCmpltEvent         =                                 12492;  % Advance Complete Event
DAQmx.Val.AIHoldCmpltEvent      =                                 12493;  % AI Hold Complete Event
DAQmx.Val.CounterOutputEvent    =                                 12494;  % Counter Output Event
DAQmx.Val.ChangeDetectionEvent  =                                 12511;  % Change Detection Event
DAQmx.Val.WDTExpiredEvent       =                                 12512;  % Watchdog Timer Expired Event

%*** Value set Signal2 ***
DAQmx.Val.SampleCompleteEvent  =                                  12530;  % Sample Complete Event
DAQmx.Val.CounterOutputEvent   =                                  12494;  % Counter Output Event
DAQmx.Val.ChangeDetectionEvent =                                  12511;  % Change Detection Event
DAQmx.Val.SampleClock          =                                  12487;  % Sample Clock

%*** Values for DAQmx.AnlgEdge.StartTrig_Slope ***
%*** Values for DAQmx.AnlgMultiEdge.StartTrig_Slopes ***
%*** Values for DAQmx.AnlgEdge.RefTrig_Slope ***
%*** Values for DAQmx.AnlgMultiEdge.RefTrig_Slopes ***
%*** Value set Slope1 ***
DAQmx.Val.RisingSlope  =                                          10280;  % Rising
DAQmx.Val.FallingSlope =                                          10171;  % Falling

%*** Values for DAQmx.AI.SoundPressure_Units ***
%*** Value set SoundPressureUnits1 ***
DAQmx.Val.Pascals         =                                       10081;  % Pascals
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.Lowpass_SwitchCap_ClkSrc ***
%*** Values for DAQmx.AO.DAC_Ref_Src ***
%*** Values for DAQmx.AO.DAC_Offset_Src ***
%*** Value set SourceSelection ***
DAQmx.Val.Internal =                                              10200;  % Internal
DAQmx.Val.External =                                              10167;  % External

%*** Values for DAQmx.AI.StrainGage_Cfg ***
%*** Value set StrainGageBridgeType1 ***
DAQmx.Val.FullBridgeI     =                                       10183;  % Full Bridge I
DAQmx.Val.FullBridgeII    =                                       10184;  % Full Bridge II
DAQmx.Val.FullBridgeIII   =                                       10185;  % Full Bridge III
DAQmx.Val.HalfBridgeI     =                                       10188;  % Half Bridge I
DAQmx.Val.HalfBridgeII    =                                       10189;  % Half Bridge II
DAQmx.Val.QuarterBridgeI  =                                       10271;  % Quarter Bridge I
DAQmx.Val.QuarterBridgeII =                                       10272;  % Quarter Bridge II

%*** Values for DAQmx.AI.RosetteStrainGage_RosetteType ***
%*** Value set StrainGageRosetteType ***
DAQmx.Val.RectangularRosette =                                    15968;  % Rectangular Rosette
DAQmx.Val.DeltaRosette       =                                    15969;  % Delta Rosette
DAQmx.Val.TeeRosette         =                                    15970;  % Tee Rosette

%*** Values for DAQmx.AI.RosetteStrainGage_RosetteMeasType ***
%*** Value set StrainGageRosetteMeasurementType ***
DAQmx.Val.PrincipalStrain1       =                                15971;  % Principal Strain 1
DAQmx.Val.PrincipalStrain2       =                                15972;  % Principal Strain 2
DAQmx.Val.PrincipalStrainAngle   =                                15973;  % Principal Strain Angle
DAQmx.Val.CartesianStrainX       =                                15974;  % Cartesian Strain X
DAQmx.Val.CartesianStrainY       =                                15975;  % Cartesian Strain Y
DAQmx.Val.CartesianShearStrainXY =                                15976;  % Cartesian Shear Strain XY
DAQmx.Val.MaxShearStrain         =                                15977;  % Maximum Shear Strain
DAQmx.Val.MaxShearStrainAngle    =                                15978;  % Maximum Shear Strain Angle

%*** Values for DAQmx.AI.Strain_Units ***
%*** Value set StrainUnits1 ***
DAQmx.Val.Strain          =                                       10299;  % Strain
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.SwitchScan.RepeatMode ***
%*** Value set SwitchScanRepeatMode ***
DAQmx.Val.Finite =                                                10172;  % Finite
DAQmx.Val.Cont   =                                                10117;  % Continuous

%*** Values for DAQmx.SwitchChan.Usage ***
%*** Value set SwitchUsageTypes ***
DAQmx.Val.Source             =                                    10439;  % Source
DAQmx.Val.Load               =                                    10440;  % Load
DAQmx.Val.ReservedForRouting =                                    10441;  % Reserved for Routing

%*** Values for DAQmx.SyncPulse.Type ***
%*** Value set SyncPulseType ***
DAQmx.Val.Onboard =                                               16128;  % Onboard
DAQmx.Val.DigEdge =                                               10150;  % Digital Edge
DAQmx.Val.Time    =                                               15996;  % Time

%*** Values for DAQmx.Trigger.SyncType ***
%*** Value set SyncType ***
DAQmx.Val.None   =                                                10230;  % None
DAQmx.Val.Master =                                                15888;  % Master
DAQmx.Val.Slave  =                                                15889;  % Slave

%*** Values for DAQmx.Chan.SyncUnlockBehavior ***
%*** Value set SyncUnlockBehavior ***
DAQmx.Val.StopTaskAndError   =                                    15862;  % Stop Task and Error
DAQmx.Val.IgnoreLostSyncLock =                                    16129;  % Ignore Lost Sync Lock

%*** Value set TEDSUnits ***
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale
DAQmx.Val.FromTEDS        =                                       12516;  % From TEDS

%*** Values for DAQmx.AI.Temp_Units ***
%*** Value set TemperatureUnits1 ***
DAQmx.Val.DegC            =                                       10143;  % Deg C
DAQmx.Val.DegF            =                                       10144;  % Deg F
DAQmx.Val.Kelvins         =                                       10325;  % Kelvins
DAQmx.Val.DegR            =                                       10145;  % Deg R
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.Thrmcpl_Type ***
%*** Value set ThermocoupleType1 ***
DAQmx.Val.J_Type_TC =                                             10072;  % J
DAQmx.Val.K_Type_TC =                                             10073;  % K
DAQmx.Val.N_Type_TC =                                             10077;  % N
DAQmx.Val.R_Type_TC =                                             10082;  % R
DAQmx.Val.S_Type_TC =                                             10085;  % S
DAQmx.Val.T_Type_TC =                                             10086;  % T
DAQmx.Val.B_Type_TC =                                             10047;  % B
DAQmx.Val.E_Type_TC =                                             10055;  % E

%*** Values for DAQmx.SyncPulse.Time_Timescale ***
%*** Values for DAQmx.FirstSampTimestamp.Timescale ***
%*** Values for DAQmx.FirstSampClk.Timescale ***
%*** Values for DAQmx.StartTrig.Timescale ***
%*** Values for DAQmx.StartTrig.TimestampTimescale ***
%*** Values for DAQmx.RefTrig.TimestampTimescale ***
%*** Values for DAQmx.ArmStartTrig.Timescale ***
%*** Values for DAQmx.ArmStartTrig.TimestampTimescale ***
%*** Value set Timescale2 ***
DAQmx.Val.HostTime     =                                          16126;  % Host Time
DAQmx.Val.IODeviceTime =                                          16127;  % I/O Device Time

%*** Values for DAQmx.CI.Timestamp_Units ***
%*** Value set TimeUnits ***
DAQmx.Val.Seconds         =                                       10364;  % Seconds
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.CI.Pulse_Time_Units ***
%*** Values for DAQmx.CO.Pulse_Time_Units ***
%*** Value set TimeUnits2 ***
DAQmx.Val.Seconds =                                               10364;  % Seconds

%*** Values for DAQmx.CI.Period_Units ***
%*** Values for DAQmx.CI.PulseWidth_Units ***
%*** Values for DAQmx.CI.TwoEdgeSep_Units ***
%*** Values for DAQmx.CI.SemiPeriod_Units ***
%*** Value set TimeUnits3 ***
DAQmx.Val.Seconds         =                                       10364;  % Seconds
DAQmx.Val.Ticks           =                                       10304;  % Ticks
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Value set TimingResponseMode ***
DAQmx.Val.SingleCycle =                                           14613;  % Single-cycle
DAQmx.Val.Multicycle  =                                           14614;  % Multicycle

%*** Values for DAQmx.AI.Torque_Units ***
%*** Value set TorqueUnits ***
DAQmx.Val.NewtonMeters    =                                       15881;  % Nm
DAQmx.Val.InchOunces      =                                       15882;  % oz-in
DAQmx.Val.InchPounds      =                                       15883;  % lb-in
DAQmx.Val.FootPounds      =                                       15884;  % lb-ft
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.ArmStartTrig.Type ***
%*** Values for DAQmx.WatchdogExpirTrig.Type ***
%*** Value set TriggerType4 ***
DAQmx.Val.DigEdge =                                               10150;  % Digital Edge
DAQmx.Val.Time    =                                               15996;  % Time
DAQmx.Val.None    =                                               10230;  % None

%*** Values for DAQmx.AdvTrig.Type ***
%*** Value set TriggerType5 ***
DAQmx.Val.DigEdge  =                                              10150;  % Digital Edge
DAQmx.Val.Software =                                              10292;  % Software
DAQmx.Val.None     =                                              10230;  % None

%*** Values for DAQmx.PauseTrig.Type ***
%*** Value set TriggerType6 ***
DAQmx.Val.AnlgLvl    =                                            10101;  % Analog Level
DAQmx.Val.AnlgWin    =                                            10103;  % Analog Window
DAQmx.Val.DigLvl     =                                            10152;  % Digital Level
DAQmx.Val.DigPattern =                                            10398;  % Digital Pattern
DAQmx.Val.None       =                                            10230;  % None

%*** Values for DAQmx.RefTrig.Type ***
%*** Value set TriggerType8 ***
DAQmx.Val.AnlgEdge      =                                         10099;  % Analog Edge
DAQmx.Val.AnlgMultiEdge =                                         16108;  % Analog Multi Edge
DAQmx.Val.DigEdge       =                                         10150;  % Digital Edge
DAQmx.Val.DigPattern    =                                         10398;  % Digital Pattern
DAQmx.Val.AnlgWin       =                                         10103;  % Analog Window
DAQmx.Val.Time          =                                         15996;  % Time
DAQmx.Val.None          =                                         10230;  % None

%*** Values for DAQmx.HshkTrig.Type ***
%*** Value set TriggerType9 ***
DAQmx.Val.Interlocked =                                           12549;  % Interlocked
DAQmx.Val.None        =                                           10230;  % None

%*** Values for DAQmx.StartTrig.Type ***
%*** Value set TriggerType10 ***
DAQmx.Val.AnlgEdge      =                                         10099;  % Analog Edge
DAQmx.Val.AnlgMultiEdge =                                         16108;  % Analog Multi Edge
DAQmx.Val.DigEdge       =                                         10150;  % Digital Edge
DAQmx.Val.DigPattern    =                                         10398;  % Digital Pattern
DAQmx.Val.AnlgWin       =                                         10103;  % Analog Window
DAQmx.Val.Time          =                                         15996;  % Time
DAQmx.Val.None          =                                         10230;  % None

%*** Values for DAQmx.SampClk.UnderflowBehavior ***
%*** Values for DAQmx.Implicit.UnderflowBehavior ***
%*** Value set UnderflowBehavior ***
DAQmx.Val.HaltOutputAndError      =                               14615;  % Halt Output and Error
DAQmx.Val.PauseUntilDataAvailable =                               14616;  % Pause until Data Available

%*** Values for DAQmx.Scale.PreScaledUnits ***
%*** Value set UnitsPreScaled ***
DAQmx.Val.Volts                  =                                10348;  % Volts
DAQmx.Val.Amps                   =                                10342;  % Amps
DAQmx.Val.DegF                   =                                10144;  % Deg F
DAQmx.Val.DegC                   =                                10143;  % Deg C
DAQmx.Val.DegR                   =                                10145;  % Deg R
DAQmx.Val.Kelvins                =                                10325;  % Kelvins
DAQmx.Val.Strain                 =                                10299;  % Strain
DAQmx.Val.Ohms                   =                                10384;  % Ohms
DAQmx.Val.Hz                     =                                10373;  % Hz
DAQmx.Val.Seconds                =                                10364;  % Seconds
DAQmx.Val.Meters                 =                                10219;  % Meters
DAQmx.Val.Inches                 =                                10379;  % Inches
DAQmx.Val.Degrees                =                                10146;  % Degrees
DAQmx.Val.Radians                =                                10273;  % Radians
DAQmx.Val.Ticks                  =                                10304;  % Ticks
DAQmx.Val.RPM                    =                                16080;  % RPM
DAQmx.Val.RadiansPerSecond       =                                16081;  % Radians/s
DAQmx.Val.DegreesPerSecond       =                                16082;  % Degrees/s
DAQmx.Val.g                      =                                10186;  % g
DAQmx.Val.MetersPerSecondSquared =                                12470;  % m/s^2
DAQmx.Val.InchesPerSecondSquared =                                12471;  % in/s^2
DAQmx.Val.MetersPerSecond        =                                15959;  % m/s
DAQmx.Val.InchesPerSecond        =                                15960;  % in/s
DAQmx.Val.Pascals                =                                10081;  % Pascals
DAQmx.Val.Newtons                =                                15875;  % Newtons
DAQmx.Val.Pounds                 =                                15876;  % Pounds
DAQmx.Val.KilogramForce          =                                15877;  % kgf
DAQmx.Val.PoundsPerSquareInch    =                                15879;  % psi
DAQmx.Val.Bar                    =                                15880;  % bar
DAQmx.Val.NewtonMeters           =                                15881;  % Nm
DAQmx.Val.InchOunces             =                                15882;  % oz-in
DAQmx.Val.InchPounds             =                                15883;  % lb-in
DAQmx.Val.FootPounds             =                                15884;  % lb-ft
DAQmx.Val.VoltsPerVolt           =                                15896;  % Volts/Volt
DAQmx.Val.mVoltsPerVolt          =                                15897;  % mVolts/Volt
DAQmx.Val.Coulombs               =                                16102;  % Coulombs
DAQmx.Val.PicoCoulombs           =                                16103;  % PicoCoulombs
DAQmx.Val.FromTEDS               =                                12516;  % From TEDS

%*** Values for DAQmx.AI.Velocity_IEPESensor_SensitivityUnits ***
%*** Value set VelocityIEPESensorSensitivityUnits ***
DAQmx.Val.MillivoltsPerMillimeterPerSecond =                      15963;  % mVolts/mm/s
DAQmx.Val.MilliVoltsPerInchPerSecond       =                      15964;  % mVolts/in/s

%*** Values for DAQmx.AI.Velocity_Units ***
%*** Values for DAQmx.CI.Velocity_LinEncoder_Units ***
%*** Value set VelocityUnits ***
DAQmx.Val.MetersPerSecond =                                       15959;  % m/s
DAQmx.Val.InchesPerSecond =                                       15960;  % in/s
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.AI.Voltage_Units ***
%*** Values for DAQmx.AI.Voltage_ACRMS_Units ***
%*** Value set VoltageUnits1 ***
DAQmx.Val.Volts           =                                       10348;  % Volts
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale
DAQmx.Val.FromTEDS        =                                       12516;  % From TEDS

%*** Values for DAQmx.AO.Voltage_Units ***
%*** Value set VoltageUnits2 ***
DAQmx.Val.Volts           =                                       10348;  % Volts
DAQmx.Val.FromCustomScale =                                       10065;  % From Custom Scale

%*** Values for DAQmx.Read.WaitMode ***
%*** Value set WaitMode ***
DAQmx.Val.WaitForInterrupt =                                      12523;  % Wait For Interrupt
DAQmx.Val.Poll             =                                      12524;  % Poll
DAQmx.Val.Yield            =                                      12525;  % Yield
DAQmx.Val.Sleep            =                                      12547;  % Sleep

%*** Values for DAQmx.Write.WaitMode ***
%*** Value set WaitMode2 ***
DAQmx.Val.Poll  =                                                 12524;  % Poll
DAQmx.Val.Yield =                                                 12525;  % Yield
DAQmx.Val.Sleep =                                                 12547;  % Sleep

%*** Values for DAQmx.RealTime.WaitForNextSampClkWaitMode ***
%*** Value set WaitMode3 ***
DAQmx.Val.WaitForInterrupt =                                      12523;  % Wait For Interrupt
DAQmx.Val.Poll             =                                      12524;  % Poll

%*** Values for DAQmx.RealTime.WriteRecoveryMode ***
%*** Value set WaitMode4 ***
DAQmx.Val.WaitForInterrupt =                                      12523;  % Wait For Interrupt
DAQmx.Val.Poll             =                                      12524;  % Poll

%*** Values for DAQmx.Watchdog.AO_OutputType ***
%*** Value set WatchdogAOExpirState ***
DAQmx.Val.Voltage  =                                              10322;  % Voltage
DAQmx.Val.Current  =                                              10134;  % Current
DAQmx.Val.NoChange =                                              10160;  % No Change

%*** Values for DAQmx.Watchdog.CO_ExpirState ***
%*** Value set WatchdogCOExpirState ***
DAQmx.Val.Low      =                                              10214;  % Low
DAQmx.Val.High     =                                              10192;  % High
DAQmx.Val.NoChange =                                              10160;  % No Change

%*** Values for DAQmx.AnlgWin.StartTrig_When ***
%*** Values for DAQmx.AnlgWin.RefTrig_When ***
%*** Value set WindowTriggerCondition1 ***
DAQmx.Val.EnteringWin =                                           10163;  % Entering Window
DAQmx.Val.LeavingWin  =                                           10208;  % Leaving Window

%*** Values for DAQmx.AnlgWin.PauseTrig_When ***
%*** Value set WindowTriggerCondition2 ***
DAQmx.Val.InsideWin  =                                            10199;  % Inside Window
DAQmx.Val.OutsideWin =                                            10251;  % Outside Window

%*** Value set WriteBasicTEDSOptions ***
DAQmx.Val.WriteToEEPROM =                                         12538;  % Write To EEPROM
DAQmx.Val.WriteToPROM   =                                         12539;  % Write To PROM Once
DAQmx.Val.DoNotWrite    =                                         12540;  % Do Not Write

%*** Values for DAQmx.Write.RelativeTo ***
%*** Value set WriteRelativeTo ***
DAQmx.Val.FirstSample  =                                          10424;  % First Sample
DAQmx.Val.CurrWritePos =                                          10430;  % Current Write Position

%*** Values for DAQmx.AI.Excit_IdleOutputBehavior ***
%*** Value set ExcitationIdleOutputBehavior ***
DAQmx.Val.ZeroVoltsOrAmps       =                                 12526;  % Zero Volts or Amps
DAQmx.Val.MaintainExistingValue =                                 12528;  % Maintain Existing Value

%*** Values for DAQmx.CI.SampClkOverrunBehavior ***
%*** Value set SampClkOverrunBehavior ***
DAQmx.Val.RepeatedData  =                                         16062;  % Repeated Data
DAQmx.Val.SentinelValue =                                         16063;  % Sentinel Value

%*** Value set LogicLvlBehavior ***
DAQmx.Val.LogicLevelPullUp =                                      16064;  % Logic Level Pull-up
DAQmx.Val.None             =                                      10230;  % None

%*** Value set Sense ***
DAQmx.Val.Local  =                                                16095;  % Local
DAQmx.Val.Remote =                                                16096;  % Remote


% *************************************************************************
% *** NI-DAQmx Error Codes ************************************************
% *************************************************************************

DAQmx.Success                                                                 = 0;

% Error and Warning Codes
DAQmx.Error.RemoteSense                                                        =  -209888;
DAQmx.Error.OverTemperatureProtectionActivated                                 =  -209887;
DAQmx.Error.MultiTaskCfgSampRateNotSupportedWithPropSet                        =  -209886;
DAQmx.Error.MultiTaskCfgSampRateConflictingProp                                =  -209885;
DAQmx.Error.NoCommonSampRateFoundNoRepeatSamps                                 =  -209884;
DAQmx.Error.NoCommonSampRateFound                                              =  -209883;
DAQmx.Error.MultiTaskCfgDoesNotSupportMultiDevTask                             =  -209882;
DAQmx.Error.MultiTaskSampRateCfgNotSupported                                   =  -209881;
DAQmx.Error.DebugSessionNotAllowedTimingSourceRegistered                       =  -209880;
DAQmx.Error.DebugSessionNotAllowedWhenLogging                                  =  -209879;
DAQmx.Error.DebugSessionNotAllowedEventRegistered                              =  -209878;
DAQmx.Error.InvalidTargetTaskForDebugSession                                   =  -209877;
DAQmx.Error.FunctionNotSupportedForDevice                                      =  -209876;
DAQmx.Error.MultipleTargetTasksFoundForDebugSession                            =  -209875;
DAQmx.Error.TargetTaskNotFoundForDebugSession                                  =  -209874;
DAQmx.Error.OperationNotSupportedInDebugSession                                =  -209873;
DAQmx.Error.OperationNotPermittedInMonitorModeForDebugSession                  =  -209872;
DAQmx.Error.GetActiveDevPrptyFailedDueToDifftVals                              =  -209871;
DAQmx.Error.TaskAlreadyRegisteredATimingSource                                 =  -209870;
DAQmx.Error.FilterNotSupportedOnHWRev                                          =  -209869;
DAQmx.Error.SensorPowerSupplyVoltageLevel                                      =  -209868;
DAQmx.Error.SensorPowerSupply                                                  =  -209867;
DAQmx.Error.InvalidScanlist                                                    =  -209866;
DAQmx.Error.TimeResourceCannotBeRouted                                         =  -209865;
DAQmx.Error.InvalidResetDelayRequested                                         =  -209864;
DAQmx.Error.ExceededTotalTimetriggersAvailable                                 =  -209863;
DAQmx.Error.ExceededTotalTimestampsAvailable                                   =  -209862;
DAQmx.Error.NoSynchronizationProtocolRunning                                   =  -209861;
DAQmx.Error.ConflictingCoherencyRequirements                                   =  -209860;
DAQmx.Error.NoSharedTimescale                                                  =  -209859;
DAQmx.Error.InvalidFieldDAQBankName                                            =  -209858;
DAQmx.Error.DeviceDoesNotSupportHWTSP                                          =  -209857;
DAQmx.Error.BankTypeDoesNotMatchBankTypeInDestination                          =  -209856;
DAQmx.Error.InvalidFieldDAQBankNumberSpecd                                     =  -209855;
DAQmx.Error.UnsupportedSimulatedBankForSimulatedFieldDAQ                       =  -209854;
DAQmx.Error.FieldDAQBankSimMustMatchFieldDAQSim                                =  -209853;
DAQmx.Error.DevNoLongerSupportedWithinDAQmxAPI                                 =  -209852;
DAQmx.Error.TimingEngineDoesNotSupportOnBoardMemory                            =  -209851;
DAQmx.Error.DuplicateTaskCrossProject                                          =  -209850;
DAQmx.Error.TimeStartTriggerBeforeArmStartTrigger                              =  -209849;
DAQmx.Error.TimeTriggerCannotBeSet                                             =  -209848;
DAQmx.Error.InvalidTriggerWindowValue                                          =  -209847;
DAQmx.Error.CannotQueryPropertyBeforeOrDuringAcquisition                       =  -209846;
DAQmx.Error.SampleClockTimebaseNotSupported                                    =  -209845;
DAQmx.Error.TimestampNotYetReceived                                            =  -209844;
DAQmx.Error.TimeTriggerNotSupported                                            =  -209843;
DAQmx.Error.TimestampNotEnabled                                                =  -209842;
DAQmx.Error.TimeTriggersInconsistent                                           =  -209841;
DAQmx.Error.TriggerConfiguredIsInThePast                                       =  -209840;
DAQmx.Error.TriggerConfiguredIsTooFarFromCurrentTime                           =  -209839;
DAQmx.Error.SynchronizationLockLost                                            =  -209838;
DAQmx.Error.InconsistentTimescales                                             =  -209837;
DAQmx.Error.CannotSynchronizeDevices                                           =  -209836;
DAQmx.Error.AssociatedChansHaveAttributeConflictWithMultipleMaxMinRanges       =  -209835;
DAQmx.Error.SampleRateNumChansOrAttributeValues                                =  -209834;
DAQmx.Error.WaitForValidTimestampNotSupported                                  =  -209833;
DAQmx.Error.TrigWinTimeoutExpired                                              =  -209832;
DAQmx.Error.InvalidTriggerCfgForDevice                                         =  -209831;
DAQmx.Error.InvalidDataTransferMechanismForDevice                              =  -209830;
DAQmx.Error.InputFIFOOverflow3                                                 =  -209829;
DAQmx.Error.TooManyDevicesForAnalogMultiEdgeTrigCDAQ                           =  -209828;
DAQmx.Error.TooManyTriggersTypesSpecifiedInTask                                =  -209827;
DAQmx.Error.MismatchedMultiTriggerConfigValues                                 =  -209826;
DAQmx.Error.InconsistentAODACRangeAcrossTasks                                  =  -209825;
DAQmx.Error.InconsistentDTToWrite                                              =  -209824;
DAQmx.Error.FunctionObsolete                                                   =  -209823;
DAQmx.Error.NegativeDurationNotSupported                                       =  -209822;
DAQmx.Error.DurationTooSmall                                                   =  -209821;
DAQmx.Error.DurationTooLong                                                    =  -209820;
DAQmx.Error.DurationBasedNotSupportedForSpecifiedTimingMode                    =  -209819;
DAQmx.Error.InvalidLEDState                                                    =  -209818;
DAQmx.Error.WatchdogStatesNotUniform                                           =  -209817;
DAQmx.Error.SelfTestFailedPowerSupplyOutOfTolerance                            =  -209816;
DAQmx.Error.HWTSPMultiSampleWrite                                              =  -209815;
DAQmx.Error.OnboardRegenExceedsChannelLimit                                    =  -209814;
DAQmx.Error.WatchdogChannelExpirationStateNotSpecified                         =  -209813;
DAQmx.Error.InvalidShuntSourceForCalibration                                   =  -209812;
DAQmx.Error.InvalidShuntSelectForCalibration                                   =  -209811;
DAQmx.Error.InvalidShuntCalibrationConfiguration                               =  -209810;
DAQmx.Error.BufferedOperationsNotSupportedOnChannelStandalone                  =  -209809;
DAQmx.Error.FeatureNotAvailableOnAccessory                                     =  -209808;
DAQmx.Error.InconsistentThreshVoltageAcrossTerminals                           =  -209807;
DAQmx.Error.DAQmxIsNotInstalledOnTarget                                        =  -209806;
DAQmx.Error.COCannotKeepUpInHWTimedSinglePoint                                 =  -209805;
DAQmx.Error.WaitForNextSampClkDetected3OrMoreSampClks                          =  -209803;
DAQmx.Error.WaitForNextSampClkDetectedMissedSampClk                            =  -209802;
DAQmx.Error.WriteNotCompleteBeforeSampClk                                      =  -209801;
DAQmx.Error.ReadNotCompleteBeforeSampClk                                       =  -209800;
DAQmx.Error.InconsistentDigitalFilteringAcrossTerminals                        =  -201510;
DAQmx.Error.InconsistentPullUpCfgAcrossTerminals                               =  -201509;
DAQmx.Error.InconsistentTermCfgAcrossTerminals                                 =  -201508;
DAQmx.Error.VCXODCMBecameUnlocked                                              =  -201507;
DAQmx.Error.PLLDACUpdateFailed                                                 =  -201506;
DAQmx.Error.NoCabledDevice                                                     =  -201505;
DAQmx.Error.LostRefClk                                                         =  -201504;
DAQmx.Error.CantUseAITimingEngineWithCounters                                  =  -201503;
DAQmx.Error.DACOffsetValNotSet                                                 =  -201502;
DAQmx.Error.CalAdjustRefValOutOfRange                                          =  -201501;
DAQmx.Error.ChansForCalAdjustMustPerformSetContext                             =  -201500;
DAQmx.Error.GetCalDataInvalidForCalMode                                        =  -201499;
DAQmx.Error.NoIEPEWithACNotAllowed                                             =  -201498;
DAQmx.Error.SetupCalNeededBeforeGetCalDataPoints                               =  -201497;
DAQmx.Error.VoltageNotCalibrated                                               =  -201496;
DAQmx.Error.MissingRangeForCalibration                                         =  -201495;
DAQmx.Error.MultipleChansNotSupportedDuringCalAdjust                           =  -201494;
DAQmx.Error.ShuntCalFailedOutOfRange                                           =  -201493;
DAQmx.Error.OperationNotSupportedOnSimulatedDevice                             =  -201492;
DAQmx.Error.FirmwareVersionSameAsInstalledVersion                              =  -201491;
DAQmx.Error.FirmwareVersionOlderThanInstalledVersion                           =  -201490;
DAQmx.Error.FirmwareUpdateInvalidState                                         =  -201489;
DAQmx.Error.FirmwareUpdateInvalidID                                            =  -201488;
DAQmx.Error.FirmwareUpdateAutomaticManagementEnabled                           =  -201487;
DAQmx.Error.SetupCalibrationNotCalled                                          =  -201486;
DAQmx.Error.CalMeasuredDataSizeVsActualDataSizeMismatch                        =  -201485;
DAQmx.Error.CDAQMissingDSAMasterForChanExpansion                               =  -201484;
DAQmx.Error.CDAQMasterNotFoundForChanExpansion                                 =  -201483;
DAQmx.Error.AllChansShouldBeProvidedForCalibration                             =  -201482;
DAQmx.Error.MustSpecifyExpirationStateForAllLinesInRange                       =  -201481;
DAQmx.Error.OpenSessionExists                                                  =  -201480;
DAQmx.Error.CannotQueryTerminalForSWArmStart                                   =  -201479;
DAQmx.Error.ChassisWatchdogTimerExpired                                        =  -201478;
DAQmx.Error.CantReserveWatchdogTaskWhileOtherTasksReserved                     =  -201477;
DAQmx.Error.CantReserveTaskWhileWatchdogTaskReserving                          =  -201476;
DAQmx.Error.AuxPowerSourceRequired                                             =  -201475;
DAQmx.Error.DeviceNotSupportedOnLocalSystem                                    =  -201474;
DAQmx.Error.OneTimestampChannelRequiredForCombinedNavigationRead               =  -201472;
DAQmx.Error.MultDevsMultPhysChans                                              =  -201471;
DAQmx.Error.InvalidCalAdjustmentPointValues                                    =  -201470;
DAQmx.Error.DifferentDigitizerFromCommunicator                                 =  -201469;
DAQmx.Error.CDAQSyncMasterClockNotPresent                                      =  -201468;
DAQmx.Error.AssociatedChansHaveConflictingProps                                =  -201467;
DAQmx.Error.AutoConfigBetweenMultipleDeviceStatesInvalid                       =  -201466;
DAQmx.Error.AutoConfigOfOfflineDevicesInvalid                                  =  -201465;
DAQmx.Error.ExternalFIFOFault                                                  =  -201464;
DAQmx.Error.ConnectionsNotReciprocal                                           =  -201463;
DAQmx.Error.InvalidOutputToInputCDAQSyncConnection                             =  -201462;
DAQmx.Error.ReferenceClockNotPresent                                           =  -201461;
DAQmx.Error.BlankStringExpansionFoundNoSupportedCDAQSyncConnectionDevices      =  -201460;
DAQmx.Error.NoDevicesSupportCDAQSyncConnections                                =  -201459;
DAQmx.Error.InvalidCDAQSyncTimeoutValue                                        =  -201458;
DAQmx.Error.CDAQSyncConnectionToSamePort                                       =  -201457;
DAQmx.Error.DevsWithoutCommonSyncConnectionStrategy                            =  -201456;
DAQmx.Error.NoCDAQSyncBetweenPhysAndSimulatedDevs                              =  -201455;
DAQmx.Error.UnableToContainCards                                               =  -201454;
DAQmx.Error.FindDisconnectedBetweenPhysAndSimDeviceStatesInvalid               =  -201453;
DAQmx.Error.OperationAborted                                                   =  -201452;
DAQmx.Error.TwoPortsRequired                                                   =  -201451;
DAQmx.Error.DeviceDoesNotSupportCDAQSyncConnections                            =  -201450;
DAQmx.Error.InvalidcDAQSyncPortConnectionFormat                                =  -201449;
DAQmx.Error.RosetteMeasurementsNotSpecified                                    =  -201448;
DAQmx.Error.InvalidNumOfPhysChansForDeltaRosette                               =  -201447;
DAQmx.Error.InvalidNumOfPhysChansForTeeRosette                                 =  -201446;
DAQmx.Error.RosetteStrainChanNamesNeeded                                       =  -201445;
DAQmx.Error.MultideviceWithOnDemandTiming                                      =  -201444;
DAQmx.Error.FREQOUTCannotProduceDesiredFrequency3                              =  -201443;
DAQmx.Error.TwoEdgeSeparationSameTerminalSameEdge                              =  -201442;
DAQmx.Error.DontMixSyncPulseAndSampClkTimebaseOn449x                           =  -201441;
DAQmx.Error.NeitherRefClkNorSampClkTimebaseConfiguredForDSASync                =  -201440;
DAQmx.Error.RetriggeringFiniteCONotAllowed                                     =  -201439;
DAQmx.Error.DeviceRebootedFromWDTTimeout                                       =  -201438;
DAQmx.Error.TimeoutValueExceedsMaximum                                         =  -201437;
DAQmx.Error.SharingDifferentWireModes                                          =  -201436;
DAQmx.Error.CantPrimeWithEmptyBuffer                                           =  -201435;
DAQmx.Error.ConfigFailedBecauseWatchdogExpired                                 =  -201434;
DAQmx.Error.WriteFailedBecauseWatchdogChangedLineDirection                     =  -201433;
DAQmx.Error.MultipleSubsytemCalibration                                        =  -201432;
DAQmx.Error.IncorrectChannelForOffsetAdjustment                                =  -201431;
DAQmx.Error.InvalidNumRefVoltagesToWrite                                       =  -201430;
DAQmx.Error.StartTrigDelayWithDSAModule                                        =  -201429;
DAQmx.Error.MoreThanOneSyncPulseDetected                                       =  -201428;
DAQmx.Error.DevNotSupportedWithinDAQmxAPI                                      =  -201427;
DAQmx.Error.DevsWithoutSyncStrategies                                          =  -201426;
DAQmx.Error.DevsWithoutCommonSyncStrategy                                      =  -201425;
DAQmx.Error.SyncStrategiesCannotSync                                           =  -201424;
DAQmx.Error.ChassisCommunicationInterrupted                                    =  -201423;
DAQmx.Error.UnknownCardPowerProfileInCarrier                                   =  -201422;
DAQmx.Error.AttrNotSupportedOnAccessory                                        =  -201421;
DAQmx.Error.NetworkDeviceReservedByAnotherHost                                 =  -201420;
DAQmx.Error.IncorrectFirmwareFileUploaded                                      =  -201419;
DAQmx.Error.InvalidFirmwareFileUploaded                                        =  -201418;
DAQmx.Error.InTimerTimeoutOnArm                                                =  -201417;
DAQmx.Error.CantExceedSlotRelayDriveLimit                                      =  -201416;
DAQmx.Error.ModuleUnsupportedFor9163                                           =  -201415;
DAQmx.Error.ConnectionsNotSupported                                            =  -201414;
DAQmx.Error.AccessoryNotPresent                                                =  -201413;
DAQmx.Error.SpecifiedAccessoryChannelsNotPresentOnDevice                       =  -201412;
DAQmx.Error.ConnectionsNotSupportedOnAccessory                                 =  -201411;
DAQmx.Error.RateTooFastForHWTSP                                                =  -201410;
DAQmx.Error.DelayFromSampleClockOutOfRangeForHWTSP                             =  -201409;
DAQmx.Error.AveragingWhenNotInternalHWTSP                                      =  -201408;
DAQmx.Error.AttributeNotSupportedUnlessHWTSP                                   =  -201407;
DAQmx.Error.FiveVoltDetectFailed                                               =  -201406;
DAQmx.Error.AnalogBusStateInconsistent                                         =  -201405;
DAQmx.Error.CardDetectedDoesNotMatchExpectedCard                               =  -201404;
DAQmx.Error.LoggingStartNewFileNotCalled                                       =  -201403;
DAQmx.Error.LoggingSampsPerFileNotDivisible                                    =  -201402;
DAQmx.Error.RetrievingNetworkDeviceProperties                                  =  -201401;
DAQmx.Error.FilePreallocationFailed                                            =  -201400;
DAQmx.Error.ModuleMismatchInSameTimedTask                                      =  -201399;
DAQmx.Error.InvalidAttributeValuePossiblyDueToOtherAttributeValues             =  -201398;
DAQmx.Error.ChangeDetectionStoppedToPreventDeviceHang                          =  -201397;
DAQmx.Error.FilterDelayRemovalNotPosssibleWithAnalogTrigger                    =  -201396;
DAQmx.Error.NonbufferedOrNoChannels                                            =  -201395;
DAQmx.Error.TristateLogicLevelNotSpecdForEntirePort                            =  -201394;
DAQmx.Error.TristateLogicLevelNotSupportedOnDigOutChan                         =  -201393;
DAQmx.Error.TristateLogicLevelNotSupported                                     =  -201392;
DAQmx.Error.IncompleteGainAndCouplingCalAdjustment                             =  -201391;
DAQmx.Error.NetworkStatusConnectionLost                                        =  -201390;
DAQmx.Error.ModuleChangeDuringConnectionLoss                                   =  -201389;
DAQmx.Error.NetworkDeviceNotReservedByHost                                     =  -201388;
DAQmx.Error.DuplicateCalibrationAdjustmentInput                                =  -201387;
DAQmx.Error.SelfCalFailedContactTechSupport                                    =  -201386;
DAQmx.Error.SelfCalFailedToConverge                                            =  -201385;
DAQmx.Error.UnsupportedSimulatedModuleForSimulatedChassis                      =  -201384;
DAQmx.Error.LoggingWriteSizeTooBig                                             =  -201383;
DAQmx.Error.LoggingWriteSizeNotDivisible                                       =  -201382;
DAQmx.Error.MyDAQPowerRailFault                                                =  -201381;
DAQmx.Error.DeviceDoesNotSupportThisOperation                                  =  -201380;
DAQmx.Error.NetworkDevicesNotSupportedOnThisPlatform                           =  -201379;
DAQmx.Error.UnknownFirmwareVersion                                             =  -201378;
DAQmx.Error.FirmwareIsUpdating                                                 =  -201377;
DAQmx.Error.AccessoryEEPROMIsCorrupt                                           =  -201376;
DAQmx.Error.ThrmcplLeadOffsetNullingCalNotSupported                            =  -201375;
DAQmx.Error.SelfCalFailedTryExtCal                                             =  -201374;
DAQmx.Error.OutputP2PNotSupportedWithMultithreadedScripts                      =  -201373;
DAQmx.Error.ThrmcplCalibrationChannelsOpen                                     =  -201372;
DAQmx.Error.MDNSServiceInstanceAlreadyInUse                                    =  -201371;
DAQmx.Error.IPAddressAlreadyInUse                                              =  -201370;
DAQmx.Error.HostnameAlreadyInUse                                               =  -201369;
DAQmx.Error.InvalidNumberOfCalAdjustmentPoints                                 =  -201368;
DAQmx.Error.FilterOrDigitalSyncInternalSignal                                  =  -201367;
DAQmx.Error.BadDDSSource                                                       =  -201366;
DAQmx.Error.OnboardRegenWithMoreThan16Channels                                 =  -201365;
DAQmx.Error.TriggerTooFast                                                     =  -201364;
DAQmx.Error.MinMaxOutsideTableRange                                            =  -201363;
DAQmx.Error.ChannelExpansionWithInvalidAnalogTriggerDevice                     =  -201362;
DAQmx.Error.SyncPulseSrcInvalidForTask                                         =  -201361;
DAQmx.Error.InvalidCarrierSlotNumberSpecd                                      =  -201360;
DAQmx.Error.CardsMustBeInSameCarrier                                           =  -201359;
DAQmx.Error.CardDevCarrierSimMustMatch                                         =  -201358;
DAQmx.Error.DevMustHaveAtLeastOneCard                                          =  -201357;
DAQmx.Error.CardTopologyError                                                  =  -201356;
DAQmx.Error.ExceededCarrierPowerLimit                                          =  -201355;
DAQmx.Error.CardsIncompatible                                                  =  -201354;
DAQmx.Error.AnalogBusNotValid                                                  =  -201353;
DAQmx.Error.ReservationConflict                                                =  -201352;
DAQmx.Error.MemMappedOnDemandNotSupported                                      =  -201351;
DAQmx.Error.SlaveWithNoStartTriggerConfigured                                  =  -201350;
DAQmx.Error.ChannelExpansionWithDifferentTriggerDevices                        =  -201349;
DAQmx.Error.CounterSyncAndRetriggered                                          =  -201348;
DAQmx.Error.NoExternalSyncPulseDetected                                        =  -201347;
DAQmx.Error.SlaveAndNoExternalSyncPulse                                        =  -201346;
DAQmx.Error.CustomTimingRequiredForAttribute                                   =  -201345;
DAQmx.Error.CustomTimingModeNotSet                                             =  -201344;
DAQmx.Error.AccessoryPowerTripped                                              =  -201343;
DAQmx.Error.UnsupportedAccessory                                               =  -201342;
DAQmx.Error.InvalidAccessoryChange                                             =  -201341;
DAQmx.Error.FirmwareRequiresUpgrade                                            =  -201340;
DAQmx.Error.FastExternalTimebaseNotSupportedForDevice                          =  -201339;
DAQmx.Error.InvalidShuntLocationForCalibration                                 =  -201338;
DAQmx.Error.DeviceNameTooLong                                                  =  -201337;
DAQmx.Error.BridgeScalesUnsupported                                            =  -201336;
DAQmx.Error.MismatchedElecPhysValues                                           =  -201335;
DAQmx.Error.LinearRequiresUniquePoints                                         =  -201334;
DAQmx.Error.MissingRequiredScalingParameter                                    =  -201333;
DAQmx.Error.LoggingNotSupportOnOutputTasks                                     =  -201332;
DAQmx.Error.MemoryMappedHardwareTimedNonBufferedUnsupported                    =  -201331;
DAQmx.Error.CannotUpdatePulseTrainWithAutoIncrementEnabled                     =  -201330;
DAQmx.Error.HWTimedSinglePointAndDataXferNotDMA                                =  -201329;
DAQmx.Error.SCCSecondStageEmpty                                                =  -201328;
DAQmx.Error.SCCInvalidDualStageCombo                                           =  -201327;
DAQmx.Error.SCCInvalidSecondStage                                              =  -201326;
DAQmx.Error.SCCInvalidFirstStage                                               =  -201325;
DAQmx.Error.CounterMultipleSampleClockedChannels                               =  -201324;
DAQmx.Error.Error2CounterMeasurementModeAndSampleClocked                       =  -201323;
DAQmx.Error.CantHaveBothMemMappedAndNonMemMappedTasks                          =  -201322;
DAQmx.Error.MemMappedDataReadByAnotherProcess                                  =  -201321;
DAQmx.Error.RetriggeringInvalidForGivenSettings                                =  -201320;
DAQmx.Error.AIOverrun                                                          =  -201319;
DAQmx.Error.COOverrun                                                          =  -201318;
DAQmx.Error.CounterMultipleBufferedChannels                                    =  -201317;
DAQmx.Error.InvalidTimebaseForCOHWTSP                                          =  -201316;
DAQmx.Error.WriteBeforeEvent                                                   =  -201315;
DAQmx.Error.CIOverrun                                                          =  -201314;
DAQmx.Error.CounterNonResponsiveAndReset                                       =  -201313;
DAQmx.Error.MeasTypeOrChannelNotSupportedForLogging                            =  -201312;
DAQmx.Error.FileAlreadyOpenedForWrite                                          =  -201311;
DAQmx.Error.TdmsNotFound                                                       =  -201310;
DAQmx.Error.GenericFileIO                                                      =  -201309;
DAQmx.Error.FiniteSTCCounterNotSupportedForLogging                             =  -201308;
DAQmx.Error.MeasurementTypeNotSupportedForLogging                              =  -201307;
DAQmx.Error.FileAlreadyOpened                                                  =  -201306;
DAQmx.Error.DiskFull                                                           =  -201305;
DAQmx.Error.FilePathInvalid                                                    =  -201304;
DAQmx.Error.FileVersionMismatch                                                =  -201303;
DAQmx.Error.FileWriteProtected                                                 =  -201302;
DAQmx.Error.ReadNotSupportedForLoggingMode                                     =  -201301;
DAQmx.Error.AttributeNotSupportedWhenLogging                                   =  -201300;
DAQmx.Error.LoggingModeNotSupportedNonBuffered                                 =  -201299;
DAQmx.Error.PropertyNotSupportedWithConflictingProperty                        =  -201298;
DAQmx.Error.ParallelSSHOnConnector1                                            =  -201297;
DAQmx.Error.COOnlyImplicitSampleTimingTypeSupported                            =  -201296;
DAQmx.Error.CalibrationFailedAOOutOfRange                                      =  -201295;
DAQmx.Error.CalibrationFailedAIOutOfRange                                      =  -201294;
DAQmx.Error.CalPWMLinearityFailed                                              =  -201293;
DAQmx.Error.OverrunUnderflowConfigurationCombo                                 =  -201292;
DAQmx.Error.CannotWriteToFiniteCOTask                                          =  -201291;
DAQmx.Error.NetworkDAQInvalidWEPKeyLength                                      =  -201290;
DAQmx.Error.CalInputsShortedNotSupported                                       =  -201289;
DAQmx.Error.CannotSetPropertyWhenTaskIsReserved                                =  -201288;
DAQmx.Error.Minus12VFuseBlown                                                  =  -201287;
DAQmx.Error.Plus12VFuseBlown                                                   =  -201286;
DAQmx.Error.Plus5VFuseBlown                                                    =  -201285;
DAQmx.Error.Plus3VFuseBlown                                                    =  -201284;
DAQmx.Error.DeviceSerialPortError                                              =  -201283;
DAQmx.Error.PowerUpStateMachineNotDone                                         =  -201282;
DAQmx.Error.TooManyTriggersSpecifiedInTask                                     =  -201281;
DAQmx.Error.VerticalOffsetNotSupportedOnDevice                                 =  -201280;
DAQmx.Error.InvalidCouplingForMeasurementType                                  =  -201279;
DAQmx.Error.DigitalLineUpdateTooFastForDevice                                  =  -201278;
DAQmx.Error.CertificateIsTooBigToTransfer                                      =  -201277;
DAQmx.Error.OnlyPEMOrDERCertiticatesAccepted                                   =  -201276;
DAQmx.Error.CalCouplingNotSupported                                            =  -201275;
DAQmx.Error.DeviceNotSupportedIn64Bit                                          =  -201274;
DAQmx.Error.NetworkDeviceInUse                                                 =  -201273;
DAQmx.Error.InvalidIPv4AddressFormat                                           =  -201272;
DAQmx.Error.NetworkProductTypeMismatch                                         =  -201271;
DAQmx.Error.OnlyPEMCertificatesAccepted                                        =  -201270;
DAQmx.Error.CalibrationRequiresPrototypingBoardEnabled                         =  -201269;
DAQmx.Error.AllCurrentLimitingResourcesAlreadyTaken                            =  -201268;
DAQmx.Error.UserDefInfoStringBadLength                                         =  -201267;
DAQmx.Error.PropertyNotFound                                                   =  -201266;
DAQmx.Error.OverVoltageProtectionActivated                                     =  -201265;
DAQmx.Error.ScaledIQWaveformTooLarge                                           =  -201264;
DAQmx.Error.FirmwareFailedToDownload                                           =  -201263;
DAQmx.Error.PropertyNotSupportedForBusType                                     =  -201262;
DAQmx.Error.ChangeRateWhileRunningCouldNotBeCompleted                          =  -201261;
DAQmx.Error.CannotQueryManualControlAttribute                                  =  -201260;
DAQmx.Error.InvalidNetworkConfiguration                                        =  -201259;
DAQmx.Error.InvalidWirelessConfiguration                                       =  -201258;
DAQmx.Error.InvalidWirelessCountryCode                                         =  -201257;
DAQmx.Error.InvalidWirelessChannel                                             =  -201256;
DAQmx.Error.NetworkEEPROMHasChanged                                            =  -201255;
DAQmx.Error.NetworkSerialNumberMismatch                                        =  -201254;
DAQmx.Error.NetworkStatusDown                                                  =  -201253;
DAQmx.Error.NetworkTargetUnreachable                                           =  -201252;
DAQmx.Error.NetworkTargetNotFound                                              =  -201251;
DAQmx.Error.NetworkStatusTimedOut                                              =  -201250;
DAQmx.Error.InvalidWirelessSecuritySelection                                   =  -201249;
DAQmx.Error.NetworkDeviceConfigurationLocked                                   =  -201248;
DAQmx.Error.NetworkDAQDeviceNotSupported                                       =  -201247;
DAQmx.Error.NetworkDAQCannotCreateEmptySleeve                                  =  -201246;
DAQmx.Error.UserDefInfoStringTooLong                                           =  -201245;
DAQmx.Error.ModuleTypeDoesNotMatchModuleTypeInDestination                      =  -201244;
DAQmx.Error.InvalidTEDSInterfaceAddress                                        =  -201243;
DAQmx.Error.DevDoesNotSupportSCXIComm                                          =  -201242;
DAQmx.Error.SCXICommDevConnector0MustBeCabledToModule                          =  -201241;
DAQmx.Error.SCXIModuleDoesNotSupportDigitizationMode                           =  -201240;
DAQmx.Error.DevDoesNotSupportMultiplexedSCXIDigitizationMode                   =  -201239;
DAQmx.Error.DevOrDevPhysChanDoesNotSupportSCXIDigitization                     =  -201238;
DAQmx.Error.InvalidPhysChanName                                                =  -201237;
DAQmx.Error.SCXIChassisCommModeInvalid                                         =  -201236;
DAQmx.Error.RequiredDependencyNotFound                                         =  -201235;
DAQmx.Error.InvalidStorage                                                     =  -201234;
DAQmx.Error.InvalidObject                                                      =  -201233;
DAQmx.Error.StorageAlteredPriorToSave                                          =  -201232;
DAQmx.Error.TaskDoesNotReferenceLocalChannel                                   =  -201231;
DAQmx.Error.ReferencedDevSimMustMatchTarget                                    =  -201230;
DAQmx.Error.ProgrammedIOFailsBecauseOfWatchdogTimer                            =  -201229;
DAQmx.Error.WatchdogTimerFailsBecauseOfProgrammedIO                            =  -201228;
DAQmx.Error.CantUseThisTimingEngineWithAPort                                   =  -201227;
DAQmx.Error.ProgrammedIOConflict                                               =  -201226;
DAQmx.Error.ChangeDetectionIncompatibleWithProgrammedIO                        =  -201225;
DAQmx.Error.TristateNotEnoughLines                                             =  -201224;
DAQmx.Error.TristateConflict                                                   =  -201223;
DAQmx.Error.GenerateOrFiniteWaitExpectedBeforeBreakBlock                       =  -201222;
DAQmx.Error.BreakBlockNotAllowedInLoop                                         =  -201221;
DAQmx.Error.ClearTriggerNotAllowedInBreakBlock                                 =  -201220;
DAQmx.Error.NestingNotAllowedInBreakBlock                                      =  -201219;
DAQmx.Error.IfElseBlockNotAllowedInBreakBlock                                  =  -201218;
DAQmx.Error.RepeatUntilTriggerLoopNotAllowedInBreakBlock                       =  -201217;
DAQmx.Error.WaitUntilTriggerNotAllowedInBreakBlock                             =  -201216;
DAQmx.Error.MarkerPosInvalidInBreakBlock                                       =  -201215;
DAQmx.Error.InvalidWaitDurationInBreakBlock                                    =  -201214;
DAQmx.Error.InvalidSubsetLengthInBreakBlock                                    =  -201213;
DAQmx.Error.InvalidWaveformLengthInBreakBlock                                  =  -201212;
DAQmx.Error.InvalidWaitDurationBeforeBreakBlock                                =  -201211;
DAQmx.Error.InvalidSubsetLengthBeforeBreakBlock                                =  -201210;
DAQmx.Error.InvalidWaveformLengthBeforeBreakBlock                              =  -201209;
DAQmx.Error.SampleRateTooHighForADCTimingMode                                  =  -201208;
DAQmx.Error.ActiveDevNotSupportedWithMultiDevTask                              =  -201207;
DAQmx.Error.RealDevAndSimDevNotSupportedInSameTask                             =  -201206;
DAQmx.Error.RTSISimMustMatchDevSim                                             =  -201205;
DAQmx.Error.BridgeShuntCaNotSupported                                          =  -201204;
DAQmx.Error.StrainShuntCaNotSupported                                          =  -201203;
DAQmx.Error.GainTooLargeForGainCalConst                                        =  -201202;
DAQmx.Error.OffsetTooLargeForOffsetCalConst                                    =  -201201;
DAQmx.Error.ElvisPrototypingBoardRemoved                                       =  -201200;
DAQmx.Error.Elvis2PowerRailFault                                               =  -201199;
DAQmx.Error.Elvis2PhysicalChansFault                                           =  -201198;
DAQmx.Error.Elvis2PhysicalChansThermalEvent                                    =  -201197;
DAQmx.Error.RXBitErrorRateLimitExceeded                                        =  -201196;
DAQmx.Error.PHYBitErrorRateLimitExceeded                                       =  -201195;
DAQmx.Error.TwoPartAttributeCalledOutOfOrder                                   =  -201194;
DAQmx.Error.InvalidSCXIChassisAddress                                          =  -201193;
DAQmx.Error.CouldNotConnectToRemoteMXS                                         =  -201192;
DAQmx.Error.ExcitationStateRequiredForAttributes                               =  -201191;
DAQmx.Error.DeviceNotUsableUntilUSBReplug                                      =  -201190;
DAQmx.Error.InputFIFOOverflowDuringCalibrationOnFullSpeedUSB                   =  -201189;
DAQmx.Error.InputFIFOOverflowDuringCalibration                                 =  -201188;
DAQmx.Error.CJCChanConflictsWithNonThermocoupleChan                            =  -201187;
DAQmx.Error.CommDeviceForPXIBackplaneNotInRightmostSlot                        =  -201186;
DAQmx.Error.CommDeviceForPXIBackplaneNotInSameChassis                          =  -201185;
DAQmx.Error.CommDeviceForPXIBackplaneNotPXI                                    =  -201184;
DAQmx.Error.InvalidCalExcitFrequency                                           =  -201183;
DAQmx.Error.InvalidCalExcitVoltage                                             =  -201182;
DAQmx.Error.InvalidAIInputSrc                                                  =  -201181;
DAQmx.Error.InvalidCalInputRef                                                 =  -201180;
DAQmx.Error.dBReferenceValueNotGreaterThanZero                                 =  -201179;
DAQmx.Error.SampleClockRateIsTooFastForSampleClockTiming                       =  -201178;
DAQmx.Error.DeviceNotUsableUntilColdStart                                      =  -201177;
DAQmx.Error.SampleClockRateIsTooFastForBurstTiming                             =  -201176;
DAQmx.Error.DevImportFailedAssociatedResourceIDsNotSupported                   =  -201175;
DAQmx.Error.SCXI1600ImportNotSupported                                         =  -201174;
DAQmx.Error.PowerSupplyConfigurationFailed                                     =  -201173;
DAQmx.Error.IEPEWithDCNotAllowed                                               =  -201172;
DAQmx.Error.MinTempForThermocoupleTypeOutsideAccuracyForPolyScaling            =  -201171;
DAQmx.Error.DevImportFailedNoDeviceToOverwriteAndSimulationNotSupported        =  -201170;
DAQmx.Error.DevImportFailedDeviceNotSupportedOnDestination                     =  -201169;
DAQmx.Error.FirmwareIsTooOld                                                   =  -201168;
DAQmx.Error.FirmwareCouldntUpdate                                              =  -201167;
DAQmx.Error.FirmwareIsCorrupt                                                  =  -201166;
DAQmx.Error.FirmwareTooNew                                                     =  -201165;
DAQmx.Error.SampClockCannotBeExportedFromExternalSampClockSrc                  =  -201164;
DAQmx.Error.PhysChanReservedForInputWhenDesiredForOutput                       =  -201163;
DAQmx.Error.PhysChanReservedForOutputWhenDesiredForInput                       =  -201162;
DAQmx.Error.SpecifiedCDAQSlotNotEmpty                                          =  -201161;
DAQmx.Error.DeviceDoesNotSupportSimulation                                     =  -201160;
DAQmx.Error.InvalidCDAQSlotNumberSpecd                                         =  -201159;
DAQmx.Error.CSeriesModSimMustMatchCDAQChassisSim                               =  -201158;
DAQmx.Error.SCCCabledDevMustNotBeSimWhenSCCCarrierIsNotSim                     =  -201157;
DAQmx.Error.SCCModSimMustMatchSCCCarrierSim                                    =  -201156;
DAQmx.Error.SCXIModuleDoesNotSupportSimulation                                 =  -201155;
DAQmx.Error.SCXICableDevMustNotBeSimWhenModIsNotSim                            =  -201154;
DAQmx.Error.SCXIDigitizerSimMustNotBeSimWhenModIsNotSim                        =  -201153;
DAQmx.Error.SCXIModSimMustMatchSCXIChassisSim                                  =  -201152;
DAQmx.Error.SimPXIDevReqSlotAndChassisSpecd                                    =  -201151;
DAQmx.Error.SimDevConflictWithRealDev                                          =  -201150;
DAQmx.Error.InsufficientDataForCalibration                                     =  -201149;
DAQmx.Error.TriggerChannelMustBeEnabled                                        =  -201148;
DAQmx.Error.CalibrationDataConflictCouldNotBeResolved                          =  -201147;
DAQmx.Error.SoftwareTooNewForSelfCalibrationData                               =  -201146;
DAQmx.Error.SoftwareTooNewForExtCalibrationData                                =  -201145;
DAQmx.Error.SelfCalibrationDataTooNewForSoftware                               =  -201144;
DAQmx.Error.ExtCalibrationDataTooNewForSoftware                                =  -201143;
DAQmx.Error.SoftwareTooNewForEEPROM                                            =  -201142;
DAQmx.Error.EEPROMTooNewForSoftware                                            =  -201141;
DAQmx.Error.SoftwareTooNewForHardware                                          =  -201140;
DAQmx.Error.HardwareTooNewForSoftware                                          =  -201139;
DAQmx.Error.TaskCannotRestartFirstSampNotAvailToGenerate                       =  -201138;
DAQmx.Error.OnlyUseStartTrigSrcPrptyWithDevDataLines                           =  -201137;
DAQmx.Error.OnlyUsePauseTrigSrcPrptyWithDevDataLines                           =  -201136;
DAQmx.Error.OnlyUseRefTrigSrcPrptyWithDevDataLines                             =  -201135;
DAQmx.Error.PauseTrigDigPatternSizeDoesNotMatchSrcSize                         =  -201134;
DAQmx.Error.LineConflictCDAQ                                                   =  -201133;
DAQmx.Error.CannotWriteBeyondFinalFiniteSample                                 =  -201132;
DAQmx.Error.RefAndStartTriggerSrcCantBeSame                                    =  -201131;
DAQmx.Error.MemMappingIncompatibleWithPhysChansInTask                          =  -201130;
DAQmx.Error.OutputDriveTypeMemMappingConflict                                  =  -201129;
DAQmx.Error.CAPIDeviceIndexInvalid                                             =  -201128;
DAQmx.Error.RatiometricDevicesMustUseExcitationForScaling                      =  -201127;
DAQmx.Error.PropertyRequiresPerDeviceCfg                                       =  -201126;
DAQmx.Error.AICouplingAndAIInputSourceConflict                                 =  -201125;
DAQmx.Error.OnlyOneTaskCanPerformDOMemoryMappingAtATime                        =  -201124;
DAQmx.Error.TooManyChansForAnalogRefTrigCDAQ                                   =  -201123;
DAQmx.Error.SpecdPropertyValueIsIncompatibleWithSampleTimingType               =  -201122;
DAQmx.Error.CPUNotSupportedRequireSSE                                          =  -201121;
DAQmx.Error.SpecdPropertyValueIsIncompatibleWithSampleTimingResponseMode       =  -201120;
DAQmx.Error.ConflictingNextWriteIsLastAndRegenModeProperties                   =  -201119;
DAQmx.Error.MStudioOperationDoesNotSupportDeviceContext                        =  -201118;
DAQmx.Error.PropertyValueInChannelExpansionContextInvalid                      =  -201117;
DAQmx.Error.HWTimedNonBufferedAONotSupported                                   =  -201116;
DAQmx.Error.WaveformLengthNotMultOfQuantum                                     =  -201115;
DAQmx.Error.DSAExpansionMixedBoardsWrongOrderInPXIChassis                      =  -201114;
DAQmx.Error.PowerLevelTooLowForOOK                                             =  -201113;
DAQmx.Error.DeviceComponentTestFailure                                         =  -201112;
DAQmx.Error.UserDefinedWfmWithOOKUnsupported                                   =  -201111;
DAQmx.Error.InvalidDigitalModulationUserDefinedWaveform                        =  -201110;
DAQmx.Error.BothRefInAndRefOutEnabled                                          =  -201109;
DAQmx.Error.BothAnalogAndDigitalModulationEnabled                              =  -201108;
DAQmx.Error.BufferedOpsNotSupportedInSpecdSlotForCDAQ                          =  -201107;
DAQmx.Error.PhysChanNotSupportedInSpecdSlotForCDAQ                             =  -201106;
DAQmx.Error.ResourceReservedWithConflictingSettings                            =  -201105;
DAQmx.Error.InconsistentAnalogTrigSettingsCDAQ                                 =  -201104;
DAQmx.Error.TooManyChansForAnalogPauseTrigCDAQ                                 =  -201103;
DAQmx.Error.AnalogTrigNotFirstInScanListCDAQ                                   =  -201102;
DAQmx.Error.TooManyChansGivenTimingType                                        =  -201101;
DAQmx.Error.SampClkTimebaseDivWithExtSampClk                                   =  -201100;
DAQmx.Error.CantSaveTaskWithPerDeviceTimingProperties                          =  -201099;
DAQmx.Error.ConflictingAutoZeroMode                                            =  -201098;
DAQmx.Error.SampClkRateNotSupportedWithEAREnabled                              =  -201097;
DAQmx.Error.SampClkTimebaseRateNotSpecd                                        =  -201096;
DAQmx.Error.SessionCorruptedByDLLReload                                        =  -201095;
DAQmx.Error.ActiveDevNotSupportedWithChanExpansion                             =  -201094;
DAQmx.Error.SampClkRateInvalid                                                 =  -201093;
DAQmx.Error.ExtSyncPulseSrcCannotBeExported                                    =  -201092;
DAQmx.Error.SyncPulseMinDelayToStartNeededForExtSyncPulseSrc                   =  -201091;
DAQmx.Error.SyncPulseSrcInvalid                                                =  -201090;
DAQmx.Error.SampClkTimebaseRateInvalid                                         =  -201089;
DAQmx.Error.SampClkTimebaseSrcInvalid                                          =  -201088;
DAQmx.Error.SampClkRateMustBeSpecd                                             =  -201087;
DAQmx.Error.InvalidAttributeName                                               =  -201086;
DAQmx.Error.CJCChanNameMustBeSetWhenCJCSrcIsScannableChan                      =  -201085;
DAQmx.Error.HiddenChanMissingInChansPropertyInCfgFile                          =  -201084;
DAQmx.Error.ChanNamesNotSpecdInCfgFile                                         =  -201083;
DAQmx.Error.DuplicateHiddenChanNamesInCfgFile                                  =  -201082;
DAQmx.Error.DuplicateChanNameInCfgFile                                         =  -201081;
DAQmx.Error.InvalidSCCModuleForSlotSpecd                                       =  -201080;
DAQmx.Error.InvalidSCCSlotNumberSpecd                                          =  -201079;
DAQmx.Error.InvalidSectionIdentifier                                           =  -201078;
DAQmx.Error.InvalidSectionName                                                 =  -201077;
DAQmx.Error.DAQmxVersionNotSupported                                           =  -201076;
DAQmx.Error.SWObjectsFoundInFile                                               =  -201075;
DAQmx.Error.HWObjectsFoundInFile                                               =  -201074;
DAQmx.Error.LocalChannelSpecdWithNoParentTask                                  =  -201073;
DAQmx.Error.TaskReferencesMissingLocalChannel                                  =  -201072;
DAQmx.Error.TaskReferencesLocalChannelFromOtherTask                            =  -201071;
DAQmx.Error.TaskMissingChannelProperty                                         =  -201070;
DAQmx.Error.InvalidLocalChanName                                               =  -201069;
DAQmx.Error.InvalidEscapeCharacterInString                                     =  -201068;
DAQmx.Error.InvalidTableIdentifier                                             =  -201067;
DAQmx.Error.ValueFoundInInvalidColumn                                          =  -201066;
DAQmx.Error.MissingStartOfTable                                                =  -201065;
DAQmx.Error.FileMissingRequiredDAQmxHeader                                     =  -201064;
DAQmx.Error.DeviceIDDoesNotMatch                                               =  -201063;
DAQmx.Error.BufferedOperationsNotSupportedOnSelectedLines                      =  -201062;
DAQmx.Error.PropertyConflictsWithScale                                         =  -201061;
DAQmx.Error.InvalidINIFileSyntax                                               =  -201060;
DAQmx.Error.DeviceInfoFailedPXIChassisNotIdentified                            =  -201059;
DAQmx.Error.InvalidHWProductNumber                                             =  -201058;
DAQmx.Error.InvalidHWProductType                                               =  -201057;
DAQmx.Error.InvalidNumericFormatSpecd                                          =  -201056;
DAQmx.Error.DuplicatePropertyInObject                                          =  -201055;
DAQmx.Error.InvalidEnumValueSpecd                                              =  -201054;
DAQmx.Error.TEDSSensorPhysicalChannelConflict                                  =  -201053;
DAQmx.Error.TooManyPhysicalChansForTEDSInterfaceSpecd                          =  -201052;
DAQmx.Error.IncapableTEDSInterfaceControllingDeviceSpecd                       =  -201051;
DAQmx.Error.SCCCarrierSpecdIsMissing                                           =  -201050;
DAQmx.Error.IncapableSCCDigitizingDeviceSpecd                                  =  -201049;
DAQmx.Error.AccessorySettingNotApplicable                                      =  -201048;
DAQmx.Error.DeviceAndConnectorSpecdAlreadyOccupied                             =  -201047;
DAQmx.Error.IllegalAccessoryTypeForDeviceSpecd                                 =  -201046;
DAQmx.Error.InvalidDeviceConnectorNumberSpecd                                  =  -201045;
DAQmx.Error.InvalidAccessoryName                                               =  -201044;
DAQmx.Error.MoreThanOneMatchForSpecdDevice                                     =  -201043;
DAQmx.Error.NoMatchForSpecdDevice                                              =  -201042;
DAQmx.Error.ProductTypeAndProductNumberConflict                                =  -201041;
DAQmx.Error.ExtraPropertyDetectedInSpecdObject                                 =  -201040;
DAQmx.Error.RequiredPropertyMissing                                            =  -201039;
DAQmx.Error.CantSetAuthorForLocalChan                                          =  -201038;
DAQmx.Error.InvalidTimeValue                                                   =  -201037;
DAQmx.Error.InvalidTimeFormat                                                  =  -201036;
DAQmx.Error.DigDevChansSpecdInModeOtherThanParallel                            =  -201035;
DAQmx.Error.CascadeDigitizationModeNotSupported                                =  -201034;
DAQmx.Error.SpecdSlotAlreadyOccupied                                           =  -201033;
DAQmx.Error.InvalidSCXISlotNumberSpecd                                         =  -201032;
DAQmx.Error.AddressAlreadyInUse                                                =  -201031;
DAQmx.Error.SpecdDeviceDoesNotSupportRTSI                                      =  -201030;
DAQmx.Error.SpecdDeviceIsAlreadyOnRTSIBus                                      =  -201029;
DAQmx.Error.IdentifierInUse                                                    =  -201028;
DAQmx.Error.WaitForNextSampleClockOrReadDetected3OrMoreMissedSampClks          =  -201027;
DAQmx.Error.HWTimedAndDataXferPIO                                              =  -201026;
DAQmx.Error.NonBufferedAndHWTimed                                              =  -201025;
DAQmx.Error.CTROutSampClkPeriodShorterThanGenPulseTrainPeriodPolled            =  -201024;
DAQmx.Error.CTROutSampClkPeriodShorterThanGenPulseTrainPeriod2                 =  -201023;
DAQmx.Error.COCannotKeepUpInHWTimedSinglePointPolled                           =  -201022;
DAQmx.Error.WriteRecoveryCannotKeepUpInHWTimedSinglePoint                      =  -201021;
DAQmx.Error.NoChangeDetectionOnSelectedLineForDevice                           =  -201020;
DAQmx.Error.SMIOPauseTriggersNotSupportedWithChannelExpansion                  =  -201019;
DAQmx.Error.ClockMasterForExternalClockNotLongestPipeline                      =  -201018;
DAQmx.Error.UnsupportedUnicodeByteOrderMarker                                  =  -201017;
DAQmx.Error.TooManyInstructionsInLoopInScript                                  =  -201016;
DAQmx.Error.PLLNotLocked                                                       =  -201015;
DAQmx.Error.IfElseBlockNotAllowedInFiniteRepeatLoopInScript                    =  -201014;
DAQmx.Error.IfElseBlockNotAllowedInConditionalRepeatLoopInScript               =  -201013;
DAQmx.Error.ClearIsLastInstructionInIfElseBlockInScript                        =  -201012;
DAQmx.Error.InvalidWaitDurationBeforeIfElseBlockInScript                       =  -201011;
DAQmx.Error.MarkerPosInvalidBeforeIfElseBlockInScript                          =  -201010;
DAQmx.Error.InvalidSubsetLengthBeforeIfElseBlockInScript                       =  -201009;
DAQmx.Error.InvalidWaveformLengthBeforeIfElseBlockInScript                     =  -201008;
DAQmx.Error.GenerateOrFiniteWaitInstruction.ExpectedBeforeIfElseBlockInScript   =  -201007;
DAQmx.Error.CalPasswordNotSupported                                            =  -201006;
DAQmx.Error.SetupCalNeededBeforeAdjustCal                                      =  -201005;
DAQmx.Error.MultipleChansNotSupportedDuringCalSetup                            =  -201004;
DAQmx.Error.DevCannotBeAccessed                                                =  -201003;
DAQmx.Error.SampClkRateDoesntMatchSampClkSrc                                   =  -201002;
DAQmx.Error.SampClkRateNotSupportedWithEARDisabled                             =  -201001;
DAQmx.Error.LabVIEWVersionDoesntSupportDAQmxEvents                             =  -201000;
DAQmx.Error.COReadyForNewValNotSupportedWithOnDemand                           =  -200999;
DAQmx.Error.CIHWTimedSinglePointNotSupportedForMeasType                        =  -200998;
DAQmx.Error.OnDemandNotSupportedWithHWTimedSinglePoint                         =  -200997;
DAQmx.Error.HWTimedSinglePointAndDataXferNotProgIO                             =  -200996;
DAQmx.Error.MemMapAndHWTimedSinglePoint                                        =  -200995;
DAQmx.Error.CannotSetPropertyWhenHWTimedSinglePointTaskIsRunning               =  -200994;
DAQmx.Error.CTROutSampClkPeriodShorterThanGenPulseTrainPeriod                  =  -200993;
DAQmx.Error.TooManyEventsGenerated                                             =  -200992;
DAQmx.Error.MStudioCppRemoveEventsBeforeStop                                   =  -200991;
DAQmx.Error.CAPICannotRegisterSyncEventsFromMultipleThreads                    =  -200990;
DAQmx.Error.ReadWaitNextSampClkWaitMismatchTwo                                 =  -200989;
DAQmx.Error.ReadWaitNextSampClkWaitMismatchOne                                 =  -200988;
DAQmx.Error.DAQmxSignalEventTypeNotSupportedByChanTypesOrDevicesInTask         =  -200987;
DAQmx.Error.CannotUnregisterDAQmxSoftwareEventWhileTaskIsRunning               =  -200986;
DAQmx.Error.AutoStartWriteNotAllowedEventRegistered                            =  -200985;
DAQmx.Error.AutoStartReadNotAllowedEventRegistered                             =  -200984;
DAQmx.Error.CannotGetPropertyWhenTaskNotReservedCommittedOrRunning             =  -200983;
DAQmx.Error.SignalEventsNotSupportedByDevice                                   =  -200982;
DAQmx.Error.EveryNSamplesAcqIntoBufferEventNotSupportedByDevice                =  -200981;
DAQmx.Error.EveryNSampsTransferredFromBufferEventNotSupportedByDevice          =  -200980;
DAQmx.Error.CAPISyncEventsTaskStateChangeNotAllowedFromDifferentThread         =  -200979;
DAQmx.Error.DAQmxSWEventsWithDifferentCallMechanisms                           =  -200978;
DAQmx.Error.CantSaveChanWithPolyCalScaleAndAllowInteractiveEdit                =  -200977;
DAQmx.Error.ChanDoesNotSupportCJC                                              =  -200976;
DAQmx.Error.COReadyForNewValNotSupportedWithHWTimedSinglePoint                 =  -200975;
DAQmx.Error.DACAllowConnToGndNotSupportedByDevWhenRefSrcExt                    =  -200974;
DAQmx.Error.CantGetPropertyTaskNotRunning                                      =  -200973;
DAQmx.Error.CantSetPropertyTaskNotRunning                                      =  -200972;
DAQmx.Error.CantSetPropertyTaskNotRunningCommitted                             =  -200971;
DAQmx.Error.AIEveryNSampsEventIntervalNotMultipleOf2                           =  -200970;
DAQmx.Error.InvalidTEDSPhysChanNotAI                                           =  -200969;
DAQmx.Error.CAPICannotPerformTaskOperationInAsyncCallback                      =  -200968;
DAQmx.Error.EveryNSampsTransferredFromBufferEventAlreadyRegistered             =  -200967;
DAQmx.Error.EveryNSampsAcqIntoBufferEventAlreadyRegistered                     =  -200966;
DAQmx.Error.EveryNSampsTransferredFromBufferNotForInput                        =  -200965;
DAQmx.Error.EveryNSampsAcqIntoBufferNotForOutput                               =  -200964;
DAQmx.Error.AOSampTimingTypeDifferentIn2Tasks                                  =  -200963;
DAQmx.Error.CouldNotDownloadFirmwareHWDamaged                                  =  -200962;
DAQmx.Error.CouldNotDownloadFirmwareFileMissingOrDamaged                       =  -200961;
DAQmx.Error.CannotRegisterDAQmxSoftwareEventWhileTaskIsRunning                 =  -200960;
DAQmx.Error.DifferentRawDataCompression                                        =  -200959;
DAQmx.Error.ConfiguredTEDSInterfaceDevNotDetected                              =  -200958;
DAQmx.Error.CompressedSampSizeExceedsResolution                                =  -200957;
DAQmx.Error.ChanDoesNotSupportCompression                                      =  -200956;
DAQmx.Error.DifferentRawDataFormats                                            =  -200955;
DAQmx.Error.SampClkOutputTermIncludesStartTrigSrc                              =  -200954;
DAQmx.Error.StartTrigSrcEqualToSampClkSrc                                      =  -200953;
DAQmx.Error.EventOutputTermIncludesTrigSrc                                     =  -200952;
DAQmx.Error.COMultipleWritesBetweenSampClks                                    =  -200951;
DAQmx.Error.DoneEventAlreadyRegistered                                         =  -200950;
DAQmx.Error.SignalEventAlreadyRegistered                                       =  -200949;
DAQmx.Error.CannotHaveTimedLoopAndDAQmxSignalEventsInSameTask                  =  -200948;
DAQmx.Error.NeedLabVIEW711PatchToUseDAQmxEvents                                =  -200947;
DAQmx.Error.StartFailedDueToWriteFailure                                       =  -200946;
DAQmx.Error.DataXferCustomThresholdNotDMAXferMethodSpecifiedForDev             =  -200945;
DAQmx.Error.DataXferRequestConditionNotSpecifiedForCustomThreshold             =  -200944;
DAQmx.Error.DataXferCustomThresholdNotSpecified                                =  -200943;
DAQmx.Error.CAPISyncCallbackNotSupportedOnThisPlatform                         =  -200942;
DAQmx.Error.CalChanReversePolyCoefNotSpecd                                     =  -200941;
DAQmx.Error.CalChanForwardPolyCoefNotSpecd                                     =  -200940;
DAQmx.Error.ChanCalRepeatedNumberInPreScaledVals                               =  -200939;
DAQmx.Error.ChanCalTableNumScaledNotEqualNumPrescaledVals                      =  -200938;
DAQmx.Error.ChanCalTableScaledValsNotSpecd                                     =  -200937;
DAQmx.Error.ChanCalTablePreScaledValsNotSpecd                                  =  -200936;
DAQmx.Error.ChanCalScaleTypeNotSet                                             =  -200935;
DAQmx.Error.ChanCalExpired                                                     =  -200934;
DAQmx.Error.ChanCalExpirationDateNotSet                                        =  -200933;
DAQmx.Error.Error3OutputPortCombinationGivenSampTimingType653x                 =  -200932;
DAQmx.Error.Error3InputPortCombinationGivenSampTimingType653x                  =  -200931;
DAQmx.Error.Error2OutputPortCombinationGivenSampTimingType653x                 =  -200930;
DAQmx.Error.Error2InputPortCombinationGivenSampTimingType653x                  =  -200929;
DAQmx.Error.PatternMatcherMayBeUsedByOneTrigOnly                               =  -200928;
DAQmx.Error.NoChansSpecdForPatternSource                                       =  -200927;
DAQmx.Error.ChangeDetectionChanNotInTask                                       =  -200926;
DAQmx.Error.ChangeDetectionChanNotTristated                                    =  -200925;
DAQmx.Error.WaitModeValueNotSupportedNonBuffered                               =  -200924;
DAQmx.Error.WaitModePropertyNotSupportedNonBuffered                            =  -200923;
DAQmx.Error.CantSavePerLineConfigDigChanSoInteractiveEditsAllowed              =  -200922;
DAQmx.Error.CantSaveNonPortMultiLineDigChanSoInteractiveEditsAllowed           =  -200921;
DAQmx.Error.BufferSizeNotMultipleOfEveryNSampsEventIntervalNoIrqOnDev          =  -200920;
DAQmx.Error.GlobalTaskNameAlreadyChanName                                      =  -200919;
DAQmx.Error.GlobalChanNameAlreadyTaskName                                      =  -200918;
DAQmx.Error.AOEveryNSampsEventIntervalNotMultipleOf2                           =  -200917;
DAQmx.Error.SampleTimebaseDivisorNotSupportedGivenTimingType                   =  -200916;
DAQmx.Error.HandshakeEventOutputTermNotSupportedGivenTimingType                =  -200915;
DAQmx.Error.ChangeDetectionOutputTermNotSupportedGivenTimingType               =  -200914;
DAQmx.Error.ReadyForTransferOutputTermNotSupportedGivenTimingType              =  -200913;
DAQmx.Error.RefTrigOutputTermNotSupportedGivenTimingType                       =  -200912;
DAQmx.Error.StartTrigOutputTermNotSupportedGivenTimingType                     =  -200911;
DAQmx.Error.SampClockOutputTermNotSupportedGivenTimingType                     =  -200910;
DAQmx.Error.Error20MhzTimebaseNotSupportedGivenTimingType                      =  -200909;
DAQmx.Error.SampClockSourceNotSupportedGivenTimingType                         =  -200908;
DAQmx.Error.RefTrigTypeNotSupportedGivenTimingType                             =  -200907;
DAQmx.Error.PauseTrigTypeNotSupportedGivenTimingType                           =  -200906;
DAQmx.Error.HandshakeTrigTypeNotSupportedGivenTimingType                       =  -200905;
DAQmx.Error.StartTrigTypeNotSupportedGivenTimingType                           =  -200904;
DAQmx.Error.RefClkSrcNotSupported                                              =  -200903;
DAQmx.Error.DataVoltageLowAndHighIncompatible                                  =  -200902;
DAQmx.Error.InvalidCharInDigPatternString                                      =  -200901;
DAQmx.Error.CantUsePort3AloneGivenSampTimingTypeOn653x                         =  -200900;
DAQmx.Error.CantUsePort1AloneGivenSampTimingTypeOn653x                         =  -200899;
DAQmx.Error.PartialUseOfPhysicalLinesWithinPortNotSupported653x                =  -200898;
DAQmx.Error.PhysicalChanNotSupportedGivenSampTimingType653x                    =  -200897;
DAQmx.Error.CanExportOnlyDigEdgeTrigs                                          =  -200896;
DAQmx.Error.RefTrigDigPatternSizeDoesNotMatchSourceSize                        =  -200895;
DAQmx.Error.StartTrigDigPatternSizeDoesNotMatchSourceSize                      =  -200894;
DAQmx.Error.ChangeDetectionRisingAndFallingEdgeChanDontMatch                   =  -200893;
DAQmx.Error.PhysicalChansForChangeDetectionAndPatternMatch653x                 =  -200892;
DAQmx.Error.CanExportOnlyOnboardSampClk                                        =  -200891;
DAQmx.Error.InternalSampClkNotRisingEdge                                       =  -200890;
DAQmx.Error.RefTrigDigPatternChanNotInTask                                     =  -200889;
DAQmx.Error.RefTrigDigPatternChanNotTristated                                  =  -200888;
DAQmx.Error.StartTrigDigPatternChanNotInTask                                   =  -200887;
DAQmx.Error.StartTrigDigPatternChanNotTristated                                =  -200886;
DAQmx.Error.PXIStarAndClock10Sync                                              =  -200885;
DAQmx.Error.GlobalChanCannotBeSavedSoInteractiveEditsAllowed                   =  -200884;
DAQmx.Error.TaskCannotBeSavedSoInteractiveEditsAllowed                         =  -200883;
DAQmx.Error.InvalidGlobalChan                                                  =  -200882;
DAQmx.Error.EveryNSampsEventAlreadyRegistered                                  =  -200881;
DAQmx.Error.EveryNSampsEventIntervalZeroNotSupported                           =  -200880;
DAQmx.Error.ChanSizeTooBigForU16PortWrite                                      =  -200879;
DAQmx.Error.ChanSizeTooBigForU16PortRead                                       =  -200878;
DAQmx.Error.BufferSizeNotMultipleOfEveryNSampsEventIntervalWhenDMA             =  -200877;
DAQmx.Error.WriteWhenTaskNotRunningCOTicks                                     =  -200876;
DAQmx.Error.WriteWhenTaskNotRunningCOFreq                                      =  -200875;
DAQmx.Error.WriteWhenTaskNotRunningCOTime                                      =  -200874;
DAQmx.Error.AOMinMaxNotSupportedDACRangeTooSmall                               =  -200873;
DAQmx.Error.AOMinMaxNotSupportedGivenDACRange                                  =  -200872;
DAQmx.Error.AOMinMaxNotSupportedGivenDACRangeAndOffsetVal                      =  -200871;
DAQmx.Error.AOMinMaxNotSupportedDACOffsetValInappropriate                      =  -200870;
DAQmx.Error.AOMinMaxNotSupportedGivenDACOffsetVal                              =  -200869;
DAQmx.Error.AOMinMaxNotSupportedDACRefValTooSmall                              =  -200868;
DAQmx.Error.AOMinMaxNotSupportedGivenDACRefVal                                 =  -200867;
DAQmx.Error.AOMinMaxNotSupportedGivenDACRefAndOffsetVal                        =  -200866;
DAQmx.Error.WhenAcqCompAndNumSampsPerChanExceedsOnBrdBufSize                   =  -200865;
DAQmx.Error.WhenAcqCompAndNoRefTrig                                            =  -200864;
DAQmx.Error.WaitForNextSampClkNotSupported                                     =  -200863;
DAQmx.Error.DevInUnidentifiedPXIChassis                                        =  -200862;
DAQmx.Error.MaxSoundPressure.MicSensitivitRelatedAIPropertiesNotSupportedByDev  =  -200861;
DAQmx.Error.MaxSoundPressure.AndMicSensitivityNotSupportedByDev                 =  -200860;
DAQmx.Error.AOBufferSizeZeroForSampClkTimingType                               =  -200859;
DAQmx.Error.AOCallWriteBeforeStartForSampClkTimingType                         =  -200858;
DAQmx.Error.InvalidCalLowPassCutoffFreq                                        =  -200857;
DAQmx.Error.SimulationCannotBeDisabledForDevCreatedAsSimulatedDev              =  -200856;
DAQmx.Error.CannotAddNewDevsAfterTaskConfiguration                             =  -200855;
DAQmx.Error.DifftSyncPulseSrcAndSampClkTimebaseSrcDevMultiDevTask              =  -200854;
DAQmx.Error.TermWithoutDevInMultiDevTask                                       =  -200853;
DAQmx.Error.SyncNoDevSampClkTimebaseOrSyncPulseInPXISlot2                      =  -200852;
DAQmx.Error.PhysicalChanNotOnThisConnector                                     =  -200851;
DAQmx.Error.NumSampsToWaitNotGreaterThanZeroInScript                           =  -200850;
DAQmx.Error.NumSampsToWaitNotMultipleOfAlignmentQuantumInScript                =  -200849;
DAQmx.Error.EveryNSamplesEventNotSupportedForNonBufferedTasks                  =  -200848;
DAQmx.Error.BufferedAndDataXferPIO                                             =  -200847;
DAQmx.Error.CannotWriteWhenAutoStartFalseAndTaskNotRunning                     =  -200846;
DAQmx.Error.NonBufferedAndDataXferInterrupts                                   =  -200845;
DAQmx.Error.WriteFailedMultipleCtrsWithFREQOUT                                 =  -200844;
DAQmx.Error.ReadNotCompleteBefore3SampClkEdges                                 =  -200843;
DAQmx.Error.CtrHWTimedSinglePointAndDataXferNotProgIO                          =  -200842;
DAQmx.Error.PrescalerNot1ForInputTerminal                                      =  -200841;
DAQmx.Error.PrescalerNot1ForTimebaseSrc                                        =  -200840;
DAQmx.Error.SampClkTimingTypeWhenTristateIsFalse                               =  -200839;
DAQmx.Error.OutputBufferSizeNotMultOfXferSize                                  =  -200838;
DAQmx.Error.SampPerChanNotMultOfXferSize                                       =  -200837;
DAQmx.Error.WriteToTEDSFailed                                                  =  -200836;
DAQmx.Error.SCXIDevNotUsablePowerTurnedOff                                     =  -200835;
DAQmx.Error.CannotReadWhenAutoStartFalseBufSizeZeroAndTaskNotRunning           =  -200834;
DAQmx.Error.CannotReadWhenAutoStartFalseHWTimedSinglePtAndTaskNotRunning       =  -200833;
DAQmx.Error.CannotReadWhenAutoStartFalseOnDemandAndTaskNotRunning              =  -200832;
DAQmx.Error.SimultaneousAOWhenNotOnDemandTiming                                =  -200831;
DAQmx.Error.MemMapAndSimultaneousAO                                            =  -200830;
DAQmx.Error.WriteFailedMultipleCOOutputTypes                                   =  -200829;
DAQmx.Error.WriteToTEDSNotSupportedOnRT                                        =  -200828;
DAQmx.Error.VirtualTEDSDataFileError                                           =  -200827;
DAQmx.Error.TEDSSensorDataError                                                =  -200826;
DAQmx.Error.DataSizeMoreThanSizeOfEEPROMOnTEDS                                 =  -200825;
DAQmx.Error.PROMOnTEDSContainsBasicTEDSData                                    =  -200824;
DAQmx.Error.PROMOnTEDSAlreadyWritten                                           =  -200823;
DAQmx.Error.TEDSDoesNotContainPROM                                             =  -200822;
DAQmx.Error.HWTimedSinglePointNotSupportedAI                                   =  -200821;
DAQmx.Error.HWTimedSinglePointOddNumChansInAITask                              =  -200820;
DAQmx.Error.CantUseOnlyOnBoardMemWithProgrammedIO                              =  -200819;
DAQmx.Error.SwitchDevShutDownDueToHighTemp                                     =  -200818;
DAQmx.Error.ExcitationNotSupportedWhenTermCfgDiff                              =  -200817;
DAQmx.Error.TEDSMinElecValGEMaxElecVal                                         =  -200816;
DAQmx.Error.TEDSMinPhysValGEMaxPhysVal                                         =  -200815;
DAQmx.Error.CIOnboardClockNotSupportedAsInputTerm                              =  -200814;
DAQmx.Error.InvalidSampModeForPositionMeas                                     =  -200813;
DAQmx.Error.TrigWhenAOHWTimedSinglePtSampMode                                  =  -200812;
DAQmx.Error.DAQmxCantUseStringDueToUnknownChar                                 =  -200811;
DAQmx.Error.DAQmxCantRetrieveStringDueToUnknownChar                            =  -200810;
DAQmx.Error.ClearTEDSNotSupportedOnRT                                          =  -200809;
DAQmx.Error.CfgTEDSNotSupportedOnRT                                            =  -200808;
DAQmx.Error.ProgFilterClkCfgdToDifferentMinPulseWidthBySameTask1PerDev         =  -200807;
DAQmx.Error.ProgFilterClkCfgdToDifferentMinPulseWidthByAnotherTask1PerDev      =  -200806;
DAQmx.Error.NoLastExtCalDateTimeLastExtCalNotDAQmx                             =  -200804;
DAQmx.Error.CannotWriteNotStartedAutoStartFalseNotOnDemandHWTimedSglPt         =  -200803;
DAQmx.Error.CannotWriteNotStartedAutoStartFalseNotOnDemandBufSizeZero          =  -200802;
DAQmx.Error.COInvalidTimingSrcDueToSignal                                      =  -200801;
DAQmx.Error.CIInvalidTimingSrcForSampClkDueToSampTimingType                    =  -200800;
DAQmx.Error.CIInvalidTimingSrcForEventCntDueToSampMode                         =  -200799;
DAQmx.Error.NoChangeDetectOnNonInputDigLineForDev                              =  -200798;
DAQmx.Error.EmptyStringTermNameNotSupported                                    =  -200797;
DAQmx.Error.MemMapEnabledForHWTimedNonBufferedAO                               =  -200796;
DAQmx.Error.DevOnboardMemOverflowDuringHWTimedNonBufferedGen                   =  -200795;
DAQmx.Error.CODAQmxWriteMultipleChans                                          =  -200794;
DAQmx.Error.CantMaintainExistingValueAOSync                                    =  -200793;
DAQmx.Error.MStudioMultiplePhysChansNotSupported                               =  -200792;
DAQmx.Error.CantConfigureTEDSForChan                                           =  -200791;
DAQmx.Error.WriteDataTypeTooSmall                                              =  -200790;
DAQmx.Error.ReadDataTypeTooSmall                                               =  -200789;
DAQmx.Error.MeasuredBridgeOffsetTooHigh                                        =  -200788;
DAQmx.Error.StartTrigConflictWithCOHWTimedSinglePt                             =  -200787;
DAQmx.Error.SampClkRateExtSampClkTimebaseRateMismatch                          =  -200786;
DAQmx.Error.InvalidTimingSrcDueToSampTimingType                                =  -200785;
DAQmx.Error.VirtualTEDSFileNotFound                                            =  -200784;
DAQmx.Error.MStudioNoForwardPolyScaleCoeffs                                    =  -200783;
DAQmx.Error.MStudioNoReversePolyScaleCoeffs                                    =  -200782;
DAQmx.Error.MStudioNoPolyScaleCoeffsUseCalc                                    =  -200781;
DAQmx.Error.MStudioNoForwardPolyScaleCoeffsUseCalc                             =  -200780;
DAQmx.Error.MStudioNoReversePolyScaleCoeffsUseCalc                             =  -200779;
DAQmx.Error.COSampModeSampTimingTypeSampClkConflict                            =  -200778;
DAQmx.Error.DevCannotProduceMinPulseWidth                                      =  -200777;
DAQmx.Error.CannotProduceMinPulseWidthGivenPropertyValues                      =  -200776;
DAQmx.Error.TermCfgdToDifferentMinPulseWidthByAnotherTask                      =  -200775;
DAQmx.Error.TermCfgdToDifferentMinPulseWidthByAnotherProperty                  =  -200774;
DAQmx.Error.DigSyncNotAvailableOnTerm                                          =  -200773;
DAQmx.Error.DigFilterNotAvailableOnTerm                                        =  -200772;
DAQmx.Error.DigFilterEnabledMinPulseWidthNotCfg                                =  -200771;
DAQmx.Error.DigFilterAndSyncBothEnabled                                        =  -200770;
DAQmx.Error.HWTimedSinglePointAOAndDataXferNotProgIO                           =  -200769;
DAQmx.Error.NonBufferedAOAndDataXferNotProgIO                                  =  -200768;
DAQmx.Error.ProgIODataXferForBufferedAO                                        =  -200767;
DAQmx.Error.TEDSLegacyTemplateIDInvalidOrUnsupported                           =  -200766;
DAQmx.Error.TEDSMappingMethodInvalidOrUnsupported                              =  -200765;
DAQmx.Error.TEDSLinearMappingSlopeZero                                         =  -200764;
DAQmx.Error.AIInputBufferSizeNotMultOfXferSize                                 =  -200763;
DAQmx.Error.NoSyncPulseExtSampClkTimebase                                      =  -200762;
DAQmx.Error.NoSyncPulseAnotherTaskRunning                                      =  -200761;
DAQmx.Error.AOMinMaxNotInGainRange                                             =  -200760;
DAQmx.Error.AOMinMaxNotInDACRange                                              =  -200759;
DAQmx.Error.DevOnlySupportsSampClkTimingAO                                     =  -200758;
DAQmx.Error.DevOnlySupportsSampClkTimingAI                                     =  -200757;
DAQmx.Error.TEDSIncompatibleSensorAndMeasType                                  =  -200756;
DAQmx.Error.TEDSMultipleCalTemplatesNotSupported                               =  -200755;
DAQmx.Error.TEDSTemplateParametersNotSupported                                 =  -200754;
DAQmx.Error.ParsingTEDSData                                                    =  -200753;
DAQmx.Error.MultipleActivePhysChansNotSupported                                =  -200752;
DAQmx.Error.NoChansSpecdForChangeDetect                                        =  -200751;
DAQmx.Error.InvalidCalVoltageForGivenGain                                      =  -200750;
DAQmx.Error.InvalidCalGain                                                     =  -200749;
DAQmx.Error.MultipleWritesBetweenSampClks                                      =  -200748;
DAQmx.Error.InvalidAcqTypeForFREQOUT                                           =  -200747;
DAQmx.Error.SuitableTimebaseNotFoundTimeCombo2                                 =  -200746;
DAQmx.Error.SuitableTimebaseNotFoundFrequencyCombo2                            =  -200745;
DAQmx.Error.RefClkRateRefClkSrcMismatch                                        =  -200744;
DAQmx.Error.NoTEDSTerminalBlock                                                =  -200743;
DAQmx.Error.CorruptedTEDSMemory                                                =  -200742;
DAQmx.Error.TEDSNotSupported                                                   =  -200741;
DAQmx.Error.TimingSrcTaskStartedBeforeTimedLoop                                =  -200740;
DAQmx.Error.PropertyNotSupportedForTimingSrc                                   =  -200739;
DAQmx.Error.TimingSrcDoesNotExist                                              =  -200738;
DAQmx.Error.InputBufferSizeNotEqualSampsPerChanForFiniteSampMode               =  -200737;
DAQmx.Error.FREQOUTCannotProduceDesiredFrequency2                              =  -200736;
DAQmx.Error.ExtRefClkRateNotSpecified                                          =  -200735;
DAQmx.Error.DeviceDoesNotSupportDMADataXferForNonBufferedAcq                   =  -200734;
DAQmx.Error.DigFilterMinPulseWidthSetWhenTristateIsFalse                       =  -200733;
DAQmx.Error.DigFilterEnableSetWhenTristateIsFalse                              =  -200732;
DAQmx.Error.NoHWTimingWithOnDemand                                             =  -200731;
DAQmx.Error.CannotDetectChangesWhenTristateIsFalse                             =  -200730;
DAQmx.Error.CannotHandshakeWhenTristateIsFalse                                 =  -200729;
DAQmx.Error.LinesUsedForStaticInputNotForHandshakingControl                    =  -200728;
DAQmx.Error.LinesUsedForHandshakingControlNotForStaticInput                    =  -200727;
DAQmx.Error.LinesUsedForStaticInputNotForHandshakingInput                      =  -200726;
DAQmx.Error.LinesUsedForHandshakingInputNotForStaticInput                      =  -200725;
DAQmx.Error.DifferentDITristateValsForChansInTask                              =  -200724;
DAQmx.Error.TimebaseCalFreqVarianceTooLarge                                    =  -200723;
DAQmx.Error.TimebaseCalFailedToConverge                                        =  -200722;
DAQmx.Error.InadequateResolutionForTimebaseCal                                 =  -200721;
DAQmx.Error.InvalidAOGainCalConst                                              =  -200720;
DAQmx.Error.InvalidAOOffsetCalConst                                            =  -200719;
DAQmx.Error.InvalidAIGainCalConst                                              =  -200718;
DAQmx.Error.InvalidAIOffsetCalConst                                            =  -200717;
DAQmx.Error.DigOutputOverrun                                                   =  -200716;
DAQmx.Error.DigInputOverrun                                                    =  -200715;
DAQmx.Error.AcqStoppedDriverCantXferDataFastEnough                             =  -200714;
DAQmx.Error.ChansCantAppearInSameTask                                          =  -200713;
DAQmx.Error.InputCfgFailedBecauseWatchdogExpired                               =  -200712;
DAQmx.Error.AnalogTrigChanNotExternal                                          =  -200711;
DAQmx.Error.TooManyChansForInternalAIInputSrc                                  =  -200710;
DAQmx.Error.TEDSSensorNotDetected                                              =  -200709;
DAQmx.Error.PrptyGetSpecdActiveItemFailedDueToDifftValues                      =  -200708;
DAQmx.Error.RoutingDestTermPXIClk10InNotInSlot2                                =  -200706;
DAQmx.Error.RoutingDestTermPXIStarXNotInSlot2                                  =  -200705;
DAQmx.Error.RoutingSrcTermPXIStarXNotInSlot2                                   =  -200704;
DAQmx.Error.RoutingSrcTermPXIStarInSlot16AndAbove                              =  -200703;
DAQmx.Error.RoutingDestTermPXIStarInSlot16AndAbove                             =  -200702;
DAQmx.Error.RoutingDestTermPXIStarInSlot2                                      =  -200701;
DAQmx.Error.RoutingSrcTermPXIStarInSlot2                                       =  -200700;
DAQmx.Error.RoutingDestTermPXIChassisNotIdentified                             =  -200699;
DAQmx.Error.RoutingSrcTermPXIChassisNotIdentified                              =  -200698;
DAQmx.Error.FailedToAcquireCalData                                             =  -200697;
DAQmx.Error.BridgeOffsetNullingCalNotSupported                                 =  -200696;
DAQmx.Error.AIMaxNotSpecified                                                  =  -200695;
DAQmx.Error.AIMinNotSpecified                                                  =  -200694;
DAQmx.Error.OddTotalBufferSizeToWrite                                          =  -200693;
DAQmx.Error.OddTotalNumSampsToWrite                                            =  -200692;
DAQmx.Error.BufferWithWaitMode                                                 =  -200691;
DAQmx.Error.BufferWithHWTimedSinglePointSampMode                               =  -200690;
DAQmx.Error.COWritePulseLowTicksNotSupported                                   =  -200689;
DAQmx.Error.COWritePulseHighTicksNotSupported                                  =  -200688;
DAQmx.Error.COWritePulseLowTimeOutOfRange                                      =  -200687;
DAQmx.Error.COWritePulseHighTimeOutOfRange                                     =  -200686;
DAQmx.Error.COWriteFreqOutOfRange                                              =  -200685;
DAQmx.Error.COWriteDutyCycleOutOfRange                                         =  -200684;
DAQmx.Error.InvalidInstallation                                                =  -200683;
DAQmx.Error.RefTrigMasterSessionUnavailable                                    =  -200682;
DAQmx.Error.RouteFailedBecauseWatchdogExpired                                  =  -200681;
DAQmx.Error.DeviceShutDownDueToHighTemp                                        =  -200680;
DAQmx.Error.NoMemMapWhenHWTimedSinglePoint                                     =  -200679;
DAQmx.Error.WriteFailedBecauseWatchdogExpired                                  =  -200678;
DAQmx.Error.DifftInternalAIInputSrcs                                           =  -200677;
DAQmx.Error.DifftAIInputSrcInOneChanGroup                                      =  -200676;
DAQmx.Error.InternalAIInputSrcInMultChanGroups                                 =  -200675;
DAQmx.Error.SwitchOpFailedDueToPrevError                                       =  -200674;
DAQmx.Error.WroteMultiSampsUsingSingleSampWrite                                =  -200673;
DAQmx.Error.MismatchedInputArraySizes                                          =  -200672;
DAQmx.Error.CantExceedRelayDriveLimit                                          =  -200671;
DAQmx.Error.DACRngLowNotEqualToMinusRefVal                                     =  -200670;
DAQmx.Error.CantAllowConnectDACToGnd                                           =  -200669;
DAQmx.Error.WatchdogTimeoutOutOfRangeAndNotSpecialVal                          =  -200668;
DAQmx.Error.NoWatchdogOutputOnPortReservedForInput                             =  -200667;
DAQmx.Error.NoInputOnPortCfgdForWatchdogOutput                                 =  -200666;
DAQmx.Error.WatchdogExpirationStateNotEqualForLinesInPort                      =  -200665;
DAQmx.Error.CannotPerformOpWhenTaskNotReserved                                 =  -200664;
DAQmx.Error.PowerupStateNotSupported                                           =  -200663;
DAQmx.Error.WatchdogTimerNotSupported                                          =  -200662;
DAQmx.Error.OpNotSupportedWhenRefClkSrcNone                                    =  -200661;
DAQmx.Error.SampClkRateUnavailable                                             =  -200660;
DAQmx.Error.PrptyGetSpecdSingleActiveChanFailedDueToDifftVals                  =  -200659;
DAQmx.Error.PrptyGetImpliedActiveChanFailedDueToDifftVals                      =  -200658;
DAQmx.Error.PrptyGetSpecdActiveChanFailedDueToDifftVals                        =  -200657;
DAQmx.Error.NoRegenWhenUsingBrdMem                                             =  -200656;
DAQmx.Error.NonbufferedReadMoreThanSampsPerChan                                =  -200655;
DAQmx.Error.WatchdogExpirationTristateNotSpecdForEntirePort                    =  -200654;
DAQmx.Error.PowerupTristateNotSpecdForEntirePort                               =  -200653;
DAQmx.Error.PowerupStateNotSpecdForEntirePort                                  =  -200652;
DAQmx.Error.CantSetWatchdogExpirationOnDigInChan                               =  -200651;
DAQmx.Error.CantSetPowerupStateOnDigInChan                                     =  -200650;
DAQmx.Error.PhysChanNotInTask                                                  =  -200649;
DAQmx.Error.PhysChanDevNotInTask                                               =  -200648;
DAQmx.Error.DigInputNotSupported                                               =  -200647;
DAQmx.Error.DigFilterIntervalNotEqualForLines                                  =  -200646;
DAQmx.Error.DigFilterIntervalAlreadyCfgd                                       =  -200645;
DAQmx.Error.CantResetExpiredWatchdog                                           =  -200644;
DAQmx.Error.ActiveChanTooManyLinesSpecdWhenGettingPrpty                        =  -200643;
DAQmx.Error.ActiveChanNotSpecdWhenGetting1LinePrpty                            =  -200642;
DAQmx.Error.DigPrptyCannotBeSetPerLine                                         =  -200641;
DAQmx.Error.SendAdvCmpltAfterWaitForTrigInScanlist                             =  -200640;
DAQmx.Error.DisconnectionRequiredInScanlist                                    =  -200639;
DAQmx.Error.TwoWaitForTrigsAfterConnectionInScanlist                           =  -200638;
DAQmx.Error.ActionSeparatorRequiredAfterBreakingConnectionInScanlist           =  -200637;
DAQmx.Error.ConnectionInScanlistMustWaitForTrig                                =  -200636;
DAQmx.Error.ActionNotSupportedTaskNotWatchdog                                  =  -200635;
DAQmx.Error.WfmNameSameAsScriptName                                            =  -200634;
DAQmx.Error.ScriptNameSameAsWfmName                                            =  -200633;
DAQmx.Error.DSFStopClock                                                       =  -200632;
DAQmx.Error.DSFReadyForStartClock                                              =  -200631;
DAQmx.Error.WriteOffsetNotMultOfIncr                                           =  -200630;
DAQmx.Error.DifferentPrptyValsNotSupportedOnDev                                =  -200629;
DAQmx.Error.RefAndPauseTrigConfigured                                          =  -200628;
DAQmx.Error.FailedToEnableHighSpeedInputClock                                  =  -200627;
DAQmx.Error.EmptyPhysChanInPowerUpStatesArray                                  =  -200626;
DAQmx.Error.ActivePhysChanTooManyLinesSpecdWhenGettingPrpty                    =  -200625;
DAQmx.Error.ActivePhysChanNotSpecdWhenGetting1LinePrpty                        =  -200624;
DAQmx.Error.PXIDevTempCausedShutDown                                           =  -200623;
DAQmx.Error.InvalidNumSampsToWrite                                             =  -200622;
DAQmx.Error.OutputFIFOUnderflow2                                               =  -200621;
DAQmx.Error.RepeatedAIPhysicalChan                                             =  -200620;
DAQmx.Error.MultScanOpsInOneChassis                                            =  -200619;
DAQmx.Error.InvalidAIChanOrder                                                 =  -200618;
DAQmx.Error.ReversePowerProtectionActivated                                    =  -200617;
DAQmx.Error.InvalidAsynOpHandle                                                =  -200616;
DAQmx.Error.FailedToEnableHighSpeedOutput                                      =  -200615;
DAQmx.Error.CannotReadPastEndOfRecord                                          =  -200614;
DAQmx.Error.AcqStoppedToPreventInputBufferOverwriteOneDataXferMech             =  -200613;
DAQmx.Error.ZeroBasedChanIndexInvalid                                          =  -200612;
DAQmx.Error.NoChansOfGivenTypeInTask                                           =  -200611;
DAQmx.Error.SampClkSrcInvalidForOutputValidForInput                            =  -200610;
DAQmx.Error.OutputBufSizeTooSmallToStartGen                                    =  -200609;
DAQmx.Error.InputBufSizeTooSmallToStartAcq                                     =  -200608;
DAQmx.Error.ExportTwoSignalsOnSameTerminal                                     =  -200607;
DAQmx.Error.ChanIndexInvalid                                                   =  -200606;
DAQmx.Error.RangeSyntaxNumberTooBig                                            =  -200605;
DAQmx.Error.NULLPtr                                                            =  -200604;
DAQmx.Error.ScaledMinEqualMax                                                  =  -200603;
DAQmx.Error.PreScaledMinEqualMax                                               =  -200602;
DAQmx.Error.PropertyNotSupportedForScaleType                                   =  -200601;
DAQmx.Error.ChannelNameGenerationNumberTooBig                                  =  -200600;
DAQmx.Error.RepeatedNumberInScaledValues                                       =  -200599;
DAQmx.Error.RepeatedNumberInPreScaledValues                                    =  -200598;
DAQmx.Error.LinesAlreadyReservedForOutput                                      =  -200597;
DAQmx.Error.SwitchOperationChansSpanMultipleDevsInList                         =  -200596;
DAQmx.Error.InvalidIDInListAtBeginningOfSwitchOperation                        =  -200595;
DAQmx.Error.MStudioInvalidPolyDirection                                        =  -200594;
DAQmx.Error.MStudioPropertyGetWhileTaskNotVerified                             =  -200593;
DAQmx.Error.RangeWithTooManyObjects                                            =  -200592;
DAQmx.Error.CppDotNetAPINegativeBufferSize                                     =  -200591;
DAQmx.Error.CppCantRemoveInvalidEventHandler                                   =  -200590;
DAQmx.Error.CppCantRemoveEventHandlerTwice                                     =  -200589;
DAQmx.Error.CppCantRemoveOtherObjectsEventHandler                              =  -200588;
DAQmx.Error.DigLinesReservedOrUnavailable                                      =  -200587;
DAQmx.Error.DSFFailedToResetStream                                             =  -200586;
DAQmx.Error.DSFReadyForOutputNotAsserted                                       =  -200585;
DAQmx.Error.SampToWritePerChanNotMultipleOfIncr                                =  -200584;
DAQmx.Error.AOPropertiesCauseVoltageBelowMin                                   =  -200583;
DAQmx.Error.AOPropertiesCauseVoltageOverMax                                    =  -200582;
DAQmx.Error.PropertyNotSupportedWhenRefClkSrcNone                              =  -200581;
DAQmx.Error.AIMaxTooSmall                                                      =  -200580;
DAQmx.Error.AIMaxTooLarge                                                      =  -200579;
DAQmx.Error.AIMinTooSmall                                                      =  -200578;
DAQmx.Error.AIMinTooLarge                                                      =  -200577;
DAQmx.Error.BuiltInCJCSrcNotSupported                                          =  -200576;
DAQmx.Error.TooManyPostTrigSampsPerChan                                        =  -200575;
DAQmx.Error.TrigLineNotFoundSingleDevRoute                                     =  -200574;
DAQmx.Error.DifferentInternalAIInputSources                                    =  -200573;
DAQmx.Error.DifferentAIInputSrcInOneChanGroup                                  =  -200572;
DAQmx.Error.InternalAIInputSrcInMultipleChanGroups                             =  -200571;
DAQmx.Error.CAPIChanIndexInvalid                                               =  -200570;
DAQmx.Error.CollectionDoesNotMatchChanType                                     =  -200569;
DAQmx.Error.OutputCantStartChangedRegenerationMode                             =  -200568;
DAQmx.Error.OutputCantStartChangedBufferSize                                   =  -200567;
DAQmx.Error.ChanSizeTooBigForU32PortWrite                                      =  -200566;
DAQmx.Error.ChanSizeTooBigForU8PortWrite                                       =  -200565;
DAQmx.Error.ChanSizeTooBigForU32PortRead                                       =  -200564;
DAQmx.Error.ChanSizeTooBigForU8PortRead                                        =  -200563;
DAQmx.Error.InvalidDigDataWrite                                                =  -200562;
DAQmx.Error.InvalidAODataWrite                                                 =  -200561;
DAQmx.Error.WaitUntilDoneDoesNotIndicateDone                                   =  -200560;
DAQmx.Error.MultiChanTypesInTask                                               =  -200559;
DAQmx.Error.MultiDevsInTask                                                    =  -200558;
DAQmx.Error.CannotSetPropertyWhenTaskRunning                                   =  -200557;
DAQmx.Error.CannotGetPropertyWhenTaskNotCommittedOrRunning                     =  -200556;
DAQmx.Error.LeadingUnderscoreInString                                          =  -200555;
DAQmx.Error.TrailingSpaceInString                                              =  -200554;
DAQmx.Error.LeadingSpaceInString                                               =  -200553;
DAQmx.Error.InvalidCharInString                                                =  -200552;
DAQmx.Error.DLLBecameUnlocked                                                  =  -200551;
DAQmx.Error.DLLLock                                                            =  -200550;
DAQmx.Error.SelfCalConstsInvalid                                               =  -200549;
DAQmx.Error.InvalidTrigCouplingExceptForExtTrigChan                            =  -200548;
DAQmx.Error.WriteFailsBufferSizeAutoConfigured                                 =  -200547;
DAQmx.Error.ExtCalAdjustExtRefVoltageFailed                                    =  -200546;
DAQmx.Error.SelfCalFailedExtNoiseOrRefVoltageOutOfCal                          =  -200545;
DAQmx.Error.ExtCalTemperatureNotDAQmx                                          =  -200544;
DAQmx.Error.ExtCalDateTimeNotDAQmx                                             =  -200543;
DAQmx.Error.SelfCalTemperatureNotDAQmx                                         =  -200542;
DAQmx.Error.SelfCalDateTimeNotDAQmx                                            =  -200541;
DAQmx.Error.DACRefValNotSet                                                    =  -200540;
DAQmx.Error.AnalogMultiSampWriteNotSupported                                   =  -200539;
DAQmx.Error.InvalidActionInControlTask                                         =  -200538;
DAQmx.Error.PolyCoeffsInconsistent                                             =  -200537;
DAQmx.Error.SensorValTooLow                                                    =  -200536;
DAQmx.Error.SensorValTooHigh                                                   =  -200535;
DAQmx.Error.WaveformNameTooLong                                                =  -200534;
DAQmx.Error.IdentifierTooLongInScript                                          =  -200533;
DAQmx.Error.UnexpectedIDFollowingSwitchChanName                                =  -200532;
DAQmx.Error.RelayNameNotSpecifiedInList                                        =  -200531;
DAQmx.Error.UnexpectedIDFollowingRelayNameInList                               =  -200530;
DAQmx.Error.UnexpectedIDFollowingSwitchOpInList                                =  -200529;
DAQmx.Error.InvalidLineGrouping                                                =  -200528;
DAQmx.Error.CtrMinMax                                                          =  -200527;
DAQmx.Error.WriteChanTypeMismatch                                              =  -200526;
DAQmx.Error.ReadChanTypeMismatch                                               =  -200525;
DAQmx.Error.WriteNumChansMismatch                                              =  -200524;
DAQmx.Error.OneChanReadForMultiChanTask                                        =  -200523;
DAQmx.Error.CannotSelfCalDuringExtCal                                          =  -200522;
DAQmx.Error.MeasCalAdjustOscillatorPhaseDAC                                    =  -200521;
DAQmx.Error.InvalidCalConstCalADCAdjustment                                    =  -200520;
DAQmx.Error.InvalidCalConstOscillatorFreqDACValue                              =  -200519;
DAQmx.Error.InvalidCalConstOscillatorPhaseDACValue                             =  -200518;
DAQmx.Error.InvalidCalConstOffsetDACValue                                      =  -200517;
DAQmx.Error.InvalidCalConstGainDACValue                                        =  -200516;
DAQmx.Error.InvalidNumCalADCReadsToAverage                                     =  -200515;
DAQmx.Error.InvalidCfgCalAdjustDirectPathOutputImpedance                       =  -200514;
DAQmx.Error.InvalidCfgCalAdjustMainPathOutputImpedance                         =  -200513;
DAQmx.Error.InvalidCfgCalAdjustMainPathPostAmpGainAndOffset                    =  -200512;
DAQmx.Error.InvalidCfgCalAdjustMainPathPreAmpGain                              =  -200511;
DAQmx.Error.InvalidCfgCalAdjustMainPreAmpOffset                                =  -200510;
DAQmx.Error.MeasCalAdjustCalADC                                                =  -200509;
DAQmx.Error.MeasCalAdjustOscillatorFrequency                                   =  -200508;
DAQmx.Error.MeasCalAdjustDirectPathOutputImpedance                             =  -200507;
DAQmx.Error.MeasCalAdjustMainPathOutputImpedance                               =  -200506;
DAQmx.Error.MeasCalAdjustDirectPathGain                                        =  -200505;
DAQmx.Error.MeasCalAdjustMainPathPostAmpGainAndOffset                          =  -200504;
DAQmx.Error.MeasCalAdjustMainPathPreAmpGain                                    =  -200503;
DAQmx.Error.MeasCalAdjustMainPathPreAmpOffset                                  =  -200502;
DAQmx.Error.InvalidDateTimeInEEPROM                                            =  -200501;
DAQmx.Error.UnableToLocateErrorResources                                       =  -200500;
DAQmx.Error.DotNetAPINotUnsigned32BitNumber                                    =  -200499;
DAQmx.Error.InvalidRangeOfObjectsSyntaxInString                                =  -200498;
DAQmx.Error.AttemptToEnableLineNotPreviouslyDisabled                           =  -200497;
DAQmx.Error.InvalidCharInPattern                                               =  -200496;
DAQmx.Error.IntermediateBufferFull                                             =  -200495;
DAQmx.Error.LoadTaskFailsBecauseNoTimingOnDev                                  =  -200494;
DAQmx.Error.CAPIReservedParamNotNULLNorEmpty                                   =  -200493;
DAQmx.Error.CAPIReservedParamNotNULL                                           =  -200492;
DAQmx.Error.CAPIReservedParamNotZero                                           =  -200491;
DAQmx.Error.SampleValueOutOfRange                                              =  -200490;
DAQmx.Error.ChanAlreadyInTask                                                  =  -200489;
DAQmx.Error.VirtualChanDoesNotExist                                            =  -200488;
DAQmx.Error.ChanNotInTask                                                      =  -200486;
DAQmx.Error.TaskNotInDataNeighborhood                                          =  -200485;
DAQmx.Error.CantSaveTaskWithoutReplace                                         =  -200484;
DAQmx.Error.CantSaveChanWithoutReplace                                         =  -200483;
DAQmx.Error.DevNotInTask                                                       =  -200482;
DAQmx.Error.DevAlreadyInTask                                                   =  -200481;
DAQmx.Error.CanNotPerformOpWhileTaskRunning                                    =  -200479;
DAQmx.Error.CanNotPerformOpWhenNoChansInTask                                   =  -200478;
DAQmx.Error.CanNotPerformOpWhenNoDevInTask                                     =  -200477;
DAQmx.Error.CannotPerformOpWhenTaskNotRunning                                  =  -200475;
DAQmx.Error.OperationTimedOut                                                  =  -200474;
DAQmx.Error.CannotReadWhenAutoStartFalseAndTaskNotRunningOrCommitted           =  -200473;
DAQmx.Error.CannotWriteWhenAutoStartFalseAndTaskNotRunningOrCommitted          =  -200472;
DAQmx.Error.TaskVersionNew                                                     =  -200470;
DAQmx.Error.ChanVersionNew                                                     =  -200469;
DAQmx.Error.EmptyString                                                        =  -200467;
DAQmx.Error.ChannelSizeTooBigForPortReadType                                   =  -200466;
DAQmx.Error.ChannelSizeTooBigForPortWriteType                                  =  -200465;
DAQmx.Error.ExpectedNumberOfChannelsVerificationFailed                         =  -200464;
DAQmx.Error.NumLinesMismatchInReadOrWrite                                      =  -200463;
DAQmx.Error.OutputBufferEmpty                                                  =  -200462;
DAQmx.Error.InvalidChanName                                                    =  -200461;
DAQmx.Error.ReadNoInputChansInTask                                             =  -200460;
DAQmx.Error.WriteNoOutputChansInTask                                           =  -200459;
DAQmx.Error.PropertyNotSupportedNotInputTask                                   =  -200457;
DAQmx.Error.PropertyNotSupportedNotOutputTask                                  =  -200456;
DAQmx.Error.GetPropertyNotInputBufferedTask                                    =  -200455;
DAQmx.Error.GetPropertyNotOutputBufferedTask                                   =  -200454;
DAQmx.Error.InvalidTimeoutVal                                                  =  -200453;
DAQmx.Error.AttributeNotSupportedInTaskContext                                 =  -200452;
DAQmx.Error.AttributeNotQueryableUnlessTaskIsCommitted                         =  -200451;
DAQmx.Error.AttributeNotSettableWhenTaskIsRunning                              =  -200450;
DAQmx.Error.DACRngLowNotMinusRefValNorZero                                     =  -200449;
DAQmx.Error.DACRngHighNotEqualRefVal                                           =  -200448;
DAQmx.Error.UnitsNotFromCustomScale                                            =  -200447;
DAQmx.Error.InvalidVoltageReadingDuringExtCal                                  =  -200446;
DAQmx.Error.CalFunctionNotSupported                                            =  -200445;
DAQmx.Error.InvalidPhysicalChanForCal                                          =  -200444;
DAQmx.Error.ExtCalNotComplete                                                  =  -200443;
DAQmx.Error.CantSyncToExtStimulusFreqDuringCal                                 =  -200442;
DAQmx.Error.UnableToDetectExtStimulusFreqDuringCal                             =  -200441;
DAQmx.Error.InvalidCloseAction                                                 =  -200440;
DAQmx.Error.ExtCalFunctionOutsideExtCalSession                                 =  -200439;
DAQmx.Error.InvalidCalArea                                                     =  -200438;
DAQmx.Error.ExtCalConstsInvalid                                                =  -200437;
DAQmx.Error.StartTrigDelayWithExtSampClk                                       =  -200436;
DAQmx.Error.DelayFromSampClkWithExtConv                                        =  -200435;
DAQmx.Error.FewerThan2PreScaledVals                                            =  -200434;
DAQmx.Error.FewerThan2ScaledValues                                             =  -200433;
DAQmx.Error.PhysChanOutputType                                                 =  -200432;
DAQmx.Error.PhysChanMeasType                                                   =  -200431;
DAQmx.Error.InvalidPhysChanType                                                =  -200430;
DAQmx.Error.LabVIEWEmptyTaskOrChans                                            =  -200429;
DAQmx.Error.LabVIEWInvalidTaskOrChans                                          =  -200428;
DAQmx.Error.InvalidRefClkRate                                                  =  -200427;
DAQmx.Error.InvalidExtTrigImpedance                                            =  -200426;
DAQmx.Error.HystTrigLevelAIMax                                                 =  -200425;
DAQmx.Error.LineNumIncompatibleWithVideoSignalFormat                           =  -200424;
DAQmx.Error.TrigWindowAIMinAIMaxCombo                                          =  -200423;
DAQmx.Error.TrigAIMinAIMax                                                     =  -200422;
DAQmx.Error.HystTrigLevelAIMin                                                 =  -200421;
DAQmx.Error.InvalidSampRateConsiderRIS                                         =  -200420;
DAQmx.Error.InvalidReadPosDuringRIS                                            =  -200419;
DAQmx.Error.ImmedTrigDuringRISMode                                             =  -200418;
DAQmx.Error.TDCNotEnabledDuringRISMode                                         =  -200417;
DAQmx.Error.MultiRecWithRIS                                                    =  -200416;
DAQmx.Error.InvalidRefClkSrc                                                   =  -200415;
DAQmx.Error.InvalidSampClkSrc                                                  =  -200414;
DAQmx.Error.InsufficientOnBoardMemForNumRecsAndSamps                           =  -200413;
DAQmx.Error.InvalidAIAttenuation                                               =  -200412;
DAQmx.Error.ACCouplingNotAllowedWith50OhmImpedance                             =  -200411;
DAQmx.Error.InvalidRecordNum                                                   =  -200410;
DAQmx.Error.ZeroSlopeLinearScale                                               =  -200409;
DAQmx.Error.ZeroReversePolyScaleCoeffs                                         =  -200408;
DAQmx.Error.ZeroForwardPolyScaleCoeffs                                         =  -200407;
DAQmx.Error.NoReversePolyScaleCoeffs                                           =  -200406;
DAQmx.Error.NoForwardPolyScaleCoeffs                                           =  -200405;
DAQmx.Error.NoPolyScaleCoeffs                                                  =  -200404;
DAQmx.Error.ReversePolyOrderLessThanNumPtsToCompute                            =  -200403;
DAQmx.Error.ReversePolyOrderNotPositive                                        =  -200402;
DAQmx.Error.NumPtsToComputeNotPositive                                         =  -200401;
DAQmx.Error.WaveformLengthNotMultipleOfIncr                                    =  -200400;
DAQmx.Error.CAPINoExtendedErrorInfoAvailable                                   =  -200399;
DAQmx.Error.CVIFunctionNotFoundInDAQmxDLL                                      =  -200398;
DAQmx.Error.CVIFailedToLoadDAQmxDLL                                            =  -200397;
DAQmx.Error.NoCommonTrigLineForImmedRoute                                      =  -200396;
DAQmx.Error.NoCommonTrigLineForTaskRoute                                       =  -200395;
DAQmx.Error.F64PrptyValNotUnsignedInt                                          =  -200394;
DAQmx.Error.RegisterNotWritable                                                =  -200393;
DAQmx.Error.InvalidOutputVoltageAtSampClkRate                                  =  -200392;
DAQmx.Error.StrobePhaseShiftDCMBecameUnlocked                                  =  -200391;
DAQmx.Error.DrivePhaseShiftDCMBecameUnlocked                                   =  -200390;
DAQmx.Error.ClkOutPhaseShiftDCMBecameUnlocked                                  =  -200389;
DAQmx.Error.OutputBoardClkDCMBecameUnlocked                                    =  -200388;
DAQmx.Error.InputBoardClkDCMBecameUnlocked                                     =  -200387;
DAQmx.Error.InternalClkDCMBecameUnlocked                                       =  -200386;
DAQmx.Error.DCMLock                                                            =  -200385;
DAQmx.Error.DataLineReservedForDynamicOutput                                   =  -200384;
DAQmx.Error.InvalidRefClkSrcGivenSampClkSrc                                    =  -200383;
DAQmx.Error.NoPatternMatcherAvailable                                          =  -200382;
DAQmx.Error.InvalidDelaySampRateBelowPhaseShiftDCMThresh                       =  -200381;
DAQmx.Error.StrainGageCalibration                                              =  -200380;
DAQmx.Error.InvalidExtClockFreqAndDivCombo                                     =  -200379;
DAQmx.Error.CustomScaleDoesNotExist                                            =  -200378;
DAQmx.Error.OnlyFrontEndChanOpsDuringScan                                      =  -200377;
DAQmx.Error.InvalidOptionForDigitalPortChannel                                 =  -200376;
DAQmx.Error.UnsupportedSignalTypeExportSignal                                  =  -200375;
DAQmx.Error.InvalidSignalTypeExportSignal                                      =  -200374;
DAQmx.Error.UnsupportedTrigTypeSendsSWTrig                                     =  -200373;
DAQmx.Error.InvalidTrigTypeSendsSWTrig                                         =  -200372;
DAQmx.Error.RepeatedPhysicalChan                                               =  -200371;
DAQmx.Error.ResourcesInUseForRouteInTask                                       =  -200370;
DAQmx.Error.ResourcesInUseForRoute                                             =  -200369;
DAQmx.Error.RouteNotSupportedByHW                                              =  -200368;
DAQmx.Error.ResourcesInUseForExportSignalPolarity                              =  -200367;
DAQmx.Error.ResourcesInUseForInversionInTask                                   =  -200366;
DAQmx.Error.ResourcesInUseForInversion                                         =  -200365;
DAQmx.Error.ExportSignalPolarityNotSupportedByHW                               =  -200364;
DAQmx.Error.InversionNotSupportedByHW                                          =  -200363;
DAQmx.Error.OverloadedChansExistNotRead                                        =  -200362;
DAQmx.Error.InputFIFOOverflow2                                                 =  -200361;
DAQmx.Error.CJCChanNotSpecd                                                    =  -200360;
DAQmx.Error.CtrExportSignalNotPossible                                         =  -200359;
DAQmx.Error.RefTrigWhenContinuous                                              =  -200358;
DAQmx.Error.IncompatibleSensorOutputAndDeviceInputRanges                       =  -200357;
DAQmx.Error.CustomScaleNameUsed                                                =  -200356;
DAQmx.Error.PropertyValNotSupportedByHW                                        =  -200355;
DAQmx.Error.PropertyValNotValidTermName                                        =  -200354;
DAQmx.Error.ResourcesInUseForProperty                                          =  -200353;
DAQmx.Error.CJCChanAlreadyUsed                                                 =  -200352;
DAQmx.Error.ForwardPolynomialCoefNotSpecd                                      =  -200351;
DAQmx.Error.TableScaleNumPreScaledAndScaledValsNotEqual                        =  -200350;
DAQmx.Error.TableScalePreScaledValsNotSpecd                                    =  -200349;
DAQmx.Error.TableScaleScaledValsNotSpecd                                       =  -200348;
DAQmx.Error.IntermediateBufferSizeNotMultipleOfIncr                            =  -200347;
DAQmx.Error.EventPulseWidthOutOfRange                                          =  -200346;
DAQmx.Error.EventDelayOutOfRange                                               =  -200345;
DAQmx.Error.SampPerChanNotMultipleOfIncr                                       =  -200344;
DAQmx.Error.CannotCalculateNumSampsTaskNotStarted                              =  -200343;
DAQmx.Error.ScriptNotInMem                                                     =  -200342;
DAQmx.Error.OnboardMemTooSmall                                                 =  -200341;
DAQmx.Error.ReadAllAvailableDataWithoutBuffer                                  =  -200340;
DAQmx.Error.PulseActiveAtStart                                                 =  -200339;
DAQmx.Error.CalTempNotSupported                                                =  -200338;
DAQmx.Error.DelayFromSampClkTooLong                                            =  -200337;
DAQmx.Error.DelayFromSampClkTooShort                                           =  -200336;
DAQmx.Error.AIConvRateTooHigh                                                  =  -200335;
DAQmx.Error.DelayFromStartTrigTooLong                                          =  -200334;
DAQmx.Error.DelayFromStartTrigTooShort                                         =  -200333;
DAQmx.Error.SampRateTooHigh                                                    =  -200332;
DAQmx.Error.SampRateTooLow                                                     =  -200331;
DAQmx.Error.PFI0UsedForAnalogAndDigitalSrc                                     =  -200330;
DAQmx.Error.PrimingCfgFIFO                                                     =  -200329;
DAQmx.Error.CannotOpenTopologyCfgFile                                          =  -200328;
DAQmx.Error.InvalidDTInsideWfmDataType                                         =  -200327;
DAQmx.Error.RouteSrcAndDestSame                                                =  -200326;
DAQmx.Error.ReversePolynomialCoefNotSpecd                                      =  -200325;
DAQmx.Error.DevAbsentOrUnavailable                                             =  -200324;
DAQmx.Error.NoAdvTrigForMultiDevScan                                           =  -200323;
DAQmx.Error.InterruptsInsufficientDataXferMech                                 =  -200322;
DAQmx.Error.InvalidAttentuationBasedOnMinMax                                   =  -200321;
DAQmx.Error.CabledModuleCannotRouteSSH                                         =  -200320;
DAQmx.Error.CabledModuleCannotRouteConvClk                                     =  -200319;
DAQmx.Error.InvalidExcitValForScaling                                          =  -200318;
DAQmx.Error.NoDevMemForScript                                                  =  -200317;
DAQmx.Error.ScriptDataUnderflow                                                =  -200316;
DAQmx.Error.NoDevMemForWaveform                                                =  -200315;
DAQmx.Error.StreamDCMBecameUnlocked                                            =  -200314;
DAQmx.Error.StreamDCMLock                                                      =  -200313;
DAQmx.Error.WaveformNotInMem                                                   =  -200312;
DAQmx.Error.WaveformWriteOutOfBounds                                           =  -200311;
DAQmx.Error.WaveformPreviouslyAllocated                                        =  -200310;
DAQmx.Error.SampClkTbMasterTbDivNotAppropriateForSampTbSrc                     =  -200309;
DAQmx.Error.SampTbRateSampTbSrcMismatch                                        =  -200308;
DAQmx.Error.MasterTbRateMasterTbSrcMismatch                                    =  -200307;
DAQmx.Error.SampsPerChanTooBig                                                 =  -200306;
DAQmx.Error.FinitePulseTrainNotPossible                                        =  -200305;
DAQmx.Error.ExtMasterTimebaseRateNotSpecified                                  =  -200304;
DAQmx.Error.ExtSampClkSrcNotSpecified                                          =  -200303;
DAQmx.Error.InputSignalSlowerThanMeasTime                                      =  -200302;
DAQmx.Error.CannotUpdatePulseGenProperty                                       =  -200301;
DAQmx.Error.InvalidTimingType                                                  =  -200300;
DAQmx.Error.PropertyUnavailWhenUsingOnboardMemory                              =  -200297;
DAQmx.Error.CannotWriteAfterStartWithOnboardMemory                             =  -200295;
DAQmx.Error.NotEnoughSampsWrittenForInitialXferRqstCondition                   =  -200294;
DAQmx.Error.NoMoreSpace                                                        =  -200293;
DAQmx.Error.SamplesCanNotYetBeWritten                                          =  -200292;
DAQmx.Error.GenStoppedToPreventIntermediateBufferRegenOfOldSamples             =  -200291;
DAQmx.Error.GenStoppedToPreventRegenOfOldSamples                               =  -200290;
DAQmx.Error.SamplesNoLongerWriteable                                           =  -200289;
DAQmx.Error.SamplesWillNeverBeGenerated                                        =  -200288;
DAQmx.Error.NegativeWriteSampleNumber                                          =  -200287;
DAQmx.Error.NoAcqStarted                                                       =  -200286;
DAQmx.Error.SamplesNotYetAvailable                                             =  -200284;
DAQmx.Error.AcqStoppedToPreventIntermediateBufferOverflow                      =  -200283;
DAQmx.Error.NoRefTrigConfigured                                                =  -200282;
DAQmx.Error.CannotReadRelativeToRefTrigUntilDone                               =  -200281;
DAQmx.Error.SamplesNoLongerAvailable                                           =  -200279;
DAQmx.Error.SamplesWillNeverBeAvailable                                        =  -200278;
DAQmx.Error.NegativeReadSampleNumber                                           =  -200277;
DAQmx.Error.ExternalSampClkAndRefClkThruSameTerm                               =  -200276;
DAQmx.Error.ExtSampClkRateTooLowForClkIn                                       =  -200275;
DAQmx.Error.ExtSampClkRateTooHighForBackplane                                  =  -200274;
DAQmx.Error.SampClkRateAndDivCombo                                             =  -200273;
DAQmx.Error.SampClkRateTooLowForDivDown                                        =  -200272;
DAQmx.Error.ProductOfAOMinAndGainTooSmall                                      =  -200271;
DAQmx.Error.InterpolationRateNotPossible                                       =  -200270;
DAQmx.Error.OffsetTooLarge                                                     =  -200269;
DAQmx.Error.OffsetTooSmall                                                     =  -200268;
DAQmx.Error.ProductOfAOMaxAndGainTooLarge                                      =  -200267;
DAQmx.Error.MinAndMaxNotSymmetric                                              =  -200266;
DAQmx.Error.InvalidAnalogTrigSrc                                               =  -200265;
DAQmx.Error.TooManyChansForAnalogRefTrig                                       =  -200264;
DAQmx.Error.TooManyChansForAnalogPauseTrig                                     =  -200263;
DAQmx.Error.TrigWhenOnDemandSampTiming                                         =  -200262;
DAQmx.Error.InconsistentAnalogTrigSettings                                     =  -200261;
DAQmx.Error.MemMapDataXferModeSampTimingCombo                                  =  -200260;
DAQmx.Error.InvalidJumperedAttr                                                =  -200259;
DAQmx.Error.InvalidGainBasedOnMinMax                                           =  -200258;
DAQmx.Error.InconsistentExcit                                                  =  -200257;
DAQmx.Error.TopologyNotSupportedByCfgTermBlock                                 =  -200256;
DAQmx.Error.BuiltInTempSensorNotSupported                                      =  -200255;
DAQmx.Error.InvalidTerm                                                        =  -200254;
DAQmx.Error.CannotTristateTerm                                                 =  -200253;
DAQmx.Error.CannotTristateBusyTerm                                             =  -200252;
DAQmx.Error.NoDMAChansAvailable                                                =  -200251;
DAQmx.Error.InvalidWaveformLengthWithinLoopInScript                            =  -200250;
DAQmx.Error.InvalidSubsetLengthWithinLoopInScript                              =  -200249;
DAQmx.Error.MarkerPosInvalidForLoopInScript                                    =  -200248;
DAQmx.Error.IntegerExpectedInScript                                            =  -200247;
DAQmx.Error.PLLBecameUnlocked                                                  =  -200246;
DAQmx.Error.PLLLock                                                            =  -200245;
DAQmx.Error.DDCClkOutDCMBecameUnlocked                                         =  -200244;
DAQmx.Error.DDCClkOutDCMLock                                                   =  -200243;
DAQmx.Error.ClkDoublerDCMBecameUnlocked                                        =  -200242;
DAQmx.Error.ClkDoublerDCMLock                                                  =  -200241;
DAQmx.Error.SampClkDCMBecameUnlocked                                           =  -200240;
DAQmx.Error.SampClkDCMLock                                                     =  -200239;
DAQmx.Error.SampClkTimebaseDCMBecameUnlocked                                   =  -200238;
DAQmx.Error.SampClkTimebaseDCMLock                                             =  -200237;
DAQmx.Error.AttrCannotBeReset                                                  =  -200236;
DAQmx.Error.ExplanationNotFound                                                =  -200235;
DAQmx.Error.WriteBufferTooSmall                                                =  -200234;
DAQmx.Error.SpecifiedAttrNotValid                                              =  -200233;
DAQmx.Error.AttrCannotBeRead                                                   =  -200232;
DAQmx.Error.AttrCannotBeSet                                                    =  -200231;
DAQmx.Error.NULLPtrForC_Api                                                    =  -200230;
DAQmx.Error.ReadBufferTooSmall                                                 =  -200229;
DAQmx.Error.BufferTooSmallForString                                            =  -200228;
DAQmx.Error.NoAvailTrigLinesOnDevice                                           =  -200227;
DAQmx.Error.TrigBusLineNotAvail                                                =  -200226;
DAQmx.Error.CouldNotReserveRequestedTrigLine                                   =  -200225;
DAQmx.Error.TrigLineNotFound                                                   =  -200224;
DAQmx.Error.SCXI1126ThreshHystCombination                                      =  -200223;
DAQmx.Error.AcqStoppedToPreventInputBufferOverwrite                            =  -200222;
DAQmx.Error.TimeoutExceeded                                                    =  -200221;
DAQmx.Error.InvalidDeviceID                                                    =  -200220;
DAQmx.Error.InvalidAOChanOrder                                                 =  -200219;
DAQmx.Error.SampleTimingTypeAndDataXferMode                                    =  -200218;
DAQmx.Error.BufferWithOnDemandSampTiming                                       =  -200217;
DAQmx.Error.BufferAndDataXferMode                                              =  -200216;
DAQmx.Error.MemMapAndBuffer                                                    =  -200215;
DAQmx.Error.NoAnalogTrigHW                                                     =  -200214;
DAQmx.Error.TooManyPretrigPlusMinPostTrigSamps                                 =  -200213;
DAQmx.Error.InconsistentUnitsSpecified                                         =  -200212;
DAQmx.Error.MultipleRelaysForSingleRelayOp                                     =  -200211;
DAQmx.Error.MultipleDevIDsPerChassisSpecifiedInList                            =  -200210;
DAQmx.Error.DuplicateDevIDInList                                               =  -200209;
DAQmx.Error.InvalidRangeStatementCharInList                                    =  -200208;
DAQmx.Error.InvalidDeviceIDInList                                              =  -200207;
DAQmx.Error.TriggerPolarityConflict                                            =  -200206;
DAQmx.Error.CannotScanWithCurrentTopology                                      =  -200205;
DAQmx.Error.UnexpectedIdentifierInFullySpecifiedPathInList                     =  -200204;
DAQmx.Error.SwitchCannotDriveMultipleTrigLines                                 =  -200203;
DAQmx.Error.InvalidRelayName                                                   =  -200202;
DAQmx.Error.SwitchScanlistTooBig                                               =  -200201;
DAQmx.Error.SwitchChanInUse                                                    =  -200200;
DAQmx.Error.SwitchNotResetBeforeScan                                           =  -200199;
DAQmx.Error.InvalidTopology                                                    =  -200198;
DAQmx.Error.AttrNotSupported                                                   =  -200197;
DAQmx.Error.UnexpectedEndOfActionsInList                                       =  -200196;
DAQmx.Error.PowerLimitExceeded                                                 =  -200195;
DAQmx.Error.HWUnexpectedlyPoweredOffAndOn                                      =  -200194;
DAQmx.Error.SwitchOperationNotSupported                                        =  -200193;
DAQmx.Error.OnlyContinuousScanSupported                                        =  -200192;
DAQmx.Error.SwitchDifferentTopologyWhenScanning                                =  -200191;
DAQmx.Error.DisconnectPathNotSameAsExistingPath                                =  -200190;
DAQmx.Error.ConnectionNotPermittedOnChanReservedForRouting                     =  -200189;
DAQmx.Error.CannotConnectSrcChans                                              =  -200188;
DAQmx.Error.CannotConnectChannelToItself                                       =  -200187;
DAQmx.Error.ChannelNotReservedForRouting                                       =  -200186;
DAQmx.Error.CannotConnectChansDirectly                                         =  -200185;
DAQmx.Error.ChansAlreadyConnected                                              =  -200184;
DAQmx.Error.ChanDuplicatedInPath                                               =  -200183;
DAQmx.Error.NoPathToDisconnect                                                 =  -200182;
DAQmx.Error.InvalidSwitchChan                                                  =  -200181;
DAQmx.Error.NoPathAvailableBetween2SwitchChans                                 =  -200180;
DAQmx.Error.ExplicitConnectionExists                                           =  -200179;
DAQmx.Error.SwitchDifferentSettlingTimeWhenScanning                            =  -200178;
DAQmx.Error.OperationOnlyPermittedWhileScanning                                =  -200177;
DAQmx.Error.OperationNotPermittedWhileScanning                                 =  -200176;
DAQmx.Error.HardwareNotResponding                                              =  -200175;
DAQmx.Error.InvalidSampAndMasterTimebaseRateCombo                              =  -200173;
DAQmx.Error.NonZeroBufferSizeInProgIOXfer                                      =  -200172;
DAQmx.Error.VirtualChanNameUsed                                                =  -200171;
DAQmx.Error.PhysicalChanDoesNotExist                                           =  -200170;
DAQmx.Error.MemMapOnlyForProgIOXfer                                            =  -200169;
DAQmx.Error.TooManyChans                                                       =  -200168;
DAQmx.Error.CannotHaveCJTempWithOtherChans                                     =  -200167;
DAQmx.Error.OutputBufferUnderwrite                                             =  -200166;
DAQmx.Error.SensorInvalidCompletionResistance                                  =  -200163;
DAQmx.Error.VoltageExcitIncompatibleWith2WireCfg                               =  -200162;
DAQmx.Error.IntExcitSrcNotAvailable                                            =  -200161;
DAQmx.Error.CannotCreateChannelAfterTaskVerified                               =  -200160;
DAQmx.Error.LinesReservedForSCXIControl                                        =  -200159;
DAQmx.Error.CouldNotReserveLinesForSCXIControl                                 =  -200158;
DAQmx.Error.CalibrationFailed                                                  =  -200157;
DAQmx.Error.ReferenceFrequencyInvalid                                          =  -200156;
DAQmx.Error.ReferenceResistanceInvalid                                         =  -200155;
DAQmx.Error.ReferenceCurrentInvalid                                            =  -200154;
DAQmx.Error.ReferenceVoltageInvalid                                            =  -200153;
DAQmx.Error.EEPROMDataInvalid                                                  =  -200152;
DAQmx.Error.CabledModuleNotCapableOfRoutingAI                                  =  -200151;
DAQmx.Error.ChannelNotAvailableInParallelMode                                  =  -200150;
DAQmx.Error.ExternalTimebaseRateNotKnownForDelay                               =  -200149;
DAQmx.Error.FREQOUTCannotProduceDesiredFrequency                               =  -200148;
DAQmx.Error.MultipleCounterInputTask                                           =  -200147;
DAQmx.Error.CounterStartPauseTriggerConflict                                   =  -200146;
DAQmx.Error.CounterInputPauseTriggerAndSampleClockInvalid                      =  -200145;
DAQmx.Error.CounterOutputPauseTriggerInvalid                                   =  -200144;
DAQmx.Error.CounterTimebaseRateNotSpecified                                    =  -200143;
DAQmx.Error.CounterTimebaseRateNotFound                                        =  -200142;
DAQmx.Error.CounterOverflow                                                    =  -200141;
DAQmx.Error.CounterNoTimebaseEdgesBetweenGates                                 =  -200140;
DAQmx.Error.CounterMaxMinRangeFreq                                             =  -200139;
DAQmx.Error.CounterMaxMinRangeTime                                             =  -200138;
DAQmx.Error.SuitableTimebaseNotFoundTimeCombo                                  =  -200137;
DAQmx.Error.SuitableTimebaseNotFoundFrequencyCombo                             =  -200136;
DAQmx.Error.InternalTimebaseSourceDivisorCombo                                 =  -200135;
DAQmx.Error.InternalTimebaseSourceRateCombo                                    =  -200134;
DAQmx.Error.InternalTimebaseRateDivisorSourceCombo                             =  -200133;
DAQmx.Error.ExternalTimebaseRateNotknownForRate                                =  -200132;
DAQmx.Error.AnalogTrigChanNotFirstInScanList                                   =  -200131;
DAQmx.Error.NoDivisorForExternalSignal                                         =  -200130;
DAQmx.Error.AttributeInconsistentAcrossRepeatedPhysicalChannels                =  -200128;
DAQmx.Error.CannotHandshakeWithPort0                                           =  -200127;
DAQmx.Error.ControlLineConflictOnPortC                                         =  -200126;
DAQmx.Error.Lines4To7ConfiguredForOutput                                       =  -200125;
DAQmx.Error.Lines4To7ConfiguredForInput                                        =  -200124;
DAQmx.Error.Lines0To3ConfiguredForOutput                                       =  -200123;
DAQmx.Error.Lines0To3ConfiguredForInput                                        =  -200122;
DAQmx.Error.PortConfiguredForOutput                                            =  -200121;
DAQmx.Error.PortConfiguredForInput                                             =  -200120;
DAQmx.Error.PortConfiguredForStaticDigitalOps                                  =  -200119;
DAQmx.Error.PortReservedForHandshaking                                         =  -200118;
DAQmx.Error.PortDoesNotSupportHandshakingDataIO                                =  -200117;
DAQmx.Error.CannotTristate8255OutputLines                                      =  -200116;
DAQmx.Error.TemperatureOutOfRangeForCalibration                                =  -200113;
DAQmx.Error.CalibrationHandleInvalid                                           =  -200112;
DAQmx.Error.PasswordRequired                                                   =  -200111;
DAQmx.Error.IncorrectPassword                                                  =  -200110;
DAQmx.Error.PasswordTooLong                                                    =  -200109;
DAQmx.Error.CalibrationSessionAlreadyOpen                                      =  -200108;
DAQmx.Error.SCXIModuleIncorrect                                                =  -200107;
DAQmx.Error.AttributeInconsistentAcrossChannelsOnDevice                        =  -200106;
DAQmx.Error.SCXI1122ResistanceChanNotSupportedForCfg                           =  -200105;
DAQmx.Error.BracketPairingMismatchInList                                       =  -200104;
DAQmx.Error.InconsistentNumSamplesToWrite                                      =  -200103;
DAQmx.Error.IncorrectDigitalPattern                                            =  -200102;
DAQmx.Error.IncorrectNumChannelsToWrite                                        =  -200101;
DAQmx.Error.IncorrectReadFunction                                              =  -200100;
DAQmx.Error.PhysicalChannelNotSpecified                                        =  -200099;
DAQmx.Error.MoreThanOneTerminal                                                =  -200098;
DAQmx.Error.MoreThanOneActiveChannelSpecified                                  =  -200097;
DAQmx.Error.InvalidNumberSamplesToRead                                         =  -200096;
DAQmx.Error.AnalogWaveformExpected                                             =  -200095;
DAQmx.Error.DigitalWaveformExpected                                            =  -200094;
DAQmx.Error.ActiveChannelNotSpecified                                          =  -200093;
DAQmx.Error.FunctionNotSupportedForDeviceTasks                                 =  -200092;
DAQmx.Error.FunctionNotInLibrary                                               =  -200091;
DAQmx.Error.LibraryNotPresent                                                  =  -200090;
DAQmx.Error.DuplicateTask                                                      =  -200089;
DAQmx.Error.InvalidTask                                                        =  -200088;
DAQmx.Error.InvalidChannel                                                     =  -200087;
DAQmx.Error.InvalidSyntaxForPhysicalChannelRange                               =  -200086;
DAQmx.Error.MinNotLessThanMax                                                  =  -200082;
DAQmx.Error.SampleRateNumChansConvertPeriodCombo                               =  -200081;
DAQmx.Error.AODuringCounter1DMAConflict                                        =  -200079;
DAQmx.Error.AIDuringCounter0DMAConflict                                        =  -200078;
DAQmx.Error.InvalidAttributeValue                                              =  -200077;
DAQmx.Error.SuppliedCurrentDataOutsideSpecifiedRange                           =  -200076;
DAQmx.Error.SuppliedVoltageDataOutsideSpecifiedRange                           =  -200075;
DAQmx.Error.CannotStoreCalConst                                                =  -200074;
DAQmx.Error.SCXIModuleNotFound                                                 =  -200073;
DAQmx.Error.DuplicatePhysicalChansNotSupported                                 =  -200072;
DAQmx.Error.TooManyPhysicalChansInList                                         =  -200071;
DAQmx.Error.InvalidAdvanceEventTriggerType                                     =  -200070;
DAQmx.Error.DeviceIsNotAValidSwitch                                            =  -200069;
DAQmx.Error.DeviceDoesNotSupportScanning                                       =  -200068;
DAQmx.Error.ScanListCannotBeTimed                                              =  -200067;
DAQmx.Error.ConnectOperatorInvalidAtPointInList                                =  -200066;
DAQmx.Error.UnexpectedSwitchActionInList                                       =  -200065;
DAQmx.Error.UnexpectedSeparatorInList                                          =  -200064;
DAQmx.Error.ExpectedTerminatorInList                                           =  -200063;
DAQmx.Error.ExpectedConnectOperatorInList                                      =  -200062;
DAQmx.Error.ExpectedSeparatorInList                                            =  -200061;
DAQmx.Error.FullySpecifiedPathInListContainsRange                              =  -200060;
DAQmx.Error.ConnectionSeparatorAtEndOfList                                     =  -200059;
DAQmx.Error.IdentifierInListTooLong                                            =  -200058;
DAQmx.Error.DuplicateDeviceIDInListWhenSettling                                =  -200057;
DAQmx.Error.ChannelNameNotSpecifiedInList                                      =  -200056;
DAQmx.Error.DeviceIDNotSpecifiedInList                                         =  -200055;
DAQmx.Error.SemicolonDoesNotFollowRangeInList                                  =  -200054;
DAQmx.Error.SwitchActionInListSpansMultipleDevices                             =  -200053;
DAQmx.Error.RangeWithoutAConnectActionInList                                   =  -200052;
DAQmx.Error.InvalidIdentifierFollowingSeparatorInList                          =  -200051;
DAQmx.Error.InvalidChannelNameInList                                           =  -200050;
DAQmx.Error.InvalidNumberInRepeatStatementInList                               =  -200049;
DAQmx.Error.InvalidTriggerLineInList                                           =  -200048;
DAQmx.Error.InvalidIdentifierInListFollowingDeviceID                           =  -200047;
DAQmx.Error.InvalidIdentifierInListAtEndOfSwitchAction                         =  -200046;
DAQmx.Error.DeviceRemoved                                                      =  -200045;
DAQmx.Error.RoutingPathNotAvailable                                            =  -200044;
DAQmx.Error.RoutingHardwareBusy                                                =  -200043;
DAQmx.Error.RequestedSignalInversionForRoutingNotPossible                      =  -200042;
DAQmx.Error.InvalidRoutingDestinationTerminalName                              =  -200041;
DAQmx.Error.InvalidRoutingSourceTerminalName                                   =  -200040;
DAQmx.Error.RoutingNotSupportedForDevice                                       =  -200039;
DAQmx.Error.WaitIsLastInstructionOfLoopInScript                                =  -200038;
DAQmx.Error.ClearIsLastInstructionOfLoopInScript                               =  -200037;
DAQmx.Error.InvalidLoopIterationsInScript                                      =  -200036;
DAQmx.Error.RepeatLoopNestingTooDeepInScript                                   =  -200035;
DAQmx.Error.MarkerPositionOutsideSubsetInScript                                =  -200034;
DAQmx.Error.SubsetStartOffsetNotAlignedInScript                                =  -200033;
DAQmx.Error.InvalidSubsetLengthInScript                                        =  -200032;
DAQmx.Error.MarkerPositionNotAlignedInScript                                   =  -200031;
DAQmx.Error.SubsetOutsideWaveformInScript                                      =  -200030;
DAQmx.Error.MarkerOutsideWaveformInScript                                      =  -200029;
DAQmx.Error.WaveformInScriptNotInMem                                           =  -200028;
DAQmx.Error.KeywordExpectedInScript                                            =  -200027;
DAQmx.Error.BufferNameExpectedInScript                                         =  -200026;
DAQmx.Error.ProcedureNameExpectedInScript                                      =  -200025;
DAQmx.Error.ScriptHasInvalidIdentifier                                         =  -200024;
DAQmx.Error.ScriptHasInvalidCharacter                                          =  -200023;
DAQmx.Error.ResourceAlreadyReserved                                            =  -200022;
DAQmx.Error.SelfTestFailed                                                     =  -200020;
DAQmx.Error.ADCOverrun                                                         =  -200019;
DAQmx.Error.DACUnderflow                                                       =  -200018;
DAQmx.Error.InputFIFOUnderflow                                                 =  -200017;
DAQmx.Error.OutputFIFOUnderflow                                                =  -200016;
DAQmx.Error.SCXISerialCommunication                                            =  -200015;
DAQmx.Error.DigitalTerminalSpecifiedMoreThanOnce                               =  -200014;
DAQmx.Error.DigitalOutputNotSupported                                          =  -200012;
DAQmx.Error.InconsistentChannelDirections                                      =  -200011;
DAQmx.Error.InputFIFOOverflow                                                  =  -200010;
DAQmx.Error.TimeStampOverwritten                                               =  -200009;
DAQmx.Error.StopTriggerHasNotOccurred                                          =  -200008;
DAQmx.Error.RecordNotAvailable                                                 =  -200007;
DAQmx.Error.RecordOverwritten                                                  =  -200006;
DAQmx.Error.DataNotAvailable                                                   =  -200005;
DAQmx.Error.DataOverwrittenInDeviceMemory                                      =  -200004;
DAQmx.Error.DuplicatedChannel                                                  =  -200003;
DAQmx.Warning.TimestampCounterRolledOver                                       =   200003;
DAQmx.Warning.InputTerminationOverloaded                                       =   200004;
DAQmx.Warning.ADCOverloaded                                                    =   200005;
DAQmx.Warning.PLLUnlocked                                                      =   200007;
DAQmx.Warning.Counter0DMADuringAIConflict                                      =   200008;
DAQmx.Warning.Counter1DMADuringAOConflict                                      =   200009;
DAQmx.Warning.StoppedBeforeDone                                                =   200010;
DAQmx.Warning.RateViolatesSettlingTime                                         =   200011;
DAQmx.Warning.RateViolatesMaxADCRate                                           =   200012;
DAQmx.Warning.UserDefInfoStringTooLong                                         =   200013;
DAQmx.Warning.TooManyInterruptsPerSecond                                       =   200014;
DAQmx.Warning.PotentialGlitchDuringWrite                                       =   200015;
DAQmx.Warning.DevNotSelfCalibratedWithDAQmx                                    =   200016;
DAQmx.Warning.AISampRateTooLow                                                 =   200017;
DAQmx.Warning.AIConvRateTooLow                                                 =   200018;
DAQmx.Warning.ReadOffsetCoercion                                               =   200019;
DAQmx.Warning.PretrigCoercion                                                  =   200020;
DAQmx.Warning.SampValCoercedToMax                                              =   200021;
DAQmx.Warning.SampValCoercedToMin                                              =   200022;
DAQmx.Warning.PropertyVersionNew                                               =   200024;
DAQmx.Warning.UserDefinedInfoTooLong                                           =   200025;
DAQmx.Warning.CAPIStringTruncatedToFitBuffer                                   =   200026;
DAQmx.Warning.SampClkRateTooLow                                                =   200027;
DAQmx.Warning.PossiblyInvalidCTRSampsInFiniteDMAAcq                            =   200028;
DAQmx.Warning.RISAcqCompletedSomeBinsNotFilled                                 =   200029;
DAQmx.Warning.PXIDevTempExceedsMaxOpTemp                                       =   200030;
DAQmx.Warning.OutputGainTooLowForRFFreq                                        =   200031;
DAQmx.Warning.OutputGainTooHighForRFFreq                                       =   200032;
DAQmx.Warning.MultipleWritesBetweenSampClks                                    =   200033;
DAQmx.Warning.DeviceMayShutDownDueToHighTemp                                   =   200034;
DAQmx.Warning.RateViolatesMinADCRate                                           =   200035;
DAQmx.Warning.SampClkRateAboveDevSpecs                                         =   200036;
DAQmx.Warning.COPrevDAQmxWriteSettingsOverwrittenForHWTimedSinglePoint         =   200037;
DAQmx.Warning.LowpassFilter.SettlingTimeExceedsUserTimeBetween2ADCConversions   =   200038;
DAQmx.Warning.LowpassFilter.SettlingTimeExceedsDriverTimeBetween2ADCConversions =   200039;
DAQmx.Warning.SampClkRateViolatesSettlingTimeForGen                            =   200040;
DAQmx.Warning.InvalidCalConstValueForAI                                        =   200041;
DAQmx.Warning.InvalidCalConstValueForAO                                        =   200042;
DAQmx.Warning.ChanCalExpired                                                   =   200043;
DAQmx.Warning.UnrecognizedEnumValueEncounteredInStorage                        =   200044;
DAQmx.Warning.TableCRCNotCorrect                                               =   200045;
DAQmx.Warning.ExternalCRCNotCorrect                                            =   200046;
DAQmx.Warning.SelfCalCRCNotCorrect                                             =   200047;
DAQmx.Warning.DeviceSpecExceeded                                               =   200048;
DAQmx.Warning.OnlyGainCalibrated                                               =   200049;
DAQmx.Warning.ReversePowerProtectionActivated                                  =   200050;
DAQmx.Warning.OverVoltageProtectionActivated                                   =   200051;
DAQmx.Warning.BufferSizeNotMultipleOfSectorSize                                =   200052;
DAQmx.Warning.SampleRateMayCauseAcqToFail                                      =   200053;
DAQmx.Warning.UserAreaCRCNotCorrect                                            =   200054;
DAQmx.Warning.PowerUpInfoCRCNotCorrect                                         =   200055;
DAQmx.Warning.ConnectionCountHasExceededRecommendedLimit                       =   200056;
DAQmx.Warning.NetworkDeviceAlreadyAdded                                        =   200057;
DAQmx.Warning.AccessoryConnectionCountIsInvalid                                =   200058;
DAQmx.Warning.UnableToDisconnectPorts                                          =   200059;
DAQmx.Warning.ReadRepeatedData                                                 =   200060;
DAQmx.Warning.PXI5600_NotConfigured                                            =   200061;
DAQmx.Warning.PXI5661_IncorrectlyConfigured                                    =   200062;
DAQmx.Warning.PXIe5601_NotConfigured                                           =   200063;
DAQmx.Warning.PXIe5663_IncorrectlyConfigured                                   =   200064;
DAQmx.Warning.PXIe5663E_IncorrectlyConfigured                                  =   200065;
DAQmx.Warning.PXIe5603_NotConfigured                                           =   200066;
DAQmx.Warning.PXIe5665_5603_IncorrectlyConfigured                              =   200067;
DAQmx.Warning.PXIe5667_5603_IncorrectlyConfigured                              =   200068;
DAQmx.Warning.PXIe5605_NotConfigured                                           =   200069;
DAQmx.Warning.PXIe5665_5605_IncorrectlyConfigured                              =   200070;
DAQmx.Warning.PXIe5667_5605_IncorrectlyConfigured                              =   200071;
DAQmx.Warning.PXIe5606_NotConfigured                                           =   200072;
DAQmx.Warning.PXIe5665_5606_IncorrectlyConfigured                              =   200073;
DAQmx.Warning.PXI5610_NotConfigured                                            =   200074;
DAQmx.Warning.PXI5610_IncorrectlyConfigured                                    =   200075;
DAQmx.Warning.PXIe5611_NotConfigured                                           =   200076;
DAQmx.Warning.PXIe5611_IncorrectlyConfigured                                   =   200077;
DAQmx.Warning.USBHotfixForDAQ                                                  =   200078;
DAQmx.Warning.NoChangeSupersededByIdleBehavior                                 =   200079;
DAQmx.Warning.ReadNotCompleteBeforeSampClk                                     =   209800;
DAQmx.Warning.WriteNotCompleteBeforeSampClk                                    =   209801;
DAQmx.Warning.WaitForNextSampClkDetectedMissedSampClk                          =   209802;
DAQmx.Warning.OutputDataTransferConditionNotSupported                          =   209803;
DAQmx.Warning.TimestampMayBeInvalid                                            =   209804;
DAQmx.Warning.FirstSampleTimestampInaccurate                                   =   209805;
DAQmx.Error.InterfaceObsoleted_Routing                                         =   -89169;
DAQmx.Error.RoCoServiceNotAvailable_Routing                                    =   -89168;
DAQmx.Error.RoutingDestTermPXIDStarXNotInSystemTimingSlot_Routing              =   -89167;
DAQmx.Error.RoutingSrcTermPXIDStarXNotInSystemTimingSlot_Routing               =   -89166;
DAQmx.Error.RoutingSrcTermPXIDStarInNonDStarTriggerSlot_Routing                =   -89165;
DAQmx.Error.RoutingDestTermPXIDStarInNonDStarTriggerSlot_Routing               =   -89164;
DAQmx.Error.RoutingDestTermPXIClk10InNotInStarTriggerSlot_Routing              =   -89162;
DAQmx.Error.RoutingDestTermPXIClk10InNotInSystemTimingSlot_Routing             =   -89161;
DAQmx.Error.RoutingDestTermPXIStarXNotInStarTriggerSlot_Routing                =   -89160;
DAQmx.Error.RoutingDestTermPXIStarXNotInSystemTimingSlot_Routing               =   -89159;
DAQmx.Error.RoutingSrcTermPXIStarXNotInStarTriggerSlot_Routing                 =   -89158;
DAQmx.Error.RoutingSrcTermPXIStarXNotInSystemTimingSlot_Routing                =   -89157;
DAQmx.Error.RoutingSrcTermPXIStarInNonStarTriggerSlot_Routing                  =   -89156;
DAQmx.Error.RoutingDestTermPXIStarInNonStarTriggerSlot_Routing                 =   -89155;
DAQmx.Error.RoutingDestTermPXIStarInStarTriggerSlot_Routing                    =   -89154;
DAQmx.Error.RoutingDestTermPXIStarInSystemTimingSlot_Routing                   =   -89153;
DAQmx.Error.RoutingSrcTermPXIStarInStarTriggerSlot_Routing                     =   -89152;
DAQmx.Error.RoutingSrcTermPXIStarInSystemTimingSlot_Routing                    =   -89151;
DAQmx.Error.InvalidSignalModifier_Routing                                      =   -89150;
DAQmx.Error.RoutingDestTermPXIClk10InNotInSlot2_Routing                        =   -89149;
DAQmx.Error.RoutingDestTermPXIStarXNotInSlot2_Routing                          =   -89148;
DAQmx.Error.RoutingSrcTermPXIStarXNotInSlot2_Routing                           =   -89147;
DAQmx.Error.RoutingSrcTermPXIStarInSlot16AndAbove_Routing                      =   -89146;
DAQmx.Error.RoutingDestTermPXIStarInSlot16AndAbove_Routing                     =   -89145;
DAQmx.Error.RoutingDestTermPXIStarInSlot2_Routing                              =   -89144;
DAQmx.Error.RoutingSrcTermPXIStarInSlot2_Routing                               =   -89143;
DAQmx.Error.RoutingDestTermPXIChassisNotIdentified_Routing                     =   -89142;
DAQmx.Error.RoutingSrcTermPXIChassisNotIdentified_Routing                      =   -89141;
DAQmx.Error.TrigLineNotFoundSingleDevRoute_Routing                             =   -89140;
DAQmx.Error.NoCommonTrigLineForRoute_Routing                                   =   -89139;
DAQmx.Error.ResourcesInUseForRouteInTask_Routing                               =   -89138;
DAQmx.Error.ResourcesInUseForRoute_Routing                                     =   -89137;
DAQmx.Error.RouteNotSupportedByHW_Routing                                      =   -89136;
DAQmx.Error.ResourcesInUseForInversionInTask_Routing                           =   -89135;
DAQmx.Error.ResourcesInUseForInversion_Routing                                 =   -89134;
DAQmx.Error.InversionNotSupportedByHW_Routing                                  =   -89133;
DAQmx.Error.ResourcesInUseForProperty_Routing                                  =   -89132;
DAQmx.Error.RouteSrcAndDestSame_Routing                                        =   -89131;
DAQmx.Error.DevAbsentOrUnavailable_Routing                                     =   -89130;
DAQmx.Error.InvalidTerm_Routing                                                =   -89129;
DAQmx.Error.CannotTristateTerm_Routing                                         =   -89128;
DAQmx.Error.CannotTristateBusyTerm_Routing                                     =   -89127;
DAQmx.Error.CouldNotReserveRequestedTrigLine_Routing                           =   -89126;
DAQmx.Error.TrigLineNotFound_Routing                                           =   -89125;
DAQmx.Error.RoutingPathNotAvailable_Routing                                    =   -89124;
DAQmx.Error.RoutingHardwareBusy_Routing                                        =   -89123;
DAQmx.Error.RequestedSignalInversionForRoutingNotPossible_Routing              =   -89122;
DAQmx.Error.InvalidRoutingDestinationTerminalName_Routing                      =   -89121;
DAQmx.Error.InvalidRoutingSourceTerminalName_Routing                           =   -89120;
DAQmx.Error.ServiceLocatorNotAvailable_Routing                                 =   -88907;
DAQmx.Error.CouldNotConnectToServer_Routing                                    =   -88900;
DAQmx.Error.DeviceNameContainsSpacesOrPunctuation_Routing                      =   -88720;
DAQmx.Error.DeviceNameContainsNonprintableCharacters_Routing                   =   -88719;
DAQmx.Error.DeviceNameIsEmpty_Routing                                          =   -88718;
DAQmx.Error.DeviceNameNotFound_Routing                                         =   -88717;
DAQmx.Error.LocalRemoteDriverVersionMismatch_Routing                           =   -88716;
DAQmx.Error.DuplicateDeviceName_Routing                                        =   -88715;
DAQmx.Error.RuntimeAborting_Routing                                            =   -88710;
DAQmx.Error.RuntimeAborted_Routing                                             =   -88709;
DAQmx.Error.ResourceNotInPool_Routing                                          =   -88708;
DAQmx.Error.DriverDeviceGUIDNotFound_Routing                                   =   -88705;
DAQmx.Error.PALUSBTransactionError                                             =   -50808;
DAQmx.Error.PALIsocStreamBufferError                                           =   -50807;
DAQmx.Error.PALInvalidAddressComponent                                         =   -50806;
DAQmx.Error.PALSharingViolation                                                =   -50805;
DAQmx.Error.PALInvalidDeviceState                                              =   -50804;
DAQmx.Error.PALConnectionReset                                                 =   -50803;
DAQmx.Error.PALConnectionAborted                                               =   -50802;
DAQmx.Error.PALConnectionRefused                                               =   -50801;
DAQmx.Error.PALBusResetOccurred                                                =   -50800;
DAQmx.Error.PALWaitInterrupted                                                 =   -50700;
DAQmx.Error.PALMessageUnderflow                                                =   -50651;
DAQmx.Error.PALMessageOverflow                                                 =   -50650;
DAQmx.Error.PALThreadAlreadyDead                                               =   -50604;
DAQmx.Error.PALThreadStackSizeNotSupported                                     =   -50603;
DAQmx.Error.PALThreadControllerIsNotThreadCreator                              =   -50602;
DAQmx.Error.PALThreadHasNoThreadObject                                         =   -50601;
DAQmx.Error.PALThreadCouldNotRun                                               =   -50600;
DAQmx.Error.PALSyncAbandoned                                                   =   -50551;
DAQmx.Error.PALSyncTimedOut                                                    =   -50550;
DAQmx.Error.PALReceiverSocketInvalid                                           =   -50503;
DAQmx.Error.PALSocketListenerInvalid                                           =   -50502;
DAQmx.Error.PALSocketListenerAlreadyRegistered                                 =   -50501;
DAQmx.Error.PALDispatcherAlreadyExported                                       =   -50500;
DAQmx.Error.PALDMALinkEventMissed                                              =   -50450;
DAQmx.Error.PALBusError                                                        =   -50413;
DAQmx.Error.PALRetryLimitExceeded                                              =   -50412;
DAQmx.Error.PALTransferOverread                                                =   -50411;
DAQmx.Error.PALTransferOverwritten                                             =   -50410;
DAQmx.Error.PALPhysicalBufferFull                                              =   -50409;
DAQmx.Error.PALPhysicalBufferEmpty                                             =   -50408;
DAQmx.Error.PALLogicalBufferFull                                               =   -50407;
DAQmx.Error.PALLogicalBufferEmpty                                              =   -50406;
DAQmx.Error.PALTransferAborted                                                 =   -50405;
DAQmx.Error.PALTransferStopped                                                 =   -50404;
DAQmx.Error.PALTransferInProgress                                              =   -50403;
DAQmx.Error.PALTransferNotInProgress                                           =   -50402;
DAQmx.Error.PALCommunicationsFault                                             =   -50401;
DAQmx.Error.PALTransferTimedOut                                                =   -50400;
DAQmx.Error.PALMemoryHeapNotEmpty                                              =   -50355;
DAQmx.Error.PALMemoryBlockCheckFailed                                          =   -50354;
DAQmx.Error.PALMemoryPageLockFailed                                            =   -50353;
DAQmx.Error.PALMemoryFull                                                      =   -50352;
DAQmx.Error.PALMemoryAlignmentFault                                            =   -50351;
DAQmx.Error.PALMemoryConfigurationFault                                        =   -50350;
DAQmx.Error.PALDeviceInitializationFault                                       =   -50303;
DAQmx.Error.PALDeviceNotSupported                                              =   -50302;
DAQmx.Error.PALDeviceUnknown                                                   =   -50301;
DAQmx.Error.PALDeviceNotFound                                                  =   -50300;
DAQmx.Error.PALFeatureDisabled                                                 =   -50265;
DAQmx.Error.PALComponentBusy                                                   =   -50264;
DAQmx.Error.PALComponentAlreadyInstalled                                       =   -50263;
DAQmx.Error.PALComponentNotUnloadable                                          =   -50262;
DAQmx.Error.PALComponentNeverLoaded                                            =   -50261;
DAQmx.Error.PALComponentAlreadyLoaded                                          =   -50260;
DAQmx.Error.PALComponentCircularDependency                                     =   -50259;
DAQmx.Error.PALComponentInitializationFault                                    =   -50258;
DAQmx.Error.PALComponentImageCorrupt                                           =   -50257;
DAQmx.Error.PALFeatureNotSupported                                             =   -50256;
DAQmx.Error.PALFunctionNotFound                                                =   -50255;
DAQmx.Error.PALFunctionObsolete                                                =   -50254;
DAQmx.Error.PALComponentTooNew                                                 =   -50253;
DAQmx.Error.PALComponentTooOld                                                 =   -50252;
DAQmx.Error.PALComponentNotFound                                               =   -50251;
DAQmx.Error.PALVersionMismatch                                                 =   -50250;
DAQmx.Error.PALFileFault                                                       =   -50209;
DAQmx.Error.PALFileWriteFault                                                  =   -50208;
DAQmx.Error.PALFileReadFault                                                   =   -50207;
DAQmx.Error.PALFileSeekFault                                                   =   -50206;
DAQmx.Error.PALFileCloseFault                                                  =   -50205;
DAQmx.Error.PALFileOpenFault                                                   =   -50204;
DAQmx.Error.PALDiskFull                                                        =   -50203;
DAQmx.Error.PALOSFault                                                         =   -50202;
DAQmx.Error.PALOSInitializationFault                                           =   -50201;
DAQmx.Error.PALOSUnsupported                                                   =   -50200;
DAQmx.Error.PALCalculationOverflow                                             =   -50175;
DAQmx.Error.PALHardwareFault                                                   =   -50152;
DAQmx.Error.PALFirmwareFault                                                   =   -50151;
DAQmx.Error.PALSoftwareFault                                                   =   -50150;
DAQmx.Error.PALMessageQueueFull                                                =   -50108;
DAQmx.Error.PALResourceAmbiguous                                               =   -50107;
DAQmx.Error.PALResourceBusy                                                    =   -50106;
DAQmx.Error.PALResourceInitialized                                             =   -50105;
DAQmx.Error.PALResourceNotInitialized                                          =   -50104;
DAQmx.Error.PALResourceReserved                                                =   -50103;
DAQmx.Error.PALResourceNotReserved                                             =   -50102;
DAQmx.Error.PALResourceNotAvailable                                            =   -50101;
DAQmx.Error.PALResourceOwnedBySystem                                           =   -50100;
DAQmx.Error.PALBadToken                                                        =   -50020;
DAQmx.Error.PALBadThreadMultitask                                              =   -50019;
DAQmx.Error.PALBadLibrarySpecifier                                             =   -50018;
DAQmx.Error.PALBadAddressSpace                                                 =   -50017;
DAQmx.Error.PALBadWindowType                                                   =   -50016;
DAQmx.Error.PALBadAddressClass                                                 =   -50015;
DAQmx.Error.PALBadWriteCount                                                   =   -50014;
DAQmx.Error.PALBadWriteOffset                                                  =   -50013;
DAQmx.Error.PALBadWriteMode                                                    =   -50012;
DAQmx.Error.PALBadReadCount                                                    =   -50011;
DAQmx.Error.PALBadReadOffset                                                   =   -50010;
DAQmx.Error.PALBadReadMode                                                     =   -50009;
DAQmx.Error.PALBadCount                                                        =   -50008;
DAQmx.Error.PALBadOffset                                                       =   -50007;
DAQmx.Error.PALBadMode                                                         =   -50006;
DAQmx.Error.PALBadDataSize                                                     =   -50005;
DAQmx.Error.PALBadPointer                                                      =   -50004;
DAQmx.Error.PALBadSelector                                                     =   -50003;
DAQmx.Error.PALBadDevice                                                       =   -50002;
DAQmx.Error.PALIrrelevantAttribute                                             =   -50001;
DAQmx.Error.PALValueConflict                                                   =   -50000;
DAQmx.Warning.PALValueConflict                                                 =    50000;
DAQmx.Warning.PALIrrelevantAttribute                                           =    50001;
DAQmx.Warning.PALBadDevice                                                     =    50002;
DAQmx.Warning.PALBadSelector                                                   =    50003;
DAQmx.Warning.PALBadPointer                                                    =    50004;
DAQmx.Warning.PALBadDataSize                                                   =    50005;
DAQmx.Warning.PALBadMode                                                       =    50006;
DAQmx.Warning.PALBadOffset                                                     =    50007;
DAQmx.Warning.PALBadCount                                                      =    50008;
DAQmx.Warning.PALBadReadMode                                                   =    50009;
DAQmx.Warning.PALBadReadOffset                                                 =    50010;
DAQmx.Warning.PALBadReadCount                                                  =    50011;
DAQmx.Warning.PALBadWriteMode                                                  =    50012;
DAQmx.Warning.PALBadWriteOffset                                                =    50013;
DAQmx.Warning.PALBadWriteCount                                                 =    50014;
DAQmx.Warning.PALBadAddressClass                                               =    50015;
DAQmx.Warning.PALBadWindowType                                                 =    50016;
DAQmx.Warning.PALBadThreadMultitask                                            =    50019;
DAQmx.Warning.PALResourceOwnedBySystem                                         =    50100;
DAQmx.Warning.PALResourceNotAvailable                                          =    50101;
DAQmx.Warning.PALResourceNotReserved                                           =    50102;
DAQmx.Warning.PALResourceReserved                                              =    50103;
DAQmx.Warning.PALResourceNotInitialized                                        =    50104;
DAQmx.Warning.PALResourceInitialized                                           =    50105;
DAQmx.Warning.PALResourceBusy                                                  =    50106;
DAQmx.Warning.PALResourceAmbiguous                                             =    50107;
DAQmx.Warning.PALFirmwareFault                                                 =    50151;
DAQmx.Warning.PALHardwareFault                                                 =    50152;
DAQmx.Warning.PALOSUnsupported                                                 =    50200;
DAQmx.Warning.PALOSFault                                                       =    50202;
DAQmx.Warning.PALFunctionObsolete                                              =    50254;
DAQmx.Warning.PALFunctionNotFound                                              =    50255;
DAQmx.Warning.PALFeatureNotSupported                                           =    50256;
DAQmx.Warning.PALComponentInitializationFault                                  =    50258;
DAQmx.Warning.PALComponentAlreadyLoaded                                        =    50260;
DAQmx.Warning.PALComponentNotUnloadable                                        =    50262;
DAQmx.Warning.PALMemoryAlignmentFault                                          =    50351;
DAQmx.Warning.PALMemoryHeapNotEmpty                                            =    50355;
DAQmx.Warning.PALTransferNotInProgress                                         =    50402;
DAQmx.Warning.PALTransferInProgress                                            =    50403;
DAQmx.Warning.PALTransferStopped                                               =    50404;
DAQmx.Warning.PALTransferAborted                                               =    50405;
DAQmx.Warning.PALLogicalBufferEmpty                                            =    50406;
DAQmx.Warning.PALLogicalBufferFull                                             =    50407;
DAQmx.Warning.PALPhysicalBufferEmpty                                           =    50408;
DAQmx.Warning.PALPhysicalBufferFull                                            =    50409;
DAQmx.Warning.PALTransferOverwritten                                           =    50410;
DAQmx.Warning.PALTransferOverread                                              =    50411;
DAQmx.Warning.PALDispatcherAlreadyExported                                     =    50500;
DAQmx.Warning.PALSyncAbandoned                                                 =    50551;

