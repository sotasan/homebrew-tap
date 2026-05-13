cask "piyo" do
  version "0.0.20"
  sha256 "89e4a1f685b54245dd49551db8cb2ea9c89f0faa0b51edbb85601a00fdf44d89"

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

  app "Piyo.app"

  zap trash: [
    "~/Library/Application Support/sh.piyo",
    "~/Library/Caches/sh.piyo",
    "~/Library/Preferences/sh.piyo.plist",
    "~/Library/Saved Application State/sh.piyo.savedState",
  ]
end
