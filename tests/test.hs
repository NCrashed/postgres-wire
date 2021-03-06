import Test.Tasty (defaultMain, testGroup)

import Protocol
import Driver
import Fault
import Misc

import Codecs.QuickCheck

main :: IO ()
main = defaultMain $ testGroup "Postgres-wire"
    [ testProtocolMessages
    , testDriver
    , testFaults
    , testMisc
    , testCodecsEncodeDecode
    , testCodecsEncodePrint
    ]

