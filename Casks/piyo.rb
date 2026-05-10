cask "piyo" do
  version "0.0.12"
  sha256 "9b74f86b0630cbdee547a6f65422f46f933f0a4d6b7936e86dab3b8bf77f2e15"

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
