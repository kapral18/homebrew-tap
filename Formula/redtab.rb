class Redtab < Formula
  desc "Terminal Reddit reader with tabs and browser-session sign-in"
  homepage "https://github.com/kapral18/redtab"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.0/redtab-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2369aa7e1a418d7a69a7f3ba87f968cd9e4106ad6cfd62916b2bac4db8413ba4"
    end
    on_intel do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.0/redtab-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "726988163fbc8d4af66733a4b215c2774c0c7b419365f8d32999194cf3fb3ab1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.0/redtab-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71de2db4d9facedb9bf6df655dcf2adf41d98be49565ff1f8e878a4a764cc574"
    end
    on_intel do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.0/redtab-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6177e0099c618b79adcf87fa31358d4ac294c43f7f6ca896cfdb0ca6ab187e3f"
    end
  end

  def install
    bin.install "redtab"
    doc.install "README.md", "THIRD_PARTY_LICENSES"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redtab --version")
  end
end
