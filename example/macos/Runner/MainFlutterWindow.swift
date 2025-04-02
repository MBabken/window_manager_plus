import Cocoa
import window_manager_plus
import FlutterMacOS


class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
      let macOSWindowUtilsViewController = MacOSWindowUtilsViewController(flutterViewController: flutterViewController)
    self.contentViewController = macOSWindowUtilsViewController
    self.setFrame(windowFrame, display: true)
      
    RegisterGeneratedPlugins(registry: flutterViewController)

    WindowManagerPlusPlugin.RegisterGeneratedPlugins = RegisterGeneratedPlugins
      
    super.awakeFromNib()
  }

  override public func order(_ place: NSWindow.OrderingMode, relativeTo otherWin: Int) {
      super.order(place, relativeTo: otherWin)
      hiddenWindowAtLaunch()
  }
}
