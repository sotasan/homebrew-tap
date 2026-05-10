cask "piyo" do
  version "0.0.5"
  sha256 "0af5f04b7fdb668197af8ace8c180b1f0583bf83de3c5809e3ef8af3cedea875"

  url "https://github.com/sotasan/piyo/releases/download/v#{version}/Piyo_#{version}_aarch64.dmg",
      verified: "github.com/sotasan/piyo/"
  name "Piyo"
  desc "The coziest terminal emulator"
  homepage "https://piyo.sh/"

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
