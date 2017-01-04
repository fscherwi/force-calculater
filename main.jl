function input(prompt::String="")
    print(prompt)
    chomp(readline())
  end
xr = 0
yr = 0
i = 1
forces = parseint(input("\nHow many forces to calculate: "))
while i <= forces
    F = parsefloat(input("F$i: "))
    F_degrees = parsefloat(input("F$i α: "))
    x = F * cos((pi * F_degrees) / 180)
    y = F * sin((pi * F_degrees) / 180)
    xr = xr + x
    yr = yr + y
    i = i + 1
  end
r = sqrt((xr * xr) + (yr * yr))
r_degrees = (atan(yr / xr) * 180) / pi
println("\nFR:   $r\nFR α: $r_degrees\n")
