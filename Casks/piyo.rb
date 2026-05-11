cask "piyo" do
  version "0.0.16"
  sha256 "1caf42f5eed7a07cc85b39a15425de9d43e7a015b961f6e5a027d5f7df35f0e0"

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
