cask "pubman" do
  arch arm: "-arm64"

  version "2025.6.4"
  sha256 arm:   "f3e062e884c69abfc3c85413323a82147ad0e8b20bda6a4aaa693d70c7654749",
         intel: "8a9896179c497a3efe5171d248e89e6bc2ee0df7904115f0951caee3ba9d3679"

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
