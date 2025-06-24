class PubmanLinux < Formula
  desc "Draft, Track, and Publish 3D models to multiple platforms (Linux version)"
  homepage "https://github.com/DrawnToDigital/pubman"
  version "2025.6.6"
  url "https://github.com/DrawnToDigital/pubman/releases/download/v#{version}/PubMan-#{version}.AppImage"
  sha256 "bfd0cee3619e2a03a409aa6c4c5994b007395c1c195bb0d903aa01d959a9abe2"

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
