# System Monitor

A Bash-based system monitoring tool for monitoring basic Linux system resources through an interactive command-line menu.

## Features

- CPU Usage monitoring
- Memory Usage monitoring
- Disk Usage monitoring
- System Uptime information
- Logged Users information
- System Information
- Interactive menu
- Exit option

## Technologies

- Bash
- Linux
- `awk`
- `grep`
- `df`
- `free`
- `uptime`
- `who`
- `lscpu`
- Git
- GitHub

## How to Run

Clone the repository:

    git clone git@github.com:mahmoudmoustafa-coder/system-monitor.git

Navigate to the project directory:

    cd system-monitor

Make the script executable:

    chmod +x system_monitor.sh

Run the script:

    ./system_monitor.sh

## Usage

Run the script and choose an option from the interactive menu:

    ============================
          SYSTEM MONITOR
    ============================

    1) CPU Usage
    2) Memory Usage
    3) Disk Usage
    4) Uptime
    5) Logged Users
    6) System Information
    7) Exit

    Choose:

## Example Output

### CPU Usage

    CPU Usage: 12.5 %

### Memory Usage

    Total Memory : 7.7Gi
    Used Memory : 3.2Gi
    Free Memory : 2.1Gi

### Disk Usage

    Disk Size       : 40G
    Used Space      : 18G
    Available Space : 20G
    Usage           : 48%

### Uptime

    ==== System Uptime ====
    10:45:21 up 2 hours, 15 min, 1 user, load average: 0.25, 0.30, 0.28

### Logged Users

    ==== Logged Users ====

    mahmoud tty2 2026-08-06 09:30

    Total Users: 1

### System Information

    Hostname     : mahmoud-elelfat-VirtualBox
    OS           : Linux
    Kernel       : 7.0.0-28-generic
    Architecture : x86_64
    CPU          : Intel(R) Core(TM) i7-6820HQ CPU @ 2.70GHz

## Project Structure

    system-monitor/
    ├── system_monitor.sh
    ├── README.md
    ├── LICENSE
    └── .gitignore

## Future Improvements

- Add network usage monitoring
- Add process monitoring
- Add colored terminal output
- Add configurable monitoring intervals
- Add logging functionality
- Add automatic refresh mode

## Author

Mahmoud Moustafa

GitHub: mahmoudmoustafa-coder
