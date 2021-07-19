import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_CopyStatByNameTests: XCTestCase {
    public func testEOS_Stats_CopyStatByName_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Stats_CopyStatByName = { Handle, Options, OutStat in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNil(Options!.pointee.Name)
                XCTAssertNil(OutStat)
                TestGlobals.current.sdkReceived.append("EOS_Stats_CopyStatByName")
                return .zero
            }
            defer { __on_EOS_Stats_CopyStatByName = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Stats_Stat? = try object.CopyStatByName(
                TargetUserId: nil,
                Name: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Stats_CopyStatByName"])
            XCTAssertNil(result)
        }
    }
}
