# Round Robin and Buddy System Simulator

This project is a simulator for process scheduling and memory management algorithms, specifically **Round Robin** and **Buddy System**, developed in **C++** as part of the **Operating Systems** course. The simulator includes a user-friendly text interface that allows users to interact with the system, configure parameters, observe statistics, and control the simulation execution.

![BuddySystem_RoundRobin-Demo](./demo.gif)

> [!IMPORTANT]  
> This project is made completely in spanish, the Code, Menus and on-screen instructions, all will be displayed only in **Spanish**.

---

## Main Features

### Interface
- **User-friendly text interface**: Designed to facilitate user interaction.
- **Real-time information**:
  - List of processes in queue.
  - Currently executing process.
  - Graphical representation of memory.
  - Round Robin algorithm validation.
  - Detailed information on the Buddy System status.

### Functionality
- **Parameter configuration**:
  - Quantum of processing time per process.
  - Maximum memory size.
  - Maximum quantum size for processing.
- **Constraints**:
  - Fixed memory sizes (1 MB, 4 MB, 8 MB).
  - Minimum memory split size (32 KB).
- **Processes**:
  - Automatic and random process generation.
  - There is always a process ready to enter the queue.
- **Statistics**:
  - Average process handling time.
  - Total number of processes handled.
  - Percentage of memory used.
- **Speed control**:
  - Users can adjust the simulation speed.
- **Stop condition**:
  - Users can stop the simulation at any time.

---

## Dependencies

### Windows
- **GCC Compiler**: Can be installed via [MSYS2](https://www.msys2.org/).
- **Standard C++ libraries**.

### Linux/MacOS
- **ncurses and ncurses-dev libraries** (or **ncurses-devel** on some distributions).

