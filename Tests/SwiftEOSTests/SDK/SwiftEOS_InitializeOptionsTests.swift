import XCTest
import EOSSDK
@testable import SwiftEOS

public class SwiftEOS_InitializeOptionsTests: XCTestCase {
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
            let swiftObject = try SwiftEOS_InitializeOptions(sdkObject: cstruct) }
    }
}
