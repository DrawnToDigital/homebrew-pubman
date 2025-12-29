cask "pubman" do
  arch arm: "-arm64"

  version "2025.12.0"
  sha256 arm:   "3a2c86a6e4344c85ba999cde6024c91278ce78ccc884f851f137adfee0d345a3",
         intel: "7f49396855a430a319bd25ec64d916637049444f68f0bf7f4c595ef893cb7148"

  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}#{arch}.dmg"
  name "PubMan 3D Model Publishing"
  desc "Draft, Track, and Publish 3D models to multiple platforms"
  homepage "https://github.com/DrawnToDigital/pubman"

  depends_on macos: ">= :big_sur"

  app "PubMan.app"

  zap trash: [
    "~/Library/Application Support/PubMan",
    "~/Library/Logs/PubMan",
    "~/Library/Preferences/digital.drawnto.pubman.electron.plist",
  ]
end
