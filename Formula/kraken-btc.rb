class KrakenBtc < Formula
  desc "An opinionated command line interface for buying Bitcoin on Kraken.com. Written in Rust."
  homepage "https://github.com/dnlggr/kraken-btc"
  url "https://github.com/dnlggr/kraken-btc/releases/download/0.1.0/kraken-btc-macos-0.1.0.tar.gz"
  sha256 "8b29fb7f052dbf3cc8190d4d1cddcd3274621203ef454aba483702303cf9b6ae"
  license "MIT"
  version "0.1.0"

  def install
    bin.install "kraken-btc"
  end
end
