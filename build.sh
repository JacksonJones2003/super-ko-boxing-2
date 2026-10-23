#!/bin/sh
# Rebuilds release/super-ko-boxing-2-64bit.apk from game/ (the patched, decoded APK) and java/.
# Needs: apktool, a JDK, and Android build-tools (d8, zipalign, apksigner) plus platforms/android-36.
set -eu

ROOT=$(cd "$(dirname "$0")" && pwd)
SDK=${ANDROID_SDK:-$HOME/Library/Android/sdk}
BT=${BUILD_TOOLS:-$SDK/build-tools/36.0.0}
AJ=$SDK/platforms/android-36/android.jar
OUT="$ROOT/build"

rm -rf "${OUT:?}"
mkdir -p "$OUT/classes" "$OUT/dex"

# Java loader (ZbEmbed) and the ZettaBridge JNI surface (ZBridge), shipped as classes2.dex.
javac --release 8 -nowarn -cp "$AJ" -d "$OUT/classes" $(find "$ROOT/java" -name '*.java')
"$BT/d8" --min-api 26 --lib "$AJ" --output "$OUT/dex" $(find "$OUT/classes" -name '*.class')
mv "$OUT/dex/classes.dex" "$OUT/dex/classes2.dex"

apktool b -o "$OUT/unsigned.apk" "$ROOT/game"
(cd "$OUT/dex" && zip -q "$OUT/unsigned.apk" classes2.dex)
"$BT/zipalign" -f -p 4 "$OUT/unsigned.apk" "$OUT/aligned.apk"
# Same key as the installed copies, so updates install over them and keep saves.
"$BT/apksigner" sign --ks "$ROOT/signing/skob2.jks" --ks-pass pass:android --min-sdk-version 4 \
    --out "$ROOT/release/super-ko-boxing-2-64bit.apk" "$OUT/aligned.apk"
rm -f "$ROOT/release/"*.idsig
echo "built release/super-ko-boxing-2-64bit.apk"
