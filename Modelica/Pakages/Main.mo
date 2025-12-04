within SmartCoolingLibrary;
model Main
  parameter Modelica.Thermal.FluidHeatFlow.Media.Medium medium=Modelica.Thermal.FluidHeatFlow.Media.Water_10degC() "Medium";
  inner Modelica.Fluid.System system
    annotation (Placement(transformation(extent={{-87,-167},{-67,-147}})));
  Pipes.Flatpipe flatpipe
    annotation (Placement(transformation(extent={{-87,-189},{-67,-169}})));
  Pipes.Downhillpipe downhillpipe annotation (Placement(transformation(extent={{-27,0},
            {-7,20}})));
  Pipes.Flatpipe flatpipe2
    annotation (Placement(transformation(extent={{0,40},{20,20}})));
  Pipes.Flatpipe flatpipe3
    annotation (Placement(transformation(extent={{0,-20},{20,-1e-05}})));
  Pipes.Downhillpipe downhillpipe4
    annotation (Placement(transformation(extent={{30,-6.2548e-46},{50,20.0001}})));
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
  Modelica.Fluid.Vessels.ClosedVolume volume(
    redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase,
    use_portsData=false,
    V=1.6387064e-05*(24*24*24),
    nPorts=2) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-175,-192})));
  Modelica.Fluid.Machines.PrescribedPump
                          pumps(
    checkValve=true,
    checkValveHomotopy=Modelica.Fluid.Types.CheckValveHomotopyType.Closed,
    N_nominal=1200,
    redeclare function flowCharacteristic =
        Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (
          V_flow_nominal={0,0.25,0.5}, head_nominal={100,60,0}),
    use_N_in=true,
    nParallel=1,
    energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    V(displayUnit="l") = 0.05,
    massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
    redeclare package Medium = Modelica.Media.Water.StandardWaterOnePhase,
    p_b_start=600000,
    T_start=system.T_start)
    annotation (Placement(transformation(extent={{-127,-189},{-107,-169}})));
  Modelica.Blocks.Sources.Constant const(k=2)
    annotation (Placement(transformation(extent={{-187,-160},{-167,-140}})));
  Pipes.Downhillpipe downhillpipe1
                                  annotation (Placement(transformation(extent={{-27,-54},
            {-7.00001,-34}})));
  Pipes.Flatpipe flatpipe4
    annotation (Placement(transformation(extent={{1,-15},{21,-35}})));
  Pipes.Flatpipe flatpipe5
    annotation (Placement(transformation(extent={{1,-75},{21,-54.9996}})));
  Pipes.Downhillpipe downhillpipe2
    annotation (Placement(transformation(extent={{30,-55},{50,-34.9999}})));
  ProcessingUnit processingUnit1
    annotation (Placement(transformation(extent={{1,-55},{21,-35}})));
  Pipes.Downhillpipe downhillpipe3
                                  annotation (Placement(transformation(extent={{-25,
            -113},{-5,-93}})));
  Pipes.Flatpipe flatpipe6
    annotation (Placement(transformation(extent={{2,-73},{22,-93}})));
  Pipes.Flatpipe flatpipe7
    annotation (Placement(transformation(extent={{2,-133},{22,-113}})));
  Pipes.Downhillpipe downhillpipe5
    annotation (Placement(transformation(extent={{30,-113},{50,-93}})));
  ProcessingUnit processingUnit2
    annotation (Placement(transformation(extent={{2,-113},{22,-93}})));
  Pipes.Downhillpipe downhillpipe6
                                  annotation (Placement(transformation(extent={{-25,
            -169},{-5,-149}})));
  Pipes.Flatpipe flatpipe8
    annotation (Placement(transformation(extent={{2,-129},{22,-149}})));
  Pipes.Flatpipe flatpipe9
    annotation (Placement(transformation(extent={{2,-189},{22,-169}})));
  Pipes.Downhillpipe downhillpipe7
    annotation (Placement(transformation(extent={{30,-170},{50,-150}})));
  ProcessingUnit processingUnit3
    annotation (Placement(transformation(extent={{2,-169},{22,-149}})));
public
  Modelica.Fluid.Sensors.Temperature sensor_T_forward(redeclare package Medium
      = Modelica.Media.Water.StandardWaterOnePhase)                                                                          annotation (Placement(transformation(extent={{96,-172},
            {76,-152}})));
public
  Modelica.Fluid.Sensors.Temperature sensor_T_forward1(redeclare package Medium
      = Modelica.Media.Water.StandardWaterOnePhase)                                                                          annotation (Placement(transformation(extent={{
            -68.6692,-130.954},{-88.6692,-110.954}})));
protected
  Modelica.Blocks.Interfaces.RealOutput T_forward(unit="K") annotation (Placement(transformation(extent={{70,-168},
            {58,-156}})));
protected
  Modelica.Blocks.Interfaces.RealOutput T_forward1(unit="K")
                                                            annotation (Placement(transformation(extent={{
            -94.6692,-126.954},{-106.669,-114.954}})));
equation
  connect(flatpipe.port_b, uphill.port_a) annotation (Line(points={{-67,-179},{
          -40,-179},{-40,0}}, color={0,127,255}));
  connect(uphill.port_b, flatpipe2.port_a)
    annotation (Line(points={{-40,20},{-40,30},{0,30}}, color={0,127,255}));
  connect(uphill.port_b, downhillpipe.port_a) annotation (Line(points={{-40,20},
          {-40,30},{-17,30},{-17,20}}, color={0,127,255}));
  connect(downhillpipe.port_b, flatpipe3.port_a)
    annotation (Line(points={{-17,0},{-17,-10},{0,-10}}, color={0,127,255}));
  connect(flatpipe2.port_b, downhillpipe4.port_a) annotation (Line(points={{20,
          30},{40,30},{40,20.0001}}, color={0,127,255}));
  connect(roomTemperature.port_b, processingUnit.Roomtemperatureport)
    annotation (Line(points={{57,70.2},{30,70.2},{30,11},{21,11}}, color={191,0,
          0}));
  connect(internaltemperature.y, processingUnit.InternalHeatgenerationport)
    annotation (Line(points={{57,44.2},{30,44.2},{30,2},{22,2}}, color={0,0,127}));
  connect(volume.ports[1], pumps.port_a) annotation (Line(points={{-165,-193},{
          -165,-179},{-127,-179}}, color={0,127,255}));
  connect(pumps.port_b, flatpipe.port_a) annotation (Line(points={{-107,-179},{
          -101.884,-179},{-101.884,-179},{-87,-179}}, color={0,127,255}));
  connect(const.y, pumps.N_in) annotation (Line(points={{-166,-150},{-117,-150},
          {-117,-169}}, color={0,0,127}));
  connect(flatpipe2.heatPorts_a, processingUnit.fluidCoolingporttop)
    annotation (Line(points={{10,27},{10,21}}, color={127,0,0}));
  connect(flatpipe3.heatPorts_a, processingUnit.fluidCoolingportbottom)
    annotation (Line(points={{10,-7.00001},{10,-1}}, color={127,0,0}));
  connect(downhillpipe1.port_b, flatpipe5.port_a) annotation (Line(points={{-17,
          -54},{-17,-64.9998},{1,-64.9998}}, color={0,127,255}));
  connect(flatpipe4.port_b, downhillpipe2.port_a) annotation (Line(points={{21,
          -25},{40,-25},{40,-34.9999}}, color={0,127,255}));
  connect(flatpipe4.heatPorts_a, processingUnit1.fluidCoolingporttop)
    annotation (Line(points={{11,-28},{11,-28},{11,-34},{11,-34}}, color={127,0,
          0}));
  connect(flatpipe5.heatPorts_a, processingUnit1.fluidCoolingportbottom)
    annotation (Line(points={{11,-61.9997},{11,-61.0288},{11,-61.0288},{11,
          -59.0045},{11,-56},{11,-56}}, color={127,0,0}));
  connect(downhillpipe3.port_b, flatpipe7.port_a) annotation (Line(points={{-15,
          -113},{-15,-123},{2,-123}}, color={0,127,255}));
  connect(flatpipe6.port_b, downhillpipe5.port_a)
    annotation (Line(points={{22,-83},{40,-83},{40,-93}}, color={0,127,255}));
  connect(flatpipe6.heatPorts_a, processingUnit2.fluidCoolingporttop)
    annotation (Line(points={{12,-86},{12,-86},{12,-92},{12,-92}}, color={127,0,
          0}));
  connect(flatpipe7.heatPorts_a, processingUnit2.fluidCoolingportbottom)
    annotation (Line(points={{12,-120},{12,-118},{13,-118},{13,-115.938},{13,
          -114},{12,-114}}, color={127,0,0}));
  connect(downhillpipe6.port_b, flatpipe9.port_a) annotation (Line(points={{-15,
          -169},{-15,-179},{2,-179}}, color={0,127,255}));
  connect(flatpipe8.port_b, downhillpipe7.port_a) annotation (Line(points={{22,
          -139},{40,-139},{40,-150}}, color={0,127,255}));
  connect(flatpipe8.heatPorts_a, processingUnit3.fluidCoolingporttop)
    annotation (Line(points={{12,-142},{12,-143},{12,-143},{13,-143},{13,-148},
          {12,-148}}, color={127,0,0}));
  connect(flatpipe9.heatPorts_a, processingUnit3.fluidCoolingportbottom)
    annotation (Line(points={{12,-176},{12,-175},{13,-175},{13,-172.556},{13,
          -170},{12,-170}}, color={127,0,0}));
  connect(downhillpipe4.port_b, downhillpipe2.port_a) annotation (Line(points={
          {40,0},{40,-34.9999},{40,-34.9999}}, color={0,127,255}));
  connect(downhillpipe2.port_b, downhillpipe5.port_a)
    annotation (Line(points={{40,-55},{40,-93},{40,-93}}, color={0,127,255}));
  connect(downhillpipe5.port_b, downhillpipe7.port_a) annotation (Line(points={
          {40,-113},{40,-150},{40,-150}}, color={0,127,255}));
  connect(downhillpipe.port_b, flatpipe4.port_a)
    annotation (Line(points={{-17,0},{-17,-25},{1,-25}}, color={0,127,255}));
  connect(downhillpipe.port_b, downhillpipe1.port_a)
    annotation (Line(points={{-17,0},{-17,-34},{-17,-34}}, color={0,127,255}));
  connect(flatpipe5.port_b, downhillpipe5.port_a) annotation (Line(points={{21,
          -64.9998},{40,-64.9998},{40,-93}}, color={0,127,255}));
  connect(downhillpipe1.port_b, downhillpipe3.port_a) annotation (Line(points={
          {-17,-54},{-17,-93},{-15,-93}}, color={0,127,255}));
  connect(downhillpipe3.port_b, downhillpipe6.port_a)
    annotation (Line(points={{-15,-113},{-15,-149}}, color={0,127,255}));
  connect(flatpipe7.port_b, downhillpipe7.port_a) annotation (Line(points={{22,
          -123},{40,-123},{40,-150}}, color={0,127,255}));
  connect(downhillpipe3.port_b, flatpipe8.port_a) annotation (Line(points={{-15,
          -113},{-15,-139},{2,-139}}, color={0,127,255}));
  connect(flatpipe3.port_b, downhillpipe2.port_a) annotation (Line(points={{20,
          -10},{40,-10},{40,-34.9999}}, color={0,127,255}));
  connect(downhillpipe7.port_b, flatpipe1.port_a) annotation (Line(points={{40,
          -170},{40,-178},{54,-178}}, color={0,127,255}));
  connect(flatpipe9.port_b, flatpipe1.port_a) annotation (Line(points={{22,-179},
          {54,-179},{54,-178}}, color={0,127,255}));
  connect(flatpipe1.port_b, volume.ports[2]) annotation (Line(points={{74,-178},
          {87,-178},{87,-209},{-165,-209},{-165,-191}}, color={0,127,255}));
  connect(processingUnit1.Roomtemperatureport, roomTemperature.port_b)
    annotation (Line(points={{22,-44},{30,-44},{30,70.2},{57,70.2}}, color={191,
          0,0}));
  connect(processingUnit2.Roomtemperatureport, roomTemperature.port_b)
    annotation (Line(points={{23,-102},{30,-102},{30,70.2},{57,70.2}}, color={
          191,0,0}));
  connect(processingUnit3.Roomtemperatureport, roomTemperature.port_b)
    annotation (Line(points={{23,-158},{30,-158},{30,70.2},{57,70.2}}, color={
          191,0,0}));
  connect(processingUnit1.InternalHeatgenerationport, internaltemperature.y)
    annotation (Line(points={{23,-53},{31,-53},{31,44.2},{57,44.2}}, color={0,0,
          127}));
  connect(processingUnit2.InternalHeatgenerationport, internaltemperature.y)
    annotation (Line(points={{24,-111},{31,-111},{31,44.2},{57,44.2}}, color={0,
          0,127}));
  connect(processingUnit3.InternalHeatgenerationport, internaltemperature.y)
    annotation (Line(points={{24,-167},{31,-167},{31,44.2},{57,44.2}}, color={0,
          0,127}));
  connect(flatpipe1.port_b, sensor_T_forward.port) annotation (Line(points={{74,
          -178},{86,-178},{86,-172}}, color={0,127,255}));
  connect(sensor_T_forward.T, T_forward)
    annotation (Line(points={{79,-162},{64,-162}}, color={0,0,127}));
  connect(flatpipe.port_b, sensor_T_forward1.port) annotation (Line(points={{
          -67,-179},{-52,-179},{-52,-130.954},{-78.6692,-130.954}}, color={0,
          127,255}));
  connect(sensor_T_forward1.T, T_forward1) annotation (Line(points={{-85.6692,
          -120.954},{-100.669,-120.954}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
end Main;
