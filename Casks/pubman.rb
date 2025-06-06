cask "pubman" do
  arch arm: "-arm64"

  version "2025.6.2"
  sha256 arm:   "6d318a6839d63aaca105f6307f3fc235011c8f4d9ed289ad44ea7a38d25941a5",
         intel: "f38b01b905d3cc5f481c770ddada4d356786f3c2d26858d83378ec397babd1b5"

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
