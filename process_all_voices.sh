#!/bin/sh

declare -a available_voices=(
  "Agnes" "Alex" "Alice" "Allison" "Alva" "Amelie" "Anna" "Audrey" "Aurelie" "Ava" "Boing" "Bruce" "Carmit" "Cellos" "Damayanti" "Daniel" "Diego" "Ellen" "Fiona" "Fred" "Ioana" "Joana" "Jorge" "Juan" "Kanya" "Karen" "Kate" "Kathy" "Kyoko" "Laila" "Laura" "Lee" "Lekha" "Luca" "Luciana" "Maged" "Mariska" "Mei-Jia" "Melina" "Milena" "Moira" "Monica" "Nicolas" "Nora" "Paulina" "Petra" "Princess" "Ralph" "Rishi" "Samantha" "Sara" "Satu" "Serena" "Sin-ji" "Susan" "Tessa" "Thomas" "Ting-Ting" "Tom" "Trinoids" "Veena" "Vicki" "Victoria" "Xander" "Yelda" "Yuna" "Yuri" "Zosia" "Zuzan"
)

# The name of the batch, e.g. susan_voice_wap_lyrics
process_name=$1

# The string to text-to-speech convert.
input=$2

# Path to output with the current time as the leaf folder.
output_dir="./temp/say_command_output/process_all_voices/$process_name/$(date +%Y%m%d_%T)"

# Makes the dir
mkdir -p $output_dir

# TODO: Check if input is file, like `say -v Susan -f lyrics.txt`
# TODO: Allow more than .aiff
for voice in "${available_voices[@]}"
do
  # echo say -v $voice $input -o $output_dir/$voice.aiff # DEBUG
  say -v $voice \"$input\" -o $output_dir/$voice.aiff
done
