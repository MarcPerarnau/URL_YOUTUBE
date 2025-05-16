# URL_YOUTUBE
Este script en Bash permite descargar el audio en MP3 y el video sin audio de un video de YouTube, utilizando yt-dlp y ffmpeg.

## 🎯 Características
Extrae el audio en formato MP3.

Descarga el video sin audio (en .mp4 si está disponible).

Muestra información básica del audio y video descargado.

Sin dependencias complicadas ni configuraciones avanzadas.

## 📦 Requisitos
Antes de ejecutar el script, asegúrate de tener instalados:

- `yt-dlp`:
  
Instálalo con pip:
```bash
pip install -U yt-dlp
```

- `ffmpeg`:
  
En Debian/Ubuntu:
```bash
sudo apt update && sudo apt install ffmpeg
```

## 🚀 Uso
1. Clona este repositorio o descarga el archivo del script:

```bash
git clone https://github.com/tuusuario/yt-audio-video-basic.git
cd yt-audio-video-basic
```

2. Haz el script ejecutable:

```bash
chmod +x yt_simple_split.sh
```

3. Ejecuta el script:

```bash
./yt_simple_split.sh
```

4. Sigue las instrucciones en pantalla para ingresar la URL del video.

## 📝 Salida esperada
Al finalizar, tendrás:

- Un archivo MP3 con el audio del video.
- Un archivo MP4 con el video (sin audio).
- Información técnica básica sobre ambos archivos.

📄 Licencia
Este proyecto está bajo la licencia MIT. Libre para usar, modificar y distribuir.
