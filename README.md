# Linux-Administration-Bash-Project

![Screenshot 2024-08-19 032433](https://github.com/user-attachments/assets/5ecbb0db-f409-4125-8354-0afed6c0f2c0)

It is a collection of Bash scripts designed to simplify system administration tasks via a user-friendly graphical interface. The suite utilizes `whiptail` to create dialog boxes for various user and group management operations, providing an intuitive way to manage users and groups on a Unix-like system.

## Features

- **User Management**
  - Add, modify, delete, list, enable, and disable users
  - Change user passwords
  - Manage user comments and group memberships

- **Group Management**
  - Add, modify, delete, and list groups
  - Manage group memberships
  - Change group IDs (GIDs)

## Installation

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/whiptail-admin-suite.git
   cd whiptail-admin-suite
   ```

2. **Make Scripts Executable:**

   ```bash
   chmod +x *
   ```

## Usage

1. **Run the Main Menu:**

   Execute the main script to display the admin menu:

   ```bash
   ./main-menu.sh
   ```

2. **Navigate the Menu:**

   Use the provided menu options to perform various administrative tasks. The menu includes options for managing users and groups, and each option will prompt you through a series of `whiptail` dialogs.

## Scripts Overview

- **`bash.sh`**: Main menu script that provides a selection of options for user and group management.
- **`add-user.sh`**: Script to add a new user.
- **`modify-user.sh`**: Script to modify existing users (e.g., username, UID, password, etc.).
- **`delete-user.sh`**: Script to delete a user.
- **`list-users.sh`**: Script to list all users.
- **`add-group.sh`**: Script to add a new group.
- **`modify-group.sh`**: Script to modify existing groups (e.g., group name, GID, members).
- **`delete-group.sh`**: Script to delete a group.
- **`list-groups.sh`**: Script to list all groups.

## Example

To add a new user, select the "Add User" option from the main menu and follow the prompts to enter the user's details.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue if you find a bug or have suggestions for improvements.
