# Configuration Management Database (CMDB) - Server Tech 2023

This project contains the server configurations for the Server Tech 2023 project.

## Structure

The project is structured as follows:

- `docs/`: Contains documentation related to the server configurations.
- `ej-server/`: Contains the configuration files for the server.
- `ej-nfs/`: Contains the configuration files for the NFS server.

## Server Configurations

The server configurations are stored in the `ej-server/` directory. This directory contains several subdirectories, each of which corresponds to a directory in the server's file system. For example, the `etc/` subdirectory contains configuration files that would normally be found in the `/etc/` directory on a Linux server.

## NFS Configurations

The NFS configurations are stored in the `ej-nfs/` directory. This directory contains an `etc/` subdirectory, which contains the `exports` file. This file defines the directories that the NFS server shares with its clients.

## Documentation

The `docs/` directory contains documentation related to the server configurations. For example, the `apt_installed.txt` file in the `ej-server/` subdirectory lists the packages that are installed on the server.

## Usage

To use these configurations, copy the relevant files to their corresponding locations on your server. For example, to use the Apache configuration for the `tips.ej.ilab.fi` site, copy the `tips.ej.ilab.fi.conf` file to the `/etc/apache2/sites-enabled/` directory on your server.
