class PubmanLinux < Formula
  desc "Draft, Track, and Publish 3D models to multiple platforms (Linux version)"
  homepage "https://github.com/DrawnToDigital/pubman"
  version "2025.12.0"
  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}.AppImage"
  sha256 "996d0dde669ca3d749bffcb26bf0179d6989061abef01daa9900f2f075f13b29"

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
