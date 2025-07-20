cask "pubman" do
  arch arm: "-arm64"

  version "2025.7.1"
  sha256 arm:   "71495200d763fd7a1400b5228d3b0f7ad358a2e8771f90ed4951ea31a9734c3a",
         intel: "f5692549daa97785c80468cb1921f66edfee80d10e60d9599177527cf3dc22a6"

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
