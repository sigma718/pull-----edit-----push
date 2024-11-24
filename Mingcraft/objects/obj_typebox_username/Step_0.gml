if type = true 
{
username = keyboard_string
if string_length(keyboard_string) > 10
{
keyboard_string = string_copy(keyboard_string, 1, 10)
}
}