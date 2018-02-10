## PHONEGAP Dockerfile

On this repository you can find a **Dockerfile** of a [phonegap](https://phonegap.com/) image with a embedded [Android SDK](https://developer.android.com/sdk/) compatible with android devices from [ICE CREAM SANDWICH](https://developer.android.com/about/versions/android-4.0.3.html) to [OREO](https://developer.android.com/about/versions/oreo/index.html).

### Installation

1. Install [Docker](https://www.docker.com/).

2. Pull the image
  * `docker pull lissonpsantos2/phonegap`

### Usage

1. Run the image redirecting the usb folder and your phonegap project folder
  * `docker run --privileged -v /dev/bus/usb/:/dev/bus/usb -v <your-project-folder>:/home/project-folder -it lissonpsantos2/phonegap`

2. Once inside the container you can run
  * `phonegap run android --verbose --device`