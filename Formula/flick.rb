class Flick < Formula
  desc "Compiler and toolchain for the Flick language"
  homepage "https://bondiano.github.io/flick-lang/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bondiano/flick-lang/releases/download/v0.1.0/flick-aarch64-apple-darwin.tar.gz"
      sha256 "5933a712c445583373d995b18dfb46fd3229cf9b294efd641b10abf0b713b5e6"
    end
    on_intel do
      url "https://github.com/bondiano/flick-lang/releases/download/v0.1.0/flick-x86_64-apple-darwin.tar.gz"
      sha256 "7380bfdaf82950beff1cf9054c39f02a565e6c6399c7b320fdbb932e50878c85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bondiano/flick-lang/releases/download/v0.1.0/flick-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ec80ab1d7e15d19e75b08809dbfb86061f10f83d720da4109568f48258124f7"
    end
    on_intel do
      url "https://github.com/bondiano/flick-lang/releases/download/v0.1.0/flick-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2fd7becf9e45e818b557ac9e252d5ff93428201d575582bfa807280780afd060"
    end
  end

  def install
    bin.install "flick"
  end

  def caveats
    "Flick projects also need Node.js 24.18 or later and pnpm."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/flick --version")
  end
end
