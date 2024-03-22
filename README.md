# WiFi Password Extraction Toolkit for USB Rubber Ducky

This toolkit includes two components designed to extract saved WiFi passwords on a Windows system and save them to a file for review. The first component is a PowerShell script named `dumpwifipass.ps1`, which extracts the passwords. The second is a Ducky Script named `dumpwifipasswords.txt`, which automates the execution of the PowerShell script on a Windows 11 machine.

## Components

- **dumpwifipass.ps1**: A PowerShell script that extracts WiFi SSIDs and their corresponding passwords, saving them to a text file on the Desktop.
- **dumpwifipasswords.txt**: A Ducky Script designed to automate the execution of `dumpwifipass.ps1` on a target Windows 11 machine.

## Prerequisites

- A Windows 11 machine with saved WiFi profiles.
- Administrative privileges on the target machine.
- A USB Rubber Ducky or similar device capable of emulating keyboard input.
- (Optional) Twin Duck firmware on the USB Rubber Ducky if you plan to store and execute the PowerShell script directly from the device.

## Setup

1. **Prepare the PowerShell Script**:
    - Ensure `dumpwifipass.ps1` is ready and stored either on a USB drive (if using Twin Duck firmware) or in a location from which it can be executed on the target machine.

2. **Load the Ducky Script**:
    - Encode `dumpwifipasswords.txt` using the Ducky Script Encoder and load it onto the USB Rubber Ducky.

## Usage

### Running the PowerShell Script Manually

1. Open PowerShell with administrative privileges.
2. Navigate to the directory containing `dumpwifipass.ps1`.
3. Execute the script by typing `.\dumpwifipass.ps1` and pressing Enter.

### Automating with the Ducky Script

1. Insert the USB Rubber Ducky into the target Windows 11 machine.
2. The Ducky Script `dumpwifipasswords.txt` will execute, automating the steps to open PowerShell, run `dumpwifipass.ps1`, and output the WiFi passwords to a file on the Desktop.

# WiFi Password Extractor

This PowerShell script, `GetWifiPasswords.ps1`, automates the process of retrieving saved WiFi network names (SSIDs) and their corresponding passwords from a Windows system and saves them into a text file named `WiFiPasswords.txt` on the user's Desktop.

## Features

- **Extract WiFi Names and Passwords**: Automatically fetches the SSIDs and their passwords from the system's saved networks.
- **Output to Text File**: Saves the extracted information in a clearly formatted text file on the Desktop.
- **Easy to Use**: Designed with simplicity in mind, requiring only a few steps to execute.

## Prerequisites

Before running the script, ensure that:

- You are using a Windows system with WiFi profiles previously configured.
- You have administrative privileges on the system to access WiFi passwords.

## Installation

No installation is required. Simply download `GetWifiPasswords.ps1` to your preferred location on your system.

## Usage

1. **Open PowerShell as Administrator**:
    - Search for PowerShell in the Start menu, right-click it, and choose "Run as administrator".
2. **Navigate to the Script's Location**:
    - Use the `cd` command to change your current directory to where the script is located. Example:
      ```
      cd $env:USERPROFILE\Desktop
      ```
3. **Execute the Script**:
    - Run the script by typing the following command and pressing Enter:
      ```
      .\GetWifiPasswords.ps1
      ```
    - If you encounter an execution policy error, run the script with the following command:
      ```
      PowerShell -ExecutionPolicy Bypass -File .\GetWifiPasswords.ps1
      ```

## Output

- The script generates a file named `WiFiPasswords.txt` on your Desktop, containing the SSIDs and passwords.
- Each line in the output file follows the format: `Profile: <SSID>, Password: <Password>`. Profiles without retrievable passwords will be taken care of accordingly.

## Security Notice

This script and the entire toolkit are intended for legal and authorized use only. Always ensure you have explicit permission to access and modify system configurations or data.

## Contributing

Feedback and contributions to the script are welcome. Please feel free to fork the repository, make changes, and submit a pull request.

## License

This script is provided "as is" without warranty. You are free to use and modify it for personal or educational purposes.

---

To use this template, copy the content into a new `README.md` file in the directory where you're storing `GetWifiPasswords.ps1`. Markdown (.md) files are designed to be both human-readable in plain text and formatted when viewed on platforms like GitHub, making them an excellent choice for documentation.
