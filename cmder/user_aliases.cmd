;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here

init=%CMDER_ROOT%\vendor\init.bat
cmderr=cd /d "%CMDER_ROOT%"
unalias=alias /d $1
e.=explorer .
pwd=cd
clear=cls
ls=ls --show-control-chars -F --color $*
py=python $*
pyserve=python -m http.server $*
gl=git log --oneline --all --graph --decorate $* | more
gd=git diff $*
gi=git init
gs=git status
gaa=git add -A
gcm=git commit -m $*
gcp=git add -A && git commit -m $* && git push origin
gp=git push origin $*
gpt=git push origin --tags $*
gt= git tag $*
gc=git checkout $*
grao=git remote add origin $*
grau=git remote add upstream $*
gpu=git pull upstream
gfu=git fetch upstream
gpo=git pull origin
gfo=git fetch origin
gmu=git merge upstream/master
gmo=git merge origin/master
gbv=git branch -v
grv=git remote -v
gpso=git push --set-upstream origin master
pwshfmt=powershell -command Invoke-ScriptAnalyzer -Fix -Settings CodeFormatting $*
pwshlint=powershell -command Invoke-ScriptAnalyzer -Settings PSGallery $*
ffjson=ffprobe -v quiet -print_format json -show_format -show_streams -show_chapters $*
findtext=grep -ril $1 $2
findtextin=grep -ril --include=\*.$1 $2 $3

ydla=yt-dlp.exe -f 140/bestaudio $*
ydlv=yt-dlp.exe -f 135+140/18 $*
ydli=yt-dlp.exe -F $*
ydlvh=yt-dlp.exe -f 22/135+140/18/best $*
ydlaj=yt-dlp.exe -f 140 --write-info-json $*
ydlap=yt-dlp.exe -f 140/bestaudio -o "%(playlist_uploader)s/%(playlist_title)s - Audio/%(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --download-archive "./dwns.txt" $*
ydlvp=yt-dlp.exe -f 135+140/18/best --concurrent-fragments 4 --merge-output-format mp4 -o "%(playlist_uploader)s/%(playlist_title)s - 480p/%(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --download-archive "./dwns.txt" $*
ydlvhp=yt-dlp.exe -f 22/135+140/18/best --concurrent-fragments 4 --merge-output-format mp4 -o "%(playlist_uploader)s/%(playlist_title)s - 720p/%(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --download-archive "./dwns.txt" $*
ydlapse=yt-dlp.exe -f 140 -o "%(playlist_uploader)s/%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --playlist-start $1 --playlist-end $2 $3
ydlvpse=yt-dlp.exe -f 22/135+140/18 --concurrent-fragments 4 --merge-output-format mp4 -o "%(playlist_uploader)s/%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --playlist-start $1 --playlist-end $2 $3


ydlvpn=yt-dlp.exe -f 22 -o "%(playlist_uploader)s/%(autonumber)s - %(playlist_title)s %(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --download-archive "./dwns.txt" $*
ydlapn=youtube-dl.exe -f 140 -o "%(playlist_uploader)s/%(autonumber)s - %(playlist_title)s %(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --download-archive "./dwns.txt" $*

ydlvpt=yt-dlp.exe -f 22/135+140/18 --concurrent-fragments 4 --merge-output-format mp4 -o "%(playlist_uploader)s/%(playlist_title)s - 720p/%(playlist_index)s - %(title)s.%(ext)s" --yes-playlist --download-archive "./dwns.txt" --cookies "C:\misc\cookies.txt" $*

ydlls=youtube-dl.exe --yes-playlist --flat-playlist --skip-download $*
aria2c=D:\PortableApps\aria2c.exe $*
wget=D:\PortableApps\wget.exe $*
vc=D:\PortableApps\video-compare\video-compare.exe $*
convert=D:\PortableApps\ImageMagick-7.1.0-Q8\convert.exe $*

cdutils=cd /d "D:\Projs\Py\PyUtils"
cdpy=cd /d "D:\Projs\Py\"
zipfiles=python "D:\Projs\Py\PyUtils\zip-files.py" $*
pyaccess=python "D:\Projs\Py\PyFolderAccess\pyaccess.py" $*
o=python "D:\Projs\Py\avUtils\optimizeAV.py" $*

;= rem --cookies "C:\misc\mm.com_cookies.txt" $*
;= rem yt-dlp.exe -F --cookies "C:\misc\mm.com_cookies.txt" $*
;= rem hub=D:\PortableApps\hub.exe $* / qaac=D:\PortableApps\qaac\qaac64.exe $* / 7z=D:\PortableApps\7za.exe $* / ffmpeg=D:\PortableApps\ffmpeg\bin\ffmpeg.exe $* / ffprobe=D:\PortableApps\ffmpeg\bin\ffprobe.exe $*

;= rem ydl 135+140  136+140 18 20 139 244 --concurrent-fragments N
;= rem  244+140-dash --merge-output-format mkv
;= rem  135+140 --merge-output-format mp4
;= rem 135-dash+140-dash --merge-output-format mp4
;= rem "%(playlist_uploader)s/%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s"
;= rem -4, --force-ipv4  --cookies ".\da.com_cookies.txt" --referer URL
;= rem dev tools, load up the video, start it (can pause), in network tab, filter url that contains .json?base64_init=1, copy it and after replacing the text i just quoted with .mpd, you should be able to just run youtube-dl "URL"... try adding --referer URL where URL is the player URL youtube-dl --referer "URL in browser" "player-url" -a, --batch-file FILE
;= rem vimeo http-540p http-720p http-360p http-1080p


