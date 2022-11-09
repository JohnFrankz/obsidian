# 如何判断当前环境是否在 WSL 中运行

在我配置我的 `dotfiles` 时，有某些命令需要在 `WSL` 中运行，但对于服务器环境来说是不必要的，所以在 `shell` 中判断当前环境是否处于 `WSL` 下是有必要的。

对于是否处于 `WSl` 环境，有如下几个标准（据我所知）：
1. **`/etc/wsl.conf`**
   在我的 `Ubuntu 22.04.1(WSL)` 下是存在这个文件的,，但是在部分 `WSL` 机器中不存在该文件，而且该文件也可以在纯 `Linux` 系统上被创建，所以存在误报的可能性。
2.  **`/proc/sys/fs/binfmt_misc/WSLInterop`**
   通过 `/proc/sys/fs/binfmt_misc/WSLInterop` 判断是否处于 `WSL` 环境是很好的方法。这也可能是最可靠的方法，因为这是 `Ubuntu` 的 [`Snapd`][Snapd] 项目使用的检测机制。此文件默认存在于 `WSL1` 和 `WSL2` 下。即使通过 `/etc/wsl.conf` 禁用了 `Interop`，该文件仍将由 WSL 在启动时创建。
3. `grep -i WSL /proc/version`
   使用 `grep` 判断是否处于 `WSL` 环境:
   ``` shell
   $ grep -i WSL /proc/version
   
   Linux version 5.10.16.3-microsoft-standard-WSL2 (oe-user@oe-host) (x86_64-msft-linux-gcc (GCC) 9.3.0, GNU ld (GNU Binutils) 2.34.0.20200220) #1 SMP Fri Apr 2 22:23:49 UTC 2021
   ```
	如上：我们可以使用 `uname -r` 或者 `/proc/version` 来检查是否是 `WSL`, 


在 `StackExchange` 上有关此问题更详细的解答：[`StackExchange`][StackExchange]

[Snapd]: https://github.com/snapcore/snapd
[StackExchange]:https://superuser.com/questions/1749781/how-can-i-check-if-the-environment-is-wsl-from-a-shell-script