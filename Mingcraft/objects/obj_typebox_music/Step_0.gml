if type = true 
{
music = string_digits(keyboard_string)
if string_length(music) < string_length(keyboard_string)
{keyboard_string = string_copy(keyboard_string, 1, string_length(music))}
if string_length(music) > 3
{
music = string_copy(music, 1, 3)
}
}