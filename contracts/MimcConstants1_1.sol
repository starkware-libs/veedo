pragma solidity ^0.5.2;

contract MimcConstants1_1 {
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
                add(0x203c1b7211e70ade8883f0d128014f6, mulmod(
                add(0x1d1ead0914cd4d1f3bd0311ac329dba0, mulmod(
                add(0x2bbd3604199473a75972a7df342e2f5b, mulmod(
                add(0x82a23082c1178d144681788f7ee874f, mulmod(
                add(0x1ff077692e386eeb00ccc1d820d53cbb, mulmod(
                add(0x2031fc9be1437e4ab1930128e0ae247, mulmod(
                add(0x1027c81db5b1e41e0c4b64f1a53a2a86, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1223df5794a9aed6089ffacff7da33a0, mulmod(
                add(0x20bc5120d55a0a72900cf65cf05fb2e6, mulmod(
                add(0x1108a0029294c93834da99c5cae61f3d, mulmod(
                add(0x313382df954c3b0a99eda925735ce0c, mulmod(
                add(0x2f34eae5b485d490293941eec9fa059, mulmod(
                add(0x14e7a8b539872b4b6490335b12ada505, mulmod(
                add(0x12f44dbe33abad90a9c567f0e2daba8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x4d114221d9c87347d669639fb79afbc, mulmod(
                add(0x55edb4469d7ae8f963172f0ef4b9424, mulmod(
                add(0x17df882e1c13b05db2ec6e281f4be374, mulmod(
                add(0x18482c7e4a5c6125908c86ba6d2a3911, mulmod(
                add(0x1b074f7a9ad79fba3290d9860e81ab63, mulmod(
                add(0x2741b25f9a0adef97eda1c912197d85, mulmod(
                add(0x1526244ff399db060657efc21311294, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x10adc18b35c0a6c8b689404bea79a594, mulmod(
                add(0x1404f2c8f2fd0554890ff4fbb3171dd2, mulmod(
                add(0x29e27e91a3d94d6833ba26a0214abb46, mulmod(
                add(0x1320764b0fbf89d99f28b168145263b5, mulmod(
                add(0xeb65e5af2577882a16b438b275a8934, mulmod(
                add(0x13b1a1570b5810848155638f628e78ec, mulmod(
                add(0x211d5546cd544af99a1f0dede5b10731, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1936aa2660accb8cbdb335058be7a566, mulmod(
                add(0x27d88d59867ad6f08fe37d50e26e86d9, mulmod(
                add(0x8365681f5e89cfc51bf058cbaf2483e, mulmod(
                add(0x1f15112ac83890a0e504be6b47b28659, mulmod(
                add(0x23dad43ef419a65219a969f0ed1412a1, mulmod(
                add(0x4b8b412ae173dceb5fe6489000b5a69, mulmod(
                add(0x20350888f58621f09d608be9b7d18ad6, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x23a8df949414c813ee2bb1fadc604fac, mulmod(
                add(0x246f9f9fe7bc610f17769971cbf54aa8, mulmod(
                add(0x10cc9650385e8fa9cd9f52b902964f0c, mulmod(
                add(0xdfe0071f9fda3dc1468dffc34dcd334, mulmod(
                add(0xac549dd317bfd0f62caf23e1302c0a9, mulmod(
                add(0x2dc409e7cb329dcbce51091b4889bc2c, mulmod(
                add(0x2d294b9fc92daa7272d6f02c0c3bef2d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29f4e3a0fee011d677ff609d41c90051, mulmod(
                add(0x2a160bb7e0cbd5d06cfd10e748a75879, mulmod(
                add(0x14d7cf1c553cfb547adc44be8d1ea360, mulmod(
                add(0x242517adb647556103a2773235f2741b, mulmod(
                add(0x15ee863689cac1a6a885bd089f977146, mulmod(
                add(0x1e97372fc60cd1e2c9b839d804a25b47, mulmod(
                add(0x2e21cfd4bcda3bf2b5fd3fdfe95b4a02, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11f29e9603ea4a3885c5cb3ffd8f0586, mulmod(
                add(0x205fa3e24b2d56a0a16e72e42cc12462, mulmod(
                add(0x1696ecdcf155308520e28b37ee7baa17, mulmod(
                add(0xbdb9ca617a1f991b2fee524851fa86c, mulmod(
                add(0x14618cbbf1fa9df04f388296ab1a3e8f, mulmod(
                add(0x1a4572391049818c22690bf44371cca5, mulmod(
                add(0x2d5221049097a54fd65b4ce643b08d95, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x208897f1e49f7d9469d2fa5f02ccd308, mulmod(
                add(0x5dfb755f719045c24374706acc0bbe, mulmod(
                add(0x157cf5e75f33065e1af5f1e027e4b98b, mulmod(
                add(0x252aa7e1ce953647188b2f98ff486edf, mulmod(
                add(0x2d5061d76e8e6aa0d23795d8a924c8bf, mulmod(
                add(0x1eb59b060c6e01015b56bd5a2428dc3a, mulmod(
                add(0x1995c45f38848b2fb42e0f79d5390d3d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f1fba8fc6c63136e7608d98c3e7d1e, mulmod(
                add(0x45887aa5295738b9e00805a69d62a6d, mulmod(
                add(0x2fb5d0604d5627c04301e3570b5b1bcb, mulmod(
                add(0x2483396817671c239fb7a7a9579c7fd9, mulmod(
                add(0xf3d33b74379a27be84cc153ed09048e, mulmod(
                add(0x1e2f88927cb36d66cfe9b8fb283de547, mulmod(
                add(0x1feaff1994cd233af5ba02ef10da1b5e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd8b7cb3b094584d757c50fdbc67b8f9, mulmod(
                add(0x235d4a346a5bccd5e51322b9c5c51c5, mulmod(
                add(0x2938f6df1222247f1b2eb16840afa2a4, mulmod(
                add(0xe792020782fdb22d75511865f105084, mulmod(
                add(0x2cbe777b84513628701289dfc48c38ce, mulmod(
                add(0x11787bd3b8f76f5685b6f021c6a0d4b7, mulmod(
                add(0x21b9b9e3dd7b4d808c1a5cf7b8bfe258, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x204cbc4c1be8f0c17ae210bd342c32a1, mulmod(
                add(0xd06d4e4bce072ecffe7f2c136959a45, mulmod(
                add(0xdab863c935bc070cb48f163762ea293, mulmod(
                add(0x2e33768e77816f5c4f32d7cceacb2619, mulmod(
                add(0x2d7843442e5b260414bdc4dc5829412f, mulmod(
                add(0x7dd8006d158f699df3c8da8587f9864, mulmod(
                add(0x16196c797503b13a7900b7d56397801f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27743692c25ef1b9c58b142f7bbb0bd7, mulmod(
                add(0x71446cba980c6334687c7625c91398a, mulmod(
                add(0x20b1417b4c60c98fc3a6e4efb534c98c, mulmod(
                add(0xcb7b92233d20db837fad22fcb7a43f2, mulmod(
                add(0x1b9a7c5fcc0b1eade9d34115ea3517eb, mulmod(
                add(0x4b875351a02d3edc660f0a0364b34f8, mulmod(
                add(0xab000eddac01d4f791330a763d74b95, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2aae4e1e404a6ba5e92109b30ce68cae, mulmod(
                add(0x2c52a049d4c218bb1e6130c29dcc70e3, mulmod(
                add(0x877453748371497b18afd5e8f25a3dd, mulmod(
                add(0x17f7fe1690bed1c773211fc7351f2141, mulmod(
                add(0x159253e40d60081260143bf607ffbf5d, mulmod(
                add(0x18ced76a638c85f1177295e2c6e11710, mulmod(
                add(0x9032bc50b1fe229f26d58c9bc0cf5ec, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d750792faa8079d62d668519c917fcf, mulmod(
                add(0xe6fc7f269d0560a07ce5c6257e12377, mulmod(
                add(0x166e8deb0bbfe6e68328fea0bec491d6, mulmod(
                add(0x65999c27c6fffaae1a38e6738f30b60, mulmod(
                add(0x230ff0f7b43287c3beb4dfc9ce39f74d, mulmod(
                add(0x12e2cfe657194e399f5f64bc8accd411, mulmod(
                add(0x1789599900c6608002db8a1c7b7265a5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27dcaf20138dc2cb62bea60ea8987ae2, mulmod(
                add(0x290ae27a2c78f6b76a54be85170ec0b7, mulmod(
                add(0x26075ac8e822468ac072eac0de568e7e, mulmod(
                add(0x1665888f0811956205c816f0cc210b6f, mulmod(
                add(0x1e73565b423045ee0970aa7d353e167e, mulmod(
                add(0xab64198a4ecbe1acfbbd37469f04789, mulmod(
                add(0x2ea68036666cbbef9cccd4479219bbf1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x73075d3356436d61ed7f2585297ae17, mulmod(
                add(0x1a38e99eff8d1685edb3b73a1fd73eca, mulmod(
                add(0x1e3558e8be62038b2118b27f5630142f, mulmod(
                add(0x116c5856551a12553322741544a12c5, mulmod(
                add(0xa16bb33b83f3eb08450fe6e6c79a88c, mulmod(
                add(0x1b11bcd7f68055fe2be5a2d20f7a6538, mulmod(
                add(0x1b051f0a3ef16fe50aae421c67321578, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xddafb2f232612d8174361eca57d3898, mulmod(
                add(0x23901b831e9598e31495916aa404b912, mulmod(
                add(0x3830ba9c637937e167f7519451c34e0, mulmod(
                add(0x2379142edfcd9aece9501b42e5db5909, mulmod(
                add(0xd34b7fe63fa1ca8f858669c13887ab0, mulmod(
                add(0x2537e0ecd5c10d1fdc3b92e2139c9cdd, mulmod(
                add(0x1b27d78535323c45fa19a0cf8ebd324f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x290122895c473c4ad990e7dacea18477, mulmod(
                add(0x185e14d74534603a7735eb33179baa58, mulmod(
                add(0x2e3fed272810363a8809d5bd6f255aee, mulmod(
                add(0x2be948a857fc11441dc8cc58e37592c7, mulmod(
                add(0x1a1463861eeba396de962c0e3a5c81f7, mulmod(
                add(0x2f974781a42bdac9f64415a131e6ad1, mulmod(
                add(0x2da5c3c5951dc81e07c00594937d7e1a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18fa63b702fbfeab09af7ac02bc62ca9, mulmod(
                add(0x140fdc57e91757818e249db97c7d6f59, mulmod(
                add(0x1acae1f08768194ecd270476b25c1f46, mulmod(
                add(0x536314313c6c8abab3fffc05a52f713, mulmod(
                add(0x278a95117ee452c140cf015bfbdf1cce, mulmod(
                add(0x15658668eb9a2fe6b6054281976b69ab, mulmod(
                add(0x2e6254e13036d60d2f35f073974fb7fd, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x42427fc72f6929b0f5c6046ce4a91cd, mulmod(
                add(0x135f97a3360e5aa23e2825a9a486a5fd, mulmod(
                add(0x2f16c8147f0c2a8cdcf5450ed3294ccd, mulmod(
                add(0x2ac951a7f6b04f4767afda17cc286db0, mulmod(
                add(0x111a4c9a23e6e6d9dab333bc89991a42, mulmod(
                add(0x176d6c12e95a0a933e83206819def90a, mulmod(
                add(0x3a253a6103e47cd27de96431b37cc21, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x129a4a00f2f178b5a91c7322f785e331, mulmod(
                add(0x1a3440c95b102f693e34c58ed1629b5f, mulmod(
                add(0x2f6bbdac55dd90d37d101a348195ed04, mulmod(
                add(0x2a90a239f2f6d26393b9452631519ef4, mulmod(
                add(0x16963d9753f2a2c361cb54641994b3c7, mulmod(
                add(0x1ba746b10c98b58d16be3f9ddffa6d1, mulmod(
                add(0x266b0d75be72fbaa47281e069a8394a4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18203d3b2eb0ff5bc92fddad7ff089b8, mulmod(
                add(0x2cf1aecb2ebdc75a71cccfe4516fbf4a, mulmod(
                add(0x16ae11a0412f362ca357e09397cef2ed, mulmod(
                add(0x26211afe4797b32953a584cf9020df1b, mulmod(
                add(0x19026a6277e47b51b25d97cd28abf73e, mulmod(
                add(0xac61d7aa292f221375349df2d252e23, mulmod(
                add(0x16fa95ba0e82735f50425cf7626febe1, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2aaa2a86e2afc7e7529301334047c6a8, mulmod(
                add(0x9f6dec39b71be8434c92cd4442e1fc4, mulmod(
                add(0x10d6fd3acbe27be3f352709383f19db8, mulmod(
                add(0x243aa28fa53b91c548d8a45655b70dec, mulmod(
                add(0x158cd24f740b59fcc8280487727d95dd, mulmod(
                add(0x2463772c247c2f6e6733aa6a9c62177f, mulmod(
                add(0x296a97f173bb3c8a6d8f4dedd48979b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7eb1df957b7095384214909c2139669, mulmod(
                add(0x53b922a4d54a915020de69c950020d0, mulmod(
                add(0x267a1cc2455244b968a90dcc320e1aa6, mulmod(
                add(0x1bd0f5c0ee6e5d339a8d602617a8f7c2, mulmod(
                add(0x220d37f5768676a5e778461453656f32, mulmod(
                add(0x16ba19edb8ce484a43eadb99a07c3a09, mulmod(
                add(0x2a9838db5fda46e647765bc816dbafbb, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2aac6df7d3e65388fa041f8507a4e317, mulmod(
                add(0x1c80de617cfcaf1ce9111d83d1f4a98d, mulmod(
                add(0x27a13a1ae1e060ef5ef92775e7ae9bdd, mulmod(
                add(0x2efa2ac2d77b9408ce97b595ee198ccd, mulmod(
                add(0x244a9c7f8f8276cbb75ccc230e3ed4f4, mulmod(
                add(0x1bc2dd376b6f5cb1f68bacffb0d2f54e, mulmod(
                add(0x13c321edb9d7a195a9c909eded81bfe5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x10363baa6914bded784a27923e61d3c8, mulmod(
                add(0x28bd790ffc55889be5b64bcba730058c, mulmod(
                add(0x2d9e594f12acd5a76d8241d0f89d59e1, mulmod(
                add(0x2a7bc52d755f54a3092d42e15bb0a5bf, mulmod(
                add(0x139702e9a6d36c891a9c64e2325a229e, mulmod(
                add(0x2fefaa73ebb52543bc572db6aa956ec9, mulmod(
                add(0x43244364384d4f035ce35e6aebbd782, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x236da06b6820f427f37eefdb0642a5b, mulmod(
                add(0xa79319a32349be1fd1ccd77a80fa658, mulmod(
                add(0x14316ddae14244ea31dcff2b7b15c2ab, mulmod(
                add(0xb499149329f01c674edbbf5eccf194e, mulmod(
                add(0x5f8af06786eacd2bf040836e8242df7, mulmod(
                add(0x20bd89917ca7b8157a24eba6c0fcbe4c, mulmod(
                add(0x237f14facf5ab28f6bdf3bc4e89a038b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2bdcf6b38466ec7db33546e4592c92d4, mulmod(
                add(0x9d7531151e8c884cd55b337c5ea4e34, mulmod(
                add(0x2eec5c6a78103252936a28d6cb42c71c, mulmod(
                add(0x97881e3937aea00b58ae56a49b0483d, mulmod(
                add(0x2f38226feefca65498dc3c73307fb68c, mulmod(
                add(0x1f28c71516033fb7292d8c8ac581c2c7, mulmod(
                add(0x7afa3ec13ad370bbe4cb4a5ca8dba57, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xeb112fb1aad0e238efd45ea960d2a3d, mulmod(
                add(0x10636dd01ae02ee6c21fc7542310b6c2, mulmod(
                add(0x1b9f284e9c28867e0f43d0b91558df33, mulmod(
                add(0x190b6242777bc8262e4c7f57e444aa21, mulmod(
                add(0xf1a56e7c35413fc18ff6dbca7fbfc4f, mulmod(
                add(0x2c14d0a205094569983ce9bb8689fd35, mulmod(
                add(0x2ce64e7a127baeabe8ee3d7c8cd4b6b7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x217babd72c7d2f044c7faaa5d48f6cba, mulmod(
                add(0xe566a86034c45b1464b89b1b9305791, mulmod(
                add(0x1043fa487b14887e830449271d5ec7, mulmod(
                add(0x3d2fb2243ab869df0501454198cef0e, mulmod(
                add(0x2401c45a36a8ce2ad2df69145885ff2f, mulmod(
                add(0xbe1f65487bada8e832d425408c4d1f5, mulmod(
                add(0x5ec97240705c4e6fc13a92295ff3184, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x70676573c971309a2b6ef639e72c2d, mulmod(
                add(0x27717486c9725ca6baaf6e79f4bc5028, mulmod(
                add(0x2492890ee18f33617274c12e5399b222, mulmod(
                add(0x1fdc181feb2dc9bb30a4af2e9787da43, mulmod(
                add(0xb9a24e37679012e81cda1f392296d91, mulmod(
                add(0x20609bbc17f61339388974aff2982d1a, mulmod(
                add(0x7b6d6f9ea229184e1d85c29c7c0d163, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1f3918ed4a4358e8dac925cac938a72a, mulmod(
                add(0x14bd7e08412015fff64ff169a543f517, mulmod(
                add(0x1036b27d3f0de013bf375dd55a1a22b7, mulmod(
                add(0x167c2565e21bf8575ba6942e85237682, mulmod(
                add(0x2c2f22c17a6b6da544e96e59e63356fa, mulmod(
                add(0xa955c2a24dcbfdefffe011e2ea5f734, mulmod(
                add(0x1b9b96a2d4c8b219538c5de24469e982, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x24ea23376b940e63978dd89a55d6c9d8, mulmod(
                add(0x1d7dc3a81015ebd84e413e75ac3ec662, mulmod(
                add(0x18dd75363396969b3adb955e5d7907b1, mulmod(
                add(0x122776767e1fa65f8181b4aed60fd265, mulmod(
                add(0x192408da4d2a62f84e09177dfe3d084a, mulmod(
                add(0x8d0470ca22593dcbc9f212a3531c0a6, mulmod(
                add(0x1db77f8f5a96b2c5925802485c936d7d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ca650194c355c9c5ebda0334d2109f6, mulmod(
                add(0x1bbb1883015de955774c9bd65157829e, mulmod(
                add(0x2adf61bfbfccbf2c55d8186cdece709, mulmod(
                add(0x212166b45640599ae3a5ced91b9b31af, mulmod(
                add(0x1ec52dbe24fcdc4f55851f2185442028, mulmod(
                add(0x180711592c2952e678d6c2da52703ef, mulmod(
                add(0x9f78aec025ed22db1915acd5e675fd5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x25b41f69079f38bbd0b6b1efc37aadef, mulmod(
                add(0x28b7c0dc6a0a2b79995510f105c03436, mulmod(
                add(0x1426193cd109c7a8a069717538f46e8e, mulmod(
                add(0x59f4f079d02208b8d3f08a85b998deb, mulmod(
                add(0x1b9b4939c9e49641de00111672dfba8b, mulmod(
                add(0x24397848b8ccd470a7e2be3fef4c0f0e, mulmod(
                add(0x29507599dda7f883a6bd259e3f8f7289, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1bfac31dd2a6505845065dd942601d22, mulmod(
                add(0x1b4be681d04642885671b47997a17389, mulmod(
                add(0x3cc55b54bbf7494795c3b4a30d4cb95, mulmod(
                add(0x29450ee10b3fd02b071429276a15281b, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
