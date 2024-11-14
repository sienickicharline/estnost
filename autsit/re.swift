import Foundation

final class ProposedViewSize: @unchecked Sendable {
    private var _width: CGFloat?
    private var _height: CGFloat?
    private let lock = NSLock()
    
    var width: CGFloat? {
        get {
            lock.lock()
            defer { lock.unlock() }
            return _width
        }
        set {
            lock.lock()
            defer { lock.unlock() }
            _width = newValue
        }
    }
    
    var height: CGFloat? {
        get {
            lock.lock()
            defer { lock.unlock() }
            return _height
        }
        set {
            lock.lock()
            defer { lock.unlock() }
            _height = newValue
        }
    }

    init(width: CGFloat? = nil, height: CGFloat? = nil) {
        self._width = width
        self._height = height
    }
}
