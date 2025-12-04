within SmartCoolingLibrary;
model Example
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
 model withoutcooling
   ProcessingUnit processingUnit
     annotation (Placement(transformation(extent={{4,30},{24.0001,50}})));
   Sources.RoomTemperature roomTemperature
     annotation (Placement(transformation(extent={{100,78},{120,98}})));
   Sources.Internaltemperature internaltemperature
     annotation (Placement(transformation(extent={{100,48},{120,68}})));
   ProcessingUnit processingUnit1
     annotation (Placement(transformation(extent={{5,-9},{25.0001,11}})));
   ProcessingUnit processingUnit2
     annotation (Placement(transformation(extent={{6,-51},{26.0001,-31}})));
   ProcessingUnit processingUnit3
     annotation (Placement(transformation(extent={{8,-94},{28.0001,-74.0002}})));
 equation
   connect(internaltemperature.y, processingUnit.InternalHeatgenerationport) annotation (Line(points={{99,58.2},{50.6818,58.2},{50.6818,32},{26.0001,32}}, color={0,0,127}));
   connect(roomTemperature.port_b, processingUnit.Roomtemperatureport) annotation (Line(points={{99,88.2},{85.9913,88.2},{85.9913,41},{25.0001,41}}, color={191,0,0}));
    connect(processingUnit1.Roomtemperatureport, roomTemperature.port_b)
      annotation (Line(points={{26.0001,2},{85,2},{85,88.2},{99,88.2}}, color={
            191,0,0}));
    connect(processingUnit2.Roomtemperatureport, roomTemperature.port_b)
      annotation (Line(points={{27.0001,-40},{83,-40},{83,88.2},{99,88.2}},
          color={191,0,0}));
    connect(processingUnit3.Roomtemperatureport, roomTemperature.port_b)
      annotation (Line(points={{29.0001,-83.0001},{84,-83.0001},{84,88.2},{99,
            88.2}}, color={191,0,0}));
    connect(processingUnit1.InternalHeatgenerationport, internaltemperature.y)
      annotation (Line(points={{27.0001,-7},{27.0001,-6},{54,-6},{54,58.2},{99,
            58.2}}, color={0,0,127}));
    connect(processingUnit2.InternalHeatgenerationport, internaltemperature.y)
      annotation (Line(points={{28.0001,-49},{28.0001,-39},{58,-39},{58,58.2},{
            99,58.2}}, color={0,0,127}));
    connect(processingUnit3.InternalHeatgenerationport, internaltemperature.y)
      annotation (Line(points={{30.0001,-92},{30.0001,-93},{59,-93},{59,58.2},{
            99,58.2}}, color={0,0,127}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
 end withoutcooling;

 model AbsorbedModel
   Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C=175)
     annotation (Placement(transformation(extent={{-34,12},{-14.0003,32}})));
   Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=158.4) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-24,48})));
   Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=158.4) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-24,-10})));
   Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow
     annotation (Placement(transformation(extent={{42,2},{22,22}})));
   Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Roomtemperature(T=293.15)
     annotation (Placement(transformation(extent={{86,38},{66,57.9996}})));
   Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G=0.1) annotation (Placement(transformation(extent={{22,38},{42,58}})));
   Modelica.Blocks.Sources.Ramp ChipInternalheat(height=4, duration=20, offset=0, startTime=0)
     annotation (Placement(transformation(extent={{86,2},{66,22}})));
   Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient3(usePressureInput=false, constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0) annotation (Placement(transformation(extent={{-253,-211},{-273,-191}})));
   Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow volumeFlow1(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0, T0=293.15, T0fixed=false, useVolumeFlowInput=true) annotation (Placement(transformation(extent={{-233,-210},{-213,-190}})));
   Modelica.Blocks.Sources.Constant volumeFlow(k=1) annotation (Placement(transformation(extent={{-264,-174},{-244,-154}})));
 equation
   connect(thermalConductor1.port_a, heatCapacitor1.port) annotation (Line(points={{-24,38},
            {-24,25.7708},{-24,12},{-24.0001,12}},                                                                                 color={191,0,0}));
   connect(prescribedHeatFlow.port, heatCapacitor1.port) annotation (Line(points={{22,12},
            {-9.9934,12},{-9.9934,12},{-24.0001,12}},                                                                               color={191,0,0}));
   connect(thermalConductor2.port_a, heatCapacitor1.port) annotation (Line(points={{-24,0},
            {-24,12},{-24,12},{-24.0001,12}},                                                                                color={191,0,0}));
   connect(thermalConductor3.port_b, Roomtemperature.port) annotation (Line(points={{42,48},{59.746,48},{59.746,47.9998},{66,47.9998}}, color={191,0,0}));
   connect(thermalConductor3.port_a, heatCapacitor1.port) annotation (Line(points={{22,48},
            {1.2643,48},{1.2643,12},{-24.0001,12}},                                                                                color={191,0,0}));
   connect(ChipInternalheat.y, prescribedHeatFlow.Q_flow) annotation (Line(points={{65,12},{43.759,12},{43.759,12},{42,12}}, color={0,0,127}));
   connect(volumeFlow1.flowPort_a, ambient3.flowPort) annotation (Line(points={{-233,-200},{-251.76,-200},{-251.76,-201},{-253,-201}}, color={255,0,0}));
   connect(volumeFlow.y, volumeFlow1.volumeFlow) annotation (Line(points={{-243,-164},{-223,-164},{-223,-190}}, color={0,0,127}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
 end AbsorbedModel;

 model withcooling
   ProcessingUnit processingUnit
     annotation (Placement(transformation(extent={{4,28},{24.0001,48}})));
   Sources.RoomTemperature roomTemperature
     annotation (Placement(transformation(extent={{100,78},{120,98}})));
   Sources.Internaltemperature internaltemperature
     annotation (Placement(transformation(extent={{100,48},{120,68}})));
   ProcessingUnit processingUnit1 annotation (Placement(transformation(extent={{4,-2},{24.0001,18.0005}})));
   ProcessingUnit processingUnit2
     annotation (Placement(transformation(extent={{4,-32},{24.0001,-12}})));
   ProcessingUnit processingUnit3
     annotation (Placement(transformation(extent={{4,-62},{24.0001,-42}})));
   Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient1(usePressureInput=false, constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0) annotation (Placement(transformation(extent={{-100,-110},{-120,-90.0003}})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-20,58})));
   Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0) annotation (Placement(transformation(extent={{101,-110},{121,-89.9997}})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe1(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-20,39})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe2(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-20,18})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe3(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-20,-2})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe4(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-20,-22})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe5(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,-42})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe6(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,-63})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe7(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,-83})));
   ProcessingUnit processingUnit4 annotation (Placement(transformation(extent={{-12,-236},{8.0001,-216}})));
   Sources.RoomTemperature roomTemperature1
     annotation (Placement(transformation(extent={{84,-186},{104,-166}})));
   Sources.Internaltemperature internaltemperature1
     annotation (Placement(transformation(extent={{84,-216},{104,-196}})));
   ProcessingUnit processingUnit5 annotation (Placement(transformation(extent={{-12,-266},{8.0001,-246}})));
   ProcessingUnit processingUnit6 annotation (Placement(transformation(extent={{-12,-296},{8.0001,-276}})));
   ProcessingUnit processingUnit7 annotation (Placement(transformation(extent={{-12,-326},{8.0001,-306}})));
   Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient3(usePressureInput=false, constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0)
     annotation (Placement(transformation(extent={{-101,134},{-121,154}})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe8(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,302})));
   Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient4(constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0)
     annotation (Placement(transformation(extent={{100,134},{120,154}})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe9(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,283})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe10(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,262})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe11(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,241})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe12(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,222})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe13(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-22,202})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe14(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-22,182})));
   Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe15(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-22,161})));
   ProcessingUnit processingUnit8
     annotation (Placement(transformation(extent={{3,272},{23.001,292}})));
   ProcessingUnit processingUnit9 annotation (Placement(transformation(extent={{3,242},{23.001,262.001}})));
   ProcessingUnit processingUnit10
     annotation (Placement(transformation(extent={{3,212},{23.001,232}})));
   ProcessingUnit processingUnit11
     annotation (Placement(transformation(extent={{3,182},{23.001,202}})));
   Sources.Internaltemperature internaltemperature2
     annotation (Placement(transformation(extent={{99,292},{119,312}})));
   Sources.RoomTemperature roomTemperature2
     annotation (Placement(transformation(extent={{99,322},{119,342}})));
   Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow volumeFlow1(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0, T0=293.15, T0fixed=false, useVolumeFlowInput=true)
     annotation (Placement(transformation(extent={{-81,135},{-61,155}})));
   Modelica.Blocks.Sources.Constant volumeFlow(k=1)
     annotation (Placement(transformation(extent={{-112,171},{-92,191}})));
 equation
   connect(internaltemperature.y, processingUnit.InternalHeatgenerationport) annotation (Line(points={{99,58.2},{50,58.2},{50,30},{26.0001,30}}, color={0,0,127}));
   connect(roomTemperature.port_b, processingUnit.Roomtemperatureport) annotation (Line(points={{99,88.2},{59,88.2},{59,39},{25.0001,39}}, color={191,0,0}));
   connect(roomTemperature.port_b, processingUnit1.Roomtemperatureport) annotation (Line(points={{99,88.2},{59,88.2},{59,8},{25.0001,8},{25.0001,9.00027}}, color={191,0,0}));
   connect(roomTemperature.port_b, processingUnit2.Roomtemperatureport) annotation (Line(points={{99,88.2},{58.977,88.2},{58.977,-21},{25.0001,-21}}, color={191,0,0}));
   connect(roomTemperature.port_b, processingUnit3.Roomtemperatureport) annotation (Line(points={{99,88.2},{58.986,88.2},{58.986,-51},{25.0001,-51}}, color={191,0,0}));
   connect(processingUnit2.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{26.0001,-30},{50,-30},{50,58.2},{99,58.2}}, color={0,0,127}));
   connect(processingUnit3.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{26.0001,-60},{50,-60},{50,58.2},{99,58.2}}, color={0,0,127}));
   connect(processingUnit1.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{26.0001,5e-05},{50,5e-05},{50,58.2},{99,58.2}}, color={0,0,127}));
   connect(ambient1.flowPort, pipe.flowPort_a) annotation (Line(points={{-100,
            -100},{-66,-100},{-66,81},{-20,81},{-20,68}},                                                                   color={255,0,0}));
   connect(pipe1.flowPort_a, pipe.flowPort_b) annotation (Line(points={{-20,49},{-21,49},{-21,48},{-20,48}}, color={255,0,0}));
   connect(pipe1.flowPort_b, pipe2.flowPort_a) annotation (Line(points={{-20,29},{-21,29},{-21,28},{-20,28}}, color={255,0,0}));
   connect(pipe3.flowPort_a, pipe2.flowPort_b)
     annotation (Line(points={{-20,8},{-20,8},{-20,8}}, color={255,0,0}));
   connect(pipe4.flowPort_a, pipe3.flowPort_b) annotation (Line(points={{-20,-12},{-20,-12},{-20,-12}}, color={255,0,0}));
   connect(pipe5.flowPort_a, pipe4.flowPort_b) annotation (Line(points={{-21,-32},{-10.3265,-32},{-10.3265,-32},{-20,-32}}, color={255,0,0}));
   connect(pipe6.flowPort_a, pipe5.flowPort_b) annotation (Line(points={{-21,-53},{-21,-52.5},{-21,-52.5},{-21,-52}}, color={255,0,0}));
   connect(pipe7.flowPort_a, pipe6.flowPort_b) annotation (Line(points={{-21,-73},{-20.5,-73},{-20.5,-73},{-21,-73}}, color={255,0,0}));
   connect(pipe7.flowPort_b, ambient2.flowPort) annotation (Line(points={{-21,-93},
            {-21,-100},{101,-100},{101,-99.9999}},                                                                        color={255,0,0}));
   connect(pipe.heatPort, processingUnit.fluidCoolingporttop)
     annotation (Line(points={{-10,58},{14,58},{14,49}}, color={191,0,0}));
   connect(pipe1.heatPort, processingUnit.fluidCoolingportbottom) annotation (Line(points={{-10,39},
            {-3,39},{-3,24},{14,24},{14,27}},                                                                                         color={191,0,0}));
   connect(pipe2.heatPort, processingUnit1.fluidCoolingporttop) annotation (Line(points={{-10,18},
            {-3,18},{-3,23},{14,23},{14,19.0005}},                                                                                       color={191,0,0}));
   connect(pipe3.heatPort, processingUnit1.fluidCoolingportbottom) annotation (Line(points={{-10,-2},
            {-4,-2},{-4,-6},{14,-6},{14,-3.00002}},                                                                                          color={191,0,0}));
   connect(pipe4.heatPort, processingUnit2.fluidCoolingporttop) annotation (Line(points={{-10,-22},
            {-5,-22},{-5,-8},{14,-8},{14,-11}},                                                                                        color={191,0,0}));
   connect(pipe5.heatPort, processingUnit2.fluidCoolingportbottom) annotation (Line(points={{-11,-42},
            {-3,-42},{-3,-35},{14,-35},{14,-33}},                                                                                           color={191,0,0}));
   connect(pipe6.heatPort, processingUnit3.fluidCoolingporttop) annotation (Line(points={{-11,-63},
            {-2,-63},{-2,-38},{14,-38},{14,-41}},                                                                                        color={191,0,0}));
   connect(pipe7.heatPort, processingUnit3.fluidCoolingportbottom) annotation (Line(points={{-11,-83},
            {13,-83},{13,-63},{14,-63}},                                                                                           color={191,0,0}));
   connect(internaltemperature1.y, processingUnit4.InternalHeatgenerationport) annotation (Line(points={{83,-205.8},{34.9457,-205.8},{34.9457,-234},{10.0001,-234}}, color={0,0,127}));
   connect(roomTemperature1.port_b, processingUnit4.Roomtemperatureport) annotation (Line(points={{83,-175.8},{70.2552,-175.8},{70.2552,-225},{9.0001,-225}}, color={191,0,0}));
   connect(roomTemperature1.port_b, processingUnit5.Roomtemperatureport) annotation (Line(points={{83,-175.8},{70.2639,-175.8},{70.2639,-256},{9.0001,-256},{9.0001,-255}}, color={191,0,0}));
   connect(roomTemperature1.port_b, processingUnit6.Roomtemperatureport) annotation (Line(points={{83,-175.8},{69.9844,-175.8},{69.9844,-285},{9.0001,-285}}, color={191,0,0}));
   connect(roomTemperature1.port_b, processingUnit7.Roomtemperatureport) annotation (Line(points={{83,-175.8},{70.2639,-175.8},{70.2639,-315},{9.0001,-315}}, color={191,0,0}));
   connect(processingUnit5.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{10.0001,-264},{34.6749,-264},{34.6749,-205.8},{83,-205.8}}, color={0,0,127}));
   connect(processingUnit6.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{10.0001,-294},{34.9458,-294},{34.9458,-205.8},{83,-205.8}}, color={0,0,127}));
   connect(processingUnit7.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{10.0001,-324},{34.9457,-324},{34.9457,-205.8},{83,-205.8}}, color={0,0,127}));
   connect(internaltemperature2.y, processingUnit8.InternalHeatgenerationport) annotation (Line(points={{98,302.2},{48.9067,302.2},{48.9067,274},{25.0011,274}}, color={0,0,127}));
   connect(roomTemperature2.port_b, processingUnit8.Roomtemperatureport) annotation (Line(points={{98,
            332.2},{57.6562,332.2},{57.6562,283},{24.001,283}},                                                                                           color={191,0,0}));
   connect(roomTemperature2.port_b, processingUnit9.Roomtemperatureport) annotation (Line(points={{98,
            332.2},{57.9101,332.2},{57.9101,252},{24.001,252},{24.001,253.001}},                                                                                           color={191,0,0}));
   connect(roomTemperature2.port_b, processingUnit10.Roomtemperatureport) annotation (Line(points={{98,
            332.2},{57.6332,332.2},{57.6332,223},{24.001,223}},                                                                                            color={191,0,0}));
   connect(roomTemperature2.port_b, processingUnit11.Roomtemperatureport) annotation (Line(points={{98,
            332.2},{57.6422,332.2},{57.6422,193},{24.001,193}},                                                                                            color={191,0,0}));
   connect(processingUnit10.InternalHeatgenerationport, internaltemperature2.y) annotation (Line(points={{25.0011,214},{48.6527,214},{48.6527,302.2},{98,302.2}}, color={0,0,127}));
   connect(processingUnit11.InternalHeatgenerationport, internaltemperature2.y) annotation (Line(points={{25.0011,184},{48.6527,184},{48.6527,302.2},{98,302.2}}, color={0,0,127}));
   connect(processingUnit9.InternalHeatgenerationport, internaltemperature2.y) annotation (Line(points={{25.0011,
            244},{48.9067,244},{48.9067,302.2},{98,302.2}},                                                                                                      color={0,0,127}));
   connect(pipe9.flowPort_a, pipe8.flowPort_b) annotation (Line(points={{-21,293},{-21,292},{-21,292},{-21,292}}, color={255,0,0}));
   connect(pipe9.flowPort_b, pipe10.flowPort_a) annotation (Line(points={{-21,273},{-21,272},{-21,272},{-21,272}}, color={255,0,0}));
   connect(pipe13.flowPort_a, pipe12.flowPort_b) annotation (Line(points={{-22,212},{-11.58,212},{-11.58,212},{-21,212}}, color={255,0,0}));
   connect(pipe14.flowPort_a, pipe13.flowPort_b) annotation (Line(points={{-22,192},{-22,192},{-22,192},{-22,192}}, color={255,0,0}));
   connect(pipe15.flowPort_a, pipe14.flowPort_b) annotation (Line(points={{-22,171},{-21.5,171},{-21.5,172},{-22,172}}, color={255,0,0}));
   connect(pipe15.flowPort_b, ambient4.flowPort) annotation (Line(points={{-22,151},{-22,144},{100,144}}, color={255,0,0}));
   connect(pipe8.heatPort, processingUnit8.fluidCoolingporttop) annotation (Line(points={{-11,302},{13.0005,302},{13.0005,293}}, color={191,0,0}));
   connect(pipe9.heatPort, processingUnit8.fluidCoolingportbottom) annotation (Line(points={{-11,283},{-4,283},{-4,268},{13.0005,268},{13.0005,271}}, color={191,0,0}));
   connect(pipe10.heatPort, processingUnit9.fluidCoolingporttop) annotation (Line(points={{-11,262},
            {-4,262},{-4,267.19},{13.0005,267.19},{13.0005,263.001}},                                                                                         color={191,0,0}));
   connect(pipe11.heatPort, processingUnit9.fluidCoolingportbottom) annotation (Line(points={{-11,241},
            {-11,243},{-5,243},{-5,241},{13.0005,241}},                                                                                            color={191,0,0}));
   connect(pipe12.heatPort, processingUnit10.fluidCoolingporttop) annotation (Line(points={{-11,222},{-11,222},{-11,236.221},{13.0005,236.221},{13.0005,233}}, color={191,0,0}));
   connect(pipe13.heatPort, processingUnit10.fluidCoolingportbottom) annotation (Line(points={{-12,202},{-4.254,202},{-4.254,209},{13.0005,209},{13.0005,211}}, color={191,0,0}));
   connect(pipe14.heatPort, processingUnit11.fluidCoolingporttop) annotation (Line(points={{-12,182},{-3,182},{-3,206},{13.0005,206},{13.0005,203}}, color={191,0,0}));
   connect(pipe15.heatPort, processingUnit11.fluidCoolingportbottom) annotation (Line(points={{-12,161},{12,161},{12,181},{13.0005,181}}, color={191,0,0}));
   connect(volumeFlow1.flowPort_a, ambient3.flowPort) annotation (Line(points={{-81,145},{-99.5,145},{-99.5,144},{-101,144}}, color={255,0,0}));
   connect(volumeFlow1.flowPort_b, pipe8.flowPort_a) annotation (Line(points={{-61,145},{-48,145},{-48,329},{-21,329},{-21,312}}, color={255,0,0}));
   connect(volumeFlow.y, volumeFlow1.volumeFlow) annotation (Line(points={{-91,181},{-71,181},{-71,155}}, color={0,0,127}));
   connect(pipe11.flowPort_a, pipe10.flowPort_b) annotation (Line(points={{-21,251},{-20.5,251},{-20.5,252},{-21,252}}, color={255,0,0}));
   connect(pipe11.flowPort_b, pipe12.flowPort_a) annotation (Line(points={{-21,231},{-20.5,231},{-20.5,232},{-21,232}}, color={255,0,0}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
 end withcooling;

 model CPU
   inner Modelica.Fluid.System system
     annotation (Placement(transformation(extent={{-38,22},{-18,42}})));
   Pipes.Flatpipe flatpipe
     annotation (Placement(transformation(extent={{-38,0},{-18,20}})));
   Pipes.Downhillpipe downhillpipe annotation (Placement(transformation(extent={{15,20},
              {35,40}})));
   Pipes.Flatpipe flatpipe2
     annotation (Placement(transformation(extent={{42,60},{62,40}})));
   Pipes.Flatpipe flatpipe3
     annotation (Placement(transformation(extent={{42,0},{62,20}})));
   Pipes.Downhillpipe downhillpipe4
     annotation (Placement(transformation(extent={{72,20},{92,40.0001}})));
    Pipes.Uphill uphill
      annotation (Placement(transformation(extent={{-8,20},{12,40}})));
    Pipes.Flatpipe flatpipe1
      annotation (Placement(transformation(extent={{102,0},{122,20}})));
    ProcessingUnit processingUnit
      annotation (Placement(transformation(extent={{42,20},{62,40}})));
    Sources.RoomTemperature roomTemperature
      annotation (Placement(transformation(extent={{100,80},{120,100}})));
    Sources.Internaltemperature internaltemperature
      annotation (Placement(transformation(extent={{100,54},{120,74}})));
    Modelica.Fluid.Vessels.ClosedVolume volume(
      redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase,
      use_portsData=false,
      V=1.6387064e-05*(24*24*24),
      nPorts=2) annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-126,-3})));
   Modelica.Fluid.Machines.PrescribedPump
                           pumps(
      checkValve=true,
      checkValveHomotopy=Modelica.Fluid.Types.CheckValveHomotopyType.Closed,
      N_nominal=1200,
      redeclare function flowCharacteristic =
          Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow
          (V_flow_nominal={0,0.25,0.5}, head_nominal={100,60,0}),
      use_N_in=true,
      nParallel=1,
      energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
      V(displayUnit="l") = 0.05,
      massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
      redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase,
      p_b_start=600000,
      T_start=system.T_start)
     annotation (Placement(transformation(extent={{-78,0},{-58,20}})));
    Modelica.Blocks.Sources.Constant const(k=2)
      annotation (Placement(transformation(extent={{-138,29},{-118,49}})));
 equation
    connect(flatpipe.port_b, uphill.port_a) annotation (Line(points={{-18,10},{
            2.00001,10},{2.00001,20}}, color={0,127,255}));
    connect(uphill.port_b, flatpipe2.port_a)
      annotation (Line(points={{2,40},{2,50},{42,50}}, color={0,127,255}));
    connect(uphill.port_b, downhillpipe.port_a) annotation (Line(points={{2,40},
            {2,50},{25,50},{25,40}}, color={0,127,255}));
    connect(downhillpipe.port_b, flatpipe3.port_a)
      annotation (Line(points={{25,20},{25,10},{42,10}}, color={0,127,255}));
    connect(flatpipe2.port_b, downhillpipe4.port_a) annotation (Line(points={{
            62,50},{82,50},{82,40.0001}}, color={0,127,255}));
    connect(flatpipe3.port_b, flatpipe1.port_a) annotation (Line(points={{62,10},
            {81.6821,10},{81.6821,10},{102,10}}, color={0,127,255}));
    connect(downhillpipe4.port_b, flatpipe1.port_a)
      annotation (Line(points={{82,20},{82,10},{102,10}}, color={0,127,255}));
    connect(roomTemperature.port_b, processingUnit.Roomtemperatureport)
      annotation (Line(points={{99,90.2},{71.7661,90.2},{71.7661,31},{63,31}},
          color={191,0,0}));
    connect(internaltemperature.y, processingUnit.InternalHeatgenerationport)
      annotation (Line(points={{99,64.2},{71.7661,64.2},{71.7661,22},{64,22}},
          color={0,0,127}));
    connect(flatpipe1.port_b, volume.ports[1]) annotation (Line(points={{122,10},
            {132.599,10},{132.599,-18},{-116,-18},{-116,-4}}, color={0,127,255}));
    connect(volume.ports[2], pumps.port_a) annotation (Line(points={{-116,-2},{
            -116,10},{-78,10}}, color={0,127,255}));
    connect(pumps.port_b, flatpipe.port_a) annotation (Line(points={{-58,10},{
            -53.1184,10},{-53.1184,10},{-38,10}}, color={0,127,255}));
    connect(const.y, pumps.N_in)
      annotation (Line(points={{-117,39},{-68,39},{-68,20}}, color={0,0,127}));
    connect(flatpipe2.heatPorts_a, processingUnit.fluidCoolingporttop)
      annotation (Line(points={{52,47},{52,47},{52,41},{52,41}}, color={127,0,0}));
    connect(flatpipe3.heatPorts_a, processingUnit.fluidCoolingportbottom)
      annotation (Line(points={{52,13},{46,13},{46,19},{52,19}}, color={127,0,0}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(
          coordinateSystem(preserveAspectRatio=false)));
 end CPU;
end Example;
