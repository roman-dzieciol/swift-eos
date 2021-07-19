import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_InitializeTests: XCTestCase {
    public func testEOS_Initialize_Null() throws {
        TestGlobals.reset()
        __on_EOS_Initialize = { Options in
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.AllocateMemoryFunction)
            XCTAssertNil(Options!.pointee.ReallocateMemoryFunction)
            XCTAssertNil(Options!.pointee.ReleaseMemoryFunction)
            XCTAssertNil(Options!.pointee.ProductName)
            XCTAssertNil(Options!.pointee.ProductVersion)
            XCTAssertNil(Options!.pointee.Reserved)
            XCTAssertNil(Options!.pointee.SystemInitializeOptions)
            XCTAssertNil(Options!.pointee.OverrideThreadAffinity)
            TestGlobals.sdkReceived.append("EOS_Initialize")
            return .init(rawValue: .zero)! }
        try SwiftEOS_Initialize(Options: SwiftEOS_InitializeOptions(
                ApiVersion: .zero,
                AllocateMemoryFunction: nil,
                ReallocateMemoryFunction: nil,
                ReleaseMemoryFunction: nil,
                ProductName: nil,
                ProductVersion: nil,
                Reserved: nil,
                SystemInitializeOptions: nil,
                OverrideThreadAffinity: nil
            ))
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Initialize"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
