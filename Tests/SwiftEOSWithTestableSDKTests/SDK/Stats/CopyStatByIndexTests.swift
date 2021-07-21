import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_CopyStatByIndexTests: XCTestCase {
    public func testEOS_Stats_CopyStatByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Stats_CopyStatByIndex = { Handle, Options, OutStat in
                GTest.current.sdkReceived.append("EOS_Stats_CopyStatByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_STATS_COPYSTATBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.StatIndex, .zero)
                XCTAssertNotNil(OutStat)
                return .zero
            }
            defer { __on_EOS_Stats_CopyStatByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyStatByIndex(
                    TargetUserId: nil,
                    StatIndex: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_CopyStatByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Stats_CopyStatByIndex"])
    }
}
