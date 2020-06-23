pragma solidity ^0.5.2;

contract MimcConstants7_0 {
    function compute(uint256 x) external pure returns(uint256 result) {
        uint256 PRIME = 0x30000003000000010000000000000001;

        assembly {
            // Use Horner's method to compute f(x).
            // The idea is that
            //   a_0 + a_1 * x + a_2 * x^2 + ... + a_n * x^n =
            //   (...(((a_n * x) + a_{n-1}) * x + a_{n-2}) * x + ...) + a_0.
            // Consequently we need to do deg(f) horner iterations that consist of:
            //   1. Multiply the last result by x
            //   2. Add the next coefficient (starting from the highest coefficient)
            //
            //  We slightly diverge from the algorithm above by updating the result only once
            //  every 7 horner iterations.
            //  We do this because variable assignment in solidity's functional-style assembly results in
            //  a swap followed by a pop.
            //  7 is the highest batch we can do due to the 16 slots limit in evm.
            result :=
                add(0x3dd3a64c25ec4144b20f085132aedf1, mulmod(
                add(0x1e8861518d155588cef02b0b572ae325, mulmod(
                add(0xa4bcaddd8dd91595db7b5fb765d1c8a, mulmod(
                add(0x7bb661751f64eca8b90efdd582ec703, mulmod(
                add(0x190ffa996f01d788a9827f58d5f3cc8c, mulmod(
                add(0x1b420a948175f950e6211a5667062487, mulmod(
                add(0x2b055aaee425206e4a0ce4146151b6ea, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1c7c84a502906b80b9c96fccc61505f6, mulmod(
                add(0x234d027341616527b82f49db858dd5be, mulmod(
                add(0x18c57efe4136892c51c7dd0b2a5ac597, mulmod(
                add(0x239a231dba4cf8789a2089504bbb44b9, mulmod(
                add(0x225c295b531dd1056cc4631acadf9a53, mulmod(
                add(0x217b695b5818fb45a9999610fb4b928f, mulmod(
                add(0x2d17fe0b4fb59f71083ae67609f1403e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd816a20377d40a947c4bdcef2f18d05, mulmod(
                add(0xefc76277a353c17e9d0208b9e464f7, mulmod(
                add(0x284713aafa3335dee3db2a7becd9b63, mulmod(
                add(0x1c4fc86eebb8205f9d04343f57daf944, mulmod(
                add(0x26198626fb6c6d8120a501f3e28f90d2, mulmod(
                add(0x2e65accb44afc48ccc93bd497f5e32c0, mulmod(
                add(0x12ea20b5f5cdbd410167a08664dbd1cf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e34879cb6b5e83f5be89d1b27180f4c, mulmod(
                add(0x2031d23f5960baac334d26b2eb53f0a2, mulmod(
                add(0x103003e450a97bad6912ff957a6e61f2, mulmod(
                add(0x1ab95935521ff2119c983435be611a6, mulmod(
                add(0x226030159d430894065fef06fa8fe1f3, mulmod(
                add(0x1f044caa67090a91dad4b264e341bdab, mulmod(
                add(0x2d65d12273f900c25a87e6cbe85172d4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1bd5cfd1af70fde7ab5f3f6dba428117, mulmod(
                add(0x161fec45a53b81a93b9eff49caf5b1f3, mulmod(
                add(0x264f860d83ce536f9997a28702c43baa, mulmod(
                add(0x259b89ac9f4318fdfd7f8fb2e86fe005, mulmod(
                add(0x20d9e3ed329d804d1e5d537a844dcf49, mulmod(
                add(0x23be4dd46a83e61d0bcece593d13f8c7, mulmod(
                add(0xd7143c2d22e1c0e14265bd6b931b1bb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xe0e8996953927146abb97f03c8a316a, mulmod(
                add(0x3cf8693e2c37179f8815353e973cbb2, mulmod(
                add(0x427414519315d4457f790e3595cd70, mulmod(
                add(0x11ba84160a86d4a01a2ab8b928d8d2f7, mulmod(
                add(0x1ccff2122f35522acbe0cf56470993fd, mulmod(
                add(0x1912d0a296f745c5fb3d9fb47fe7f2d9, mulmod(
                add(0x288375a7e6435a4aca121b80f361abae, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x220b7dbfb521f1fe327cbfc409a8f2ea, mulmod(
                add(0x2e5cf5e1bebee627dcc59517119d473, mulmod(
                add(0x2f04a6fdc5e11f739547823fe7526113, mulmod(
                add(0x24d8b44901982a4d0291b8ffe2594698, mulmod(
                add(0x77a1c978e9bc723b8541ddaa27c9ea, mulmod(
                add(0x17461dd57772a52ae84bc919552d1ee8, mulmod(
                add(0x1d2ba6edc11063a2a44f83bdde70f664, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x92f15c84bade53b44a40240b0c7e163, mulmod(
                add(0x22e818b87ed31393778e936ef0c4cd59, mulmod(
                add(0x148d6ed7ffe287a13252ecdf0f100f84, mulmod(
                add(0x25d672cca9ccf7dfcf014593e0858375, mulmod(
                add(0x3f594e5122d777101a8d8185283fd33, mulmod(
                add(0x4585e8e9dbc37b460f7a077c69b4139, mulmod(
                add(0x955b49acbecbf302d6817a8d36e6ca6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28fb88d566678472a9209e1306d01076, mulmod(
                add(0x1c6b4cdbf0c59434ed8b91e4a43d2301, mulmod(
                add(0x6f4e0fcf5b36cd65d1f96a7e8af06cb, mulmod(
                add(0x28e0310eded85a15df1db5c3054bf9dc, mulmod(
                add(0x28dbfd7bd39721f6fd5a2c0f87f6c5f9, mulmod(
                add(0x165cfa5f297efe781c6455e108486047, mulmod(
                add(0x2096328fa57d5488c2d5a42b7f13cdb1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a7104ae25cfef3f9635d30e616b4267, mulmod(
                add(0x1b861b08d79f4657aa0be3b3272398f3, mulmod(
                add(0x2850e7daa9d8f8c37711f0ea7d7611e6, mulmod(
                add(0xf82166c1eb6cba786c6b6184ae2b6d6, mulmod(
                add(0x228829a36b2fc044b81d90686b652f4f, mulmod(
                add(0x11ecbe9fe8c0748518fbcfefb8940c67, mulmod(
                add(0x2024f3fd4b842833eaafa9401c3a4dbb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5bc3faed50bfbc26307fcb005b58b58, mulmod(
                add(0x6893cf2a80f98fc1ac621e984a4d5f3, mulmod(
                add(0x1411ce7a492a2fbb92addd140e72784f, mulmod(
                add(0x14c636b539f0fb2d9993022399f5caa9, mulmod(
                add(0x2400f18295029f97c5aaa21665c2757a, mulmod(
                add(0x2e4f49a06cd251df8a8ef9d773943b3a, mulmod(
                add(0x12ead67c9ae57b8ac4c52ac7b657956d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x5d5ff169a5be090af8ac0fd6b2abe7a, mulmod(
                add(0x141803179c5ec51fa8ffecc2ab144e93, mulmod(
                add(0x16ae0339bf9d875267f1561686c00e52, mulmod(
                add(0xfb4a4c3dcd598437f08b79b20c6e5e5, mulmod(
                add(0x2c94263cc2a09ec4f974a7f0cdcf05f3, mulmod(
                add(0x15a68524fabe577a48f3b56682a55792, mulmod(
                add(0x2f9b18bbf982860f1a843183f6f6641c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf0f3d425f809060d8e5479dd958d71d, mulmod(
                add(0x25181515890899d429659a280a428551, mulmod(
                add(0x1f24a93026e649dc7f5b0d9927c2f426, mulmod(
                add(0x2719ea90cfdbb25ad9b01c0d75ffc6dd, mulmod(
                add(0x1de703f4ab27109077b6b916e66cfbb7, mulmod(
                add(0x28b12f35ce9c3b2bb680bb79fe25a9f1, mulmod(
                add(0x1feb56037755cb2ad445d6848675b77b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa86c6d31d2faf299bd682776c97d26f, mulmod(
                add(0x87fea3dbeb5c244f9545db69cd17c1a, mulmod(
                add(0x9927d2c267819b738e571d7e1c531a8, mulmod(
                add(0x111c591d1481ed2547d27cd73477508c, mulmod(
                add(0x1ec0f3263287ec015b00fab925972022, mulmod(
                add(0x8e565b130db094d34df3fa0b75fafe7, mulmod(
                add(0x15dcc8d88a71b40b93e4aea9fefeaba9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c998d087b59194b4f38c29e97100291, mulmod(
                add(0x29f38feb53e4f6bd49c28aab51cf818b, mulmod(
                add(0x1054475db707293234453ec1cda58eb3, mulmod(
                add(0xa517dd0ef6e050398df7137f914cf0f, mulmod(
                add(0x269fc0d6c0c5aff2047b3fa4adbeace1, mulmod(
                add(0x198091dc59d52590c62a840a2e181901, mulmod(
                add(0x1e7c2a1ff50e8d887f4dfd02c4b3606b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2a224be2739aabbbd884851f64c4b3c7, mulmod(
                add(0x24d6ca652b20e94d013369594a8a15bd, mulmod(
                add(0x92e7bb852133249fd13d9704f5b0b70, mulmod(
                add(0x26fea74181affe5560ad790c7720e986, mulmod(
                add(0x7050ff6c7819245104dc24d8c9e340b, mulmod(
                add(0x1f43b7d4311502cb33bd44be67f4276b, mulmod(
                add(0x1314192b21d500fd0e697a0387cc1f56, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x190d36ba3d95c1baee33ec332d97906d, mulmod(
                add(0x2b0248e9526851e1e8378407dfffa7cc, mulmod(
                add(0xfd948096457cfccefb938ba904df729, mulmod(
                add(0x2a36bffda2b2bc5c827aee57b5b71c21, mulmod(
                add(0x3700e2c98b62b9e112c2821238b6283, mulmod(
                add(0x116c7a56be96739ed7797a24aa017224, mulmod(
                add(0xdbcc26d98a496df30890e934950e4c8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1320efe39918069a9716f1aeca715e64, mulmod(
                add(0x2099ac8caf8f686582af4b38249fd7ad, mulmod(
                add(0x1cdcd76815770d46879b52e71aef8c8, mulmod(
                add(0xc068273aef486c1ca02517fa573f4b3, mulmod(
                add(0xa0921d3681f7c5eb6094f61ad3dae83, mulmod(
                add(0x2aca62b7246f1d99ab7cace2afbb95c1, mulmod(
                add(0x2fae1ec304ae99a6e84139cc6610f1f0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ada304174c7533c84b3ae3422b1b294, mulmod(
                add(0x21741c64dde7c6043c276abcb573e04e, mulmod(
                add(0xadbe95ca8316ac59eeda9799e3c8163, mulmod(
                add(0x23374749c27e135219caf43d09c2ebec, mulmod(
                add(0x243f218f6741e08f74a077b35393a2bc, mulmod(
                add(0x10ebbbd0a9ab74afcf4dd1b3c89f70e8, mulmod(
                add(0xd66bf4afc547e8085bcc122cfc099ba, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1119f5859bbc018aa8dec24d22c24d25, mulmod(
                add(0xc7232d925d1b799d6721b10e7e010bc, mulmod(
                add(0x2b384d7d654ed60c14133470d13ff0df, mulmod(
                add(0x13c277edb388fda08a246149e011df2, mulmod(
                add(0xbceaef30b8317998ec4f2f7a9e80b6d, mulmod(
                add(0x1d98e399d8524670b1d2a1b0ff3839fc, mulmod(
                add(0x9cc0a0032b518de693a1883a2341789, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x14863ef2e58856eee441fe2ea4cdd39a, mulmod(
                add(0x13d5b66c7d4984a488fb60332a59bc9a, mulmod(
                add(0x2710d02e1b665e6f749e312e6849e534, mulmod(
                add(0xb6fa6ae7c4f5f8549bf9803bcd2ebd7, mulmod(
                add(0x25d1bebedb6de322b390d77a3f6998ce, mulmod(
                add(0x1741a70595b30cc676729b73ae3aa099, mulmod(
                add(0x2f52531ce63f3a1d87708148ac5ba789, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xafde2372fd03ee66e9352d71ec6bd95, mulmod(
                add(0x1f8e1b96afb788c80700979f482dfeaa, mulmod(
                add(0x17ca84dc24c80a123ed4c774cc2257ce, mulmod(
                add(0x271f8ed2faa444a390f6e5d929c4a032, mulmod(
                add(0x2931ed282ff48c6b4dbbfb88bd72cf0e, mulmod(
                add(0x235efbde2a5ca83e3c343695eb3d5f3d, mulmod(
                add(0x22106cf22d0dd3daf55b2d73aa6272dc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2642492acdde8d9db11a37321cffbd79, mulmod(
                add(0x900b8f5564a3a9dd4f5bfbd7e3076c8, mulmod(
                add(0x55af1c9d9aae874ee76c6d70311cfa8, mulmod(
                add(0x29399a8a36e5690895c553339947ae12, mulmod(
                add(0x10eadfad1bf76ef768b0e222ef9b38e2, mulmod(
                add(0x2840e20a4482b218fb7478e6f8ce00e0, mulmod(
                add(0x1d4d110e9cdd14b679ee2e9a9d50ab42, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x9dbc19f19b2e9b0a63a9e9961c278ab, mulmod(
                add(0x1f3b949f10792b3e1caa00fd36727af5, mulmod(
                add(0xe067ff849daa2f3e1381321cd946090, mulmod(
                add(0x13530353997a70ddc74fd4691b48717a, mulmod(
                add(0x2a2a46d260cd78a9bdc508f428e93095, mulmod(
                add(0x2b1f99cbc9fb3159268242e5297bf371, mulmod(
                add(0x205311c16ae5011a5ae39b2ecf5fc07a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x21deb7f06e1143e63ca047fc72422a47, mulmod(
                add(0x2872af63eca53d6fd52a7b371b878548, mulmod(
                add(0x26922d99f12d5d9f90a782b74167d06e, mulmod(
                add(0x2c591775416f71357255bfcd8949790b, mulmod(
                add(0x36939c8a4bdeec2f3d9c32a2b397447, mulmod(
                add(0x160a940cc650593ea4090c30e518b288, mulmod(
                add(0xa4904c2d986d9d09fae0ab7f7432bbf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc6336f9ba50e9c4cfa45a913946de6f, mulmod(
                add(0x20250c781becba99660bececf181bc7d, mulmod(
                add(0x28f1c5b2e48e3b955d354aabec5eccbd, mulmod(
                add(0x13facf3fdc3efbf60fdbcf1a50a68ddb, mulmod(
                add(0x1c8ee7fed6d5b2fe87dbffc0b66f0de2, mulmod(
                add(0x2ef33e6054248726449dfac8956968a2, mulmod(
                add(0x2688352c30bc4d13acfdf39cd94b2db, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x904b7f9a7b6053c867f4ed50ce033fa, mulmod(
                add(0x14a4134ef796e84608280da81648c599, mulmod(
                add(0x2ac953d47bec8c2cfe2ee104f494edf9, mulmod(
                add(0x19d4c5602d797e7dbc9b1860cf35a44e, mulmod(
                add(0x231f66ce808c55352d34b16516997d6b, mulmod(
                add(0x128f94d40417f6f06bbad2abaaddc1c9, mulmod(
                add(0x13373166f976b324e0c8f4744e563cda, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x208d2dabc01142e91ca0dead5cafac08, mulmod(
                add(0xba85c5a2436bb865a5c0a6a12644891, mulmod(
                add(0xc154defd44fd4ed3fdd58fa5cd985ae, mulmod(
                add(0x2fa6cba7d162dfdfdaa4d5f2bfe850b6, mulmod(
                add(0x3d725abbb9dde72ffb2dcb9ff3c5309, mulmod(
                add(0x1b30af7088fb15243cf806084b38437e, mulmod(
                add(0x19640f5be95ce5b41f7e60b917c42125, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x175f3cb5dce9bf1712a41a4d0dd8dc26, mulmod(
                add(0x209aff8add23318106f13d3b928dfff9, mulmod(
                add(0x1e6542517bd955690a736cc1e5de1b23, mulmod(
                add(0x1d022bbb6f5d19251af7272acf7073f9, mulmod(
                add(0x2bf5fda19f1bd12eacf8be9a419017fc, mulmod(
                add(0x126190e2aea344c760a6cf0c408ec0d9, mulmod(
                add(0x1d8cdfb0e33319c1328d93fa466ca1fc, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x287902a4353b0a4f21870e652ed67ae8, mulmod(
                add(0x2f461228e65ac22cbd978eb13ded9b01, mulmod(
                add(0xc6a47ceca54812ccb5ae278b83d68d3, mulmod(
                add(0x1879dd5dcbfcdf8d5d929dfbba19e17d, mulmod(
                add(0x108835fd3b4da66b138acb6800f3db4, mulmod(
                add(0x2ead1a7f457ea236f7eb9ff7bade1761, mulmod(
                add(0x8e3545362a524555bbab8908301a444, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x161ed0926a352305022e646a27081502, mulmod(
                add(0x2a19f2cc1298686d6a55a841f87add99, mulmod(
                add(0x15b1a40c407b800548bbee4ba3c64b68, mulmod(
                add(0x22f6109310199d80a30db8be796771ad, mulmod(
                add(0x1eda5b2e952ec4ca12a7d76718176a4f, mulmod(
                add(0x24f15e4ede601fa06e57f6c61bdb78e9, mulmod(
                add(0xa70724ce64c10056778905994899593, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1e459faab2df2f8a5d76610ee872a284, mulmod(
                add(0x1ad424dcf7e243478ab33b63172876cf, mulmod(
                add(0xac5b3c58dc303d2343a0bde344ac89d, mulmod(
                add(0x2ee82ce1498c6b9b69efa0ce4e7e2da3, mulmod(
                add(0xc6684b8b430be468bfdc41ce59ae46, mulmod(
                add(0x206f5a18c93b2bcc3159e76d9ee906f6, mulmod(
                add(0x196b77af72de02c7be0b120521643932, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c884b56565f6ea6eadfc322dd03734b, mulmod(
                add(0x3db9737bbcf8600d77e4bfb9444919e, mulmod(
                add(0x2f722e00240058ec694cfe76555dc9a6, mulmod(
                add(0x18c80bbffe29a80b16f2d012103dfa51, mulmod(
                add(0x255c99cbf660fcbdacd0f23d20f3d78, mulmod(
                add(0x8689adaeee93608bd79a1c621969b18, mulmod(
                add(0x2ff125a7cf2425769815ed84ca79eb94, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f5f35d1fd0a64073d14cb2447e039f7, mulmod(
                add(0x2034c88e49d3faebb8af469b0ca2d6ff, mulmod(
                add(0x19b199b400bd1f5210b30332beefbeca, mulmod(
                add(0x2a27a872de70934717431b3e9f6f3f4e, mulmod(
                add(0x15b33242e7ecf7479107801649c9566f, mulmod(
                add(0x584a6bfdb59b855b83895143bb58068, mulmod(
                add(0x115666192ebe8297f19513a64a44ef3c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x158aeb8fd4f88f04a01ce3c518cfee8a, mulmod(
                add(0xb07622b094f520520daec651ad8c3ae, mulmod(
                add(0x2003ad97f097cafa8af948332167430a, mulmod(
                add(0x2580759d94abca12b9414ab2950e90e5, mulmod(
                add(0x3dba331c10ea5225759fc35af75c644, mulmod(
                add(0x26b3bc0a5f0674cc9c50eebb8374e37f, mulmod(
                add(0x116be39ff8d2746a79cb4dd36b75bbb5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22dbe57f551e2e1247cacbc65f95044f, mulmod(
                add(0x2a323e0351ccbe1a725c37ae61c68e5, mulmod(
                add(0x2a4d0253c4b9892314814d992304dd85, mulmod(
                add(0x259b3292ad40650e309833ec240aec7f, mulmod(
                add(0x5cbcea94e482f21643c5631d890f3ac, mulmod(
                add(0x1a2d8203b3e2c1617f8a28a1d627a3f9, mulmod(
                add(0xbc9c1a409f3fe5685a10354addbc22c, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xedb47be8c380da51a5fc4ee6fac8d94, mulmod(
                add(0x1f7602f0b6c48699f0608187e4560b31, mulmod(
                add(0x60ac20aaf8cb896c71df9a6ea6a3e33, mulmod(
                add(0x88c72d469d33bdb2a525edc215dc35, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
