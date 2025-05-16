#!/bin/bash

# Verificar que ffmpeg y yt-dlp están instalados
command -v ffmpeg >/dev/null 2>&1 || { echo >&2 "Necesitas instalar ffmpeg."; exit 1; }
command -v yt-dlp >/dev/null 2>&1 || { echo >&2 "Necesitas instalar yt-dlp."; exit 1; }

# Pedir URL
read -p "Introduce la URL del video de YouTube: " URL

yt-dlp -x --audio-format mp3 -o "audio.%(title)s.%(ext)s" "$URL"
yt-dlp -f 'bestvideo[ext=mp4]' -o "video.%(title)s.%(ext)s" "$URL"


# Mostrar nombres de archivos generados
AUDIO_FILE=$(ls audio.*.mp3 | head -n 1)
VIDEO_FILE=$(ls video.*.mp4 | head -n 1)

# Mostrar info básica
echo -e "\n🎧 Audio extraído: $AUDIO_FILE"
echo -e "🎞️ Video sin audio: $VIDEO_FILE"

echo -e "\n📄 Información del audio:"
ffmpeg -i "$AUDIO_FILE" 2>&1 | grep -E 'Duration|Audio'

echo -e "\n📄 Información del video:"
ffmpeg -i "$VIDEO_FILE" 2>&1 | grep -E 'Duration|Video'
