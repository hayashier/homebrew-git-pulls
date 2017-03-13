REPOSITORY_URL="https://github.com/hayashier/homebrew-git-pulls".freeze
HOMEBREW_GITPULLS_VERSION="0.0.5".freeze

class GitPulls < Formula
  desc "Pulls all git repository under specified paths."
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.tar.gz"
  sha256 "27ba7567ba90d52218356dd4b02092e0a2bb655632dc09fbc63e7f6ac90d7f4b"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_GITPULLS_VERSION

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
