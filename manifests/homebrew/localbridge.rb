class Localbridge < Formula
  desc "Share local folders over Cloudflare tunnels with Quick-PIN"
  homepage "https://localbridge.theneritic.com"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AjayShukla007/localbridge/releases/download/v2.7.4/localbridge-core-darwin-arm64"
      sha256 "fb40c0099224acb89ffbfc0ba32c7a1344db4500fef94d010fcddd469640ee35"
    end
    on_intel do
      url "https://github.com/AjayShukla007/localbridge/releases/download/v2.7.4/localbridge-core-darwin-amd64"
      sha256 "19025b615bac5bc68f249d0164ff8e2ad462da10105607828fdf353259f43f23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AjayShukla007/localbridge/releases/download/v2.7.4/localbridge-core-linux-arm64"
      sha256 "af88a68721f111350791a38b0f5370fbf79831b24f556188dbdbafa71206bd19"
    end
    on_intel do
      url "https://github.com/AjayShukla007/localbridge/releases/download/v2.7.4/localbridge-core-linux-amd64"
      sha256 "848f6ae7cd7276dd9f490708d1f7bb49ddb7c169086f6362c8f4b41fd4e96757"
    end
  end

  def install
    bin.install Dir["localbridge-core-*"].first => "localbridge"
    bin.install_symlink "localbridge" => "lb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/localbridge version")
  end
end
