# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fileserve < Formula
  desc "Golang-based simple file server to serve static files of the current working directory"
  homepage "https://github.com/hupe1980/fileserve"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/fileserve/releases/download/v0.0.8/fileserve_Darwin_arm64.tar.gz"
      sha256 "471050b137244a565059dbae4e849b2ef3e8c4012494f604d034dc145f96c59b"

      def install
        bin.install "fileserve"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/fileserve/releases/download/v0.0.8/fileserve_Darwin_x86_64.tar.gz"
      sha256 "6d76ccf107ee71b277b4912a7de7f97845e1ed2e145ddd66925431231cf76583"

      def install
        bin.install "fileserve"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/fileserve/releases/download/v0.0.8/fileserve_Linux_arm64.tar.gz"
      sha256 "3e369bfc59514f109f5dfc79c81b138f44d216ae8b47ea293d0bb71c17f248d5"

      def install
        bin.install "fileserve"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/fileserve/releases/download/v0.0.8/fileserve_Linux_armv6.tar.gz"
      sha256 "4c89ce23b8ab25aff41040fea7683f0efbc23f6bb9eab10aea326268b1219688"

      def install
        bin.install "fileserve"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/fileserve/releases/download/v0.0.8/fileserve_Linux_x86_64.tar.gz"
      sha256 "504a51059cb4442f64b7cbce600e4a4e554371cda20d4606fa6bacf3d6c8eb95"

      def install
        bin.install "fileserve"
      end
    end
  end

  test do
    system "#{bin}/fileserve -v"
  end
end
