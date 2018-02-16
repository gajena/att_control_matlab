function val = ang_wrap(heading)
for i=1:3
while heading(i,:) <= pi
    heading(i,:) = heading(i,:) + 2*pi;
end

while heading(i,:) > pi
    heading(i,:) = heading(i,:) - 2*pi;
end
end
val = heading;