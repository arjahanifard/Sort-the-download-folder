#!/bin/bash
IFS=$'\n'
video_func (){
  file_video=`ls $HOME/Downloads/*.mkv $HOME/Downloads/*.mp4 $HOME/Downloads/*.3gp $HOME/Downloads/*.webm $HOME/Downloads/*.avi $HOME/Downloads/*.mov $HOME/Downloads/*.mpg $HOME/Downloads/*.mpeg`
  if [ -d "$HOME/Downloads/Video" ];then
    notify-send -t 3000 "پوشه ویدیو وجود دارد"
  else
    mkdir "$HOME/Downloads/Video"
    notify-send -t 3000 "پوشه ویدیو ساخته شد"
  fi  
}

for i in $file;do
   mv "$i" "$HOME/Downloads/Video"
done
BIN|ZIP|GZ|7Z|XZ|Z|TAR|TGZ|BZ2|LZH|A[0-9]?|RAR|R[0-9][0-9]|ISO|RPM|DEB|EXE|MSI|APK|3GP|
AAC|FLAC|M4A|M4P|MP3|OGG|WAV|WMA|MP4|MKV|WEBM|OGV|AVI|MOV|WMV|FLV|F4V|MPG|MPEG|RMVB
