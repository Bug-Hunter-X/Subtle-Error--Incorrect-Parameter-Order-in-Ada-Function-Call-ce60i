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
   -- Incorrect parameter order
   Area := Calculate_Area(Length, Width); -- This is incorrect, but might compile
   Put_Line("Area (Incorrect):" & Float'Image(Area));
end Main;
```