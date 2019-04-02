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
  for i in $file_video;do
     mv "$i" "$HOME/Downloads/Video"
  done
}
doc_func (){
  file_doc=`ls $HOME/Downloads/*.pdf $HOME/Downloads/*.doc $HOME/Downloads/*.docx $HOME/Downloads/*.odf $HOME/Downloads/*.txt $HOME/Downloads/*.ods $HOME/Downloads/*.xls $HOME/Downloads/*.xlsx`
  if [ -d "$HOME/Downloads/Doc" ];then
    notify-send -t 3000 "پوشه اسناد وجود دارد"
  else
    mkdir "$HOME/Downloads/Doc"
    notify-send -t 3000 "پوشه اسناد ساخته شد"
  fi
  for i in $file_doc;do
     mv "$i" "$HOME/Downloads/Doc"
  done
}
Compression_func (){
  file_Compression=`ls $HOME/Downloads/*.zip $HOME/Downloads/*.gz $HOME/Downloads/*.7z $HOME/Downloads/*.xz $HOME/Downloads/*.tar $HOME/Downloads/*.bz2`
  if [ -d "$HOME/Downloads/Compression" ];then
    notify-send -t 3000 "پوشه برای فایلهای فشرده وجود دارد"
  else
    mkdir "$HOME/Downloads/Compression"
    notify-send -t 3000 "پوشه فایلهای فشرده ساخته شد"
  fi
  for i in $file_Compression;do
     mv "$i" "$HOME/Downloads/Compression"
  done
pic_func (){
    file_pic=`ls $HOME/Downloads/*.jpg $HOME/Downloads/*.png $HOME/Downloads/*.jpeg $HOME/Downloads/*.ico $HOME/Downloads/*.gif $HOME/Downloads/*.jpe`
    if [ -d "$HOME/Downloads/pic" ];then
      notify-send -t 3000 "پوشه برای فایلهای عکس وجود دارد"
    else
      mkdir "$HOME/Downloads/pic"
      notify-send -t 3000 "پوشه برای فایلهای عکس ساخته شد"
    fi
    for i in $file_pic;do
       mv "$i" "$HOME/Downloads/pic"
    done
}
music_func (){
    file_music=`ls $HOME/Downloads/*.mp3 $HOME/Downloads/*.ogg $HOME/Downloads/*.wav $HOME/Downloads/*.aac`
    if [ -d "$HOME/Downloads/music" ];then
      notify-send -t 3000 "پوشه موزیک وجود دارد"
    else
      mkdir "$HOME/Downloads/music"
      notify-send -t 3000 "پوشه موزیک ساخته شد"
    fi
    for i in $file_music;do
       mv "$i" "$HOME/Downloads/music"
    done
}
video_func
doc_func
Compression_func
pic_func
music_func
