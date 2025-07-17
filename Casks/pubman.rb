cask "pubman" do
  arch arm: "-arm64"

  version "2025.7.0"
  sha256 arm:   "6fda428122d84ae558cf51b179adad031856c42292c9a7197d65ee129245ed77",
         intel: "51485de437f2b478f9fbb04f30437fe598b8551d1a1a67124097ba1a87c14767"

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
