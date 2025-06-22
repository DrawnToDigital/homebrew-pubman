cask "pubman" do
  arch arm: "-arm64"

  version "2025.6.5"
  sha256 arm:   "7c13368f6e5bd3210ea34c954c2f9b80c045bb1c6dae281ef1b96372bbf2456f",
         intel: "3459f149d370921760a38f4dc87d62cf2b8417bec0a031a9c1a51f43371ee28a"

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
