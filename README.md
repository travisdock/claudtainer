# Claude Code Docker Container

A Docker setup for running Claude Code CLI in a containerized environment.

## Overview

This project provides a Docker container configuration for running [Claude Code](https://github.com/anthropics/claude-code), Anthropic's official CLI tool for Claude. It allows you to use Claude's coding assistance capabilities in an isolated, reproducible environment.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone this repository:
```bash
git clone <repository-url>
cd <repository-directory>
```

2. Build and run the container:
```bash
docker compose run --rm claude
```

This will start an interactive Claude Code session with your current directory mounted as `/workspace` inside the container.

3. Optional: Add these helpful aliases to your shell configuration:
```bash
alias build_claude="dc --file ~/development/claudtainer/compose.yml build --no-cache"
alias claude="dc --file ~/development/claudtainer/compose.yml run --rm claude"
```

These aliases allow you to quickly rebuild and run Claude from anywhere on your system.

## Configuration

The compose file mounts two volumes:
- `${PWD}:/workspace` - Your current directory for working with files
- `claude-config:/root` - Persistent storage for Claude configuration

