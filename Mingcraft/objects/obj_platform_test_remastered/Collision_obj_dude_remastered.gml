if other.yprevious > y - 10
{upordown = 0}
if other.yprevious < y - 10
{upordown = 1}

other.plsfall = false
if other.y > y + 60
{
other.y = clamp(other.y, y + 86, 99999)
down = true
if other.current_state = 3 
{
jumpy = 0
jumper = 0
letzago = false
letzzago = false
yass = -5
yasss = false
jrecover = false
other.alarm[0] = 1 
other.plsfall = true
}
}

if down = false
{
if other.current_state = 3 and other.x > x - 50 and other.x < x + 50 //and upordown = 1
{
other.yasss = true	
other.y = y - 10
other.plsfall = false
}


if other.current_state = 4 and other.x > x - 50 and other.x < x + 50 //and upordown = 1
{
other.y = y - 10
other.plsfall = false
}
}
down = false

if other.x > x + 50 or other.xprevious > x + 50
{
other.x = clamp(other.x, x + 65, 99999)
}

if other.x < x - 50 or other.xprevious < x - 50
{
other.x = clamp(other.x, 0, x - 65)
}

//if other.x > x + 50 or other.xprevious > x + 50 and yprevious < y - 10
//{
//other.x = clamp(other.x, x + 65, 99999)
//}

//if other.x < x - 50 or other.xprevious < x - 50 and yprevious < y - 10
//{
//other.x = clamp(other.x, 0, x - 65)
//}

//if other.yprevious < y - 10  and other.x < x
//{
//other.x = clamp(other.x, 0, x - 50)
//}

//if other.yprevious < y - 10  and other.x > x
//{
//other.x = clamp(other.x, x + 50, 999999)
//}

