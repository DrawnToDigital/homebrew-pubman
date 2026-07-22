cask "pubman" do
  arch arm: "-arm64"

  version "2026.7.0"
  sha256 arm:   "111a3d77f3e627b0212c49b7a4122eef0a54f0d320f2f6e7f466fc0685b07bc0",
         intel: "eb920639a3c47248585c6686d7520b3d6c3824cce6b82ceab5ea4aca0d0aa869"

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
