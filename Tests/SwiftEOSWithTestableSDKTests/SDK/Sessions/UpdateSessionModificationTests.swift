import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_UpdateSessionModificationTests: XCTestCase {
    public func testEOS_Sessions_UpdateSessionModification_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_UpdateSessionModification = { Handle, Options, OutSessionModificationHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.SessionName)
            XCTAssertNil(OutSessionModificationHandle)
            TestGlobals.sdkReceived.append("EOS_Sessions_UpdateSessionModification")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionModification? = try object.UpdateSessionModification(SessionName: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_UpdateSessionModification"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
