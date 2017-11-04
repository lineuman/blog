---
tags: [justforfun]
---

## How to download youtube video from cmd ?
System:
Mac X os

Network:
WiseVPN

Program:
Python

1. sudo pip install pytube

2. get the video url (just like this https://www.youtube.com/watch?v=EUoe7cf0HYw)

3. sudo python

4. download by python
```
from pytube import Youtube
yt = YouTube('http://youtube.com/watch?v=V54CEElTF_U')
yt.streams.frist().downloads()
```

5. get the video file

just like:

```
Taylor Swift - Call It What You Want (Lyric Video).mp4
```
