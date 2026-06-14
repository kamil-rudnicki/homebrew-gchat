class Gchat < Formula
  desc "Script-first Google Chat CLI"
  homepage "https://github.com/kamil-rudnicki/google-chat-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.0.0/gchat-aarch64-apple-darwin.tar.gz"
      sha256 "3f617dadcbf722af534c013d5b5b0668391f57c9a07c708a255dcff68b98d152"
    else
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.0.0/gchat-x86_64-apple-darwin.tar.gz"
      sha256 "9eb4d7e3a5816b89db144db977ea235bfa506deb5260826a99856d3bcf1450e8"
    end
  end

  def install
    bin.install "gchat"
  end

  test do
    output = shell_output("#{bin}/gchat --version")
    assert_match '"ok": true', output
  end
end
