# swift-windows

Use this package when your code runs on Windows and calls the kernel directly: files, handles, sockets, locks, threads, processes and directory matching. Start from `Kernel`, which is `Windows.Kernel`. Each area is also its own product, so you can depend on one, such as `Windows Kernel Socket`. For code that must also build on other systems, use swift-kernel. For the Win32 declarations alone, use swift-windows-32.

## Laws

- Glob matching on Windows returns paths with forward slashes, except a path that starts with `\\?\`, which is kept as it is.
- With the `explicit` dotfile policy, a name starting with a dot matches only a pattern segment that itself starts with a dot, and `**` doesn't descend into such directories. `always` treats them like any other name and `never` leaves them out.
- `**` doesn't follow reparse points, such as symbolic links and junctions, unless `followSymlinks` is set.
- Case-insensitive matching folds only the ASCII letters A to Z.
- With several include patterns a path is returned once, and an exclude pattern removes every path it matches. With `deterministic` ordering the results are sorted. Otherwise their order is unspecified.
- With the `skip` error policy, a directory that can't be listed counts as empty and matching goes on.
- `Windows.Kernel.Thread.sleep(_:)` rounds the duration down to whole milliseconds.
- `Random.fill(_:)` fills the buffer from the system generator, BCryptGenRandom.
