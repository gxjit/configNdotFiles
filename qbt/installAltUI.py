from io import BytesIO
from json import loads
from os.path import expanduser, expandvars
from pathlib import Path
from platform import system
from urllib.request import urlopen
from zipfile import ZipFile

if system() == "Linux":
    installDir = expanduser("~/.config/qBittorrent/")

if system() == "Windows":
    installDir = expandvars(r"%APPDATA%\qBittorrent")


installPath = Path(installDir).resolve()

user = "CzBiX"
repo = "qb-web"
url = loads(urlopen(f"https://api.github.com/repos/{user}/{repo}/releases").read())
url = url[0]["assets"][0]["browser_download_url"]
zipContents = urlopen(url).read()

if not installPath.exists():
    installPath.mkdir(parents=True)

ZipFile(BytesIO(zipContents)).extractall(installPath)
installPath.joinpath("dist").rename(installPath.joinpath("altui"))
