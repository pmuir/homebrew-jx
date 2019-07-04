# This file was generated by GoReleaser. DO NOT EDIT.
class Jx < Formula
  desc "A tool to install and interact with Jenkins X on your Kubernetes cluster."
  homepage "https://jenkins-x.io/"
  version "2.0.411"

  if OS.mac?
    url "http://github.com/jenkins-x/jx/releases/download/v2.0.411/jx-darwin-amd64.tar.gz"
    sha256 "a489983e33681a3607540ff88f2a672d50171d0c64ddd5ad4efc8e02c5d22a1a"
  elsif OS.linux?
    url "http://github.com/jenkins-x/jx/releases/download/v2.0.411/jx-linux-amd64.tar.gz"
    sha256 "2cd9ddcf2cb92140bb3c0faefb3d364659689db8e7cf3a8d2f7f035f80f7ad47"
  end

  def install
    bin.install name
    
    output = Utils.popen_read("SHELL=bash #{bin}/jx completion bash")
    (bash_completion/"jx").write output
    
    output = Utils.popen_read("SHELL=zsh #{bin}/jx completion zsh")
    (zsh_completion/"_jx").write output
    
    prefix.install_metafiles
  end

  test do
    system "#{bin}/jx --version"
  end
end
