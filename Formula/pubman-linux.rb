class PubmanLinux < Formula
  desc "Draft, Track, and Publish 3D models to multiple platforms (Linux version)"
  homepage "https://github.com/DrawnToDigital/pubman"
  version "2025.7.1"
  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}.AppImage"
  sha256 "6e02676b925064b254793741b6791e6d63503e3f5d4a087d31aee1a6ead972d9"

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
