cask "pubman" do
  arch arm: "-arm64"

  version "2025.6.6"
  sha256 arm:   "183599d164b3ff8a00cf9b4346c0a739e9442cbe9fbb3a64f49bcc314018b490",
         intel: "7bc2e79fa6893362e071712ff6f441d6b7ef27606f60b8af2596e445ac79b67b"

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
