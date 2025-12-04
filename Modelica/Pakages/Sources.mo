within SmartCoolingLibrary;
model Sources
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false)));
 model RoomTemperature
   Modelica.Thermal.HeatTransfer.Sources.FixedTemperature Roomtemperature(T=293.15)
     annotation (Placement(transformation(extent={{10,-8},{-9.99995,12}})));
   Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b annotation (Placement(transformation(extent={{-115,-8},
              {-95,12}}),                                                                                                        iconTransformation(extent={{-120,-8},{-100,12.0001}})));
 equation
   connect(Roomtemperature.port, port_b)
     annotation (Line(points={{-9.99995,2},{-105,2}}, color={191,0,0}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={255,0,0}, fillColor={255,0,0}, pattern=LinePattern.None, fillPattern=FillPattern.HorizontalCylinder, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Text(textString="Room temperature", extent={{-100,-100},{100,-120}}, textColor={255,0,0})}));
 end RoomTemperature;

 model Internaltemperature
   Modelica.Blocks.Sources.Ramp ChipInternalheat(height=4, duration=20, offset=0, startTime=0)
     annotation (Placement(transformation(extent={{6,-8},{-14,12}})));
   Modelica.Blocks.Interfaces.RealOutput y
     annotation (Placement(transformation(extent={{-100,-8},{-120,12.0001}})));
 equation
   connect(ChipInternalheat.y, y) annotation (Line(points={{-15,2},{-110,2},{-110,2.00005}}, color={0,0,127}));
   annotation (Diagram(coordinateSystem(preserveAspectRatio=false)), Icon(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,255}, fillColor={0,0,255}, pattern=LinePattern.Solid, fillPattern=FillPattern.HorizontalCylinder, lineThickness=-0.25, borderPattern=BorderPattern.None, radius=0), Text(textString="Internal Temperature", extent={{-100,-100},{100,-120}}, textColor={0,0,255})}));
 end Internaltemperature;
end Sources;
