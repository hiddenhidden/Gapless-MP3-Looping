# Gapless MP3 Encoder: Installation and Usage Guide

This Bash script converts `.wav` audio files to `.mp3` format, optimized for gapless looping. It uses SoX to pad and resample the audio and LAME to encode the audio to `.mp3`. This guide will help you install the necessary prerequisites and use the script on an OS X machine.

## Prerequisites

Before you start, ensure that you have SoX, LAME, and `bc` installed on your system. If not, follow these steps to install them:

### Step 1: Install Homebrew

Homebrew is a package manager for Mac that you can use to install SoX and LAME.

1. Open Terminal.
2. Type the following command and hit Enter:

    `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### Step 2: Install SoX and LAME

1. To install SoX, type:

    `brew install sox`

2. To install LAME, type:

    `brew install lame`

### Step 3: Check `bc` Installation

The `bc` command line utility should already be installed on most Unix-based systems, including OS X. You can check if it's installed by typing:

    `bc --version`

If the `bc` utility is not installed, you'll need to install it. The method of installation varies by system.

## Install the Gapless MP3 Encoder Script

1. Open TextEdit, found in the Applications folder.
2. Go to TextEdit > Preferences (or press Command+,) and select "Plain text" under Format.
3. Copy the Gapless MP3 Encoder script code into the TextEdit window.
4. Save the file with a ".sh" extension, for example, "gapless_encoder.sh", to your preferred directory. 

## How to Use the Script

1. Place your `.wav` audio files (preferably over 5 minutes in length) in the same directory as the "gapless_encoder.sh" script.
2. Open Terminal and navigate to the directory where the "gapless_encoder.sh" script is saved.
3. Make the script executable by typing:

    `chmod +x gapless_encoder.sh`

4. Run the script by typing:

    `./gapless_encoder.sh`

The script will process each audio file, padding and resampling it, and then encoding it to `.mp3` format optimized for gapless looping.
