Purpose
=======
The goal of this set of scripts is to provide a simple interface to create and destroy small virtual machines through telegram. It's users choice wich box to use.

Installation
============
0. Install vagrant, a provider (virtualbox) and a box of your choice.
1. Follow intallation steps at https://github.com/yagop/telegram-bot
2. Once you have a functional telegram bot move all files under `plugins/` folder to `telegram-bot/plugins/` folder
3. Create ports: `./create_ports 2200 2209" will create 10 ports to be used for the further created machines
4. Run the telegram-bot

Considerations
==============
Keep controll of who has access to this bot and, if you run it in your LAN through your routher place your metal machine ina DMZ.

---------------------------------------------------------------------------------------------
Thanks to **yagop** for the boot, and to telegram crew for such a great instant messaging app
