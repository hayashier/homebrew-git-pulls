REPOSITORY_URL="https://github.com/hayashier/homebrew-git-pulls".freeze
HOMEBREW_GITPULLS_VERSION="0.0.5".freeze

class GitPulls < Formula
  desc "Pulls all git repository under specified paths."
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "90b57b61fdbf52ad2edba440260dab97be65b3c5aae8d02f27b20ae8aa1dfcef"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_GITPULLS_VERSION

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
