# Sugary Spire: Exhibition Night Decomp

This repository contains a work-in-progress decompilation of the "Sugary Spire: Exhibition Night" demo. The current build is nearly 100% faithful to the original.


## Requirements

- [GameMaker Studio version 2023.11](https://gms.yoyogames.com/GameMaker-Installer-2023.11.1.129.exe) 
  Runtime version: **2023.11.1.160**

- [FMOD Engine](https://www.fmod.com/download#fmodengine) version **2.02.26**  
  *(Note: You may need to create an FMOD account to download it.)*
## Building the Project

Once the required software is installed:

1. Open the project in **GameMaker** as you would any other.  
2. add the sound folder from the original into **/datafiles/sound** 
3. Press **F5** to build and run or **F6** to debug.  
3. If there is a crash related to **FMOD**, this is completely normal.  
   You just need to copy the `api` folder from the FMOD installation directory to your project folder.  

   - On **Windows**, the folder is usually located at:  
     ```
     C:\Program Files (x86)\FMOD SoundSystem\FMOD Studio API Windows\api
     ```
   
   - On **macOS**, you can find it at:  
     ```
     /Applications/FMOD Studio/FMOD Studio.app/Contents/Plugins/api
     ```  
     or if you installed from the archive:  
     ```
     ~/Downloads/fmodstudioapi20202mac/api
     ```
   
   - On **Linux**, it is typically here:  
     ```
     ~/fmodstudioapi20202linux/api
     ```  
     or possibly:  
     ```
     /opt/fmod/api
     ```

   Copy the `api` folder into your GameMaker project directory (where your `.yyp` file is).
