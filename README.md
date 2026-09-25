# rf-logs

Simple and lightweight logging system for FiveM QBCore RP servers.

Made by **Reff25**.

Discord: https://discord.gg/CwjJxpcfUH

## Features

* QBCore logging system
* Discord webhook support
* Player activity logs
* Server event logs
* Admin action logs
* Easy configuration
* Lightweight and simple to use

## Requirements

* QBCore

## Installation

1. Download or clone the repository.
2. Put `rf-logs` inside your server's resources folder.
3. Add the following to your `server.cfg`:

```cfg
ensure rf-logs
```

## Configuration

Configuration can be found in:

```text
config.lua
```

Add your Discord webhook URLs and configure the logs you want to use.

## Discord Webhooks

rf-logs uses Discord webhooks to send server logs to your Discord channels.

Make sure you add your webhook URLs in `config.lua` before starting the resource.

## Credits

Created by **Reff25**.

Discord: https://discord.gg/CwjJxpcfUH
