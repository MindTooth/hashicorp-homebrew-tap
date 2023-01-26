# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Copywrite < Formula
  desc "copywrite -- utilities for managing copyright headers and license files for GitHub repos"
  homepage "https://github.com/hashicorp/copywrite"
  version "0.13.1"
  license "MPL-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.1/copywrite_0.13.1_darwin_arm64.tar.gz"
      sha256 "d8f10cbd000b0c0ecba777a7885fdc651ec9c0aa12575caeb8ca266b819bfce6"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.1/copywrite_0.13.1_darwin_x86_64.tar.gz"
      sha256 "359b0d80459012481f19a2bf7afafb5d6e01f2e5f8e4af42a89c0f5289adbaec"

      def install
        bin.install "copywrite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.1/copywrite_0.13.1_linux_arm64.tar.gz"
      sha256 "dbba2c315d3fca0922e56b2f3aa5db3360d7f1c0c29979436b303a8084586606"

      def install
        bin.install "copywrite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hashicorp/copywrite/releases/download/v0.13.1/copywrite_0.13.1_linux_x86_64.tar.gz"
      sha256 "5226feb19a402feac759368451a0d6340d36bd4600fec2feba2f3b9dc9a647db"

      def install
        bin.install "copywrite"
      end
    end
  end

  test do
    system "#{bin}/copywrite --version"
  end
end