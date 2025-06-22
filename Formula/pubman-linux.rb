class PubmanLinux < Formula
  desc "Draft, Track, and Publish 3D models to multiple platforms (Linux version)"
  homepage "https://github.com/DrawnToDigital/pubman"
  version "2025.6.5"
  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}.AppImage"
  sha256 "18b2d3ae02060f12101fa22740593291d6cbcf608b01273d70b7f0e122599dc1"

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
