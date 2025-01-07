```ada
function Calculate_Area(Length : Float; Width : Float) return Float is
begin
  return Length * Width;
end Calculate_Area;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Length : Float := 10.0;
   Width  : Float := 5.0;
   Area   : Float;
begin
   Area := Calculate_Area(Length => Length, Width => Width); -- Correct parameter passing
   Put_Line("Area:" & Float'Image(Area));
   -- Correct way to pass parameters.  
   Area := Calculate_Area(Length, Width); -- This will now correctly pass the parameters
   Put_Line("Area (Correct):" & Float'Image(Area));
end Main;
```