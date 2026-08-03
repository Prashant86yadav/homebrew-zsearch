cask "zsearch" do
  version "2.26.0"
  sha256 "32e4b053e0915bd4714d07b7afc1c427939241ed68b0bc48b88d4f2f54f2acf3"

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
