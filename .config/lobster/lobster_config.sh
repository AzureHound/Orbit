lobster_editor=nvim
player=mpv
download_dir=~/Videos/lobster
provider=Vidcloud # UpCloud
history=1
subs_language=english
histfile=$HOME/.local/share/lobster/lobster_history.txt
image_preview=1
download_video() {
  yt-dlp "$1" --no-skip-unavailable-fragments --fragment-retries infinite -N 16 -o "$3/$2".mp4
}
# preview_window_size=50%
# ueberzug_x=$(($(tput cols) - 70))
# ueberzug_y=$(($(tput lines) / 10))
# ueberzug_max_width=100
# ueberzug_max_height=100
# ueberzug_output=kitty
