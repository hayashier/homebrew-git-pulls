REPOSITORY_URL="https://github.com/hayashier/homebrew-git-pulls".freeze
HOMEBREW_GITPULLS_VERSION="0.0.4".freeze

class GitPulls < Formula
  desc "Pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "d76fafba595af1f7a66648788277cba3b5c4628aa37ad92dcda50392132cc103"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_GITPULLS_VERSION

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
