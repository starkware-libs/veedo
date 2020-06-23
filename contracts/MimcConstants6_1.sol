pragma solidity ^0.5.2;

contract MimcConstants6_1 {
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
                add(0xdc6dabb42009a9aaf630cefb0fda83d, mulmod(
                add(0x164b4e1020f1b7ceb0ee325bb1ec84a5, mulmod(
                add(0x26b6971e1b44ed6f997984a4e931502c, mulmod(
                add(0x9fddd033595f18ac779667de16f6c7e, mulmod(
                add(0x12d49239939a290387ba9cd547250345, mulmod(
                add(0x29cdb81e04e6ec93ad8f21709798f74b, mulmod(
                add(0xe67171f3995baacd53208796498a272, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2f5a0a16dad37605c1aa15643a93366b, mulmod(
                add(0x165a2e1ab99c3bf2d0e3aa206d6d5115, mulmod(
                add(0x26eb5d0b9f5cd6102acfc2ccd10e834b, mulmod(
                add(0x242b18298474d93c831a5aa788a7208e, mulmod(
                add(0x56bcb7318ea150ba9eea12c4069524a, mulmod(
                add(0xca209fc10f2d1c31b032632736cc1b5, mulmod(
                add(0x19066728f035cbd615d229a9bed1c578, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x134b9b3c96c82ed44acabfaebd989bb5, mulmod(
                add(0xfad979ff73d3e3fb332decd2d5cb5c1, mulmod(
                add(0xab13a73c611425aece42fa19a593712, mulmod(
                add(0x189a43bceda5de474d2cdd24e6047551, mulmod(
                add(0x19450c67d24945c72f97b239ab76e9a3, mulmod(
                add(0xb2ed046ca455f3bfc75236020194400, mulmod(
                add(0x1937f35d9a97fb994db1b2d76f737dac, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1850e7092bff8f024551c1bba887c4d, mulmod(
                add(0x28bf8213a9dbbf93174792941c72082a, mulmod(
                add(0x22b7f71034af69e62629d76b4dc546b2, mulmod(
                add(0x163e332677365a04f49acbf3060e332d, mulmod(
                add(0x1e4512efd867b1b3292919d2b354d3fd, mulmod(
                add(0xea520aad749ec1514e455585a5c82c7, mulmod(
                add(0xd0d03e8835856c3c57f8f901c2664be, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf6cce1479058305be5ba3569c9efeb, mulmod(
                add(0x32d5c07ccd8ad478ddd441c2024480a, mulmod(
                add(0x2c1c6f4f344695d046e1298d7a9e686f, mulmod(
                add(0x27b8173f250c4daff1d7ef621ed6e2f0, mulmod(
                add(0x1e502950e0b4942c5ac2f8668997bc5c, mulmod(
                add(0x56b8a6d5ae089e453e667154272631, mulmod(
                add(0xa89388f5d85e81ae870629adfb24a11, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x16ffa3dd61500a53a9b61841f2b1673, mulmod(
                add(0xb5c1563c8d800c3e1fb9d2a7732777, mulmod(
                add(0x336b3fc8ac1febe986be867020f7f8d, mulmod(
                add(0x1cabd066cd00d4ac6c41c9e27e2a209c, mulmod(
                add(0x1ee2b633d4a81b89fae814c3b682c388, mulmod(
                add(0x2d872a376c309a9e3971c97923f37f65, mulmod(
                add(0x2db60f8b96064b4c773dcd2b4c3968f7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xd46fb2eec57db22480e78b5e8618fa0, mulmod(
                add(0x28e62a934d9385cda59f0e2af09929ff, mulmod(
                add(0x220357ae6a31793ab953fd85f1ed224d, mulmod(
                add(0x18bde782c527557da8c96cdff61df1d2, mulmod(
                add(0x2943da6c24304a3a6887faecf05269f3, mulmod(
                add(0x12e66c7383e5fb5eab2f484727c73ab8, mulmod(
                add(0x1204977cb9dd7481b9bbf54572cc3830, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2cec2d1e482c3254dd243802cdf330fa, mulmod(
                add(0xbae1dbbfcbf3e62f401080914bf47ff, mulmod(
                add(0x1433f5def97a52425636b61faaf327bb, mulmod(
                add(0x1794af7c8b480ec14cb52f59805f5232, mulmod(
                add(0x41423491cf3400655bbcfd5991beedb, mulmod(
                add(0xf5f34c62f6c6f6158e3c682932f9436, mulmod(
                add(0xb92a2751096a08dd00465f979970953, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17520d911625babb98e4ecd3d12b2a36, mulmod(
                add(0xee92ce335569c9421128b153e98e094, mulmod(
                add(0xb2434036d1839a23d9eb2c51b43dfdb, mulmod(
                add(0xc2fe613641903cf9728b5cb3365d743, mulmod(
                add(0x2551faad6c4c3d70ce22bdc2876ecf62, mulmod(
                add(0x6bc5fed8d785ba29d26a56a9c1d3d1e, mulmod(
                add(0x23ac2cd9911ddfc9da17baf11bde9ec4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x120df045c2a57ee466b2be542afe6f56, mulmod(
                add(0x22904440512b8b7f77c799fc304a0d2d, mulmod(
                add(0x275589db4a7986787b903d3e1a501cf5, mulmod(
                add(0x1b4467c84b3716505714fa9e4510defe, mulmod(
                add(0x1fd79992369570ece5046d20d89e446f, mulmod(
                add(0x2c5a323f1e8cecff409041d7f031e132, mulmod(
                add(0x2d908737d7a6e8072ff4ac04a9091877, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x7fb7c288d5fe5a1e31c44cf54d0ae95, mulmod(
                add(0x7ef1453791b6254169117fa14dc6094, mulmod(
                add(0xcfb35ef2f7dd566cf0aae149ff002ff, mulmod(
                add(0x2d4d27beb9a1e988395ed268cde74a2c, mulmod(
                add(0x979caefb5975078f5681ac66561d87d, mulmod(
                add(0x2756216ceed68d2ed10708e89d4f6fbf, mulmod(
                add(0x46e11a192b3eaff207c440e97a88fd2, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2ddc64b1d16bfdae698596c9b0e72531, mulmod(
                add(0x7be191a43b7ee6b0c8b2f433d128116, mulmod(
                add(0x1f40b3b98dbe4df8fe50ca8acc2563e6, mulmod(
                add(0xf37121266366cdb3f8a38a4992dc710, mulmod(
                add(0xf1b8a996553cf46fd4e17a618da57cd, mulmod(
                add(0xa7bc7163ced1367310f6eb72f9402a0, mulmod(
                add(0x1d80cda1ea2141740b675157766b088a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x28410046ed61afa0348110e1b550145a, mulmod(
                add(0x1724ea75b69a067339aa1fa3c574ab71, mulmod(
                add(0x14fdaebfd453ae10e9eb81d81b971144, mulmod(
                add(0x8ed943a56f857c13fd791bd7a617137, mulmod(
                add(0x689ab4b1594106f05dbba43dea2896b, mulmod(
                add(0x13ce4b49bee169386c70455cc9638e16, mulmod(
                add(0x149e85c074bfc3eb4c99b1abd13e9ee5, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x85f7e132f4d91ed5b8021cac8eab739, mulmod(
                add(0x2424b9ebc10218fa88792a0618383f8f, mulmod(
                add(0x8c88401c58c9e2ce549e9b8ebd6f51f, mulmod(
                add(0x2e21373bd3a01953e6cca926b0ab8e07, mulmod(
                add(0x266e0755b8950f6ac667d2dff8df516d, mulmod(
                add(0x14743d722386c66bbbd86813a09ad83c, mulmod(
                add(0x12743dbe336e93ad9888baa18d7e3349, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x17772d7aa12969d0c77ea86b070c12f, mulmod(
                add(0x4720a94dd9c426d3a55db2f29e09e88, mulmod(
                add(0xdb85bcaca4b1704c82435fcc9b90a1, mulmod(
                add(0x9e956b0ef2698c3739ff9ca19acf61b, mulmod(
                add(0x7698a89c724daeaf71dd7e16c8853d5, mulmod(
                add(0x869424f5e44dc1b645eab399f66acdf, mulmod(
                add(0x151090a930b2574f38c46e8bfdb64104, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2040b405f309fd081d718f56c012c780, mulmod(
                add(0x118740614ffd64c29f7698a89eff9261, mulmod(
                add(0x14abf62022eab36b9afaeb3cf7396e0b, mulmod(
                add(0x8e3d5d9461f1ac8b5a25bffe5accb59, mulmod(
                add(0x1a5539ec7ae28d1112f300ae894d1a23, mulmod(
                add(0x203ae69d3a0dc57cc9375d481a2e314e, mulmod(
                add(0x22230bb3691faeae248736f005bcd498, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xf1d474112b396d39ca82c404e2a8e2c, mulmod(
                add(0x1b0d1cdeab8f631841d2bcf0746c7dbc, mulmod(
                add(0xf4fb37b39387a98d489f88ffcd99bc0, mulmod(
                add(0x8a2f55b1e4aef7123b2db0cba84857, mulmod(
                add(0x153c588a15cdd9e0cf23984a59378f97, mulmod(
                add(0x179ed308164776dbd43dd34aae606991, mulmod(
                add(0x1903ec27c4a61d6382e72162811b2d32, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11d9a0dbdcd9f7d86a0a9af7bf4da6ff, mulmod(
                add(0x26019de9f1f9783b5fdbd8c451fec999, mulmod(
                add(0xa3d6ef9e418fef9e491f44f31ab809c, mulmod(
                add(0x24b214dfbd6996b0ad91a2616fe57e2c, mulmod(
                add(0xd0eec2d1e88cd279b28cc68c72436b1, mulmod(
                add(0x28d5cd5f3bbeee5a9b80e552a2c23a67, mulmod(
                add(0x249708cd307bc08e77d9f9151c2cda7, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x213efdcd9ae997b460a2231fa4806876, mulmod(
                add(0x146d893c217ad4a364c4304025f49bc8, mulmod(
                add(0x217d73aecbe839859227678009e7c238, mulmod(
                add(0x19844926388daf0fc52be3ba253b1097, mulmod(
                add(0x2ee68c337ccc8dddb2d9366f7ec89f7, mulmod(
                add(0x11b89c20a9443293fa0101e52f5ad223, mulmod(
                add(0x163047a6e14c386b52164efe0836e802, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x15f3428148e3f342fa6331bdd71c0fe8, mulmod(
                add(0x25cd9457acdce7966a45b0b5278d622a, mulmod(
                add(0x2e633beb00f24d4ea262af88b185b93e, mulmod(
                add(0x274f4663b5a4cea1556cfa3abdb9f9fe, mulmod(
                add(0x751d9384d4a1d4d87d0672d780a868a, mulmod(
                add(0x1781e6adf5df51776f460859682cdb20, mulmod(
                add(0x2abed05c28c507474b0d6d3ef4f6318d, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xc9e5a0e3160a4f9bac4f5d6f8357497, mulmod(
                add(0x1f0aad77dd3a946e5e3460c4c8bff8e6, mulmod(
                add(0xdca8627a9a5ebca767e256119a35d63, mulmod(
                add(0x72ccc39ff41e8e0d1a8b7193fdd1f52, mulmod(
                add(0x1259ccb812e485a33df126af1590b440, mulmod(
                add(0x107e1cb71ab6c1c4d311e257922f02f, mulmod(
                add(0x266cf37258bf3900aff6a71892a354fa, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x861e4183d02138ebe00c6d3d1243db4, mulmod(
                add(0x16208e9e92ab546520d8ef7d1408f6e1, mulmod(
                add(0x1fab1d2f4c47485230c01a008f9366ea, mulmod(
                add(0x23a09d1e332ae4b3016ad310eae9efd9, mulmod(
                add(0x20f942f3761f0b135ea720341eb9f8ab, mulmod(
                add(0x4d33432e25e48a60301b88dc940ffe9, mulmod(
                add(0x1989cb7010eb48a49d305727df1432c4, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1a6afa04b63d93419f8c921c25d60628, mulmod(
                add(0x724dd1174897bc555ad8ee9060a6cfa, mulmod(
                add(0x1f1bd212cf78354fb98cbcb428758bf7, mulmod(
                add(0x93db102f587c3c4ba6ebba8b59f0439, mulmod(
                add(0xf9d58073479f2fd1c568b0582850f7e, mulmod(
                add(0x2d2b68a58a3c9255995cc51b7bc5ccc8, mulmod(
                add(0x12a38194d96f37d1966561ed928a198, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x29cc1f667152d5725ea2973724f04c96, mulmod(
                add(0x9dc672765f1469b97a1e9b2de51b835, mulmod(
                add(0x2e8e973f5c5996e4361be29c171aeafc, mulmod(
                add(0x240c29c39389cbd2a563e3b6250df945, mulmod(
                add(0xe73a4d8b0247d12966e95dfb8911e92, mulmod(
                add(0x2683df4881a5bec457f489ae1bb819f6, mulmod(
                add(0x13bb939da11d4067026973406909350, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27d9a1bf86f73f9ca2d2254c0db68cf7, mulmod(
                add(0x15d47cb296038dd90bce33e597a481af, mulmod(
                add(0x2c8369f81d187b72800361b3ff6350ed, mulmod(
                add(0x2cc4b2a44a22720a45b59fe6b3370bb9, mulmod(
                add(0x28a86e0c8d5711aa4255a20e33e52aa9, mulmod(
                add(0xb1519d4e0f5863d2470d8b271e53d86, mulmod(
                add(0x24aaa0eb4cf1ba07d67eb8b9c1bbf5d8, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1d396f9a16131395904b9ec352e423a2, mulmod(
                add(0x17ff3d10e699d6615b00e93460b03164, mulmod(
                add(0x56b5ef7f1abe65602b3e343bf977b81, mulmod(
                add(0x2100aba1478831d00e41725ef82f9a6a, mulmod(
                add(0x2d8581d83ad16f8a0e79b6cda1526c1b, mulmod(
                add(0x7c8ee2ab8693c2933e74875917e4dc7, mulmod(
                add(0x881d3b8d0fc1cdb6a6adebcd14cd281, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x2228491e3e915515d7bbf493910c7119, mulmod(
                add(0x18b70b47e8d497d69a427b653684f2cd, mulmod(
                add(0x200ef94687378b2c53985a0d22e4a669, mulmod(
                add(0x1ae1451f37650ead34351779f5fa03a3, mulmod(
                add(0x25e60a230fc7fca5c0a73a32d9a77fe, mulmod(
                add(0x166a949a06ee5322a3daa3bda03789a6, mulmod(
                add(0x28180d21ed3322ec6b0efc93ffe8717f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x27103ceba4431b587921af124098e031, mulmod(
                add(0x1b325a5901e8980148e8edb181a07db3, mulmod(
                add(0x18b874764aa19428e6ef431c74b0aa04, mulmod(
                add(0x6b8acdd95dd948902d9807f846c320d, mulmod(
                add(0xf63aa0eec8b39a33b2900bda27a461a, mulmod(
                add(0x2083e6d81fdc841246e710a8286f9243, mulmod(
                add(0xedd822c2a59da8e87709e6f439bc28e, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x9d555a2b065b4e14d13c5a3a8b7e342, mulmod(
                add(0x2ce43da5cf4b813632af000b82db134f, mulmod(
                add(0x1cf6bfeb060650fcc829cbebbf84f5fb, mulmod(
                add(0x17595d2209c8b54a9d969ab1506a0fea, mulmod(
                add(0x187bf01f525535dea07ad60edbb74884, mulmod(
                add(0x12d72843063650ef1e3e87352e81c6cf, mulmod(
                add(0x14ad717d201d51e9fb1cb39848a0e833, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x1880965970bb22c9d454953f98b4702b, mulmod(
                add(0x129565ed72e2655b47fd28bd25290a45, mulmod(
                add(0x299ea8674cc0df7c4fbb5be36d2f389a, mulmod(
                add(0x2f1df8b0963010d74fc65f40d8a9e199, mulmod(
                add(0x23c01c0e09d503263fb270354d742a94, mulmod(
                add(0x1d9d922a1ce2dafd004606248c229155, mulmod(
                add(0x1086829e7a7d278cd2d1cbdc658de4e9, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18423728ecbf452a459a900ccea0f7d6, mulmod(
                add(0x276f86d356b7fd53511775e9e2bb3e77, mulmod(
                add(0x158876736dd117880096d2fcb037c669, mulmod(
                add(0x1a14fd9dcb4e7ea3280561790f342d28, mulmod(
                add(0x1a5e8ee57c34edebcda1e6e224135ba5, mulmod(
                add(0xc4664cc5a66be80438b8935a78cbb2a, mulmod(
                add(0xcf09fa46049c8fe17f23ddc30bbb9cf, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x18bb197f8fc829cf68ad72d99365e40e, mulmod(
                add(0xaad4eeba12c065a690519f74f09d1a4, mulmod(
                add(0x2ccd58a14b506fd7beb624774cc9d3, mulmod(
                add(0x251a8ae0979b4d37f48d2261c811e870, mulmod(
                add(0x1c74ec8447973a8f40413c5b96e40137, mulmod(
                add(0x108fd92684acda04ba65e58d23cc7e52, mulmod(
                add(0x254af4bb2eba9280dda10b52615decad, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x133f16e8479d588637078b68fe49164c, mulmod(
                add(0x11558e56cade2c623566692f6406c19a, mulmod(
                add(0x136ed450ce7d0f0a5e752b6a0bc39b00, mulmod(
                add(0x1f245929321c81546449883017edb727, mulmod(
                add(0x242fddbfe94b1db8748d14cc8e9ceabb, mulmod(
                add(0x191f3f42f4233ea2a4ac9d574bca3b11, mulmod(
                add(0x1cf6ea4955c2f9cc1b1c2c4b80d53314, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x11f4d84a24f3f9904330435f470e4a7a, mulmod(
                add(0x23a912fa1499d2885462b2043d7db049, mulmod(
                add(0x20fd439384a8c688e6be8e7781d39502, mulmod(
                add(0x11a056a96b25cbeb316a143417e009eb, mulmod(
                add(0x2af1293e36853e507fda671ddd90eff7, mulmod(
                add(0x935b2468f6f9a2b945931af04df07f9, mulmod(
                add(0xc138defd8ca01b68af2772f3f48ff0f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0x238f24fe99b03b0b56c803d57891e907, mulmod(
                add(0x602273f01b6a609bbac785dd7d89da9, mulmod(
                add(0x25ca8ab4cffc0d28bf0168b5a71ba111, mulmod(
                add(0xfa543134f9e906810ec2ec0abc1c8c4, mulmod(
                add(0x19843b029530015a7a7dcd6e6231bb0f, mulmod(
                add(0x24ea948ff735366c4a1739601048ba5a, mulmod(
                add(0xe234f95f5b3f577c717fc32e5690787, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xdf36a6d0f9be1f218753d4f8fa09269, mulmod(
                add(0x210790fb3bc927e0f74a372e2cc99bad, mulmod(
                add(0x23fd8e4ad71888c9f1876f10cc0f7c77, mulmod(
                add(0x5cbeb09f21c7161da574c76ea759a, mulmod(
                add(0x1550cfff00ee60797eb69a4667f30c47, mulmod(
                add(0x278f39f8f74658fcad06325aa311de39, mulmod(
                add(0x17caba81cb51156ca052c34bf025385f, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))

            result :=
                add(0xb6a365e66150c7a05bbd0ff094f0cdd, mulmod(
                add(0x14de0d19c1876410f92a53b9960d348c, mulmod(
                add(0x2cef57cd5bde87bccccc0809c09b1937, mulmod(
                add(0x254388b5054a558a2adac59058465d0a, mulmod(
                    result,
                x, PRIME)),
                x, PRIME)),
                x, PRIME)),
                x, PRIME))


        }
        return result % PRIME;
    }
}
