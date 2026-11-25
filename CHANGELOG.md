# Changelog (LocalBridge Core)

All notable changes to the LocalBridge Core community edition will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.7.4] - 2026-11-24

### Added
- **Unlimited Foreground Concurrency**: Removed the 1-running-share restriction from LocalBridge Core. Users can now run unlimited concurrent interactive foreground shares across multiple terminal tabs and windows simultaneously.
- **Enhanced Mobile Preview Engine**: Upgraded the built-in web preview interface to support instant inline rendering of high-resolution images (PNG, JPEG, SVG, WebP), video files (MP4, WebM), and documents directly over Cloudflare edge tunnels.
- **Dynamic Port Collision Avoidance**: Automatically acquires available ephemeral local ports when port 8080 is occupied, preventing port binding collisions on developer workstations.
- **Multi-Architecture Support**: Native binaries now available for Windows ARM64 (Surface Pro, Copilot+ PCs) and Linux ARM64 (Raspberry Pi 4/5, AWS Graviton), alongside Windows x64, macOS Apple Silicon, macOS Intel, and Linux x64.
- **Zero-Downtime Atomic Upgrade**: Seamless in-place activation via `lb activate <key>`. Securely verifies commercial licenses with our edge API, unlocking all commercial capabilities with zero downtime while preserving active terminal sessions, shell aliases, and configuration.

### Changed
- **Zip Streaming Quota**: Standardized folder ZIP downloads to a generous 1 GB quota per share session, ensuring fast, memory-safe streaming without overloading local workstation resources.
- **Streamlined CLI Ergonomics**: Both `localbridge` and the `lb` shorthand alias are configured automatically by the Homebrew formula, Scoop bucket, and standalone installer flows (WinGet provides `localbridge` only).

### Security
- **Compile-Time Feature Isolation**: Core release binaries are built with compile-time dead-code elimination, physically removing all commercial license verification logic and background daemon mechanics from the executable.
- **Cryptographic Ephemeral PINs**: Quick-PINs are cryptographically generated per session and are never transmitted to or stored on external servers.

---

## [2.7.3] - 2026-11-14

### Added
- **Initial Public Release of LocalBridge Core**:
  - Zero-configuration local folder sharing over Cloudflare edge tunnels.
  - Ephemeral 4-digit Quick-PIN security for instant access control.
  - Unauthenticated public mode (`--public`) for open documentation and asset distribution.
  - ASCII QR code output in the terminal for rapid mobile device previewing.
  - Automatic 1-click URL copying to the system clipboard.
  - Self-installing executable adding `localbridge` and `lb` to system `PATH`.
  - Windows File Explorer right-click context menu integration ("Share with LocalBridge").
  - Native distribution via Homebrew (`brew install localbridge`), Winget (`winget install TheNeritic.LocalBridge`), Scoop (`scoop install localbridge`), and direct shell scripts.

---

> [!NOTE]
> LocalBridge Core is a free community edition for interactive foreground sharing. Advanced features such as background daemon execution (`--bg`), branded custom domains (`--domain`), persistent share recovery (`lb start`), and saved share profiles (`lb profile`) are part of the [LocalBridge Commercial Edition](https://localbridge.theneritic.com/#pricing).

