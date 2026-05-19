cask "piyo" do
  version "0.2.0"
  sha256 "df819920997c0b14d7c0cfe03e1b983369a27beb8e96df51006a5c23f3d74ba7"

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
