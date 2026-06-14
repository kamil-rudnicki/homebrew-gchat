class Gchat < Formula
  desc "Script-first Google Chat CLI"
  homepage "https://github.com/kamil-rudnicki/google-chat-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.1/gchat-aarch64-apple-darwin.tar.gz"
      sha256 "649667a5463f8cc0d15ba8c11d92146305967331e32419a63d31490f80b680d8"
    else
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.1/gchat-x86_64-apple-darwin.tar.gz"
      sha256 "9f94ea8724a05a725030a422bf5ae8c4356ae3fc262decdc899ca5c84c70558a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.1/gchat-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09fc0d0e2bbadc5551c909844272c2dcffd5e42f168e9f2bec790507b9135b58"
    else
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.1/gchat-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26a49bfb2d67052e943bf94611b025f8e799216e68129c9ebccfa464baa7f0b9"
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
