class PubmanLinux < Formula
  desc "Draft, Track, and Publish 3D models to multiple platforms (Linux version)"
  homepage "https://github.com/DrawnToDigital/pubman"
  version "2025.12.1"
  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}.AppImage"
  sha256 "434357e33df3eb693f288c1b66c6b86174efad1f1fd37f0b3afa527d1aa22955"

  depends_on :linux

  def install
    bin.install "PubMan-#{version}.AppImage" => "pubman"
    chmod "+x", bin/"pubman"
  end

  def caveats
    <<~EOS
      PubMan has been installed as an AppImage.
      You can run it by typing 'pubman' in your terminal.
    EOS
  end
end 
