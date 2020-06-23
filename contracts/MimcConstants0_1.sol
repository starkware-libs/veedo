pragma solidity ^0.5.2;

contract MimcConstants0_1 {
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
                add(0x43328a34848c6b4d903ce3ec6ca5e3c, mulmod(
                add(0x2f27f514ada58cc245e53fed7f5e2423, mulmod(
                add(0x274bf1e1011c13b2200c6da1fc58f37, mulmod(
                add(0xfbb90b084d22e593fa2a4ebcd050d1b, mulmod(
                add(0xcb2cf4353a8e146de14761cdefc7170, mulmod(
                add(0x1d20525dbee2e44d4555f7797e4a821a, mulmod(
                add(0xa244da75b6fcb5887b909d79f89162b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x123f481a10066d05f4c6051f4671d187, mulmod(
                add(0x4bdab71a5082c4bedbf1d00e5bbf9fb, mulmod(
                add(0xa74938c735f1c3bbed3c7570ddaaa18, mulmod(
                add(0xcf644367078987184fff9d901aaab02, mulmod(
                add(0x1bac1fc39f9bd795502cc1b093037160, mulmod(
                add(0x2894e75eb4d514aad94a8b9baed47536, mulmod(
                add(0x230b458286052986798d9a8d8b83465, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4baa964b6715c4dd34e81d2ea8c2529, mulmod(
                add(0x255c52654dd05ce472e3ff4cf6c7b5d0, mulmod(
                add(0xf4246da8fce989d966663f45c964ab7, mulmod(
                add(0x1072ce23a2d33a13bb972c00f64cfe5e, mulmod(
                add(0x2eaa74e1031d4515b87fc3ea93919b82, mulmod(
                add(0x2ae7e066fa040565bf8e3e2e00cad3b7, mulmod(
                add(0x2e4b5bf7430d44734a0f05be565aa01d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1ef25c7a3ee276181d7617e0cc1be224, mulmod(
                add(0x10bbc267c60ef28c597ce6390b4531bc, mulmod(
                add(0x2d43c21a2863fc8692084cf63cf96351, mulmod(
                add(0x1e8fd9ccbe8ee40867b5d22ff5a4432, mulmod(
                add(0x17e28537998764b4b9811eaaf35e33a5, mulmod(
                add(0xd0838bc861984b4fc0462878ead0ae6, mulmod(
                add(0x237d720661df64bf8b85f13dd01068a4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23397f4ac9fb12c9b8c3349d643fc89d, mulmod(
                add(0x196f69ef34f47948232ef8742ceb7ed8, mulmod(
                add(0x1897f8b76e01a1ea1141b1e125d6f951, mulmod(
                add(0x17cae0b0429853a246cb2d5c4feacf06, mulmod(
                add(0x16f016785cb817fede16eed93ad375ba, mulmod(
                add(0x3950553f314096d7322b5108b66eab6, mulmod(
                add(0x95662bcebdcea10fe1b3922e5607109, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2837152acd01ecc879daf7c810adf274, mulmod(
                add(0x2877f3a6df6a83aaf861d0395b273b3f, mulmod(
                add(0x297e37535228e80b56130df43c2162d2, mulmod(
                add(0xe7179a0e452682d6e7057deb4a67613, mulmod(
                add(0x3ac35cdc76ced06347e3e7d971c733f, mulmod(
                add(0x20ad9cbc9600e17653ab892797b7e0ce, mulmod(
                add(0x1a0c599756e8b7091936de2c502a267e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x147c6771b23930337063f1de7f367313, mulmod(
                add(0x1faf0c3d3e8916a25a21857b51bd2f79, mulmod(
                add(0x118d143974f348b84acecaad64fe2fa, mulmod(
                add(0x17a26e40d4c23aa443b40eb044355f02, mulmod(
                add(0xf9f0607592b4da283e27a09151720f9, mulmod(
                add(0xd03770456df64bbf0b7e5bb3b237557, mulmod(
                add(0x194c1be1e618bf4b5b28ec5a5d95bc68, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x281f6094070aec5e48778554d755a2a5, mulmod(
                add(0x2e202576e41202865e6864a9dac5d9da, mulmod(
                add(0x87cdda51f758dc0729071d841a45e55, mulmod(
                add(0x2b72486e3cb15e48f53435cfeaeffc99, mulmod(
                add(0x6406709a7de56a200bcbaa2ae5b0338, mulmod(
                add(0xec5b4ced233179930200f5ffd8b24eb, mulmod(
                add(0xa8ec39aa212d4f43fe8b9252a8e6ecd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2be3ea572454ff5ae5c0f5133f28c32b, mulmod(
                add(0x291ef328c70e010cd5fc548b55d72f65, mulmod(
                add(0x97d94964e870f1d42160b7a825747ac, mulmod(
                add(0x2741d2bae95abf3cb13bd0e2419a1750, mulmod(
                add(0x14b1a0f77708b672e78651dd21af028d, mulmod(
                add(0x12b9110cc51ea3b00dbfa4cdb2ece4de, mulmod(
                add(0x80811ab708c8623731ca394e9bcb5f6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x208dba864c8bf250f420ec0cbec6d892, mulmod(
                add(0x1232519d319529f69e3b6bdce8bb447, mulmod(
                add(0x1c07761cb8d1d228be9001bbc69c12f9, mulmod(
                add(0x12c15ded25bb59cb203e58e8a5c1cf42, mulmod(
                add(0xed4e7c517aa9e153daf843b0054e8a7, mulmod(
                add(0x9fb46049aebae967b0c37e635ef121e, mulmod(
                add(0x66447df7d3c1d39b44f3ba14e8dfed7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7ceb4de230c7b9003a37f8c57371986, mulmod(
                add(0x56d0e2fd6262816688ac9c966a5e708, mulmod(
                add(0x2c62cc46bdbe7a5b4604bbfeccd3f3ff, mulmod(
                add(0x29294a38dc04024ba13b19e05a28fabb, mulmod(
                add(0x1451d034e4372e34090e69b169f8eff3, mulmod(
                add(0xcf3f9e789e87d0da4f9d151a301c2ce, mulmod(
                add(0xc3462ddc8996e1aae579b6809cecfb3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1cd91981ffb866b76c5de93f17ce20ae, mulmod(
                add(0x2ee7182a2f294e5d7ea98d8fb71b4a48, mulmod(
                add(0x147c44df264f2dd3709606d7783529eb, mulmod(
                add(0x11dd634c1912642c48f34a08b64b2f5d, mulmod(
                add(0x1e1d3ee56fc7e0cfb44f04253576a60f, mulmod(
                add(0x299ce22dae1c2ff962306f4bceaf0589, mulmod(
                add(0x5eccdeb252b90b1977430222f48ae89, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x22312ca324fd2e7382024abd795cfe3c, mulmod(
                add(0x85c06c9975be9a789e27560c7dc252e, mulmod(
                add(0x1a635eb0772ef0af80a20c38df1ea6e9, mulmod(
                add(0x2ec06b43d41f7a63575a27b88943142, mulmod(
                add(0x2dcb66451de361d60e584dbaa007255d, mulmod(
                add(0x2e8287571658c7c6ee1fab6230be9f91, mulmod(
                add(0x24eafcdfb238cfa27214be27a301d2fa, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd288f6f824302d5a173ef9c3516040f, mulmod(
                add(0x17c7434ca05322f8f52951610be83010, mulmod(
                add(0x12c13ab2f2423a83f1bba1bb367a78a6, mulmod(
                add(0x1e90f86cad5b936635f8d5625f54930d, mulmod(
                add(0x215693ad7e8a9668d45e69a526efc1c6, mulmod(
                add(0x151e814f1ba77a1b37c6ebe4765cf85c, mulmod(
                add(0x6445030754c54a3c80d9b0735085722, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8ca3d39ac0aaa7018ab0131b54c3ba1, mulmod(
                add(0x2bcf2de7202061f4278eeee6d2018c94, mulmod(
                add(0x8b86bbabcc8a24cc249563d17f6243d, mulmod(
                add(0x6d6259e698d73d8019e88a99be6f031, mulmod(
                add(0xe774dcc538d195cb5451e92ef2a01d1, mulmod(
                add(0x184b8480bcfd7204e19fe5db1a3c734b, mulmod(
                add(0xec89e5b93f21238d4e403f5ab53e0c3, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18f1923eccf8f48a5989231cb78d2b35, mulmod(
                add(0x28894262bd0631acbbd8daaaf44c63b7, mulmod(
                add(0x2455035e656a126bd216804cd0a00154, mulmod(
                add(0x14eb0a7419ec48c2a080dd60ed4cbc5b, mulmod(
                add(0x2d8128690dc370fe5ab18f77e7b6bf4c, mulmod(
                add(0x85387d4e3cd66b450797783335bcc0d, mulmod(
                add(0x96b45733f9a21dfc5ecaca78f500513, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2fd617a323fe520d52f08e6dcc5ec8be, mulmod(
                add(0x1d7a501e4934906106d8b8e8f2f355d8, mulmod(
                add(0x190d2204d230c0933a54ec51aa3ea994, mulmod(
                add(0x8158a18f7ba0d5551f19dbf147abeb5, mulmod(
                add(0xc15c32967126c2b6182b90a8747eccb, mulmod(
                add(0x81219f87a11eb27b712e7e5d0115e21, mulmod(
                add(0x157f548b44820b418d87b524969b050e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x94d08e377c7b5f23889cb7c62c58714, mulmod(
                add(0x1200b8fe3b3dc06738a5a236bc24d18a, mulmod(
                add(0x628a7ef670bc3ab72aa2d51c48350e0, mulmod(
                add(0x965d3087d616347608ce31d17693b37, mulmod(
                add(0x2bb14d610150a38e90eabcbce065a3ed, mulmod(
                add(0xb7502ced3be42267b70d6c68c8e36c8, mulmod(
                add(0x26c50747462ac725771d2dfde2401e66, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f1c1ee444facd5322f8a37c2857039e, mulmod(
                add(0x1ed39eb2d1427c530f1ce684c7445beb, mulmod(
                add(0x25bf8af806dc3ba03fc51d0181c7dcb2, mulmod(
                add(0x1764636eae601071f898f277abc49fcd, mulmod(
                add(0x11ec39d64680d34e244c9cabd6bc3937, mulmod(
                add(0x2e6ae4d1b7842f52416fbddad85266d9, mulmod(
                add(0x14697f4e50beeeb5e9aa62c9685007da, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x243ae35f41119f86a59e893e0b4e769d, mulmod(
                add(0xfdc15805fa995d1896dd21604539eb4, mulmod(
                add(0x632f514280a645e95743b8d8d447e94, mulmod(
                add(0x202a7110475e0804281a76ad239210b2, mulmod(
                add(0x467c9de86e3f315c12d3e8984294a69, mulmod(
                add(0xe87fa47610a32902af8a84fbc5044b5, mulmod(
                add(0x1584aca417f02fff1a469fa2a31a6ea2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1b4bd96c3ff73fa25d7f5c98abef0df7, mulmod(
                add(0x23ab0ed2af704f6d44af1082fd64b273, mulmod(
                add(0x9c76092294a56c4e47f61cdcd55e609, mulmod(
                add(0x39f2598e83041244eb7a64b6de319e7, mulmod(
                add(0x1e21426e2d532c22f00db5698e916454, mulmod(
                add(0x654f3611a5fa801f850ab39d3f346d5, mulmod(
                add(0x215aae388f2ad548c71ba49e7dcb25ad, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7081e1c2b0970d20286e5bbd5ab059f, mulmod(
                add(0x13a03011d6e6de48f1262879f22c1f11, mulmod(
                add(0xfd33c8cf7b99a23bc02c14cefd5ef9d, mulmod(
                add(0x16d6088e62eed55ea58f0ea7b714fbb7, mulmod(
                add(0x207f708c1838a0c06a0969e9dc527b7a, mulmod(
                add(0x178a083c3229060ea249f18874a8feed, mulmod(
                add(0xcc7f92a0e359974c489d968e3c1b97f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8c4d4b050152fc9e77b0d90ee5118a3, mulmod(
                add(0x1d6740e77ff791af76982a64dbb23636, mulmod(
                add(0x2d98ba5c0a14652d7f34dcbb91d5523b, mulmod(
                add(0x282b3450b48a5ecc9fa8c03604525789, mulmod(
                add(0xb2bf97d6485ff42b74375ce0bb91b2a, mulmod(
                add(0x235f479dc5dbeba0b1bec2e4540e7f12, mulmod(
                add(0x227ade7083737fcd185dcf59ed2b6229, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x264c95323ec1b21b140b9f7b2e95d34c, mulmod(
                add(0x198a079af2bf89f2b6a6228ac3ee7262, mulmod(
                add(0x8d5c32a5f9f0c12db5efb9288a01fb5, mulmod(
                add(0x2fd143232cc8d76062a96e8a5dd1f4c9, mulmod(
                add(0x1dd2707362bf7a816c00b08040df19aa, mulmod(
                add(0x1346fd16ed72fed7b97b0ff1c9db93ba, mulmod(
                add(0x21f57969e0ffaa174937b4de0f5e9819, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15c5546dd66725438e907d9bcf5aafd0, mulmod(
                add(0x227b53f566985a633b031072705a49d, mulmod(
                add(0x87dba35ca77ea343d9765929a0da4d9, mulmod(
                add(0x25399a80e577169a4aa68b5f834b6a82, mulmod(
                add(0x6e058124f19e0e8e825772ce6c9f6ba, mulmod(
                add(0xb82eeb628c4715617e474a2ed32dd2f, mulmod(
                add(0x2cdace68f9ded284d9db1681c96c5158, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x286ece50f823a7ca699cf378c330589f, mulmod(
                add(0x2ecc2a27d200ede752f7cd75ba5dbe62, mulmod(
                add(0xe845d4f02fbf992a85e89a939a919ed, mulmod(
                add(0x2afbfb572dc21a0423d50de960499e5, mulmod(
                add(0x2c0b26f838fc22562b2fa4965ec91623, mulmod(
                add(0x141e4d94be9ca87fc89c6cb9d729c131, mulmod(
                add(0x182bc63f2639d057a64c66518952c3b7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x93e56031165a2b7d0e7b4cdbd74527, mulmod(
                add(0x2d4fcb0a7ca40e75efd4bbefb1200b6f, mulmod(
                add(0x21f71d7edbf8801056afc5acb76c9620, mulmod(
                add(0xf4c89a2671e27fe9ae7f10be20fe17b, mulmod(
                add(0x2c43083ff7cd6f4433f85a204835a9f0, mulmod(
                add(0xa14aa0874072e9e2931d6720daa02ff, mulmod(
                add(0x59dd6fa0ab356be76a45c14643db8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1cf258f2c0152d610b6939d0921d12e1, mulmod(
                add(0x1e79afb22239462eac06389541a360fe, mulmod(
                add(0x97a3a551c11c61446762bcd717a24af, mulmod(
                add(0x1ebe3d4a87d912c24704081811e6adb3, mulmod(
                add(0x118d62f63df57489f8b5cd59e3f53347, mulmod(
                add(0x1a5c2aaab603feb48b7f6ae131a5cc1c, mulmod(
                add(0x3b8a8d150ed1e0c3dd7412a2c7753d0, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2c44c56be5ec9b5360c1103aa0e3fe62, mulmod(
                add(0x22f8274ed5f7fa0a5c359a3b08ec5ae7, mulmod(
                add(0x2c37a25fa214885a1bf0752d0846e74f, mulmod(
                add(0x21ea9005c134c473909da42390d8042d, mulmod(
                add(0xd72fe86a612090b8852d749301416ce, mulmod(
                add(0xfeb2dec39df4baad6a5f83b2accf72e, mulmod(
                add(0x29a367df8ea7ad1d968e538a69b72189, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xa476b7e77b15ccbf422acb863547ed2, mulmod(
                add(0x1e6d4b8e72036cffed7642d1db52a7f3, mulmod(
                add(0x3337e9fec2a209893f8b6dab2f12535, mulmod(
                add(0x8437f1d1b7ff50a2c2fa55f891ce17f, mulmod(
                add(0x2a2b54b1883a99d40589104f1bd96a1b, mulmod(
                add(0x1f2c46c7073eec878b56c4c4221035ee, mulmod(
                add(0x41da83b9c725d477b81f7fc13ba924, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7a4d810bb9e065c76fcb88432045338, mulmod(
                add(0x6c33abfb53b2ae50e8afa440a1d0cc, mulmod(
                add(0x3448c209534899280ff5a904e2ee668, mulmod(
                add(0x2080bbd4dba10ca402adafa75db7d11d, mulmod(
                add(0x16af292630a9f57213f999198eb348ca, mulmod(
                add(0x10cb29dafb8e7a5d64434589320680d7, mulmod(
                add(0x2d3c59b9f7eb0cf646c67aa47580d526, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x8c6349bc92ef446b3a2f89d5cdbee96, mulmod(
                add(0x16738b449f9b4e8b2e2f27813730c477, mulmod(
                add(0x26651eefcb7efaadb42f030a23377b50, mulmod(
                add(0x210b3963b2a6e1b912f11bbd80a8a927, mulmod(
                add(0xe60e1c26503b92104611445e49f20dd, mulmod(
                add(0x2e1ac3ff966636e095816b5e8c82f14, mulmod(
                add(0x2646931bbd5e806e51d3504f3e4c7d76, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xaf9d4a863165e254d684209e21bc4f2, mulmod(
                add(0x2bffeae872ca460ebe4839babd32062e, mulmod(
                add(0xd950d96207f96baec7d344853c20e3e, mulmod(
                add(0x12a6759133e133a671ee153b8cf92242, mulmod(
                add(0x2cd0dd86ab86075fd15c8405431d4dee, mulmod(
                add(0x21d2f5af4f34f7a1675ce8d1db2d6a9d, mulmod(
                add(0x182582f0481596754934f4ceaef43865, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d41bcbd29691311dbfe9c258dbb1a3c, mulmod(
                add(0x17e9bec137a1395a8449ae1fe3681af0, mulmod(
                add(0x1522f67c33554687e77f6345f15015d2, mulmod(
                add(0x1f25c6ca615d3c9c09817411695e719e, mulmod(
                add(0x1415206755cf69563d1b28ce92847165, mulmod(
                add(0x17622cf61c5a60d47e3cdacac85c718d, mulmod(
                add(0x1845f5ea86c5f4d57b0328c514e738ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15fc983a93f40573c20bd9a4dd5911e8, mulmod(
                add(0xe80c5fa723e6d8adccbc09b00b50c3e, mulmod(
                add(0x2410afd951bb3405d2b3a6bf557f559e, mulmod(
                add(0x158982665c8cb7a0e25def935ad64671, mulmod(
                add(0x2c8595d4b8730c5abbb9e1e8345135e7, mulmod(
                add(0x17c56d7ae63db2714e5fd4bc839a2608, mulmod(
                add(0x740d76bf150e5dcc733a3dc577617db, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x219f7be0cbfa466853cc34b0846926ef, mulmod(
                add(0xa788215179daf714f4b9237e569cf9d, mulmod(
                add(0x72d2c9b8d88edc126dac57b6989cbec, mulmod(
                add(0x1b50045e912d6f1ebf8ddb766d28d415, mulmod(
                add(0x1cef3790ef69e3936737559dbfcbca41, mulmod(
                add(0xd4d6c7f192714de99193a90eecdbebb, mulmod(
                add(0x32fed0aeb2f429336373fb0b6904226, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2e58474a46f5d925e2137ac4bc0bf8c8, mulmod(
                add(0x25a685be0cd139bf4c04b99a8b37c704, mulmod(
                add(0x1faae75cf7088d8b8be8730232fa6cd, mulmod(
                add(0x123ac6c65f043d98c5cdffe97124c0f2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
