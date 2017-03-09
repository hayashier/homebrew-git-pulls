REPOSITORY_URL="https://github.com/hayashier/homebrew-git-pulls".freeze
HOMEBREW_GITPULLS_VERSION="0.0.3".freeze

class GitPulls < Formula
  desc "Pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "e30e011045596bcd704fe20f606f75c7cd44159d7809217bac7e33bac0843cd2"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_GITPULLS_VERSION

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
