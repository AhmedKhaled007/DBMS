# Bash DBMS

A lightweight Database Management System built entirely with **Bash scripts**. It allows you to create databases, manage tables, and perform basic CRUD operations directly from your terminal.

## Features
- **Database Management**: Create, list, connect to, and drop databases.
- **Table Management**: Create, list, and delete tables within a database.
- **Data Operations**:
    - Insert new rows.
    - Delete rows by line number.
    - Search for data.
    - Display table data in a formatted view.

## Getting Started

### Prerequisites
- A Linux/Unix environment (or WSL on Windows).
- `bash` shell.

### Installation
1.  Clone this repository.
2.  Ensure the scripts have execution permissions:
    ```bash
    chmod +x dbconfig/*.sh
    ```

### How to Run
1.  Navigate to the `dbconfig` directory:
    ```bash
    cd dbconfig
    ```
2.  Run the main script:
    ```bash
    ./main.sh
    ```

## Usage Guide
1.  **Main Menu**: Select an option to manage databases.
2.  **Database Menu**: Once connected to a database, you can manage tables.
3.  **Table Menu**: Once connected to a table, you can insert, delete, or search for data.

> **Note**: Deleted tables are moved to a `trashDB` directory (ensure this directory exists or the script will handle it).
