class Gchat < Formula
  desc "Script-first Google Chat CLI"
  homepage "https://github.com/kamil-rudnicki/google-chat-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.0/gchat-aarch64-apple-darwin.tar.gz"
      sha256 "35aa6e2aede105e0323abec138b22976655f60b754065bdcd003b47f239652d1"
    else
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.0/gchat-x86_64-apple-darwin.tar.gz"
      sha256 "73cfcea42071016a49ea5d792cf279a6f38aebbc54cb9341720af7b099210b2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.0/gchat-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da4b0c129b5f4c6214906fedc51fc790336718080b1e0aa26203fed46bcb545b"
    else
      url "https://github.com/kamil-rudnicki/google-chat-cli/releases/download/v1.1.0/gchat-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "123eca55a50c64b94770e383cb1323014280ed8cebd14a5ed6cdd5e0f223c721"
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
