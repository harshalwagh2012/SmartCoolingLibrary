within SmartCoolingLibrary;
model DataCenter
  inner Modelica.Fluid.System system annotation (Placement(transformation(extent={{36.9098,-17.7732},{56.9098,2.22681}})));
  Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{38.9098,-169.773},{58.9101,-149.773}})));
  Modelica.Fluid.Vessels.OpenTank tank(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                           crossArea=0.01, height=2, level_start=1, use_portsData=true, massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial, use_HeatTransfer=true, portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.01),Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.01)}, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer (                                                                                                                                                                                                        k=10), ports(each p(start=1.1e5)), T_start=Modelica.Units.Conversions.from_degC(20), nPorts=2) annotation (Placement(transformation(extent={{16.9098,-153.773},{36.9098,-133.773}})));
public
  Modelica.Fluid.Sensors.Temperature sensor_T_forward(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase)                                                                          annotation (Placement(transformation(extent={{0.90979,-151.773},{-19.0902,-131.773}})));
  ProcessingUnit processingUnit4 annotation (Placement(transformation(extent={{250.91,-67.7732},{270.91,-47.7732}})));
  Sources.RoomTemperature roomTemperature1 annotation (Placement(transformation(extent={{354,-18},{374,2.00001}})));
  Sources.Internaltemperature internaltemperature1 annotation (Placement(transformation(extent={{346.91,-47.7732},{366.91,-27.7732}})));
  ProcessingUnit processingUnit5 annotation (Placement(transformation(extent={{250.91,-97.7732},{270.91,-77.7735}})));
  ProcessingUnit processingUnit6 annotation (Placement(transformation(extent={{250.91,-127.773},{270.91,-107.773}})));
  ProcessingUnit processingUnit7 annotation (Placement(transformation(extent={{250.91,-157.773},{270.91,-137.773}})));
  Modelica.Fluid.Pipes.DynamicPipe pipe2(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{68.9098,-169.773},{88.9101,-149.773}})));
  Modelica.Fluid.Pipes.DynamicPipe pipe3(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{-10.0001,-10},{10.0002,10}}, rotation=90, origin={98.9098,-109.773})));
  Modelica.Fluid.Pipes.DynamicPipe pipe4(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{10.0001,10},{-10.0002,-10}}, rotation=90, origin={130.91,-13.7733})));
  Modelica.Fluid.Pipes.DynamicPipe pipe5(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{10.0001,10},{-10.0002,-10}}, rotation=90, origin={130.91,-35.7733})));
  Modelica.Fluid.Pipes.DynamicPipe pipe6(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{10.0001,10},{-10.0002,-10}}, rotation=90, origin={130.91,-57.7733})));
  Modelica.Fluid.Pipes.DynamicPipe pipe7(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{10.0001,10},{-10.0001,-10}}, rotation=90, origin={130.91,-79.7733})));
  Modelica.Fluid.Pipes.DynamicPipe pipe8(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{-10.0001,-10},{10.0001,10}}, rotation=-90, origin={130.91,-101.773})));
  Modelica.Fluid.Pipes.DynamicPipe pipe9(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                             length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{-10.0001,-10},{10.0001,10}}, rotation=-90, origin={130.91,-123.773})));
  Modelica.Fluid.Pipes.DynamicPipe pipe10(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                              length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{-10.0001,-10},{10.0002,10}}, rotation=-90, origin={130.91,-145.773})));
  Modelica.Fluid.Pipes.DynamicPipe pipe11(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                              length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{-10.0001,-9.99985},{10.0002,9.99985}}, rotation=-90, origin={130.91,-167.773})));
  Modelica.Fluid.Pipes.DynamicPipe pipe12(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                              length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{90.9098,-199.773},{70.9095,-179.773}})));
  Modelica.Fluid.Pipes.DynamicPipe pipe13(redeclare package Medium =
        Modelica.Media.Water.StandardWaterOnePhase,                                                              length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
      model                                                                                                                                                                                                         HeatTransfer =
        Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{58.9098,-199.773},{38.9095,-179.773}})));
protected
  Modelica.Blocks.Interfaces.RealOutput T_forward(unit="K") annotation (Placement(transformation(extent={{-25.0902,-147.773},{-37.0902,-135.773}})));
equation
  connect(T_forward, sensor_T_forward.T) annotation (Line(points={{-31.0902,-141.773},{-16.0902,-141.773},{-16.0902,-141.773}}, color={0,0,127}));
  connect(internaltemperature1.y, processingUnit4.InternalHeatgenerationport) annotation (Line(points={{345.91,-37.5732},{299.288,-37.5732},{299.288,-65.7732},{272.91,-65.7732}}, color={0,0,127}));
  connect(roomTemperature1.port_b, processingUnit4.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{350.833,-7.79999},{350.833,-56.7732},{271.91,-56.7732}}, color={191,0,0}));
  connect(roomTemperature1.port_b, processingUnit5.Roomtemperatureport) annotation (Line(points={{353,
          -7.79999},{349.618,-7.79999},{349.618,-89.7732},{271.91,-89.7732},{
          271.91,-86.7734}},                                                                                                                                                                color={191,0,0}));
  connect(roomTemperature1.port_b, processingUnit6.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{350.562,-7.79999},{350.562,-116.773},{271.91,-116.773}}, color={191,0,0}));
  connect(roomTemperature1.port_b, processingUnit7.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{349.618,-7.79999},{349.618,-146.773},{271.91,-146.773}}, color={191,0,0}));
  connect(processingUnit5.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{272.91,
          -95.7732},{299.017,-95.7732},{299.017,-37.5732},{345.91,-37.5732}},                                                                                                      color={0,0,127}));
  connect(processingUnit6.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{272.91,-125.773},{299.288,-125.773},{299.288,-37.5732},{345.91,-37.5732}}, color={0,0,127}));
  connect(processingUnit7.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{272.91,-155.773},{299.288,-155.773},{299.288,-37.5732},{345.91,-37.5732}}, color={0,0,127}));
  connect(pipe5.port_a, pipe4.port_b) annotation (Line(points={{130.91,-25.7732},{130.91,-25.7732},{130.91,-23.7735},{130.91,-23.7735}}, color={0,127,255}));
  connect(pipe6.port_a, pipe5.port_b) annotation (Line(points={{130.91,-47.7732},{130.91,-47.7732},{130.91,-45.7735},{130.91,-45.7735}}, color={0,127,255}));
  connect(pipe7.port_a, pipe6.port_b) annotation (Line(points={{130.91,-69.7732},{130.91,-69.7732},{130.91,-67.7735},{130.91,-67.7735}}, color={0,127,255}));
  connect(pipe8.port_a, pipe7.port_b) annotation (Line(points={{130.91,-91.7729},{130.91,-91.7729},{130.91,-89.7734},{130.91,-89.7734}}, color={0,127,255}));
  connect(pipe9.port_a, pipe8.port_b) annotation (Line(points={{130.91,-113.773},
          {130.91,-113.773},{130.91,-111.773},{130.91,-111.773}},                                                                        color={0,127,255}));
  connect(pipe10.port_a, pipe9.port_b) annotation (Line(points={{130.91,
          -135.773},{130.91,-135.773},{130.91,-133.773},{130.91,-133.773}},                                                               color={0,127,255}));
  connect(pipe11.port_a, pipe10.port_b) annotation (Line(points={{130.91,
          -157.773},{130.91,-155.773},{130.91,-155.773}},                                                                color={0,127,255}));
  connect(tank.ports[1], pipe1.port_a) annotation (Line(points={{25.9098,-153.773},{25.9098,-159.773},{38.9098,-159.773}}, color={0,127,255}));
  connect(pipe2.port_a, pipe1.port_b) annotation (Line(points={{68.9098,-159.773},{58.9101,-159.773}}, color={0,127,255}));
  connect(pipe3.port_a, pipe2.port_b) annotation (Line(points={{98.9098,
          -119.773},{98.9098,-159.773},{88.9101,-159.773}},                                                               color={0,127,255}));
  connect(pipe3.port_b, pipe4.port_a) annotation (Line(points={{98.9098,-99.7728},{98.9098,2.22681},{130.91,2.22681},{130.91,-3.77319}}, color={0,127,255}));
  connect(pipe11.port_b, pipe12.port_a) annotation (Line(points={{130.91,
          -177.773},{130.91,-185.773},{90.9098,-185.773},{90.9098,-189.773}},                                                                color={0,127,255}));
  connect(pipe12.port_b, pipe13.port_a) annotation (Line(points={{70.9095,-189.773},{70.9095,-189.773},{58.9098,-189.773}}, color={0,127,255}));
  connect(pipe13.port_b, tank.ports[2]) annotation (Line(points={{38.9095,-189.773},{24.9098,-189.773},{24.9098,-153.773},{27.9098,-153.773}}, color={0,127,255}));
  connect(sensor_T_forward.port, pipe13.port_b) annotation (Line(points={{-9.09021,-151.773},{-9.09021,-189.773},{38.9095,-189.773},{38.9095,-189.773}}, color={0,127,255}));
  connect(pipe4.heatPorts[2], processingUnit4.fluidCoolingporttop) annotation (Line(points={{135.31,
          -13.8734},{260.91,-13.8734},{260.91,-46.7732}},                                                                                           color={127,0,0}));
  connect(pipe5.heatPorts[2], processingUnit4.fluidCoolingportbottom) annotation (Line(points={{135.31,
          -35.8734},{240.91,-35.8734},{240.91,-71.7732},{260.91,-71.7732},{
          260.91,-68.7732}},                                                                                                                                                               color={127,0,0}));
  connect(pipe6.heatPorts[2], processingUnit5.fluidCoolingporttop) annotation (Line(points={{135.31,
          -57.8734},{184.91,-57.8734},{184.91,-76.7735},{260.91,-76.7735}},                                                                                           color={127,0,0}));
  connect(pipe7.heatPorts[2], processingUnit5.fluidCoolingportbottom) annotation (Line(points={{135.31,
          -79.8733},{174.91,-79.8733},{174.91,-98.7732},{260.91,-98.7732}},                                                                                              color={127,0,0}));
  connect(pipe8.heatPorts[2], processingUnit6.fluidCoolingporttop) annotation (Line(points={{135.31,-101.873},{172.91,-101.873},{172.91,-106.773},{260.91,-106.773}}, color={127,0,0}));
  connect(pipe9.heatPorts[2], processingUnit6.fluidCoolingportbottom) annotation (Line(points={{135.31,-123.873},{238.91,-123.873},{238.91,-127.773},{260.91,-127.773},{260.91,-128.773}}, color={127,0,0}));
  connect(pipe10.heatPorts[2], processingUnit7.fluidCoolingporttop) annotation (Line(points={{135.31,
          -145.873},{226.91,-145.873},{226.91,-136.773},{260.91,-136.773}},                                                                                            color={127,0,0}));
  connect(pipe11.heatPorts[2], processingUnit7.fluidCoolingportbottom) annotation (Line(points={{135.31,
          -167.873},{256.91,-167.873},{256.91,-158.773},{260.91,-158.773}},                                                                                               color={127,0,0}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-142,158},{930,-132}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{506,104},{702,-78}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-96,124},{436,-106}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-144,478},{928,188}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{504,424},{700,242}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-98,444},{434,214}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-148,796},{924,506}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{500,742},{696,560}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-102,762},{430,532}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-150,1122},{922,832}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{498,1068},{694,886}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-104,1088},{428,858}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
end DataCenter;
