#!/bin/bash
encoderdelay=576
for file in *.wav; do
    echo "Processing $file"
    # padding silence to account for encoder delay
    if ! sox "$file" tmp1.wav pad 0 $(bc -l <<< "$encoderdelay/44100"); then
        echo "Failed to pad $file"
        continue
    fi
    # resampling and interpolation
    samples=$(soxi -s tmp1.wav)
    padding=$(bc -l <<< "(1152 - ($samples % 1152)) % 1152")
    if ! sox tmp1.wav "padded_$file" pad 0 $(bc -l <<< "$padding/44100"); then
        echo "Failed to resample $file"
        rm tmp1.wav
        continue
    fi
    # encoding with lame
    if ! lame -b 320 --noreplaygain "padded_$file" "${file%.*}.mp3"; then
        echo "Failed to encode $file"
        rm tmp1.wav "padded_$file"
        continue
    fi
    rm tmp1.wav "padded_$file"
    echo "$file completed"
done
