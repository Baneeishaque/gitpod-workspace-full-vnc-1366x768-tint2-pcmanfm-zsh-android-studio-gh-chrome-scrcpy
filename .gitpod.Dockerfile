FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-android-studio-gh-chrome

RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     scrcpy | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*

ENV ADB=$ANDROID_SDK_ROOT/platform-tools/adb