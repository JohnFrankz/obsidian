# 如何判断当前环境是否在 WSL 中运行

在我配置我的 `dotfiles` 时，有某些命令需要在 `WSL` 中运行，但对于服务器环境来说是不必要的，所以在 `shell` 中判断当前环境是否处于 `WSL` 下是有必要的。

对于是否处于 `WSl` 环境，有如下几个标准（据我所知）：
1. **`/etc/wsl.conf`**
   在我的 `Ubuntu 22.04.1(WSL)` 下是存在这个文件的,，但是在部分 `WSL` 机器中不存在该文件，而且该文件也可以在纯 `Linux` 系统上被创建，所以存在误报的可能性。
2.  **`/proc/sys/fs/binfmt_misc/WSLInterop`**
   通过 `/proc/sys/fs/binfmt_misc/WSLInterop` 判断是否处于 `WSL` 环境是很好的方法。这也可能是最可靠的方法，因为这是 `Ubuntu` 的 `Snapd` 项目使用的检测机制。此文件默认存在于 `WSL1` 和 `WSL2` 下。即使通过 `/etc/wsl.conf` 禁用了 `Interop`，该文件仍将由 WSL 在启动时创建。