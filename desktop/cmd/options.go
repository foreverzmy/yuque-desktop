package main

import (
	"github.com/go-flutter-desktop/go-flutter"
	"github.com/go-flutter-desktop/plugins/shared_preferences"
	"github.com/go-flutter-desktop/plugins/path_provider"
	"github.com/nealwon/go-flutter-plugin-sqlite"
)

var options = []flutter.Option{
	flutter.WindowInitialDimensions(1200, 800),
	flutter.AddPlugin(&shared_preferences.SharedPreferencesPlugin{
		VendorName:      "yuque desktop",
		ApplicationName: "YUQUE",
	}),
	flutter.AddPlugin(&path_provider.PathProviderPlugin{
		VendorName:      "yuque desktop",
		ApplicationName: "YUQUE",
	}),
	flutter.AddPlugin(sqflite.NewSqflitePlugin("yuque desktop","YUQUE")),
}
