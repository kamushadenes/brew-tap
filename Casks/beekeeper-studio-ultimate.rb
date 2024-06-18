cask "beekeeper-studio-ultimate" do
  arch arm: "arm64"

  version "4.6.1"
  sha256 "640f49dc0d628494de698cbc85b77e56b77ec77d3ad5f3c81d3976d490aac476"

  url "https://github.com/beekeeper-studio/ultimate-releases/releases/download/v4.6.1/Beekeeper-Studio-Ultimate-#{version}-#{arch}.dmg", 
    verified: "github.com/beekeeper-studio/ultimate-releases/"
  name "beekeeper-studio-ultimate"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Beekeeper Studio Ultimate.app"

  zap trash: [
    "~/Library/Application Support/beekeeper-studio",
    "~/Library/Application Support/Caches/beekeeper-studio-updater",
    "~/Library/Caches/io.beekeeperstudio.desktop",
    "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
    "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
    "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
    "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
  ]
end
