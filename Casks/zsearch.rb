cask "zsearch" do
  version "2.30.0"
  sha256 "acf80522d49189e8b1a99d1538343da17f98c4b4355898a3506fc7cbe7d81f45"

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
