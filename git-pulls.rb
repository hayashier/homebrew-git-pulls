REPOSITORY_URL='https://github.com/hayashier/homebrew-git-pulls'
HOMEBREW_GITPULLS_VERSION='0.0.3'

class GitPulls < Formula
  desc "git-pulls command pulls all git repository under specified paths."
  homepage "#{REPOSITORY_URL}/README.md"
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_GITPULLS_VERSION}.zip"
  sha256 "04777124c8e1ef8b3ba2d884f91ad47378437611b2b1349e730ef85913c2fa30"
  head "#{REPOSITORY_URL}.git", :tag => "#{HOMEBREW_GITPULLS_VERSION}"
  version "#{HOMEBREW_GITPULLS_VERSION}"

  def install
    bin.install "bin/git-pulls"
  end

  test do
    system "false"
  end
end
