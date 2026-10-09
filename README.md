# Open-Source Analog/Mixed-Signal IC Design Project Initiative

Learn to design your own integrated circuits with open-source tools. No experience required. We build from the ground up, and you can tape out independent designs in groups in future semesters.

This repository holds the meeting examples, testbenches and setup scripts for the initiative. **Fork it to get your own copy** (see [Getting Started](#getting-started)).

---

## Why Join

Analog and mixed-signal IC design is usually locked behind expensive commercial tools and graduate-level courses. Open-source PDKs and tools have changed that. You can now design real, manufacturable circuits on your own laptop for free.

You'll learn industry-relevant skills in schematic capture, simulation and transistor sizing, and you'll work in teams to design to real specifications. By the end of the semester you will have designed your own amplifier, which makes a solid resume project, and you'll be ready to take a design to silicon in future semesters.

**Who can join:** anyone interested in IC design, especially analog and mixed-signal circuits. No prior coursework, research or work experience is required.

## Tools

| Component | Role |
|---|---|
| [GF180MCU PDK](https://github.com/google/gf180mcu-pdk) | GlobalFoundries 180 nm open-source process design kit |
| [Xschem](https://xschem.sourceforge.io/) | Schematic capture |
| [Ngspice](https://ngspice.sourceforge.io/) | Circuit simulation |
| [KLayout](https://www.klayout.de/) | Layout (not a focus this semester) |

Everything runs inside the [IIC-OSIC-TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS) Docker container, so every member has an identical environment.

## Schedule

Dates and times are to be announced. Please fill out the [interest form](LINK).

| Meeting | Topic |
|---|---|
| 1 | Tool configuration, MOSFET basics, common-source amplifier with resistive load, basic analysis (op, DC, AC, tran) |
| 2 | Current mirrors, common-source amplifier with active load |
| 3 | g<sub>m</sub>/I<sub>D</sub> methodology for sizing transistors, including building lookup tables from the PDK |
| 4 | **Design Session:** common-source amplifier to spec, using g<sub>m</sub>/I<sub>D</sub> |
| 5 | Differential pair with resistive load to 5-transistor OTA with current-mirror load |
| 6 | **Design Session:** OTA to spec (gain, GBW, phase margin) |

Each meeting opens with a short lecture on the background and theory, followed by simulation examples that everyone follows along with. In design sessions, members split into groups, each group gets a set of specs, and the groups try to meet them in the time given.

## Getting Started

The full **Tool Setup and Workflow** guide (PDF) has step-by-step instructions. In short:

1. **Install** [GitHub Desktop](https://desktop.github.com/), [Docker Desktop](https://www.docker.com/products/docker-desktop/) and [TigerVNC Viewer](https://tigervnc.org/). Windows users also need WSL: run `wsl --install` in Command Prompt, then reboot.
2. **Fork this repository.** Click **Fork** at the top right and name your fork `ams-<yourname>`.
3. **Clone your fork** in GitHub Desktop (File → Clone Repository).
4. **Launch the container** from your cloned folder:
```bash
   ./start_chipathon_vnc.sh          # macOS / Linux
   .\start_chipathon_vnc.bat         # Windows
```
5. **Connect** with TigerVNC to `localhost:5901` using the password `abc123`.
6. **Open a terminal** in the Linux desktop, select the PDK and launch Xschem:
```bash
   sak-pdk gf180mcuD
   xschem
```

## Repository Layout

```
designs/          Mounted at /foss/designs/ inside the container
  meeting01_.../  Meeting examples and testbenches (do not edit in place)
  ...
  <yourname>/     Your own work (create this in your fork)
docs/             Guides and reference material
```

> **Keep your work in your own folder.** Copy examples into `designs/<yourname>/` before modifying them, and don't edit this README in your fork. Then pulling new material never conflicts with your changes.

## Getting New Meeting Material

New examples are added here after each meeting. To bring them into your fork:

1. On your fork's GitHub page, click **Sync fork** → **Update branch**.
2. In GitHub Desktop, switch to `main` and click **Fetch origin** → **Pull origin**.

## Contact

Organized by Eli Johnson (ieee@columbia.edu). Questions, issues or ideas are welcome. Open an [issue](https://github.com/ORG/REPO/issues) or reach out directly.

---

*Built on the [IIC-OSIC-TOOLS project template](https://github.com/iic-jku/IIC-OSIC-TOOLS) and the GF180MCU open-source PDK.*
