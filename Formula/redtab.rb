class Redtab < Formula
  desc "Terminal Reddit reader with tabs and browser-session sign-in"
  homepage "https://github.com/kapral18/redtab"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.1/redtab-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "11c6151c0c7a67ef86a12a40b55b3307f93473e4085944f9c2f3081b4163f93b"
    end
    on_intel do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.1/redtab-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "beb0bfee1ee6a9af60d9163bf4a1341879151ae5358153497e832487355b6988"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.1/redtab-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7409b68ed8d3083000a5ed8a1284f9d29d861e6493755d22ceb80d2ec89dfd80"
    end
    on_intel do
      url "https://github.com/kapral18/redtab/releases/download/v0.1.1/redtab-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "285b04f219f09faf67196f5134234cd830df082bd3e30f49c24ee314a1d05876"
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
