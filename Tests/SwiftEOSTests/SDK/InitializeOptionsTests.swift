import XCTest
import EOSSDK
@testable import SwiftEOS

public final class SwiftEOS_InitializeOptionsTests: XCTestCase {
    public func testItZeroInitializesFrom_tagEOS_InitializeOptions() throws {
        try withZeroInitializedCStruct(type: _tagEOS_InitializeOptions.self) { cstruct in
            XCTAssertEqual(cstruct.ApiVersion, .zero)
            XCTAssertNil(cstruct.AllocateMemoryFunction)
            XCTAssertNil(cstruct.ReallocateMemoryFunction)
            XCTAssertNil(cstruct.ReleaseMemoryFunction)
            XCTAssertNil(cstruct.ProductName)
            XCTAssertNil(cstruct.ProductVersion)
            XCTAssertNil(cstruct.Reserved)
            XCTAssertNil(cstruct.SystemInitializeOptions)
            XCTAssertNil(cstruct.OverrideThreadAffinity)
            let swiftObject = try XCTUnwrap(try SwiftEOS_InitializeOptions(sdkObject: cstruct))
            XCTAssertEqual(swiftObject.ApiVersion, .zero)
            XCTAssertNil(swiftObject.AllocateMemoryFunction)
            XCTAssertNil(swiftObject.ReallocateMemoryFunction)
            XCTAssertNil(swiftObject.ReleaseMemoryFunction)
            XCTAssertNil(swiftObject.ProductName)
            XCTAssertNil(swiftObject.ProductVersion)
            XCTAssertNil(swiftObject.Reserved)
            XCTAssertNil(swiftObject.SystemInitializeOptions)
            XCTAssertNil(swiftObject.OverrideThreadAffinity) }
    }
}
