# Install

Add this to `.bashrc`

```bash
# Yoda scripts
function path_from_crenexi() {
  cx_dirs=("bac" "cxa" "cxg" "cxi" "cxr" "cxx")

  for dir in "${cx_dirs[@]}"; do
    export PATH="$HOME/.cx/bin/$dir:$PATH"
  done
}

path_from_crenexi
```

# Groups

### CXG
| **Crenexi Git** Utilities

```
cxg-release-start.sh
cxg-release-finish.sh
```

### CXR
| **Crenexi React** Utilities

```
cxr-component [dest] [name]
cxr-container [dest] [name]
```

### CXA
| **Crenexi Assets** Utilities

```
cxa-upload
```

### CXI
| **Crenexi Image** Utilities

```
WORK IN PROGRESS
# cxi-ogs-to-triple.sh [dir]
```

### CXX
| **System** checks and runs

```bash
cxx-vars.sh # Basic system vars
cxx-versions.sh # Important versions
cxx-verify.sh # Important CLIs
cxx-battery.sh # Laptop battery
cxx-notify.sh # Themed taost
```

```bash
cxx-services.sh # Services preview
cxx-backups.sh # Peek recent backups
cxx-cleanup.sh # General cleanup
cxx-update.sh # Routine updates
```

```bash
run-chrome.sh
run-chrome-update.sh
run-spotify.sh
```

```bash
use-ssh.sh
use-vpn.sh
```

```bash
mnt-pandora.sh
```

#### BAC

Backups strategy (see Notion)

1. Install: `./bac/install.sh`
2. Configure: `~/.cx/bin/bac/bac-most/` (config, excludes, includes)
3. Execute: `bac-most.sh`; **stamp** and **log** at `~/.cx/logs/bac/`

# Aliases

(Latest **.bashrc** backed up in DropBox)

### List

- **ls** basics: `ls`, `lv`, `ll`
- **ls** almost all: `lsa`, `lva`, `lla`
- **dir**: `di`, `div`, `dil`

### Git

- Status, branches, log: `gis`, `gib`, `gil`
- Add and commit: `gia`, `giA`, `gic`
- Git flow: `gff`, `gfr`, `gfb`, `gfh`, `gfl`

### Node

- NPM start: `nps`
- NPM build: `npb`
- NPM lint: `npl`

### Misc

- Crenexi alert: `cx-info`, `cx-warn`
- Enabled services: `sys-enabled`
- NordVPN: `nv`, `nvs`, `nvc`, `nvd`
- Copy/paste: `setclip` and `getclip`
- Matrix: cmatrix
