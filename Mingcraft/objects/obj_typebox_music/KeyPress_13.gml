if type = true and music != ""
{
//var snd = audio_play_sound(snd_click_future, 1, false)
audio_sound_gain(snd, global.sfx_v, 0)
if real(music) > 100 {keyboard_string = "100"}
music = string_digits(keyboard_string)
global.music_v = music/100
type = false
}
if type = true and music = ""
{
type = false
//var snd = audio_play_sound(snd_click_future, 1, false)
audio_sound_gain(snd, global.sfx_v, 0)
}