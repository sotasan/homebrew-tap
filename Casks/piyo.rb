cask "piyo" do
  version "0.2.1"
  sha256 "a874c802b9a3994a2b070ef0825d42f02a765c107ba0a0a5930e28f02ecc5786"

  url "https://github.com/sotasan/piyo/releases/download/v#{version}/Piyo_#{version}_aarch64.dmg",
      verified: "github.com/sotasan/piyo/"
  name "Piyo"
  desc "Coziest terminal emulator"
  homepage "https://piyo.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Piyo.app"

  zap trash: [
    "~/Library/Application Support/sh.piyo",
    "~/Library/Caches/sh.piyo",
    "~/Library/Preferences/sh.piyo.plist",
    "~/Library/Saved Application State/sh.piyo.savedState",
  ]
end
