cask "pubman" do
  arch arm: "-arm64"

  version "2025.12.1"
  sha256 arm:   "dbbcf602df36f589330c39371e17eee5e336315f133f4588ef92f572e8670bd8",
         intel: "5519ea80a7b18f1ede241aa30e98f62a6bc3ed2523295d9fecf811c2a78be655"

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
