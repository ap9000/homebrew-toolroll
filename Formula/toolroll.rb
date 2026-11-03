class Toolroll < Formula
  desc "Control plane for unattended coding agents"
  homepage "https://github.com/ap9000/toolroll"
  url "https://registry.npmjs.org/toolroll/-/toolroll-0.9.87.tgz"
  sha256 "69349698b7643250575041f5daaed701e15c71a1322f50163f24a07b8d5c0f87"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/toolroll --version")
  end
end
