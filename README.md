# claude-yolo-windows

A Windows command-line wrapper for the Claude CLI that automatically applies the `--dangerously-skip-permissions` flag.

## What is this?

`yolo` is a simple Windows command that wraps the `claude` CLI and automatically includes the `--dangerously-skip-permissions` flag for every invocation.

### Usage

```cmd
yolo [arguments...]
```

This is equivalent to:

```cmd
claude --dangerously-skip-permissions [arguments...]
```

### Examples

```cmd
yolo
yolo chat "What is 2+2?"
yolo code
```

## Installation

### Option 1: Download MSI Installer

1. Download the latest `claude-yolo-windows.msi` from [Releases](../../releases)
2. Run the installer
3. The `yolo` command will be available in any command prompt or PowerShell window

### Option 2: Manual Installation

1. Download or clone this repository
2. Copy `yolo.cmd` to a directory in your Windows PATH
3. Or add the repository directory to your PATH

## Requirements

- Windows 7 or later
- Claude CLI must be installed and available in your PATH

## Building from Source

### Prerequisites

- WiX Toolset 5.0 or later
- .NET SDK (for `wix` tool)

### Build Steps

```cmd
dotnet tool install --global wix --version 5.0.1
wix build yolo.wxs -o claude-yolo-windows.msi
```

## Releases

MSI installers are automatically built and released whenever a git tag starting with `v` is pushed:

```cmd
git tag v1.0.0
git push origin v1.0.0
```

The build process will:
1. Compile the WiX installer definition
2. Create a GitHub Release
3. Attach the MSI file to the release

## License

This project is provided as-is for Windows integration with the Claude CLI.

## Disclaimer

The `--dangerously-skip-permissions` flag bypasses normal permission checks. Use this command only when you understand and accept the security implications.
