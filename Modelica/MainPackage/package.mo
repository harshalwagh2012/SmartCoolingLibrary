package SmartCoolingLibrary
  annotation (version="1.0.0", uses(Modelica(version="4.0.0")));
  model Main
    parameter Modelica.Thermal.FluidHeatFlow.Media.Medium medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC() "Medium";
    inner Modelica.Fluid.System system annotation (Placement(transformation(extent={{-87,-167},{-67,-147}})));
    Pipes.Flatpipe flatpipe annotation (Placement(transformation(extent={{-87,-189},{-67,-169}})));
    Pipes.Downhillpipe downhillpipe annotation (Placement(transformation(extent={{-27,0},{-7,20}})));
    Pipes.Flatpipe flatpipe2
      annotation (Placement(transformation(extent={{0,40},{20,20}})));
    Pipes.Flatpipe flatpipe3
      annotation (Placement(transformation(extent={{0,-20},{20,-1e-05}})));
    Pipes.Downhillpipe downhillpipe4 annotation (Placement(transformation(extent={{30,-6.2548e-46},{50,20.0001}})));
    Pipes.Uphill uphill
      annotation (Placement(transformation(extent={{-50,0},{-30,20}})));
    Pipes.Flatpipe flatpipe1
      annotation (Placement(transformation(extent={{54,-188},{74,-168}})));
    ProcessingUnit processingUnit
      annotation (Placement(transformation(extent={{0,0},{20,20}})));
    Sources.RoomTemperature roomTemperature
      annotation (Placement(transformation(extent={{58,60},{78,80}})));
    Sources.Internaltemperature internaltemperature
      annotation (Placement(transformation(extent={{58,34},{78,54}})));
    Modelica.Fluid.Vessels.ClosedVolume volume(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, use_portsData=false, V=1.6387064e-05*(24*24*24), nPorts=2) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-175,-192})));
    Modelica.Fluid.Machines.PrescribedPump pumps(checkValve=true, checkValveHomotopy=Modelica.Fluid.Types.CheckValveHomotopyType.Closed, N_nominal=1200, redeclare function flowCharacteristic = Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (V_flow_nominal={0,0.25,0.5}, head_nominal={100,60,0}), use_N_in=true, nParallel=1, energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial, V(displayUnit="l") = 0.05, massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial, redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, p_b_start=600000, T_start=system.T_start) annotation (Placement(transformation(extent={{-127,-189},{-107,-169}})));
    Modelica.Blocks.Sources.Constant const(k=2)
      annotation (Placement(transformation(extent={{-187,-160},{-167,-140}})));
    Pipes.Downhillpipe downhillpipe1 annotation (Placement(transformation(extent={{-27,-54},{-7.00001,-34}})));
    Pipes.Flatpipe flatpipe4
      annotation (Placement(transformation(extent={{1,-15},{21,-35}})));
    Pipes.Flatpipe flatpipe5 annotation (Placement(transformation(extent={{1,-75},{21,-54.9996}})));
    Pipes.Downhillpipe downhillpipe2 annotation (Placement(transformation(extent={{30,-55},{50,-34.9999}})));
    ProcessingUnit processingUnit1
      annotation (Placement(transformation(extent={{1,-55},{21,-35}})));
    Pipes.Downhillpipe downhillpipe3 annotation (Placement(transformation(extent={{-25,-113},{-5,-93}})));
    Pipes.Flatpipe flatpipe6
      annotation (Placement(transformation(extent={{2,-73},{22,-93}})));
    Pipes.Flatpipe flatpipe7
      annotation (Placement(transformation(extent={{2,-133},{22,-113}})));
    Pipes.Downhillpipe downhillpipe5
      annotation (Placement(transformation(extent={{30,-113},{50,-93}})));
    ProcessingUnit processingUnit2
      annotation (Placement(transformation(extent={{2,-113},{22,-93}})));
    Pipes.Downhillpipe downhillpipe6 annotation (Placement(transformation(extent={{-25,-169},{-5,-149}})));
    Pipes.Flatpipe flatpipe8
      annotation (Placement(transformation(extent={{2,-129},{22,-149}})));
    Pipes.Flatpipe flatpipe9
      annotation (Placement(transformation(extent={{2,-189},{22,-169}})));
    Pipes.Downhillpipe downhillpipe7
      annotation (Placement(transformation(extent={{30,-170},{50,-150}})));
    ProcessingUnit processingUnit3
      annotation (Placement(transformation(extent={{2,-169},{22,-149}})));
  public
    Modelica.Fluid.Sensors.Temperature sensor_T_forward(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{96,-172},{76,-152}})));
  public
    Modelica.Fluid.Sensors.Temperature sensor_T_forward1(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{-68.6692,-130.954},{-88.6692,-110.954}})));
  protected
    Modelica.Blocks.Interfaces.RealOutput T_forward(unit="K") annotation (Placement(transformation(extent={{70,-168},{58,-156}})));
  protected
    Modelica.Blocks.Interfaces.RealOutput T_forward1(unit="K") annotation (Placement(transformation(extent={{-94.6692,-126.954},{-106.669,-114.954}})));
  equation
    connect(flatpipe.port_b, uphill.port_a) annotation (Line(points={{-67,-179},{-40,-179},{-40,0}}, color={0,127,255}));
    connect(uphill.port_b, flatpipe2.port_a)
      annotation (Line(points={{-40,20},{-40,30},{0,30}}, color={0,127,255}));
    connect(uphill.port_b, downhillpipe.port_a) annotation (Line(points={{-40,20},{-40,30},{-17,30},{-17,20}}, color={0,127,255}));
    connect(downhillpipe.port_b, flatpipe3.port_a)
      annotation (Line(points={{-17,0},{-17,-10},{0,-10}}, color={0,127,255}));
    connect(flatpipe2.port_b, downhillpipe4.port_a) annotation (Line(points={{20,30},{40,30},{40,20.0001}}, color={0,127,255}));
    connect(roomTemperature.port_b, processingUnit.Roomtemperatureport) annotation (Line(points={{57,70.2},{30,70.2},{30,11},{21,11}}, color={191,0,0}));
    connect(internaltemperature.y, processingUnit.InternalHeatgenerationport) annotation (Line(points={{57,44.2},{30,44.2},{30,2},{22,2}}, color={0,0,127}));
    connect(volume.ports[1], pumps.port_a) annotation (Line(points={{-165,-193},{-165,-179},{-127,-179}}, color={0,127,255}));
    connect(pumps.port_b, flatpipe.port_a) annotation (Line(points={{-107,-179},{-101.884,-179},{-101.884,-179},{-87,-179}}, color={0,127,255}));
    connect(const.y, pumps.N_in) annotation (Line(points={{-166,-150},{-117,-150},{-117,-169}}, color={0,0,127}));
    connect(flatpipe2.heatPorts_a, processingUnit.fluidCoolingporttop)
      annotation (Line(points={{10,27},{10,21}}, color={127,0,0}));
    connect(flatpipe3.heatPorts_a, processingUnit.fluidCoolingportbottom)
      annotation (Line(points={{10,-7.00001},{10,-1}}, color={127,0,0}));
    connect(downhillpipe1.port_b, flatpipe5.port_a) annotation (Line(points={{-17,-54},{-17,-64.9998},{1,-64.9998}}, color={0,127,255}));
    connect(flatpipe4.port_b, downhillpipe2.port_a) annotation (Line(points={{21,-25},{40,-25},{40,-34.9999}}, color={0,127,255}));
    connect(flatpipe4.heatPorts_a, processingUnit1.fluidCoolingporttop) annotation (Line(points={{11,-28},{11,-28},{11,-34},{11,-34}}, color={127,0,0}));
    connect(flatpipe5.heatPorts_a, processingUnit1.fluidCoolingportbottom) annotation (Line(points={{11,-61.9997},{11,-61.0288},{11,-61.0288},{11,-59.0045},{11,-56},{11,-56}}, color={127,0,0}));
    connect(downhillpipe3.port_b, flatpipe7.port_a) annotation (Line(points={{-15,-113},{-15,-123},{2,-123}}, color={0,127,255}));
    connect(flatpipe6.port_b, downhillpipe5.port_a) annotation (Line(points={{22,-83},{40,-83},{40,-93}}, color={0,127,255}));
    connect(flatpipe6.heatPorts_a, processingUnit2.fluidCoolingporttop) annotation (Line(points={{12,-86},{12,-86},{12,-92},{12,-92}}, color={127,0,0}));
    connect(flatpipe7.heatPorts_a, processingUnit2.fluidCoolingportbottom) annotation (Line(points={{12,-120},{12,-118},{13,-118},{13,-115.938},{13,-114},{12,-114}}, color={127,0,0}));
    connect(downhillpipe6.port_b, flatpipe9.port_a) annotation (Line(points={{-15,-169},{-15,-179},{2,-179}}, color={0,127,255}));
    connect(flatpipe8.port_b, downhillpipe7.port_a) annotation (Line(points={{22,-139},{40,-139},{40,-150}}, color={0,127,255}));
    connect(flatpipe8.heatPorts_a, processingUnit3.fluidCoolingporttop) annotation (Line(points={{12,-142},{12,-143},{12,-143},{13,-143},{13,-148},{12,-148}}, color={127,0,0}));
    connect(flatpipe9.heatPorts_a, processingUnit3.fluidCoolingportbottom) annotation (Line(points={{12,-176},{12,-175},{13,-175},{13,-172.556},{13,-170},{12,-170}}, color={127,0,0}));
    connect(downhillpipe4.port_b, downhillpipe2.port_a) annotation (Line(points={{40,0},{40,-34.9999},{40,-34.9999}}, color={0,127,255}));
    connect(downhillpipe2.port_b, downhillpipe5.port_a) annotation (Line(points={{40,-55},{40,-93},{40,-93}}, color={0,127,255}));
    connect(downhillpipe5.port_b, downhillpipe7.port_a) annotation (Line(points={{40,-113},{40,-150},{40,-150}}, color={0,127,255}));
    connect(downhillpipe.port_b, flatpipe4.port_a)
      annotation (Line(points={{-17,0},{-17,-25},{1,-25}}, color={0,127,255}));
    connect(downhillpipe.port_b, downhillpipe1.port_a) annotation (Line(points={{-17,0},{-17,-34},{-17,-34}}, color={0,127,255}));
    connect(flatpipe5.port_b, downhillpipe5.port_a) annotation (Line(points={{21,-64.9998},{40,-64.9998},{40,-93}}, color={0,127,255}));
    connect(downhillpipe1.port_b, downhillpipe3.port_a) annotation (Line(points={{-17,-54},{-17,-93},{-15,-93}}, color={0,127,255}));
    connect(downhillpipe3.port_b, downhillpipe6.port_a)
      annotation (Line(points={{-15,-113},{-15,-149}}, color={0,127,255}));
    connect(flatpipe7.port_b, downhillpipe7.port_a) annotation (Line(points={{22,-123},{40,-123},{40,-150}}, color={0,127,255}));
    connect(downhillpipe3.port_b, flatpipe8.port_a) annotation (Line(points={{-15,-113},{-15,-139},{2,-139}}, color={0,127,255}));
    connect(flatpipe3.port_b, downhillpipe2.port_a) annotation (Line(points={{20,-10},{40,-10},{40,-34.9999}}, color={0,127,255}));
    connect(downhillpipe7.port_b, flatpipe1.port_a) annotation (Line(points={{40,-170},{40,-178},{54,-178}}, color={0,127,255}));
    connect(flatpipe9.port_b, flatpipe1.port_a) annotation (Line(points={{22,-179},{54,-179},{54,-178}}, color={0,127,255}));
    connect(flatpipe1.port_b, volume.ports[2]) annotation (Line(points={{74,-178},{87,-178},{87,-209},{-165,-209},{-165,-191}}, color={0,127,255}));
    connect(processingUnit1.Roomtemperatureport, roomTemperature.port_b) annotation (Line(points={{22,-44},{30,-44},{30,70.2},{57,70.2}}, color={191,0,0}));
    connect(processingUnit2.Roomtemperatureport, roomTemperature.port_b) annotation (Line(points={{23,-102},{30,-102},{30,70.2},{57,70.2}}, color={191,0,0}));
    connect(processingUnit3.Roomtemperatureport, roomTemperature.port_b) annotation (Line(points={{23,-158},{30,-158},{30,70.2},{57,70.2}}, color={191,0,0}));
    connect(processingUnit1.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{23,-53},{31,-53},{31,44.2},{57,44.2}}, color={0,0,127}));
    connect(processingUnit2.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{24,-111},{31,-111},{31,44.2},{57,44.2}}, color={0,0,127}));
    connect(processingUnit3.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{24,-167},{31,-167},{31,44.2},{57,44.2}}, color={0,0,127}));
    connect(flatpipe1.port_b, sensor_T_forward.port) annotation (Line(points={{74,-178},{86,-178},{86,-172}}, color={0,127,255}));
    connect(sensor_T_forward.T, T_forward)
      annotation (Line(points={{79,-162},{64,-162}}, color={0,0,127}));
    connect(flatpipe.port_b, sensor_T_forward1.port) annotation (Line(points={{-67,-179},{-52,-179},{-52,-130.954},{-78.6692,-130.954}}, color={0,127,255}));
    connect(sensor_T_forward1.T, T_forward1) annotation (Line(points={{-85.6692,-120.954},{-100.669,-120.954}}, color={0,0,127}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
  end Main;

  model ProcessingUnit
    Modelica.Thermal.HeatTransfer.Components.HeatCapacitor PUheatCapacitor1(C=175)
      annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalConductor FluidCoolingsidetop(G=158.4) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-20,60})));
    Modelica.Thermal.HeatTransfer.Components.ThermalConductor Fluidcoolingsidebottom(G=158.4) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-20,-50})));
    Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow PUInternalHeatgenartion annotation (Placement(transformation(extent={{56,-20},{36.0001,3e-05}})));
    Modelica.Thermal.HeatTransfer.Components.ThermalConductor Roomtemperature(G=0.1)
      annotation (Placement(transformation(extent={{34,10},{54,30}})));
    Modelica.Blocks.Interfaces.RealInput InternalHeatgenerationport annotation (Placement(transformation(extent={{140,-30},{100,10}}), iconTransformation(extent={{140,-100},{100,-60}})));
    Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b fluidCoolingporttop annotation (Placement(transformation(extent={{-32,94},{-12,114}}), iconTransformation(extent={{-10,100},{10,120}})));
    Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b fluidCoolingportbottom annotation (Placement(transformation(extent={{-28,-114},{-8,-94}}), iconTransformation(extent={{-10,-120},{10,-100}})));
    Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b Roomtemperatureport annotation (Placement(transformation(extent={{94,10},{114,30}}), iconTransformation(extent={{100,0},{120,20}})));
  equation
    connect(FluidCoolingsidetop.port_a, PUheatCapacitor1.port) annotation (Line(points={{-20,50},{-20,50},{-20,-10},{-20,-10}}, color={191,0,0}));
    connect(PUInternalHeatgenartion.port, PUheatCapacitor1.port) annotation (Line(points={{36.0001,-9.99999},{-5.88403,-9.99999},{-5.88403,-10},{-20,-10}}, color={191,0,0}));
    connect(Fluidcoolingsidebottom.port_a, PUheatCapacitor1.port) annotation (Line(points={{-20,-40},{-20,-40},{-20,-10},{-20,-10}}, color={191,0,0}));
    connect(Roomtemperature.port_a, PUheatCapacitor1.port) annotation (Line(points={{34,20},{4.116,20},{4.116,-10},{-20,-10}}, color={191,0,0}));
    connect(FluidCoolingsidetop.port_b, fluidCoolingporttop) annotation (Line(points={{-20,70},{-20,104},{-22,104}}, color={191,0,0}));
    connect(Fluidcoolingsidebottom.port_b, fluidCoolingportbottom) annotation (Line(points={{-20,-60},{-18,-60},{-18,-104}}, color={191,0,0}));
    connect(PUInternalHeatgenartion.Q_flow, InternalHeatgenerationport) annotation (Line(points={{56,-9.99999},{56,-10},{120,-10}}, color={0,0,127}));
    connect(Roomtemperature.port_b, Roomtemperatureport) annotation (Line(points={{54,20},{104,20},{104,20}}, color={191,0,0}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-60,60},{60,-60}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Text(textString="Silicon Chip / Processing unit", extent={{-100,-120},{100,-142}}, textColor={0,0,0}), Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.None, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-57,56},{57,-57}}, lineColor={0,0,0}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-50,50},{50,-50}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-22,21},{22,-20}}, lineColor={0,0,0}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-12,-62},{-4,-70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-10,-70},{-6,-78}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-28,-62},{-20,-70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-26,-70},{-22,-78}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-44,-62},{-36,-70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-42,-70},{-38,-78}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{36,-62},{44,-70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{38,-70},{42,-78}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{20,-62},{28,-70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{22,-70},{26,-78}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{4,-62},{12,-70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{6,-70},{10,-78}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-12,70},{-4,62}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-10,78},{-6,70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-28,70},{-20,62}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-26,78},{-22,70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-44,70},{-36,62}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-42,78},{-38,70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{36,70},{44,62}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{38,78},{42,70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{20,70},{28,62}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{22,78},{26,70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{4,70},{12,62}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{6,78},{10,70}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{62,12},{70,4}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{70,10},{78,6}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{62,28},{70,20}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{70,26},{78,22}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{62,44},{70,36}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{70,42},{78,38}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{62,-36},{70,-44}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{70,-38},{78,-42}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{62,-20},{70,-28}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{70,-22},{78,-26}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{62,-4},{70,-12}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{70,-6},{78,-10}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-70,12},{-62,4}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-78,10},{-70,6}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-70,28},{-62,20}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-78,26},{-70,22}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-70,44},{-62,36}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-78,42},{-70,38}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-70,-36},{-62,-44}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-78,-38},{-70,-42}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-70,-20},{-62,-28}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-78,-22},{-70,-26}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-70,-4},{-62,-12}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-78,-6},{-70,-10}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  end ProcessingUnit;

  model Sources
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
    model RoomTemperature
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Roomtemperature(T=293.15) annotation (Placement(transformation(extent={{10,-8},{-9.99995,12}})));
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation (Placement(transformation(extent={{-115,-8},{-95,12}}), iconTransformation(extent={{-120,-8},{-100,12.0001}})));
    equation
      connect(Roomtemperature.port, port_b)
        annotation (Line(points={{-9.99995,2},{-105,2}}, color={191,0,0}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={255,0,0}, fillColor={255,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.HorizontalCylinder, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Text(textString="Room temperature", extent={{-100,-100},{100,-120}}, textColor={255,0,0})}));
    end RoomTemperature;

    model Internaltemperature
      Modelica.Blocks.Sources.Ramp ChipInternalheat(height=4, duration=20, offset=0, startTime=0)
        annotation (Placement(transformation(extent={{6,-8},{-14,12}})));
      Modelica.Blocks.Interfaces.RealOutput y annotation (Placement(transformation(extent={{-100,-8},{-120,12.0001}})));
    equation
      connect(ChipInternalheat.y, y) annotation (Line(points={{-15,2},{-110,2},{-110,2.00005}}, color={0,0,127}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,255}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.HorizontalCylinder, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Text(textString="Internal Temperature", extent={{-100,-100},{100,-120}}, textColor={0,0,255})}));
    end Internaltemperature;
  end Sources;

  model Example
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
    model withoutcooling
      ProcessingUnit processingUnit annotation (Placement(transformation(extent={{4,30},{24.0001,50}})));
      Sources.RoomTemperature roomTemperature
        annotation (Placement(transformation(extent={{100,78},{120,98}})));
      Sources.Internaltemperature internaltemperature
        annotation (Placement(transformation(extent={{100,48},{120,68}})));
      ProcessingUnit processingUnit1 annotation (Placement(transformation(extent={{5,-9},{25.0001,11}})));
      ProcessingUnit processingUnit2 annotation (Placement(transformation(extent={{6,-51},{26.0001,-31}})));
      ProcessingUnit processingUnit3 annotation (Placement(transformation(extent={{8,-94},{28.0001,-74.0002}})));
    equation
      connect(internaltemperature.y, processingUnit.InternalHeatgenerationport) annotation (Line(points={{99,58.2},{50.6818,58.2},{50.6818,32},{26.0001,32}}, color={0,0,127}));
      connect(roomTemperature.port_b, processingUnit.Roomtemperatureport) annotation (Line(points={{99,88.2},{85.9913,88.2},{85.9913,41},{25.0001,41}}, color={191,0,0}));
      connect(processingUnit1.Roomtemperatureport, roomTemperature.port_b) annotation (Line(points={{26.0001,2},{85,2},{85,88.2},{99,88.2}}, color={191,0,0}));
      connect(processingUnit2.Roomtemperatureport, roomTemperature.port_b) annotation (Line(points={{27.0001,-40},{83,-40},{83,88.2},{99,88.2}}, color={191,0,0}));
      connect(processingUnit3.Roomtemperatureport, roomTemperature.port_b) annotation (Line(points={{29.0001,-83.0001},{84,-83.0001},{84,88.2},{99,88.2}}, color={191,0,0}));
      connect(processingUnit1.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{27.0001,-7},{27.0001,-6},{54,-6},{54,58.2},{99,58.2}}, color={0,0,127}));
      connect(processingUnit2.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{28.0001,-49},{28.0001,-39},{58,-39},{58,58.2},{99,58.2}}, color={0,0,127}));
      connect(processingUnit3.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{30.0001,-92},{30.0001,-93},{59,-93},{59,58.2},{99,58.2}}, color={0,0,127}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
    end withoutcooling;

    model AbsorbedModel
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(C=175) annotation (Placement(transformation(extent={{-34,12},{-14.0003,32}})));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G=158.4) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-24,48})));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G=158.4) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-24,-10})));
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow prescribedHeatFlow
        annotation (Placement(transformation(extent={{42,2},{22,22}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Roomtemperature(T=293.15) annotation (Placement(transformation(extent={{86,38},{66,57.9996}})));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor3(G=0.1) annotation (Placement(transformation(extent={{22,38},{42,58}})));
      Modelica.Blocks.Sources.Ramp ChipInternalheat(height=4, duration=20, offset=0, startTime=0)
        annotation (Placement(transformation(extent={{86,2},{66,22}})));
      Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient3(usePressureInput=false, constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0) annotation (Placement(transformation(extent={{-253,-211},{-273,-191}})));
      Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow volumeFlow1(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0, T0=293.15, T0fixed=false, useVolumeFlowInput=true) annotation (Placement(transformation(extent={{-233,-210},{-213,-190}})));
      Modelica.Blocks.Sources.Constant volumeFlow(k=1) annotation (Placement(transformation(extent={{-264,-174},{-244,-154}})));
    equation
      connect(thermalConductor1.port_a, heatCapacitor1.port) annotation (Line(points={{-24,38},{-24,25.7708},{-24,12},{-24.0001,12}}, color={191,0,0}));
      connect(prescribedHeatFlow.port, heatCapacitor1.port) annotation (Line(points={{22,12},{-9.9934,12},{-9.9934,12},{-24.0001,12}}, color={191,0,0}));
      connect(thermalConductor2.port_a, heatCapacitor1.port) annotation (Line(points={{-24,0},{-24,12},{-24,12},{-24.0001,12}}, color={191,0,0}));
      connect(thermalConductor3.port_b, Roomtemperature.port) annotation (Line(points={{42,48},{59.746,48},{59.746,47.9998},{66,47.9998}}, color={191,0,0}));
      connect(thermalConductor3.port_a, heatCapacitor1.port) annotation (Line(points={{22,48},{1.2643,48},{1.2643,12},{-24.0001,12}}, color={191,0,0}));
      connect(ChipInternalheat.y, prescribedHeatFlow.Q_flow) annotation (Line(points={{65,12},{43.759,12},{43.759,12},{42,12}}, color={0,0,127}));
      connect(volumeFlow1.flowPort_a, ambient3.flowPort) annotation (Line(points={{-233,-200},{-251.76,-200},{-251.76,-201},{-253,-201}}, color={255,0,0}));
      connect(volumeFlow.y, volumeFlow1.volumeFlow) annotation (Line(points={{-243,-164},{-223,-164},{-223,-190}}, color={0,0,127}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
    end AbsorbedModel;

    model withcooling
      ProcessingUnit processingUnit annotation (Placement(transformation(extent={{4,28},{24.0001,48}})));
      Sources.RoomTemperature roomTemperature
        annotation (Placement(transformation(extent={{100,78},{120,98}})));
      Sources.Internaltemperature internaltemperature
        annotation (Placement(transformation(extent={{100,48},{120,68}})));
      ProcessingUnit processingUnit1 annotation (Placement(transformation(extent={{4,-2},{24.0001,18.0005}})));
      ProcessingUnit processingUnit2 annotation (Placement(transformation(extent={{4,-32},{24.0001,-12}})));
      ProcessingUnit processingUnit3 annotation (Placement(transformation(extent={{4,-62},{24.0001,-42}})));
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
      Sources.RoomTemperature roomTemperature1 annotation (Placement(transformation(extent={{84,-186},{104,-166}})));
      Sources.Internaltemperature internaltemperature1 annotation (Placement(transformation(extent={{84,-216},{104,-196}})));
      ProcessingUnit processingUnit5 annotation (Placement(transformation(extent={{-12,-266},{8.0001,-246}})));
      ProcessingUnit processingUnit6 annotation (Placement(transformation(extent={{-12,-296},{8.0001,-276}})));
      ProcessingUnit processingUnit7 annotation (Placement(transformation(extent={{-12,-326},{8.0001,-306}})));
      Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient3(usePressureInput=false, constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0) annotation (Placement(transformation(extent={{-101,134},{-121,154}})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe8(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,302})));
      Modelica.Thermal.FluidHeatFlow.Sources.Ambient ambient4(constantAmbientTemperature=293.15, medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), constantAmbientPressure=0) annotation (Placement(transformation(extent={{100,134},{120,154}})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe9(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,283})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe10(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,262})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe11(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,241})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe12(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-21,222})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe13(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-22,202})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe14(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-22,182})));
      Modelica.Thermal.FluidHeatFlow.Components.Pipe pipe15(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0.1, T0=293.15, V_flowLaminar=0.1, dpLaminar(displayUnit="Pa") = 0.1, V_flowNominal=1, dpNominal(displayUnit="Pa") = 1, h_g=0, T0fixed=true, useHeatPort=true) annotation (Placement(transformation(extent={{10,-10},{-10,10}}, rotation=90, origin={-22,161})));
      ProcessingUnit processingUnit8 annotation (Placement(transformation(extent={{3,272},{23.001,292}})));
      ProcessingUnit processingUnit9 annotation (Placement(transformation(extent={{3,242},{23.001,262.001}})));
      ProcessingUnit processingUnit10 annotation (Placement(transformation(extent={{3,212},{23.001,232}})));
      ProcessingUnit processingUnit11 annotation (Placement(transformation(extent={{3,182},{23.001,202}})));
      Sources.Internaltemperature internaltemperature2
        annotation (Placement(transformation(extent={{99,292},{119,312}})));
      Sources.RoomTemperature roomTemperature2
        annotation (Placement(transformation(extent={{99,322},{119,342}})));
      Modelica.Thermal.FluidHeatFlow.Sources.VolumeFlow volumeFlow1(medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC(), m=0, T0=293.15, T0fixed=false, useVolumeFlowInput=true) annotation (Placement(transformation(extent={{-81,135},{-61,155}})));
      Modelica.Blocks.Sources.Constant volumeFlow(k=1) annotation (Placement(transformation(extent={{-112,171},{-92,191}})));
    equation
      connect(internaltemperature.y, processingUnit.InternalHeatgenerationport) annotation (Line(points={{99,58.2},{50,58.2},{50,30},{26.0001,30}}, color={0,0,127}));
      connect(roomTemperature.port_b, processingUnit.Roomtemperatureport) annotation (Line(points={{99,88.2},{59,88.2},{59,39},{25.0001,39}}, color={191,0,0}));
      connect(roomTemperature.port_b, processingUnit1.Roomtemperatureport) annotation (Line(points={{99,88.2},{59,88.2},{59,8},{25.0001,8},{25.0001,9.00027}}, color={191,0,0}));
      connect(roomTemperature.port_b, processingUnit2.Roomtemperatureport) annotation (Line(points={{99,88.2},{58.977,88.2},{58.977,-21},{25.0001,-21}}, color={191,0,0}));
      connect(roomTemperature.port_b, processingUnit3.Roomtemperatureport) annotation (Line(points={{99,88.2},{58.986,88.2},{58.986,-51},{25.0001,-51}}, color={191,0,0}));
      connect(processingUnit2.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{26.0001,-30},{50,-30},{50,58.2},{99,58.2}}, color={0,0,127}));
      connect(processingUnit3.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{26.0001,-60},{50,-60},{50,58.2},{99,58.2}}, color={0,0,127}));
      connect(processingUnit1.InternalHeatgenerationport, internaltemperature.y) annotation (Line(points={{26.0001,5e-05},{50,5e-05},{50,58.2},{99,58.2}}, color={0,0,127}));
      connect(ambient1.flowPort, pipe.flowPort_a) annotation (Line(points={{-100,-100},{-66,-100},{-66,81},{-20,81},{-20,68}}, color={255,0,0}));
      connect(pipe1.flowPort_a, pipe.flowPort_b) annotation (Line(points={{-20,49},{-21,49},{-21,48},{-20,48}}, color={255,0,0}));
      connect(pipe1.flowPort_b, pipe2.flowPort_a) annotation (Line(points={{-20,29},{-21,29},{-21,28},{-20,28}}, color={255,0,0}));
      connect(pipe3.flowPort_a, pipe2.flowPort_b) annotation (Line(points={{-20,8},{-20,8},{-20,8}}, color={255,0,0}));
      connect(pipe4.flowPort_a, pipe3.flowPort_b) annotation (Line(points={{-20,-12},{-20,-12},{-20,-12}}, color={255,0,0}));
      connect(pipe5.flowPort_a, pipe4.flowPort_b) annotation (Line(points={{-21,-32},{-10.3265,-32},{-10.3265,-32},{-20,-32}}, color={255,0,0}));
      connect(pipe6.flowPort_a, pipe5.flowPort_b) annotation (Line(points={{-21,-53},{-21,-52.5},{-21,-52.5},{-21,-52}}, color={255,0,0}));
      connect(pipe7.flowPort_a, pipe6.flowPort_b) annotation (Line(points={{-21,-73},{-20.5,-73},{-20.5,-73},{-21,-73}}, color={255,0,0}));
      connect(pipe7.flowPort_b, ambient2.flowPort) annotation (Line(points={{-21,-93},{-21,-100},{101,-100},{101,-99.9999}}, color={255,0,0}));
      connect(pipe.heatPort, processingUnit.fluidCoolingporttop) annotation (Line(points={{-10,58},{14,58},{14,49}}, color={191,0,0}));
      connect(pipe1.heatPort, processingUnit.fluidCoolingportbottom) annotation (Line(points={{-10,39},{-3,39},{-3,24},{14,24},{14,27}}, color={191,0,0}));
      connect(pipe2.heatPort, processingUnit1.fluidCoolingporttop) annotation (Line(points={{-10,18},{-3,18},{-3,23},{14,23},{14,19.0005}}, color={191,0,0}));
      connect(pipe3.heatPort, processingUnit1.fluidCoolingportbottom) annotation (Line(points={{-10,-2},{-4,-2},{-4,-6},{14,-6},{14,-3.00002}}, color={191,0,0}));
      connect(pipe4.heatPort, processingUnit2.fluidCoolingporttop) annotation (Line(points={{-10,-22},{-5,-22},{-5,-8},{14,-8},{14,-11}}, color={191,0,0}));
      connect(pipe5.heatPort, processingUnit2.fluidCoolingportbottom) annotation (Line(points={{-11,-42},{-3,-42},{-3,-35},{14,-35},{14,-33}}, color={191,0,0}));
      connect(pipe6.heatPort, processingUnit3.fluidCoolingporttop) annotation (Line(points={{-11,-63},{-2,-63},{-2,-38},{14,-38},{14,-41}}, color={191,0,0}));
      connect(pipe7.heatPort, processingUnit3.fluidCoolingportbottom) annotation (Line(points={{-11,-83},{13,-83},{13,-63},{14,-63}}, color={191,0,0}));
      connect(internaltemperature1.y, processingUnit4.InternalHeatgenerationport) annotation (Line(points={{83,-205.8},{34.9457,-205.8},{34.9457,-234},{10.0001,-234}}, color={0,0,127}));
      connect(roomTemperature1.port_b, processingUnit4.Roomtemperatureport) annotation (Line(points={{83,-175.8},{70.2552,-175.8},{70.2552,-225},{9.0001,-225}}, color={191,0,0}));
      connect(roomTemperature1.port_b, processingUnit5.Roomtemperatureport) annotation (Line(points={{83,-175.8},{70.2639,-175.8},{70.2639,-256},{9.0001,-256},{9.0001,-255}}, color={191,0,0}));
      connect(roomTemperature1.port_b, processingUnit6.Roomtemperatureport) annotation (Line(points={{83,-175.8},{69.9844,-175.8},{69.9844,-285},{9.0001,-285}}, color={191,0,0}));
      connect(roomTemperature1.port_b, processingUnit7.Roomtemperatureport) annotation (Line(points={{83,-175.8},{70.2639,-175.8},{70.2639,-315},{9.0001,-315}}, color={191,0,0}));
      connect(processingUnit5.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{10.0001,-264},{34.6749,-264},{34.6749,-205.8},{83,-205.8}}, color={0,0,127}));
      connect(processingUnit6.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{10.0001,-294},{34.9458,-294},{34.9458,-205.8},{83,-205.8}}, color={0,0,127}));
      connect(processingUnit7.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{10.0001,-324},{34.9457,-324},{34.9457,-205.8},{83,-205.8}}, color={0,0,127}));
      connect(internaltemperature2.y, processingUnit8.InternalHeatgenerationport) annotation (Line(points={{98,302.2},{48.9067,302.2},{48.9067,274},{25.0011,274}}, color={0,0,127}));
      connect(roomTemperature2.port_b, processingUnit8.Roomtemperatureport) annotation (Line(points={{98,332.2},{57.6562,332.2},{57.6562,283},{24.001,283}}, color={191,0,0}));
      connect(roomTemperature2.port_b, processingUnit9.Roomtemperatureport) annotation (Line(points={{98,332.2},{57.9101,332.2},{57.9101,252},{24.001,252},{24.001,253.001}}, color={191,0,0}));
      connect(roomTemperature2.port_b, processingUnit10.Roomtemperatureport) annotation (Line(points={{98,332.2},{57.6332,332.2},{57.6332,223},{24.001,223}}, color={191,0,0}));
      connect(roomTemperature2.port_b, processingUnit11.Roomtemperatureport) annotation (Line(points={{98,332.2},{57.6422,332.2},{57.6422,193},{24.001,193}}, color={191,0,0}));
      connect(processingUnit10.InternalHeatgenerationport, internaltemperature2.y) annotation (Line(points={{25.0011,214},{48.6527,214},{48.6527,302.2},{98,302.2}}, color={0,0,127}));
      connect(processingUnit11.InternalHeatgenerationport, internaltemperature2.y) annotation (Line(points={{25.0011,184},{48.6527,184},{48.6527,302.2},{98,302.2}}, color={0,0,127}));
      connect(processingUnit9.InternalHeatgenerationport, internaltemperature2.y) annotation (Line(points={{25.0011,244},{48.9067,244},{48.9067,302.2},{98,302.2}}, color={0,0,127}));
      connect(pipe9.flowPort_a, pipe8.flowPort_b) annotation (Line(points={{-21,293},{-21,292},{-21,292},{-21,292}}, color={255,0,0}));
      connect(pipe9.flowPort_b, pipe10.flowPort_a) annotation (Line(points={{-21,273},{-21,272},{-21,272},{-21,272}}, color={255,0,0}));
      connect(pipe13.flowPort_a, pipe12.flowPort_b) annotation (Line(points={{-22,212},{-11.58,212},{-11.58,212},{-21,212}}, color={255,0,0}));
      connect(pipe14.flowPort_a, pipe13.flowPort_b) annotation (Line(points={{-22,192},{-22,192},{-22,192},{-22,192}}, color={255,0,0}));
      connect(pipe15.flowPort_a, pipe14.flowPort_b) annotation (Line(points={{-22,171},{-21.5,171},{-21.5,172},{-22,172}}, color={255,0,0}));
      connect(pipe15.flowPort_b, ambient4.flowPort) annotation (Line(points={{-22,151},{-22,144},{100,144}}, color={255,0,0}));
      connect(pipe8.heatPort, processingUnit8.fluidCoolingporttop) annotation (Line(points={{-11,302},{13.0005,302},{13.0005,293}}, color={191,0,0}));
      connect(pipe9.heatPort, processingUnit8.fluidCoolingportbottom) annotation (Line(points={{-11,283},{-4,283},{-4,268},{13.0005,268},{13.0005,271}}, color={191,0,0}));
      connect(pipe10.heatPort, processingUnit9.fluidCoolingporttop) annotation (Line(points={{-11,262},{-4,262},{-4,267.19},{13.0005,267.19},{13.0005,263.001}}, color={191,0,0}));
      connect(pipe11.heatPort, processingUnit9.fluidCoolingportbottom) annotation (Line(points={{-11,241},{-11,243},{-5,243},{-5,241},{13.0005,241}}, color={191,0,0}));
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
      Pipes.Downhillpipe downhillpipe annotation (Placement(transformation(extent={{15,20},{35,40}})));
      Pipes.Flatpipe flatpipe2
        annotation (Placement(transformation(extent={{42,60},{62,40}})));
      Pipes.Flatpipe flatpipe3
        annotation (Placement(transformation(extent={{42,0},{62,20}})));
      Pipes.Downhillpipe downhillpipe4 annotation (Placement(transformation(extent={{72,20},{92,40.0001}})));
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
      Modelica.Fluid.Vessels.ClosedVolume volume(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, use_portsData=false, V=1.6387064e-05*(24*24*24), nPorts=2) annotation (Placement(transformation(extent={{-10,-10},{10,10}}, rotation=90, origin={-126,-3})));
      Modelica.Fluid.Machines.PrescribedPump pumps(checkValve=true, checkValveHomotopy=Modelica.Fluid.Types.CheckValveHomotopyType.Closed, N_nominal=1200, redeclare function flowCharacteristic = Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (V_flow_nominal={0,0.25,0.5}, head_nominal={100,60,0}), use_N_in=true, nParallel=1, energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial, V(displayUnit="l") = 0.05, massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial, redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, p_b_start=600000, T_start=system.T_start)
        annotation (Placement(transformation(extent={{-78,0},{-58,20}})));
      Modelica.Blocks.Sources.Constant const(k=2)
        annotation (Placement(transformation(extent={{-138,29},{-118,49}})));
    equation
      connect(flatpipe.port_b, uphill.port_a) annotation (Line(points={{-18,10},{2.00001,10},{2.00001,20}}, color={0,127,255}));
      connect(uphill.port_b, flatpipe2.port_a)
        annotation (Line(points={{2,40},{2,50},{42,50}}, color={0,127,255}));
      connect(uphill.port_b, downhillpipe.port_a) annotation (Line(points={{2,40},{2,50},{25,50},{25,40}}, color={0,127,255}));
      connect(downhillpipe.port_b, flatpipe3.port_a)
        annotation (Line(points={{25,20},{25,10},{42,10}}, color={0,127,255}));
      connect(flatpipe2.port_b, downhillpipe4.port_a) annotation (Line(points={{62,50},{82,50},{82,40.0001}}, color={0,127,255}));
      connect(flatpipe3.port_b, flatpipe1.port_a) annotation (Line(points={{62,10},{81.6821,10},{81.6821,10},{102,10}}, color={0,127,255}));
      connect(downhillpipe4.port_b, flatpipe1.port_a) annotation (Line(points={{82,20},{82,10},{102,10}}, color={0,127,255}));
      connect(roomTemperature.port_b, processingUnit.Roomtemperatureport) annotation (Line(points={{99,90.2},{71.7661,90.2},{71.7661,31},{63,31}}, color={191,0,0}));
      connect(internaltemperature.y, processingUnit.InternalHeatgenerationport) annotation (Line(points={{99,64.2},{71.7661,64.2},{71.7661,22},{64,22}}, color={0,0,127}));
      connect(flatpipe1.port_b, volume.ports[1]) annotation (Line(points={{122,10},{132.599,10},{132.599,-18},{-116,-18},{-116,-4}}, color={0,127,255}));
      connect(volume.ports[2], pumps.port_a) annotation (Line(points={{-116,-2},{-116,10},{-78,10}}, color={0,127,255}));
      connect(pumps.port_b, flatpipe.port_a) annotation (Line(points={{-58,10},{-53.1184,10},{-53.1184,10},{-38,10}}, color={0,127,255}));
      connect(const.y, pumps.N_in) annotation (Line(points={{-117,39},{-68,39},{-68,20}}, color={0,0,127}));
      connect(flatpipe2.heatPorts_a, processingUnit.fluidCoolingporttop) annotation (Line(points={{52,47},{52,47},{52,41},{52,41}}, color={127,0,0}));
      connect(flatpipe3.heatPorts_a, processingUnit.fluidCoolingportbottom) annotation (Line(points={{52,13},{46,13},{46,19},{52,19}}, color={127,0,0}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
    end CPU;
  end Example;

  model DataCenter
    inner Modelica.Fluid.System system annotation (Placement(transformation(extent={{36.9098,-17.7732},{56.9098,2.22681}})));
    Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{38.9098,-169.773},{58.9101,-149.773}})));
    Modelica.Fluid.Vessels.OpenTank tank(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, crossArea=0.01, height=2, level_start=1, use_portsData=true, massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial, use_HeatTransfer=true, portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.01),Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.01)}, redeclare model HeatTransfer = Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer (k=10), ports(each p(start=1.1e5)), T_start=Modelica.Units.Conversions.from_degC(20), nPorts=2) annotation (Placement(transformation(extent={{16.9098,-153.773},{36.9098,-133.773}})));
  public
    Modelica.Fluid.Sensors.Temperature sensor_T_forward(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{0.90979,-151.773},{-19.0902,-131.773}})));
    ProcessingUnit processingUnit4 annotation (Placement(transformation(extent={{250.91,-67.7732},{270.91,-47.7732}})));
    Sources.RoomTemperature roomTemperature1 annotation (Placement(transformation(extent={{354,-18},{374,2.00001}})));
    Sources.Internaltemperature internaltemperature1 annotation (Placement(transformation(extent={{346.91,-47.7732},{366.91,-27.7732}})));
    ProcessingUnit processingUnit5 annotation (Placement(transformation(extent={{250.91,-97.7732},{270.91,-77.7735}})));
    ProcessingUnit processingUnit6 annotation (Placement(transformation(extent={{250.91,-127.773},{270.91,-107.773}})));
    ProcessingUnit processingUnit7 annotation (Placement(transformation(extent={{250.91,-157.773},{270.91,-137.773}})));
    Modelica.Fluid.Pipes.DynamicPipe pipe2(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{68.9098,-169.773},{88.9101,-149.773}})));
    Modelica.Fluid.Pipes.DynamicPipe pipe3(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10.0001,-10},{10.0002,10}}, rotation=90, origin={98.9098,-109.773})));
    Modelica.Fluid.Pipes.DynamicPipe pipe4(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{10.0001,10},{-10.0002,-10}}, rotation=90, origin={130.91,-13.7733})));
    Modelica.Fluid.Pipes.DynamicPipe pipe5(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{10.0001,10},{-10.0002,-10}}, rotation=90, origin={130.91,-35.7733})));
    Modelica.Fluid.Pipes.DynamicPipe pipe6(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{10.0001,10},{-10.0002,-10}}, rotation=90, origin={130.91,-57.7733})));
    Modelica.Fluid.Pipes.DynamicPipe pipe7(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{10.0001,10},{-10.0001,-10}}, rotation=90, origin={130.91,-79.7733})));
    Modelica.Fluid.Pipes.DynamicPipe pipe8(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10.0001,-10},{10.0001,10}}, rotation=-90, origin={130.91,-101.773})));
    Modelica.Fluid.Pipes.DynamicPipe pipe9(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10.0001,-10},{10.0001,10}}, rotation=-90, origin={130.91,-123.773})));
    Modelica.Fluid.Pipes.DynamicPipe pipe10(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10.0001,-10},{10.0002,10}}, rotation=-90, origin={130.91,-145.773})));
    Modelica.Fluid.Pipes.DynamicPipe pipe11(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10.0001,-9.99985},{10.0002,9.99985}}, rotation=-90, origin={130.91,-167.773})));
    Modelica.Fluid.Pipes.DynamicPipe pipe12(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{90.9098,-199.773},{70.9095,-179.773}})));
    Modelica.Fluid.Pipes.DynamicPipe pipe13(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{58.9098,-199.773},{38.9095,-179.773}})));
  protected
    Modelica.Blocks.Interfaces.RealOutput T_forward(unit="K") annotation (Placement(transformation(extent={{-25.0902,-147.773},{-37.0902,-135.773}})));
  equation
    connect(T_forward, sensor_T_forward.T) annotation (Line(points={{-31.0902,-141.773},{-16.0902,-141.773},{-16.0902,-141.773}}, color={0,0,127}));
    connect(internaltemperature1.y, processingUnit4.InternalHeatgenerationport) annotation (Line(points={{345.91,-37.5732},{299.288,-37.5732},{299.288,-65.7732},{272.91,-65.7732}}, color={0,0,127}));
    connect(roomTemperature1.port_b, processingUnit4.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{350.833,-7.79999},{350.833,-56.7732},{271.91,-56.7732}}, color={191,0,0}));
    connect(roomTemperature1.port_b, processingUnit5.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{349.618,-7.79999},{349.618,-89.7732},{271.91,-89.7732},{271.91,-86.7734}}, color={191,0,0}));
    connect(roomTemperature1.port_b, processingUnit6.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{350.562,-7.79999},{350.562,-116.773},{271.91,-116.773}}, color={191,0,0}));
    connect(roomTemperature1.port_b, processingUnit7.Roomtemperatureport) annotation (Line(points={{353,-7.79999},{349.618,-7.79999},{349.618,-146.773},{271.91,-146.773}}, color={191,0,0}));
    connect(processingUnit5.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{272.91,-95.7732},{299.017,-95.7732},{299.017,-37.5732},{345.91,-37.5732}}, color={0,0,127}));
    connect(processingUnit6.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{272.91,-125.773},{299.288,-125.773},{299.288,-37.5732},{345.91,-37.5732}}, color={0,0,127}));
    connect(processingUnit7.InternalHeatgenerationport, internaltemperature1.y) annotation (Line(points={{272.91,-155.773},{299.288,-155.773},{299.288,-37.5732},{345.91,-37.5732}}, color={0,0,127}));
    connect(pipe5.port_a, pipe4.port_b) annotation (Line(points={{130.91,-25.7732},{130.91,-25.7732},{130.91,-23.7735},{130.91,-23.7735}}, color={0,127,255}));
    connect(pipe6.port_a, pipe5.port_b) annotation (Line(points={{130.91,-47.7732},{130.91,-47.7732},{130.91,-45.7735},{130.91,-45.7735}}, color={0,127,255}));
    connect(pipe7.port_a, pipe6.port_b) annotation (Line(points={{130.91,-69.7732},{130.91,-69.7732},{130.91,-67.7735},{130.91,-67.7735}}, color={0,127,255}));
    connect(pipe8.port_a, pipe7.port_b) annotation (Line(points={{130.91,-91.7729},{130.91,-91.7729},{130.91,-89.7734},{130.91,-89.7734}}, color={0,127,255}));
    connect(pipe9.port_a, pipe8.port_b) annotation (Line(points={{130.91,-113.773},{130.91,-113.773},{130.91,-111.773},{130.91,-111.773}}, color={0,127,255}));
    connect(pipe10.port_a, pipe9.port_b) annotation (Line(points={{130.91,-135.773},{130.91,-135.773},{130.91,-133.773},{130.91,-133.773}}, color={0,127,255}));
    connect(pipe11.port_a, pipe10.port_b) annotation (Line(points={{130.91,-157.773},{130.91,-155.773},{130.91,-155.773}}, color={0,127,255}));
    connect(tank.ports[1], pipe1.port_a) annotation (Line(points={{25.9098,-153.773},{25.9098,-159.773},{38.9098,-159.773}}, color={0,127,255}));
    connect(pipe2.port_a, pipe1.port_b) annotation (Line(points={{68.9098,-159.773},{58.9101,-159.773}}, color={0,127,255}));
    connect(pipe3.port_a, pipe2.port_b) annotation (Line(points={{98.9098,-119.773},{98.9098,-159.773},{88.9101,-159.773}}, color={0,127,255}));
    connect(pipe3.port_b, pipe4.port_a) annotation (Line(points={{98.9098,-99.7728},{98.9098,2.22681},{130.91,2.22681},{130.91,-3.77319}}, color={0,127,255}));
    connect(pipe11.port_b, pipe12.port_a) annotation (Line(points={{130.91,-177.773},{130.91,-185.773},{90.9098,-185.773},{90.9098,-189.773}}, color={0,127,255}));
    connect(pipe12.port_b, pipe13.port_a) annotation (Line(points={{70.9095,-189.773},{70.9095,-189.773},{58.9098,-189.773}}, color={0,127,255}));
    connect(pipe13.port_b, tank.ports[2]) annotation (Line(points={{38.9095,-189.773},{24.9098,-189.773},{24.9098,-153.773},{27.9098,-153.773}}, color={0,127,255}));
    connect(sensor_T_forward.port, pipe13.port_b) annotation (Line(points={{-9.09021,-151.773},{-9.09021,-189.773},{38.9095,-189.773},{38.9095,-189.773}}, color={0,127,255}));
    connect(pipe4.heatPorts[2], processingUnit4.fluidCoolingporttop) annotation (Line(points={{135.31,-13.8734},{260.91,-13.8734},{260.91,-46.7732}}, color={127,0,0}));
    connect(pipe5.heatPorts[2], processingUnit4.fluidCoolingportbottom) annotation (Line(points={{135.31,-35.8734},{240.91,-35.8734},{240.91,-71.7732},{260.91,-71.7732},{260.91,-68.7732}}, color={127,0,0}));
    connect(pipe6.heatPorts[2], processingUnit5.fluidCoolingporttop) annotation (Line(points={{135.31,-57.8734},{184.91,-57.8734},{184.91,-76.7735},{260.91,-76.7735}}, color={127,0,0}));
    connect(pipe7.heatPorts[2], processingUnit5.fluidCoolingportbottom) annotation (Line(points={{135.31,-79.8733},{174.91,-79.8733},{174.91,-98.7732},{260.91,-98.7732}}, color={127,0,0}));
    connect(pipe8.heatPorts[2], processingUnit6.fluidCoolingporttop) annotation (Line(points={{135.31,-101.873},{172.91,-101.873},{172.91,-106.773},{260.91,-106.773}}, color={127,0,0}));
    connect(pipe9.heatPorts[2], processingUnit6.fluidCoolingportbottom) annotation (Line(points={{135.31,-123.873},{238.91,-123.873},{238.91,-127.773},{260.91,-127.773},{260.91,-128.773}}, color={127,0,0}));
    connect(pipe10.heatPorts[2], processingUnit7.fluidCoolingporttop) annotation (Line(points={{135.31,-145.873},{226.91,-145.873},{226.91,-136.773},{260.91,-136.773}}, color={127,0,0}));
    connect(pipe11.heatPorts[2], processingUnit7.fluidCoolingportbottom) annotation (Line(points={{135.31,-167.873},{256.91,-167.873},{256.91,-158.773},{260.91,-158.773}}, color={127,0,0}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-142,158},{930,-132}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{506,104},{702,-78}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-96,124},{436,-106}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-144,478},{928,188}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{504,424},{700,242}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-98,444},{434,214}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-148,796},{924,506}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{500,742},{696,560}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-102,762},{430,532}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-150,1122},{922,832}}, lineColor={255,255,255}, fillColor={128,128,128}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Ellipse(extent={{498,1068},{694,886}}, lineColor={255,255,255}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, startAngle=0, endAngle=360), Rectangle(extent={{-104,1088},{428,858}}, lineColor={128,128,128}, fillColor={255,255,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  end DataCenter;

  model Pipes
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
    model Flatpipe
      Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10,-10},{10.0003,10}})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{-110,-10},{-90,10}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,10}})));
      Modelica.Fluid.Interfaces.HeatPorts_a heatPorts_a annotation (Placement(transformation(extent={{-40,-10},{40,10}}, rotation=0, origin={0,100}), iconTransformation(extent={{-40,-10},{40,10}}, rotation=0, origin={0,30})));
    equation
      connect(pipe1.port_a, port_a)
        annotation (Line(points={{-10,0},{-100,0}}, color={0,127,255}));
      connect(port_b, pipe1.port_b)
        annotation (Line(points={{100,0},{10.0003,0}}, color={0,127,255}));
      connect(pipe1.heatPorts[2], heatPorts_a) annotation (Line(points={{0.100151,4.4},{0.100151,100},{0,100}}, color={127,0,0}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-100,-40},{-80,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Line(points={{-36,-36},{44,-36},{30,-28},{44,-36},{32,-44},{32,-44},{32,-44}}, color={0,0,255}, pattern=LinePattern.Solid, arrow={Arrow.None,Arrow.None}, thickness=0)}));
    end Flatpipe;

    model Uphill
      Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0.3048, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{-10.0001,-10},{10.0001,10}}, rotation=90, origin={0,0.0001})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{-10,-110},{10.0002,-90}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase)
        annotation (Placement(transformation(extent={{-10,90},{10,110}})));
      Modelica.Fluid.Interfaces.HeatPorts_a heatPorts_a annotation (Placement(transformation(extent={{-40,-10},{40,10}}, rotation=90, origin={-100,0}), iconTransformation(extent={{-40,-10},{40,10}}, rotation=90, origin={-30,0})));
    equation
      connect(port_a, pipe1.port_a) annotation (Line(points={{0.0001,-100},{0.0001,-10},{-4.44089e-16,-10}}, color={0,127,255}));
      connect(pipe1.port_b, port_b) annotation (Line(points={{1.66533e-16,10.0002},{1.66533e-16,55.0001},{0,55.0001},{0,100}}, color={0,127,255}));
      connect(pipe1.heatPorts[2], heatPorts_a) annotation (Line(points={{-4.4,0.100101},{-100,0.100101},{-100,0}}, color={127,0,0}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
    end Uphill;

    model Downhillpipe
      Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase, length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=-0.3048, use_HeatTransfer=true, redeclare model HeatTransfer = Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer) annotation (Placement(transformation(extent={{10.0001,10},{-10.0001,-10}}, rotation=90, origin={0,0.0001})));
      Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{-10,90},{10.0002,110}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase) annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
      Modelica.Fluid.Interfaces.HeatPorts_a heatPorts_a annotation (Placement(transformation(extent={{-40,-10},{40,10}}, rotation=90, origin={100,0}), iconTransformation(extent={{-40,-10},{40,10}}, rotation=90, origin={30,0})));
    equation
      connect(pipe1.heatPorts[2], heatPorts_a) annotation (Line(points={{4.4,-0.099901},{100,-0.099901},{100,0}}, color={127,0,0}));
      connect(port_a, pipe1.port_a) annotation (Line(points={{0.0001,100},{0.0001,10.0002},{0,10.0002}}, color={0,127,255}));
      connect(pipe1.port_b, port_b) annotation (Line(points={{-1.66533e-16,-10},{-1.66533e-16,-55},{0,-55},{0,-100}}, color={0,127,255}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
    end Downhillpipe;

    model PipesVisuals
      annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
      model Flat
        Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
        Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(transformation(extent={{90,-10},{110,10}})));
      equation
        connect(port_a, port_b)
          annotation (Line(points={{-100,0},{100,0}}, color={0,127,255}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0),Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0),Rectangle(extent={{-100,-40},{-80,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
      end Flat;

      model Vertical
        Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(transformation(extent={{-10,-110},{10,-90.0001}})));
        Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(transformation(extent={{-10,90},{10,110}})));
      equation
        connect(port_b, port_a)
          annotation (Line(points={{0,100},{0,-100}}, color={0,127,255}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
      end Vertical;

      model Cornerelbow
        Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
        Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(transformation(extent={{90,-10},{110,10.0004}})));
      equation
        connect(port_a, port_b) annotation (Line(points={{0,-100},{0,0.0002},{100,0.0002}}, color={0,127,255}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-20,20},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
      end Cornerelbow;

      model Tjoint
        Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(transformation(extent={{-10,90},{10,110}}), iconTransformation(extent={{-10,90},{10,110}})));
        Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(transformation(extent={{90,-10},{110,10}}), iconTransformation(extent={{90,-10},{110,10}})));
        Modelica.Fluid.Interfaces.FluidPort_b port_b1 annotation (Placement(transformation(extent={{-10.0003,-110},{10,-90}}), iconTransformation(extent={{-12,-110},{7.9999,-90}})));
      equation
        connect(port_a, port_b) annotation (Line(points={{0,100},{0,0},{100,0}}, color={0,127,255}));
        connect(port_a, port_b1) annotation (Line(points={{0,100},{0,-100},{-0.00015,-100}}, color={0,127,255}));
        annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
      end Tjoint;
    end PipesVisuals;
  end Pipes;
end SmartCoolingLibrary;
