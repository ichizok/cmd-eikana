//
//  AppDelegate.swift
//  cmd-eikana-helper
//
//  MIT License
//  Copyright (c) 2016 iMasanari
//

import Cocoa

@main
final class AppDelegate: NSObject, NSApplicationDelegate {
  private static let mainAppBundleID = "io.github.dominion525.cmd-eikana"

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    let isRunning = !NSRunningApplication
      .runningApplications(withBundleIdentifier: Self.mainAppBundleID)
      .isEmpty

    if !isRunning, let url = URL(string: "\(Self.mainAppBundleID)://") {
      NSWorkspace.shared.open(url)
    }

    NSApp.terminate(nil)
  }
}
