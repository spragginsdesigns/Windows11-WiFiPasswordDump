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
- Each line in the output file follows the format: `Profile: <SSID>, Password: <Password>`. Profiles without retrievable passwords will be noted accordingly.

## Security Notice

This script is intended for legal and authorized use only. Always ensure you have explicit permission to access and modify system configurations or data.

## Contributing

Feedback and contributions to the script are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

## License

This script is provided "as is", without warranty of any kind. You are free to use and modify it for personal or educational purposes.

---

To use this template, copy the content into a new `README.md` file in the directory where you're storing `GetWifiPasswords.ps1`. Markdown (.md) files are designed to be both human-readable in plain text and formatted when viewed on platforms like GitHub, making them an excellent choice for documentation.
