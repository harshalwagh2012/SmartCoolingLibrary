within SmartCoolingLibrary;
model Pipes
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
 model Flatpipe
   Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase,                                                            length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0, use_HeatTransfer=true, redeclare
        model                                                                                                                                                                                                         HeatTransfer =
          Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)
     annotation (Placement(transformation(extent={{-10,-10},{10.0003,10}})));
   Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase)
     annotation (Placement(transformation(extent={{-110,-10},{-90,10}}),
          iconTransformation(extent={{-110,-10},{-90,10}})));
   Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase)
     annotation (Placement(transformation(extent={{90,-10},{110,10}}),
          iconTransformation(extent={{90,-10},{110,10}})));
   Modelica.Fluid.Interfaces.HeatPorts_a heatPorts_a annotation (Placement(transformation(extent={{-40,-10},
              {40,10}},                                                                                               rotation=0, origin={0,100}), iconTransformation(extent={{-40,-10},
              {40,10}},                                                                                                                                                                           rotation=0, origin={0,30})));
 equation
   connect(pipe1.port_a, port_a)
     annotation (Line(points={{-10,0},{-100,0}}, color={0,127,255}));
   connect(port_b, pipe1.port_b)
     annotation (Line(points={{100,0},{10.0003,0}}, color={0,127,255}));
   connect(pipe1.heatPorts[2], heatPorts_a) annotation (Line(points={{0.100151,4.4},{0.100151,100},{0,100}}, color={127,0,0}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-100,-40},{-80,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Line(points={{-36,-36},{44,-36},{30,-28},{44,-36},{32,-44},{32,-44},{32,-44}}, color={0,0,255}, pattern=LinePattern.Solid, arrow={Arrow.None,Arrow.None}, thickness=0)}));
 end Flatpipe;

 model Uphill
   Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase,                                                            length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=0.3048, use_HeatTransfer=true, redeclare
        model                                                                                                                                                                                                         HeatTransfer =
          Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{-10.0001,-10},{10.0001,10}}, rotation=90, origin={0,0.0001})));
   Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase)
     annotation (Placement(transformation(extent={{-10,-110},{10.0002,-90}})));
   Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase)
     annotation (Placement(transformation(extent={{-10,90},{10,110}})));
   Modelica.Fluid.Interfaces.HeatPorts_a heatPorts_a annotation (Placement(transformation(extent={{-40,-10},{40,10}}, rotation=90, origin={-100,0}), iconTransformation(extent={{-40,-10},{40,10}}, rotation=90, origin={-30,0})));
 equation
   connect(port_a, pipe1.port_a) annotation (Line(points={{0.0001,-100},{0.0001,-10},{-4.44089e-16,-10}}, color={0,127,255}));
   connect(pipe1.port_b, port_b) annotation (Line(points={{1.66533e-16,10.0002},{1.66533e-16,55.0001},{0,55.0001},{0,100}}, color={0,127,255}));
   connect(pipe1.heatPorts[2], heatPorts_a) annotation (Line(points={{-4.4,0.100101},{-100,0.100101},{-100,0}}, color={127,0,0}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
 end Uphill;

 model Downhillpipe
   Modelica.Fluid.Pipes.DynamicPipe pipe1(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase,                                                            length=0.3048, diameter(displayUnit="cm") = 0.01, height_ab=-0.3048, use_HeatTransfer=true, redeclare
        model                                                                                                                                                                                                         HeatTransfer =
          Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer)                                                                                                                                                                                                         annotation (Placement(transformation(extent={{10.0001,10},{-10.0001,-10}}, rotation=90, origin={0,0.0001})));
   Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase)
     annotation (Placement(transformation(extent={{-10,90},{10.0002,110}})));
   Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
          Modelica.Media.Water.StandardWaterOnePhase)
     annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
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
    Modelica.Fluid.Interfaces.FluidPort_a port_a
      annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b
      annotation (Placement(transformation(extent={{90,-10},{110,10}})));
  equation
    connect(port_a, port_b)
      annotation (Line(points={{-100,0},{100,0}}, color={0,127,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-100,-40},{-80,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  end Flat;

  model Vertical
    Modelica.Fluid.Interfaces.FluidPort_a port_a
      annotation (Placement(transformation(extent={{-10,-110},{10,-90.0001}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b
      annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  equation
    connect(port_b, port_a)
      annotation (Line(points={{0,100},{0,-100}}, color={0,127,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  end Vertical;

  model Cornerelbow
    Modelica.Fluid.Interfaces.FluidPort_a port_a
      annotation (Placement(transformation(extent={{-10,-110},{10,-90}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b
      annotation (Placement(transformation(extent={{90,-10},{110,10.0004}})));
  equation
    connect(port_a, port_b) annotation (Line(points={{0,-100},{0,0.0002},{100,0.0002}}, color={0,127,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-20,20},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  end Cornerelbow;

  model Tjoint
    Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(transformation(extent={{-10,90},
                {10,110}}),                                                                                        iconTransformation(extent={{-10,90},
                {10,110}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(transformation(extent={{90,-10},
                {110,10}}),                                                                                        iconTransformation(extent={{90,-10},
                {110,10}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b1 annotation (Placement(transformation(extent={{
                -10.0003,-110},{10,-90}}),                                                                                 iconTransformation(extent={{-12,
                -110},{7.9999,-90}})));
  equation
    connect(port_a, port_b)
      annotation (Line(points={{0,100},{0,0},{100,0}}, color={0,127,255}));
    connect(port_a, port_b1) annotation (Line(points={{0,100},{0,-100},{-0.00015,-100}}, color={0,127,255}));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-20,20},{100,-20}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-20,100},{20,-100}}, lineColor={0,0,0}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{80,-40},{100,40}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,-100},{40,-80}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Rectangle(extent={{-40,80},{40,100}}, lineColor={0,0,0}, fillColor={0,0,0}, pattern=LinePattern.Solid, fillPattern=FillPattern.Solid, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0)}));
  end Tjoint;
 end PipesVisuals;
end Pipes;
