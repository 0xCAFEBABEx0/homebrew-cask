cask "jellyfin" do
  arch arm: "arm64", intel: "amd64"

  version "10.11.8"
  sha256 arm:   "72c7944dd6b7317c6024d1cbe0b82acbfa1ca271157d711ae255adbd5d12fcb4",
         intel: "ff6a61fcfdf0db384879e6d7a122b1145af47eadac67ccf582e62bf8a95e9f2d"

  url "https://repo.jellyfin.org/files/server/macos/stable/v#{version}/#{arch}/jellyfin_#{version}-#{arch}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  deprecate! date: "2026-05-02", because: :discontinued

  depends_on macos: ">= :monterey"

  app "Jellyfin.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/jellyfin*.diag",
    "~/.cache/jellyfin/",
    "~/.config/jellyfin/",
    "~/.local/share/jellyfin/",
    "~/Library/Application Support/jellyfin",
    "~/Library/Preferences/Jellyfin.Server.plist",
  ]
end
