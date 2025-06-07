cask "pubman" do
  arch arm: "-arm64"

  version "2025.6.3"
  sha256 arm:   "92535da7f2cd7195bba02ed9fdbaf14c339f17c3d8cd8757c3e8f627470a0ade",
         intel: "ef7f114681aac3a4c63bf142d86b5a1c9d9d9ceced43c97dd8cbf5bec43ffcc7"

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
