cask "zsearch" do
  version "2.31.0"
  sha256 "bb415e08a7570168d0cf2d0a08efb137627ead8fb08750567e0bc1d937f67c87"

  url "https://stdocumindprodaue.blob.core.windows.net/desktop-updates/ZSearch-#{version}-arm64.dmg",
      verified: "stdocumindprodaue.blob.core.windows.net/desktop-updates/"
  name "ZSearch"
  desc "Data-sovereign AI search and document platform"
  homepage "https://zsearch.ai/"

  livecheck do
    url "https://stdocumindprodaue.blob.core.windows.net/desktop-updates/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura
  depends_on arch: :arm64

  app "ZSearch.app"

  uninstall quit: "com.documind.local"

  zap trash: [
    "~/Library/Application Support/ZSearch",
    "~/Library/Caches/com.documind.local",
    "~/Library/Caches/com.documind.local.ShipIt",
    "~/Library/Logs/ZSearch",
    "~/Library/Preferences/com.documind.local.plist",
    "~/Library/Saved Application State/com.documind.local.savedState",
  ]
end
