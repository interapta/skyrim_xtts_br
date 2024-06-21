## XTTS Mantella Custom Voices Pack

This is a repository containing `latent_speaker` JSON files of trained voiced data created by the community. The main purpose is to have a repository full of custom voices for Skyrim or Fallout4, and have this repo always be in sync with a build that can be deployed in the cloud as a XTTS Mantella server. 

See the `Training your own Custom NPCs` section to learn how to train and create your own json latent files, and feel free to share them in this repository. Contact community members in the [Mantella discord](https://discord.gg/Q4BJAdtGUE) to be added as a contributor to this repo, or create a fork pull request. 

## Usage Locally

Simply copy all the files from the `latent_speaker_folder` into your xtts-mantella folder `latent_speaker_folder` and start the xtts server.

## Usage Cloud

Anytime a new file is added or updated within the `latent_speaker_folder` a new build will be made automatically. The latest build will always be used when deploying a `xtts-mantella-custom-voices-pack` build in the cloud. 

This means if you wish to run your own custom voices in a cloud server, all you have to do is test your custom voice files in game and then add your generated `latent_speaker` json to this repository. After a few minutes, the new build will be made so just create a new runpod.io pod or an instance of whatever service you use.

Feel free to make pull request with your trained files, or if you are a contributor then directly push your files to main whenever.

### Runinng in runpod.io

Click the following URL to setup a new runpod.io pod. It will setup the XTTS Mantella API server along all the custom voice files found in this repo.

- [runpod template](https://runpod.io/console/deploy?template=kv0kqgd8oi&ref=u2snoorq)

It is more than enough to simply choose the cheapest option, as of date a 3070, on community cloud.

For more information, refer to Mantella XTTS docs: https://art-from-the-machine.github.io/Mantella/pages/installation.html#text-to-speech

### Running else where 

If you wish to run this somewhere else, you can just grab the latest Docker build: `docker pull koukidevdocks/xtts-mantella-custom-voices-pack:main`.

On run, you may do `docker run --gpus=all -p 8020:8020 koukidevdocks/xtts-mantella-custom-voices-pack:main`.

## List of Custom NPCs

Below is a list of NPCS. If you do contribute to the latent_speaker, please be sure to add the NPC here as well for documentation.

### Skyrim

- Sofia: https://www.nexusmods.com/skyrimspecialedition/mods/2180
- Recorder: https://www.nexusmods.com/skyrimspecialedition/mods/4718
- Lydia (Improved Follower Dialogue): https://www.nexusmods.com/skyrimspecialedition/mods/38473
- Morgaine - https://www.nexusmods.com/skyrimspecialedition/mods/41027
- Al'Hassan (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Amalee (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Amras (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Anum-La The Swamp Knight (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Arelthor (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Arghus (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Gorr (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Jade (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Tikrid (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Zora Fair-Child (Interesting NCPs): https://www.nexusmods.com/skyrimspecialedition/mods/29194
- Auri : https://www.nexusmods.com/skyrimspecialedition/mods/1163
- Inigo : https://www.nexusmods.com/skyrimspecialedition/mods/1461
- Livia : https://www.nexusmods.com/skyrimspecialedition/mods/33318
- Remiel : https://www.nexusmods.com/skyrimspecialedition/mods/51874
- SeranaUnique : https://www.nexusmods.com/skyrimspecialedition/mods/32161
- Vilja : https://www.nexusmods.com/skyrimspecialedition/mods/6722
- Daegon : https://www.nexusmods.com/skyrimspecialedition/mods/112097
- Thogra Gra-Mugur : https://www.nexusmods.com/skyrimspecialedition/mods/120007
- Herika : https://www.nexusmods.com/skyrimspecialedition/mods/89931
- Sa'chil : https://www.nexusmods.com/skyrimspecialedition/mods/106892
- Taeka : https://www.nexusmods.com/skyrimspecialedition/mods/108156
- Frieren : https://www.nexusmods.com/skyrimspecialedition/mods/117838
- Elana Blackfire : https://www.nexusmods.com/skyrimspecialedition/mods/96707
  
#### Skyrim NOTES
- For Lydia Improved Follower Dialogue, rename the `voice_model` column to `lydiauniquereworked` within your `data\skyrim\skyrim_characters.csv` folder. 
- For Morgaine, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `morgaine`.
- Livia, Vilja, Daegon, Thogra, Herika, Elana Blackfire, Frieren and Sa'chil are not added yet in skyrim_characters, they will be soon, feel free to add them
- For SeranaUnique, rename the `voice_model` column to `seranaunique` within your `data\skyrim\skyrim_characters.csv` folder.
- For Daegon, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `Daegonvoice`
- For Thogra Gra-Mugur, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `Thogramugurvoice`
- For Herika, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `Herikavoice` On the Herika server, under Openai TTS use the Nova voice option.
- For Sa'chil, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `Sa'chilvoice`
- For Taeka, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `taekaelixivoice`
- For Frieren, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `Frierenvoice`
- For Elana Blackfire, add her to `data\skyrim\skyrim_characters.csv` folder with the `voice_model` column as `elanablackfirevoice`
  
### Other
- Brainfrog voices (https://www.youtube.com/@BrainFrogVR/videos) - brainfrog, gruffpole

## Training your own Custom NPCs

Training your own custom NPCs is really easy, its actually one of the biggest selling points of `XTTS`. 

#### Using Lazy Voice Finder

1. Open Lazy Voice Finder
2. Open the ESP with the voice.
3. Select a Speaker and a long voiceline that's "calm" and "representative" of their casual conversation.
4. Right Click -> Copy as WAV
5. Paste to xtts/speakers/en (or /fr or whatever)
6. Hit F2 and Rename the WAV to your intended Speaker Name.
7. Repeat for each voice you want to capture.
8. Restart XTTS. XTTS will convert the Speaker from WAV to JSON Latent automatically.

#### Using Yakitori Audio Converter

We'll be using Skyrim to explain. These are the instructions for the current Mantella and XTTS-Mantella-Server version as of time of writting. 

1. Find the NPC files of the NPC you want to target, you will need the in-game name of the NPC and its voice `.wav` sound voice files for training. Loose files will have these `.wav` files under `{Mod File}\Sound\Voice\{Mod}.esp\{npc_voicetype}\` in the form of `.fuz` files that must be converted to `.wav`. If your NPC is bundled within a `.bsa` file, use [BAE](https://www.nexusmods.com/skyrimspecialedition/mods/974/) to extract them to loose files.
2. Download and install [XTTS Mantella API Server](https://www.nexusmods.com/skyrimspecialedition/mods/113445). Make sure to also download the `gradio mantella request test` files which you will use in step 6, and place it inside this XTTS server's folder too.
3. Prepare your `.wav` files by extracting them from your `.fuz` files. Use [Yakitori Audio Converter](https://www.nexusmods.com/skyrimspecialedition/mods/17765) to achieve this. Simply find the npc voice folder with all of the `.fuz` files, and batch convert them to `.wav`.
4. Within the XTTS mantella root folder, you will need to create a `speakers\{lang}\{npc_voice_name}` folder, where `{lang}` is the target language of your file and `{npc_voice_name}` is your NPC's `voice_model` as specified within Mantell `.csv`. Carefully select your `.wav` files and place them in this folder. If you are lazy just put all `.wav` of your NPC in this folder.
   - i.e `speakers\en\sofia` will contain all of the chosen sofia `.wav` files. 
   - IMPORTANT: You want the `npc_voice_name` to be the `voice_model` within Mantella's `data\skyrim\skyrim_characters.csv` folder and NOT the voicetype or voicetypefolder. This is what Mantella currently uses as the NPC name when calling XTTS. So be sure to look up which voice model to use by looking up your NPC's name in the CSV. 
5. Run `xtts-api-server-mantella.exe` so it boots up the server and trains your voice. XTTS will generate the trained latent speaker JSON file under `latent_speaker_folder\{lang}\{npc_voice_name}.json`. After it generates the `.json` file and the xtts server loads, confirm that the file was generated.
6. Test your voice by running the following from the xtts server root folder using your shell/terminal: `.\gradio_xtts_mantella_request.exe --text {text} --language {lang} --speaker_wav {npc_voice_name}`. An `output` .wav file is generated which contains the text you are testing. Make sure the local xtts server is running when running this command. 
   - Ex: `.\gradio_xtts_mantella_request.exe --text "Hello There Dragonborn, where shall we go tonight? Where ever it is, I just want some ale." --language en --speaker_wav sofia`
7. If you are not happy with the generated sample voice, you may delete the generated `latent_speaker_folder` JSON file. Repeats steps 4-6 until you are happy with your voice samples.
8. IMPORTANT!! Make sure to test your files locally using a local XTTS within your game. Boot up skyrim and find your NPC, then talk to them using the Mantella spell. 
9. If everything is fine, you may then finally push your `json` latent files to this repository. Create a pull-request with these files. The file is what was generated in step 5, `latent_speaker_folder\{lang}\{npc_voice_name}.json`.

###### Notes

| Note: If your NPC is not inside of `data\skyrim\skyrim_characters.csv`, talk with the Mantella community to get this NPC added to the `csv`. However, feel free to add your own row to this `skyrim_characters.csv` file and if you push your trained JSON to this repo, add a note in this README under `List of Custom NPCs` with instructions. When the `.csv` gets updated with your NPC, remove those instructions.

### Training Tips

- For the best and most accurate results for a voice, manually go through `.wav` voice lines files that you will use for training. Only select about 10 files that are 5 to 10 seconds long that most represents the voice acting you are trying to capture. Try to use voice lines that have the same voice acting & tone you are capturing, but use different scenarios and words being spoken.

## Reference

Mantella: https://art-from-the-machine.github.io/Mantella
  - Repo: https://github.com/art-from-the-machine/Mantella
  
XTTS Mantella API Server: https://www.nexusmods.com/skyrimspecialedition/mods/113445
  - Repo: https://github.com/Haurrus/xtts-api-server-mantella/tree/local_mantella_api
  - Note the build will grab the latest XTTS Mantella API Server docker build, which contains voices for the original SKyrim and Fallout games. If you wish to edit those orginal files, refer there.
