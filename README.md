# AnythingMPV
My personal configuration files, scripts and shaders that I use for MPV on my Windows machine.

## What is MPV?
**[MPV](https://mpv.io/)** is a highly adaptable, lightweight, and the most advanced media player in existence, known for its extensive customizability. It plays almost any video, audio, or subtitle file you throw at it, and it can be tweaked to your exact preferences. Moreover, MPV includes numerous advanced features and is available across multiple platforms.

## MPV Installation Guide
1. Download the latest Windows build of **[mpv](https://mpv.io/)** from **[mpv-winbuild](https://github.com/zhongfly/mpv-winbuild/releases/latest/)**
2. If Your CPU supports **[AVX2](https://en.wikipedia.org/wiki/Advanced_Vector_Extensions)** instruction set (typically any CPU released since 2015), then download the latest v3 build, which should be formatted like this: `mpv-x86_64-v3-YYYYMMDD-git-abcxyz.7z` 
You can check if your CPU supports the AVX2 instruction set by using a program like **[CPU-Z](https://www.cpuid.com/softwares/cpu-z.html)**
3. After downloading, extract the archive's contents to your preferred location. eg: in my case: `C:\Program Files\MPV`
4. Navigate to the installer folder, right click on the `mpv-install.bat` file, and select `Run as administrator`. Follow the on-screen instructions to complete the installation.
5. Now go back to the folder where `mpv.exe` is located. Right click on the `updater.bat` file and select `Run as administrator`.  It will ask you if you also want to download `ffmpeg` and `yt-dlp`. Tap Y for both.
6. From now on, use this `updater.bat` file to update mpv to the latest version. I also recommend adding the folder where `mpv.exe` is located to the System Environment Variables path so that MPV can be used from CMD/Terminal.

## Config Installation Guide:

By default, mpv's config can be found under `%APPDATA%/mpv/`/`C:\Users\*UserName*\AppData\Roaming\mpv`
But, a folder named `portable_config` next to where mpv.exe is stored can override this location as the default config folder.

### File Structure for `%APPDATA%/mpv/`
```
.
└── mpv/
    ├── fonts/
    ├── script-opts/
    ├── scripts/
    ├── shaders/
    ├── input.conf
    └── mpv.conf
```
### File Structure for `portable_config`
```
.
├── mpv.exe
└── portable_config/
    ├── fonts/
    ├── script-opts/
    ├── scripts/
    ├── shaders/
    ├── input.conf
    └── mpv.conf
```

## Player UI

**[uosc](https://github.com/tomasklaen/uosc)**

## Scripts used

**[SmartCopyPaste](https://github.com/Eisa01/mpv-scripts#smartcopypaste)**

**[UndoRedo](https://github.com/Eisa01/mpv-scripts#undoredo)**

**[cycle-video-rotate](https://github.com/VideoPlayerCode/mpv-tools/blob/master/scripts/cycle-video-rotate.lua)**

## Shaders used

Upscaler:

**[SSimSuperRes](https://gist.github.com/igv/2364ffa6e81540f29cb7ab4c9bc05b6b)**

Downscaler:

**[SSimDownscaler](https://gist.github.com/igv/36508af3ffc84410fe39761d6969be10)**

Chroma upscaler:

**[KrigBilateral](https://gist.github.com/igv/a015fc885d5c22e6891820ad89555637)**

Sharpening shaders - To be used on demand for very low quality content:

**[FSR](https://gist.github.com/agyild/82219c545228d70c5604f865ce0b0ce5)**

**[adaptive-sharpen](https://gist.github.com/igv/8a77e4eb8276753b54bb94c1c50c317e)**
