# FilOS🍇 Pre-Alpha Version 0.02.3
![fLogo](https://github.com/tassopsaltakis/FilOS/assets/40706153/bb118e8b-5090-408f-8a1e-6b8b7f9a1499)
The Friendly Python OS based on the Debian Kernel

Discord: https://discord.gg/pWtDgDTDMa

## Installation

Download all of the files for the FilOS directory from this repo:

```bash
git clone https://github.com/tassopsaltakis/FilOS.git
```

## Usage
Create this file structure for the FilOS folder. Your folder should replicate this structure.
```File Structure
FilOS/                       #FilOS Folder
│                      
└── root/
    ├── home/                # User home directories
    │   └── [user1]/         # Your user directory will automatically be created upon user creation
    │
    ├── tmp/                 # Temporary files
    │
    ├── src/                 # Source code for the OS
    │   ├── shell.py
    │   ├── commands.py
    │   ├── user_management.py
    │   └── login.py
    │
    |
    ├── config/              # System configuration files
    | 
    ├── logs/                # Logs generated by the OS
    │
    └── misc/                # Miscellaneous application data and system hashes
        └── hashes/          # Directory for user data hashes
        └── libraries/       # Directory for python libraries downloaded when using pip
        └── pad/             # Directory for Pad - FilOS' Text Editor

```
Once this is complete, open your terminal and type:
```bash
 cd FilOS/root/src/
 python3 shell.py
```
You will be prompted with the login for FilOS! Enjoy!
(bare metal coming)
## Contributing

Pull requests are welcome. Join the discord (I would really appreciate any advice): https://discord.gg/pWtDgDTDMa

Please make sure to update tests as appropriate.
